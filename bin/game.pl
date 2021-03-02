#!/usr/bin/env perl
use 5.30.0;
use lib qw(lib);

use TCOD;

my $width = 80;
my $height = 50;

tileset = $TCOD->tileset->load_tilesheet("data/dejavu10x10_ts_tc.png", 32, 8, $TCOD->tileset->CHARMAP_TCOD);

my $ctxt = $TCOD->context->new_terminal(
    width => $width,
    height => $height,
    tileset => $tileset,
    title => "Perl Roguelike Tutorial",
    vsync => 1,
);
my $console = $TCOD->console($width, $height, "F");

while (1) {
   $console->print(x => 1, y => 1, string => "@");
   $ctxt->present($console); 

   for my $event in ($TCOD->event->wait()) {
       if ($event->type == "QUIT") {
            exit;
       }
   }
}

