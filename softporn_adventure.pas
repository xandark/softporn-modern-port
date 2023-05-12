{$MODE FPC}						// Default mode of Free Pascal; don't use Turbo Pascal mode, which prevents compilation

{$C+}							// what was this?? assertions compiled into binary???
{$R+}							// range checks on
// {$U+}						// compiles as a user program (as opposed a system program)??
								// 		Apple Pascal Language Reference Manual, pg. 68

// NEW: modern conveniences switched at compile-time
// {$define cheat}				// starts with $10,000, instead of $1,000
{$define omit_extra_newlines}	// otherwise it adds too many vertical spaces between responses


program softporn_adventure;

uses 
	Crt; 						// standard screen and keyboard handling unit
								// imports: delay, gotoXY, clrscr, clreol, lowvideo, ScreenHeight 
								// 		/usr/share/fpcsrc/3.0.4/packages/rtl-console/src/unix/crt.pp 
								// 		/usr/share/fpcsrc/3.0.4/packages/rtl-console/src/inc/crth.inc 
								// https://www.freepascal.org/docs-html/current/rtl/crt/index.html

// NEW: we don't hard-code terminal line height anymore; we let the system tell us (below)
//const  bottom_line = 25;	{ 24 for CP/M, 25 for IBM PC; set below for modern usage }

label    quit_game;

const    recsize = 450;

type     rectype = array[1..recsize] of char;

var      messg_rec  : rectype;
         messg_file : file of rectype;
         ioerr      : integer;

         bottom_line : integer;

{$I softporn-1.inc.pas }
{$I softporn-2.inc.pas }
{$I softporn-3.inc.pas }


begin   { main program }

  lowvideo;

  // NEW: set dynamic height of terminal; defined in Crt unit
  bottom_line := ScreenHeight;

  {$I-}
    assign(messg_file,'softporn.msg');
    reset(messg_file);
  {$I+}
  ioerr := IOresult;
  if ioerr<>0 then
    begin
      writeln('Cannot open softporn.msg, file missing?');
      halt;
    end;

  with game_position do
    begin

      repeat

        init_new_game;

        game_ended := false;

        repeat { until game_ended }

          if your_place in bar_area then
            begin
              object_place[_sign]      := b_street;
              object_place[_button]    := b_bar;
            end
          else if your_place in casino_area then
            begin
              object_place[_sign]      := c_street;
              object_place[_button]    := c_htdesk;
              object_place[_elevator]  := c_htdesk;
            end
          else if your_place in disco_area then
            begin
              object_place[_sign]      := d_street;
              object_place[_telephone] := d_telbth;
            end
          else if your_place in penthouse_area then
            begin
              object_place[_button]    := p_pntfoy;
              object_place[_elevator]  := p_pntfoy;
              object_place[_telephone] := p_pntpch;
            end;

          if your_place<>b_bar then
            path[b_bar,east] := nowhere;

          if your_place<>d_entrnc then
            begin
              path[d_entrnc,west] := nowhere;
              door_W_open := false;
            end;

          if not is_here(_stool) then
            stool_climbed := false;

          if rubber_worn and (your_place in public_places) then
            if random(8)=5 then
              begin
                write_message('A passerby kills me ' +
                              'for wearing my kinky rubber in public!');
                purgatory;
                if game_ended then
                  goto quit_game;
              end;


          read_and_parse_command( verbnam, objnam, full_verb, full_noun );

          verb_only := objnam[1]=' ';

          verb := first_verb;
          while ( verbnam <> verb_name[verb] ) and ( verb < last_verb ) do
            verb := succ(verb);
          no_verb := verb = _no_verb;

          noun := first_object;
          while ( objnam <> obj_name[noun] ) and ( noun < last_object ) do
            noun := succ(noun);
          no_object := noun = _no_object;

          direction := first_direction;
          while ( objnam<>dir_name[direction] ) and
                ( direction<=last_direction ) do
            direction := succ(direction);
          no_direction := direction = _no_direction;

          if noun=_sign then
            begin
              if your_place=d_entrnc then  {sign on door to west}
                noun := _door_west;
              if your_place=p_kitchn then  {sign on sink}
                noun := _sink;
            end;

          if no_verb then
            write_message('I don''t know how to ' + full_verb + ' something!')
          else if verb_only and (not (verb in stand_alone_verbs)) then
            write_message('Gimme a noun!!')
          else if (not verb_only) and ( no_object and no_direction and
                  (not (verb in special_verbs)) )  then
            begin
              add_definite_article_to( full_noun );
              write_message
                    ('I don''t know how to ' + full_verb + full_noun + '!');
            end
          else
            begin

              case verb of

                {$I softporn-4.inc.pas }
                {$I softporn-5.inc.pas }
                {$I softporn-6.inc.pas }

              end;

            end;        { If }


        until game_ended;

    quit_game:

        writeln;
        writeln('You scored ''',score,''' out of a possible ''3''');

        newlines(2);
        write( 'Thanks for playing.  Would you like to play again? ');
        read_key( yesno, ['Y','N'] );

      until yesno='N';

      write_message( 'Good-Bye!!' ); writeln;


    end;  { with }

{$ifndef linux}
  close(messg_file);
{$endif}

end.
