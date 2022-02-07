import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Album test1 = new Album();
        test1.setArtist("Tech-Nine");
        test1.setName("Like I Ain't");
        test1.setReleaseDate(2020);
        test1.setSales(12.2);
        test1.setGenre("Hip-Hop");

        Album test2 = new Album();
        test2.setArtist("Luke Combs");
        test2.setName("Can I get an Outlaw");
        test2.setReleaseDate(2019);
        test2.setSales(10.2);
        test2.setGenre("Country");

        Album test3 = new Album();
        test3.setArtist("Tom McDonald");
        test3.setName("Politically Incorrect");
        test3.setReleaseDate(2020);
        test3.setSales(04.2);
        test3.setGenre("Hip-hop");

        ArrayList<Album> tester = new ArrayList<>();
        tester.add(test1);
        tester.add(test2);
        tester.add(test3);

        for (Album album : tester) {
            System.out.println(album.getArtist());
            System.out.println(album.getName());
            System.out.println(album.getReleaseDate());
            System.out.println(album.getSales());
            System.out.println(album.getGenre());
            System.out.println();
        }
    }
}
