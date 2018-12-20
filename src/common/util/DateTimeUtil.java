package common.util;

import org.apache.commons.lang3.time.DateUtils;
import org.apache.log4j.Logger;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public final class DateTimeUtil {
	public static Logger LOG = Logger.getLogger(DateTimeUtil.class);

	public static Date getSystemDate() {
		Date date = Calendar.getInstance().getTime();
		return DateUtils.truncate(date, Calendar.SECOND);
	}

	public static Date parseDate(String dateString, String format) {

		try {
			SimpleDateFormat sdf = new SimpleDateFormat();
			return sdf.parse(dateString);
		} catch (ParseException e) {
			LOG.warn("Unable to parse date [dateString:" + dateString + "; format: " + format + "]", e);
			return null;
		}
	}
}
