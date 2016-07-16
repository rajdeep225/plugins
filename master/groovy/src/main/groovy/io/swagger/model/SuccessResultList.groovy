package io.swagger.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Canonical
class SuccessResultList {

  /* true */
  Boolean success = false

    List<String> message = new ArrayList<String>()

    String method = null

    String title = null

    Date time = null
  

}

