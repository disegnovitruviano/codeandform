// feedParser.pde
//
// Reads RSS and Atom feeds. Requires ROME 
// (https://rome.dev.java.net/)
// and JDOM (http://www.jdom.org/), just make
// a code folder and copy "jdom.jar" and "rome-*.jar"
// into it.
//
// Marius Watz - http://workshop.evolutionzone.com

import com.sun.syndication.feed.synd.*;
import com.sun.syndication.io.*;

FeedReader feed;
String feedurl;

void setup() {
  size(200, 200);

  // load feed
  feedurl="http://feeds.feedburner.com/CodeForm";
  println("Loading feed: "+feedurl);
  feed=new FeedReader(feedurl);

  // print feed data
  println("Feed: "+feed.title);
  println("------------------------------");
  println("Description: "+feed.description);
  println("Number of entries: "+feed.numEntries);
  println("------------------------------");

  // print feed entries
  for(int i=0; i<feed.numEntries; i++) {
    println(i+": "+feed.entry[i]);
  }
}
