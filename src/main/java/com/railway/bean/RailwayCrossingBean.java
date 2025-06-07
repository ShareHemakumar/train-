package com.railway.bean;



public class RailwayCrossingBean {

private String name;

private String address;

private String landmark;

private String trainschedules;

private String personincharges;

private String status;

public String getName() {

return name;

}

public void setName(String name) {

this.name = name;

}

public String getAddress() {

return address;

}

public void setAddress(String address) {

this.address = address;

}

public String getLandmark() {

return landmark;

}

public void setLandmark(String landmark) {

this.landmark = landmark;

}

public String getTrainschedules() {

return trainschedules;

}

public void setTrainschedules(String trainschedules) {

this.trainschedules = trainschedules;

}

public String getPersonincharges() {

return personincharges;

}

public void setPersonincharges(String personincharges) {

this.personincharges = personincharges;

}

public String getStatus() {

return status;

}

public void setStatus(String status) {

this.status = status;

}

@Override
public String toString() {
	return "RailwayCrossingBean [name=" + name + ", address=" + address + ", landmark=" + landmark + ", trainschedules="
			+ trainschedules + ", personincharges=" + personincharges + ", status=" + status + "]";
}



}