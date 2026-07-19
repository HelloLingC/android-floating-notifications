package com.lingc.notification.data;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

final class ObjectFileCodec {
    private ObjectFileCodec() {}

    static void write(File file, Object value) throws IOException {
        try (FileOutputStream output = new FileOutputStream(file, false);
             ObjectOutputStream objects = new ObjectOutputStream(output)) {
            objects.writeObject(value);
        }
    }

    static Object read(File file) throws IOException, ClassNotFoundException {
        try (FileInputStream input = new FileInputStream(file);
             ObjectInputStream objects = new ObjectInputStream(input)) {
            return objects.readObject();
        }
    }
}
