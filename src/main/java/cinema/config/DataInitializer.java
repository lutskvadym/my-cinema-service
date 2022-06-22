package cinema.config;

import java.time.LocalDateTime;
import java.util.Set;
import javax.annotation.PostConstruct;
import cinema.service.ShoppingCartService;
import cinema.model.CinemaHall;
import cinema.model.Movie;
import cinema.model.MovieSession;
import cinema.model.Role;
import cinema.model.User;
import cinema.service.CinemaHallService;
import cinema.service.MovieService;
import cinema.service.MovieSessionService;
import cinema.service.OrderService;
import cinema.service.RoleService;
import cinema.service.UserService;
import org.springframework.stereotype.Component;

@Component
public class DataInitializer {
    private final RoleService roleService;
    private final UserService userService;
    private final MovieService movieService;
    private final CinemaHallService cinemaHallService;
    private final MovieSessionService movieSessionService;
    private final OrderService orderService;
    private final ShoppingCartService shoppingCartService;

    public DataInitializer(RoleService roleService, UserService userService, 
                MovieService movieService, CinemaHallService cinemaHallService, 
                MovieSessionService movieSessionService,
                OrderService orderService, ShoppingCartService shoppingCartService) {
        this.roleService = roleService;
        this.userService = userService;
        this.movieService = movieService;
        this.cinemaHallService = cinemaHallService;
        this.movieSessionService = movieSessionService;
        this.orderService = orderService;
        this.shoppingCartService = shoppingCartService;
    }

    @PostConstruct
    public void inject() {
        Role adminRole = new Role();
        adminRole.setRoleName(Role.RoleName.ADMIN);
        roleService.add(adminRole);
        Role userRole = new Role();
        userRole.setRoleName(Role.RoleName.USER);
        roleService.add(userRole);

        User anna = new User();
        anna.setEmail("anna@g.com");
        anna.setPassword("12345678");
        anna.setRoles(Set.of(adminRole));
        userService.add(anna);
        User david = new User();
        david.setEmail("david@g.com");
        david.setPassword("12345678");
        david.setRoles(Set.of(userRole));
        userService.add(david);

        Movie avatar = new Movie();
        avatar.setTitle("Avatar (2009)");
        avatar.setDescription("In 2154, humans have depleted Earth's natural " 
                + "resources, leading to a severe energy crisis...");
        movieService.add(avatar);
        Movie guardians2 = new Movie();
        guardians2.setTitle("Guardians of the Galaxy Vol. 2");
        guardians2.setDescription("Ego, a god-like Celestial that manipulated " 
                + "the matter around its consciousness to form his home planet...");
        movieService.add(guardians2);

        CinemaHall port = new CinemaHall();
        port.setCapacity(70);
        port.setDescription("Our place offers the best in comfort and viewing. " 
                + "The lobby food court offers a wide variety of....");
        cinemaHallService.add(port);

        MovieSession first = new MovieSession();
        first.setMovie(avatar);
        first.setCinemaHall(port);
        first.setShowTime(LocalDateTime.of(2022, 6, 19, 15, 30));
        movieSessionService.add(first);
        MovieSession second = new MovieSession();
        second.setMovie(guardians2);
        second.setCinemaHall(port);
        second.setShowTime(LocalDateTime.of(2022, 6, 19, 18, 10));
        movieSessionService.add(second);
        MovieSession third = new MovieSession();
        third.setMovie(guardians2);
        third.setCinemaHall(port);
        third.setShowTime(LocalDateTime.of(2022, 6, 19, 20, 40));
        movieSessionService.add(third);

        shoppingCartService.registerNewShoppingCart(david);
        shoppingCartService.addSession(second, david);
        shoppingCartService.addSession(second, david);

        orderService.completeOrder(shoppingCartService.getByUser(david));
    }
}
