package sqb.uz.telegrambotapi.domain;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import java.util.Date;
@Data
public class Composite {

   //User Params
    private Long id;

    @NotBlank
    private String usr_full_name;
    @NotBlank
    private String usr_father_name;
    private String comment_1;
    private String comment_2;
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

    //Organization Params
    @NotBlank
    private String name;

}
