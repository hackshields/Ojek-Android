package com.arifin.taxi.penumpang.parse;

/**
 * @author Hardik A Bhalodi
 */
public interface AsyncTaskCompleteListener {
	void onTaskCompleted(String response, int serviceCode);
}
