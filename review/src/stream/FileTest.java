package stream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTest {
	public static void main(String[] args) {
		// createDir();
		// createFile();
		// dirList();
		// fileDelete();
		// fileWrite();
		fileCopy(args[0], args[1]);
	}

	// 파일복사
	public static void fileCopy(String src, String tar) {
		try {
			FileInputStream fis = new FileInputStream(src);
			FileOutputStream fos = new FileOutputStream(tar);

			byte[] readBytes = new byte[100];
			int readCnt = 0;
			while ((readCnt = fis.read(readBytes)) != -1) {
				fos.write(readBytes, 0, readCnt);
			}
			fis.close();
			fos.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 파일저장
	public static void fileWrite() {
		File file = new File("d:/img/data.txt");
		file.delete();

	}

	// 파일삭제
	public static void fileDelete() {
		File file = new File("d:/img/data.txt");
		file.delete();

	}

	// 폴더목록
	public static void dirList() {
		File dir = new File("d:/img");
		File[] list = dir.listFiles();
		for (File file : list) {
			System.out.println("이름: " + file.getName());
			System.out.println("크기: " + file.getTotalSpace() + "" + file.length());
			System.out.println("오잉: " + file.canWrite());
		}
	}

	// 파일생성
	public static void createFile() {
		File file = new File("d:/img", "data.txt");
		try {
			file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 폴더생성
	public static void creatDir() {
		File dir = new File("d:/img");
		dir.mkdir();
	}
}
