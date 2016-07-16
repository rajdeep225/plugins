package io.swagger.model;

import groovy.transform.Canonical
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.TradeAddressData;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Canonical
class TradeAddressDataResponse {

  /* true */
  Boolean success = false

    List<TradeAddressData> message = new ArrayList<TradeAddressData>()

    String method = null

    String title = null

    Date time = null
  

}

