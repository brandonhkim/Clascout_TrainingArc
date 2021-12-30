import 'cat_fact.dart';

class Cat {
  final int id;
  final String name;
  final String imagePath;
  final List<CatFact> facts;

  Cat(this.id, this.name, this.imagePath, this.facts);

  static List<Cat> fetchAll() {
    return [
      Cat(1, 'Polite Cat', 'assets/images/politecat.jpg', [
        CatFact('Summary',
          "Polite Cat, also known as He Looks Very Polite, refers to a reaction image of a cat named Ollie looking at the camera with what has been described as a \"polite\" expression."
      ),
        CatFact('Origin',
          "On June 7th, 2018, a photograph of the cat was submitted to the internet humor site 9gag with the title \"My face when someone expects me to be excited about something that I'm not excited about\""
      ),
      ]),
      Cat(2, 'Coughing Cat', 'assets/images/coughingcat.jpg', [
        CatFact('Summary',
            "Coughing Cat refers to a photoshopped image of a cat that went viral after it was compared to the face little kids make when they cough."
        ),
        CatFact('Origin',
          "On November 27th, 2018, Instagram account Idascreatures, a profile which posts photoshopped pictures of animals, posted a picture of an open-mouthed, wide-eyed cat."
        ),
      ]),
      Cat(3, 'Crying Cat', 'assets/images/cryingcat.jpg', [
        CatFact('Summary',
            "Crying Cat, also known as Schmuserkadser, refers to a series of photoshopped images of cats with teary, glassy eyes to appear as though they are sad."
        ),
        CatFact('Origin',
            "The earliest known usage of the Crying Cat was published by an anonymous Meme Generator user on June 11th, 2014. The image is a photoshopped version of Serious Cat, due to the fact that the background of the image and ears and color of the cat are identical. Within four years, the image has generated more than 925 images."
        ),
      ])
    ];
  }

  static Cat fetchByID(int catID) {
    // fetch all cats, iterate through them and return
    // the Cat back when we find its id
    List<Cat> cats = Cat.fetchAll();
    for(var i=0; i< cats.length; i++) {
      if(cats[i].id == catID) {
        return cats[i];
      }
    }
    return cats[0];
  }
}