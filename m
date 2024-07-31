Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C39C3DA49
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 01:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeuydLQfCa08rFCEYhrHuVRvsqWUrKSuVRbPJqM8dn4=; b=TPy668P5gaNzMK
	u5Cry1lcYL5Wxq3xYoSe14LNeuSXsIEJjDh83uPlVyrtWGJ2RQQQCeC159SkyB6Swapa/eU7C1jJd
	l6+xOlupKUOtMFWd1Nb4MQZdjKxbbJ38T4kCv7bJJGlNbNtqZogCEFXlSWzVIMswxP0Ed5/VlTX5J
	6ZgUf23oI2GxkE43P7cTrSNgWu9o6Mxf26N/e1eaD7YzRE0cvHjAXJPIcqau/EZ1urYC9UOySH7sb
	XA1SDvevb9YhCLfgxV1be8KrnXbnsyMcsrXqXSx9JCYFMwJVT/diYvtjwlmeb+blVbDorZv6b2+e5
	I5x/Ub8ShOKUzALWNO+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYyNx-0000000GxfE-3G17;
	Wed, 31 Jul 2024 01:44:13 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYyN6-0000000GxQl-3xjn;
	Wed, 31 Jul 2024 01:43:22 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-7a1c7857a49so3324234a12.1;
        Tue, 30 Jul 2024 18:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722390199; x=1722994999; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zZ8O+vI9iMeU7lzBnuuDEYO9Q3c4Oim5G6C7n9hzAnM=;
        b=nQKUZgmdeP/kKjHgl5oHeA3Nd+UhtIc1LpwHKsR6drw8oIeiOh+Z7hP0Ei6vaUzvhN
         iKGQV/JJUmZSJLpfLhdA4IYE8agp5522z/xdmXV+ELbxlqKqp7jVL33au0SIccFwqDYV
         jwhNlhXnCOnVKlYkun/tUeDAPKZXTvI3R37d4xJonfD4BeFuFSGqvrXqSVFq2b3W4URA
         PHvECFv2k05tpLNcuDkQVn2xiSZeUK60zbw8Eg3HvZGOCaBs440V5fYc+OK6++2Sp65v
         QzkSeXIeiCq3hZM8wSayB7OIylPy/Mz7QDvEUpYVjXBIVNgvj4ULXKJMqYbChCfgwj+l
         QdIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722390199; x=1722994999;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zZ8O+vI9iMeU7lzBnuuDEYO9Q3c4Oim5G6C7n9hzAnM=;
        b=qX0yJrXvX0QxwT6ifSuEYoTTeLCsHkP31MfZenihiWxokR2hCnfjQW5xKH0Pk9lYgV
         lbjJjRUG8lASx7JuIWagl7wRvyf4DqwnaYys4b2fz48Ax5MMSyFL8Iia1uASNB/UTImz
         kHxebWzJl817HvKYr/eJEIhc2rWHXk1ULTsiDAc6fkLOClbIs6tuMNSkuma4r4FNcwtK
         U5o+FHkBNPgF7UXCjcx1ndwZm/1t6wnqEW9uF8yeia4kgoTd87v21xspErRefDxaGo5q
         ILmWkeAzBPzmIhJR13oogHA0a7LitLccSgX6lZBUFXLtr6WDnnoLhhGG1/hpdqbXAhR5
         iz3w==
X-Forwarded-Encrypted: i=1; AJvYcCXy/l5H7O3h9OySRnCpS9Xv/gqURlH5JrzScLOe3Sn7EbNdVEa46tuifT6T7IhVOD5MOlUf3YdKSAPGcvfNAFHdINN54uyivfZhUI9cVQ==
X-Gm-Message-State: AOJu0YyONUQENyuPQ4GggMVPJBoqQ4NBdEOK3Ma08+daKq8MxAGPMbgW
	93cFv1NgSINmgKlQfrwkqemaT3LXnt4M4kvQke3hOxVsdUqyQt/r
X-Google-Smtp-Source: AGHT+IGBSGW5Hjv7lt2usmrL3Nc25eHWKHi9cOd/Y6DYU4MeuofbTxsItcTkkF0X5wuQVsAUtH+9tg==
X-Received: by 2002:a05:6a21:460c:b0:1c0:e69f:f237 with SMTP id adf61e73a8af0-1c4a12b1ac6mr11737561637.21.1722390199407;
        Tue, 30 Jul 2024 18:43:19 -0700 (PDT)
Received: from localhost.localdomain (60-250-192-107.hinet-ip.hinet.net. [60.250.192.107])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead8a48aasm9003534b3a.196.2024.07.30.18.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 18:43:19 -0700 (PDT)
From: Hui-Ping Chen <hpchen0nvt@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hui-Ping Chen <hpchen0nvt@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: nuvoton,ma35-usb2-phy: add new bindings
Date: Wed, 31 Jul 2024 01:43:12 +0000
Message-Id: <20240731014313.113417-2-hpchen0nvt@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240731014313.113417-1-hpchen0nvt@gmail.com>
References: <20240731014313.113417-1-hpchen0nvt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_184321_006620_749BDE08 
X-CRM114-Status: GOOD (  13.46  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add dt-bindings for USB2 PHY found on the Nuvoton MA35 SoC.

Signed-off-by: Hui-Ping Chen <hpchen0nvt@gmail.com>
---
 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
new file mode 100644
index 000000000000..88e297ba4ecf
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/nuvoton,ma35d1-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton MA35D1 USB2 phy
+
+maintainers:
+  - Hui-Ping Chen <hpchen0nvt@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - nuvoton,ma35d1-usb2-phy
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    maxItems: 1
+
+  nuvoton,sys:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle of the system-management node.
+      This driver has some status bits located in the sys,
+      it is necessary to reference the sys link.
+
+required:
+  - compatible
+  - "#phy-cells"
+  - clocks
+  - nuvoton,sys
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+
+    usb_phy: usb-phy {
+        compatible = "nuvoton,ma35d1-usb2-phy";
+        clocks = <&clk USBD_GATE>;
+        nuvoton,sys = <&sys>;
+        #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
