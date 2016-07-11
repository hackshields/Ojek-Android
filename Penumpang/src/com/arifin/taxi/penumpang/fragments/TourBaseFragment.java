package com.arifin.taxi.penumpang.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View.OnClickListener;

import com.androidquery.callback.ImageOptions;
import com.arifin.taxi.penumpang.TourDetailsActivity;
import com.arifin.taxi.penumpang.parse.AsyncTaskCompleteListener;
import com.arifin.taxi.penumpang.R;

/**
 * @author Hardik A Bhalodi
 */
@SuppressLint("ValidFragment")
abstract public class TourBaseFragment extends Fragment implements
		OnClickListener, AsyncTaskCompleteListener {
	TourDetailsActivity activity;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		activity = (TourDetailsActivity) getActivity();
	}

	protected abstract boolean isValidate();

	@Override
	public void onTaskCompleted(final String response, int serviceCode) {

	}

	protected ImageOptions getAqueryOption() {
		ImageOptions options = new ImageOptions();
		options.targetWidth = 200;
		options.memCache = true;
		options.fallback = R.drawable.default_user;
		options.fileCache = true;
		return options;
	}
}
