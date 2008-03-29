// threadImageLoader.pde - Multi-threaded loading of images.
// The ImageLoader class can be used as a template for creating
// a separate thread for loading images, leaving your main sketch
// free to do other things.
//  
// Marius Watz - http://workshop.evolutionzone.com/

ImageLoader loader;
Thread loadThread;
PFont fnt;

void setup() {
  size(450,125);
  
  loader=new ImageLoader();
  loadThread=new Thread(loader);

  loader.loadImg(
    "http://farm3.static.flickr.com/2292/2317266674_77180fff63_s.jpg");
  loader.loadImg(
    "http://farm3.static.flickr.com/2131/2317257856_f9e9057000_s.jpg");
  loader.loadImg(
    "http://farm4.static.flickr.com/3250/2317275004_319ba43b1c_s.jpg");
  loader.loadImg(
    "http://farm3.static.flickr.com/2194/2317241464_43ebe23c0f_s.jpg");
  loader.loadImg(
    "http://farm3.static.flickr.com/2046/2304190351_f96852859d_s.jpg");
  loader.loadImg(
    "http://farm3.static.flickr.com/2069/2304970048_00d04a818d_s.jpg");

  loadThread.start();
  fnt=createFont("Courier",18,false);
}

void draw() {
  background(0);
  textFont(fnt);
  noStroke();

  fill(255);
  text("Remaining to load: "+loader.remaining,10,20);
  
  int x=0;
  for(int i=0; i<loader.num; i++) {
    PImage tmp=loader.getImage(i);
    if(tmp!=null) {
      image(tmp, x,50);
      x=x+tmp.width;
    }
  }
}

void stop() {
  loader.loadDone=true;
  super.stop();
}

class ImageLoader implements Runnable {
  ImageURL img[];
  int num,remaining;
  boolean loadDone=false;

  public ImageLoader() {
    img=new ImageURL[100];
    num=0;
    remaining=0;
  }

  void loadImg(String _url) {
    // expand array if necessary
    if(num==img.length) img=(ImageURL[])expand(img);

    img[num++]=new ImageURL(_url);
    remaining++;
  }    

  public PImage getImage(int id) {
    // return null if incorrect ID, image not loaded or error occurred
    if(img[id]==null || !img[id].loaded || img[id].error) 
      return null;

    return img[id].img;
  }

  public void run() {
    int loadID=0;

    // loop run() until loadDone is set to true
    while(!loadDone) {

      // find an image to load
      loadID=0;
      if(num>0) do {
        if(img[loadID].loaded) loadID++;
        else if(img[loadID]!=null) {
          img[loadID].load(); // load image
          remaining--; // one less remaining to load
          break; // exit do loop;
        }
      } while(loadID<num);

      try {
        loadThread.sleep(500);
      } catch(InterruptedException e) {
        e.printStackTrace();
      }
    }

    println("Loader thread exiting.");    
  } 
}

class ImageURL {
  PImage img;
  boolean loaded=false,error=false;
  String url;

  public ImageURL(String _url) {
    url=_url;
  }

  void load() {
    println("\nLoading image: "+url);
    img=loadImage(url);
    if(img==null) error=true;
    loaded=true;
    if(error) println("Error occurred when loading image.");
    else println("Load successful. Image size is "+img.width+"x"+img.height+".");
  }
}

