package com.softwaretree.jdxjsonexample.model;

import org.json.JSONException;
import org.json.JSONObject;

import com.softwaretree.jdx.JDX_JSONObject;

public class sample_data extends JDX_JSONObject {

    public sample_data() {
        super();
    }

    public sample_data(JSONObject jsonObject) throws JSONException {
        super(jsonObject);
    }
}
