package common.util;

import org.apache.log4j.Logger;

import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class CommonUtil {
	private static final Logger LOG = Logger.getLogger(CommonUtil.class);

	public static String getHash(String plainText) {

		StringBuilder sb = new StringBuilder();

		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(plainText.getBytes(StandardCharsets.UTF_8));
			byte[] digest = md.digest();

			for (byte b : digest) {
				sb.append(String.format("%02x", b & 0xff));
			}
		} catch (NoSuchAlgorithmException e) {
			LOG.error(e.toString());
		}

		return sb.toString();
	}
}
