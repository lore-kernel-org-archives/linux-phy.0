Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FD8DCCF9F8
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 16:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWEoDa8u8iy9VHGTAR5Xs3PxClkHARJAlA3w9pyQQXM=; b=Fcf28YzP45hUxs
	JpUBXm+zpkNeWc7FuexwuWtbUL6j86V2AEVu217y1CQf71cU2MkUv7cz+IpOL5J++FPAFRwFOX+tb
	Qv7PT4J88k4SWyCaSQyXFNtQ82EdjCRymTMkrwF1dMcddPCaLuEtgpYupmxhCDzad1wLtq2xm2VxD
	+I+df+bRPhhba+GPpojCGvAlO24A63HWjW9acpPHGGIzcj7yBJVZyO4YfdfrHcUlIkC2NwzZBkI6M
	1O5hAaTmzW4CQJy7JPXbrkKpOE0LxB7UBa2TccCt+kHEW7RQwJ/SeEQ27E5awH1BxNS5CVoUKM30a
	kD2/Rgz8eouWlwJoF6PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHOvq-0000000037C-49XQ;
	Fri, 07 Nov 2025 16:03:22 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHOvo-0000000033O-05he
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 16:03:21 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3ecdf2b1751so539430f8f.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Nov 2025 08:03:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762531398; x=1763136198; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qzaa9BMZZ9jLpC9lScxxEevDvh6b6Ryte1oOB44LidE=;
        b=CNPyTVxKx8NnC84BOasMNfnG6XGNW0fpLMKqo04qiYPbDw3ih1x12YL8cymYWN4mo6
         tl6C8V5zxZjo1P+Sk9mYhl8IsK43ZHR+gNIAFUtn6+G4x7PHFGXP6ybKN2cBVo0aVGBQ
         y6NoiNqKp1MLO2S/RHOm4TYZystbe2wyjqGaI6aakztPssLSUeOWJHhba5yjSnU+nRXx
         8lhDU+Eyczw9zTb5aIIRcjK+DSyaO4WixW8VzfIkEWAcgk3hY8EUyUHc36IzlO5hzzEH
         HhaMZV4tqZqfKM/fXeOQW93oCJWOo1l375qPpvNPIxUB75mc9mxssTz5EJH5dLlThJxv
         KBDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762531398; x=1763136198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qzaa9BMZZ9jLpC9lScxxEevDvh6b6Ryte1oOB44LidE=;
        b=G1p/aX4cWMV8+IkMWZcps/20d4vPt/bT3ZbB/Qb+DJDjHQ6rshIGibK5kcaWHwCi40
         Ap5v3ElTM43UgJBUQD9RLt1WVHX/bo6cxy0wLIW3rQh9tsNlmB1dHfiaZblQmDH8ZhN2
         tgTW8pb+cc0I3Q99BYi7eRK8fOSWwXf3FgiEMti/a7DqBVwbO3ieRm5v2bP3XlHeIjeM
         4JK2mJH9prwGrYdofFcbpxU2b5gX3HB/UCwbtbUvWbbHoZn4U0eqcooDyVMTKCDx6uB8
         G7hB14Aw7yrG5gzXN/IkQR780o3jgSAYpI+EPi1nV8XqRgzDF+2num/AWykuCG6L3HI9
         +7YA==
X-Forwarded-Encrypted: i=1; AJvYcCVQ5Esz8itbAxgazDl4Qf1LnD265wuA3KfiKbQCMZYlM7hAXwKQ4bUfK//34D1N9mMBJnxJOW6OBno=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPkC7aW2UsuUqdtpsMILWdCv+8ODSPPQlW0swqMkhd9+uWYzuy
	PPbiynYlx07HcR9138okan8CWsGoWL9W2cde3WJtp14AEyXuFSKjPkml
X-Gm-Gg: ASbGncvjg8V0d7g4Nufw8pgLe2WUt+O/njCsanEXXtMJdAfBhgrf6twgAb4vjEBxy/+
	SwJdEPsmDBvJ+nQOkMOBh2sLq6FMWj3YhI3i1pHhyiIZsFL/DXdzlwlUmqfs44BtgI+uEJ/xn0q
	IIfhR6wjJ5x+mdVAUvif9enPDhWOpb85th6pRfCPh2DrlOHrmjQqBipBA6J6HX0mG6P4lnnFOii
	azfbSUCtDwsBdQcnEeze+A2ykhXbTIdhwN+Q9596pqsSps2Ubc3PEubuRwj4fv5plH1pUr7Qs6N
	1bompqq4ofliDfXZWAx5y9MMM7T0+u0u21I4EYj8+KAgFeG5KzweM5XMe9qsM6BSHRAquJQSS9X
	8ntlW0wKJPREtkFmnQYadcEteSRuVQi4lxJq26RYdAyrUoevDgu/GgcgUZX9VQPhehUbSeYpwvS
	70a6/mYIurfc7mQKl+4W1sGqbl6K5AIg==
X-Google-Smtp-Source: AGHT+IGdev4kxanwwHINTFxMNLbZq8tVFAx4f+6eN5jOnIKPA3pJTeCx/EUTxYzn8RJNEOu19VtFkA==
X-Received: by 2002:a05:6000:4403:b0:429:d528:649f with SMTP id ffacd0b85a97d-42adc689675mr2303523f8f.2.1762531398016;
        Fri, 07 Nov 2025 08:03:18 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-42abe63e13csm6058016f8f.19.2025.11.07.08.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:03:17 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/4] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Fri,  7 Nov 2025 17:02:44 +0100
Message-ID: <20251107160251.2307088-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251107160251.2307088-1-ansuelsmth@gmail.com>
References: <20251107160251.2307088-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_080320_087446_7782B600 
X-CRM114-Status: GOOD (  18.59  )
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

Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
for the USB controller.

Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
always supported. The USB 3.0 mode is optional and depends on the Serdes
mode currently configured on the system for the relevant USB port.

To correctly calibrate, the USB 2.0 port require correct value in
"airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
selecting one of the 4 monitor clock for calibration (internal clock not
exposed to the system) but each port have only one of the 4 actually
connected in HW hence the correct value needs to be specified in DT
based on board and the physical port. Normally it's monitor clock 1 for
USB1 and monitor clock 2 for USB2.

To correctly setup the Serdes mode attached to the USB 3.0 mode, the
"airoha,usb3-serdes" property is required. This can be either
AIROHA_SCU_SERDES_USB1 or AIROHA_SCU_SERDES_USB2 and is used to identify
what modes support the PHY and what register to use to setup the
requested mode.

The first USB port on the SoC can be both used for USB 3.0 operation or
Ethernet (HSGMII).
The second USB port on the SoC can be both used for USB 3.0 operation or
for an additional PCIe line.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/phy/airoha,an7581-usb-phy.yaml   | 71 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
new file mode 100644
index 000000000000..ec467fb7f971
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7581-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7581 SoC USB PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7581 SoC USB PHY describes the USB PHY for the USB controller.
+
+  Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
+  always supported. The USB 3.0 mode is optional and depends on the Serdes
+  mode currently configured on the system for the relevant USB port.
+
+  The first USB port on the SoC can be both used for USB 3.0 operation or
+  Ethernet (HSGMII).
+  The second USB port on the SoC can be both used for USB 3.0 operation or
+  for an additional PCIe line.
+
+properties:
+  compatible:
+    const: airoha,an7581-usb-phy
+
+  reg:
+    maxItems: 1
+
+  airoha,usb2-monitor-clk-sel:
+    description: Describe what oscillator across the available 4
+      should be selected for USB 2.0 Slew Rate calibration.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  airoha,usb3-serdes:
+    description: Describe what Serdes line is attached to the USB 3.0 port.
+      Can be either AIROHA_SCU_SERDES_USB1 or AIROHA_SCU_SERDES_USB2 as
+      defined in dt-bindings/soc/airoha,scu-ssr.h
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  '#phy-cells':
+    description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+      as defined in dt-bindings/phy/phy.h.
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - airoha,usb2-monitor-clk-sel
+  - airoha,usb3-serdes
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/airoha,scu-ssr.h>
+
+    phy@1fac0000 {
+        compatible = "airoha,an7581-usb-phy";
+        reg = <0x1fac0000 0x10000>;
+
+        airoha,usb2-monitor-clk-sel = <1>;
+        airoha,usb3-serdes = <AIROHA_SCU_SERDES_USB1>;
+
+        #phy-cells = <1>;
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index 3d599e8b8b00..8c152daa8f8a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -763,6 +763,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
 F:	drivers/spi/spi-airoha-snfi.c
 
+AIROHA USB PHY DRIVER
+M:	Christian Marangi <ansuelsmth@gmail.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
+
 AIRSPY MEDIA DRIVER
 L:	linux-media@vger.kernel.org
 S:	Orphan
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
