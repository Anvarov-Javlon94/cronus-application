package sqb.uz.telegrambotapi.domain;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.Date;

@Entity
@Data
public class Usr implements Comparable<Usr>{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "full name cannot be empty")
    private String usr_full_name;
//
//    @NotBlank(message = "surname cannot be empty")
//    private String usr_surname;

    @NotBlank(message = "fathers name cannot be empty")
    private String usr_father_name;

    @Column(columnDefinition = "varchar(2000)")
    private String comment_1;

    @Column(columnDefinition = "varchar(2000)")
    private String comment_2;

    @Column(columnDefinition = "varchar(2000)")
    private String comment_3;


    private String birth_date;


    private String birth_place;


    private String study;


    private String specialty;


    private String family_status;


    private String children_count;


    private String img;


    private Date reg_date;
    private Date update_date;


    private String phone;


    private String address;


    private String last_workplace;

    private String relations;

//    @NotBlank(message = "Organization id cannot be empty")
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "organization_id")
    private Organization organization;



    @Override
    public int compareTo(Usr o) {
        return 1;
    }
}
