Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF34D606A334
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 19:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2ftDnHvf;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=YcDOekh4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6gSR2C5ibS8T4kNI+ukAV+TuyPj2mEG2Bql3NDLt4Oc=; b=2ftDnHvfYJQBC1gcN9u1v5Mrpf
	q2GRr0cyYGpuvdIGtZCgb5Qjhv51FVjD2NLARsnQCYoHTNUi7Ws+Z35indhYGKl3YrZ4/U7U4Vpj6
	uZqdx6xHrUqkM5GC2cgF2isdZbILLRIB7lRHHIX+S0Ty1P/+3d8M3wDYOEPFmPshh58yf2gJh++IM
	PAA740FPGkdmmoEZHQ2WrPD8mkX3p8drsf5kpnuN6bVPdbbaljnAXNNo15CSmUgXVCoeUxCyiQR55
	hV73ikF5C/ZmxD9vhd76BOUYeArxshIWOEzuAnz5g5IwRSqI53MdoXZyiZj+q7qbzsEOvGvSAUEfk
	tpqp0BUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKQl-00000003YCP-2wNW;
	Tue, 03 Nov 2026 19:44:27 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOKQh-00000003Y8c-1Xzv
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 19:44:25 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-48e20ed3b9dso4018966f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 11:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793735061; x=1794339861; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8jpkCkqc5hTdS5axI8qi6Lbo/rJIC7+WdDh/yv3kaPI=;
        b=YcDOekh4vqMFEdqg07eC0n8UtvfWkNPDyEB3InD1IFHAxMUDqR+PmeJdnfXP2Z1Wa+
         ZHRQrJsEC+FsD032P1M2pdpCYS+i3oM/DQTOGBYrAzO58ZG34li6hu6IaBr5D2OtGPPt
         9ycpWTBUfrfocyDoLKoQwx0lMj2igQMsS484m76RBP5s45TI3Zf1sF+OXw+kgOAEp6vo
         V4BanAYEuEQHSBXyB6KCFDyB+Egc1lYCRxCBzY8SqfaFASZQP6z8WfJ6izXIiXMKRZQh
         IbwrZgkmTU6sS4pfc4wAQ9gZdYigfLDiLw0Ialfzwtm5sG1x4BV4XMYVCjrA29HRYSg2
         KKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793735061; x=1794339861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8jpkCkqc5hTdS5axI8qi6Lbo/rJIC7+WdDh/yv3kaPI=;
        b=OiBnKq1u/FXVQ8vyBSUFF6OXTE4LO/aZIiesxAV7PywBTIspD1a7fMOGa6v1eID56v
         rP1gzwMhHxtrtawd5I6P2P/vct0+Dic054VxPTI5YkqcRK1zfGxBOyC/WpXy0wYBZNRX
         Jjx4MqUchcTpkyAbkYndg7XSVMTMRAtIYd+tf2ZwEZqd0q+xmAL6vtFqBtx0+iuIzzv9
         tpfcfD9mISRwIR2r92bu28deXFVHLgO5PcS1EcnM8hwrD/sbceDEpmHh2+xKyUvVk+6+
         M9KzKqfTsjGTj2USfz1xlHcQjsN6HcaG2JKgLeYE32JWhYRscBbPrcjzlWCS5Mx8oLzR
         lBtw==
X-Forwarded-Encrypted: i=1; AKwUvBycxcqDGAhRDxzpFIQX7NCjtSIQ8hQXvKZgO+GYXg7L9Fn9tn0yufl5HSIyoyZJ7LPB9NF/1UN+Qd0=@lists.infradead.org
X-Gm-Message-State: APuU4Z9+SVFITpcX3+9nE8NyisFUggV3fFX9o2AC07KKNmIJfqT1lXpE
	gyt/jD7vea9byO0nKJ3W2rUtMCWHh4Rb5kd2rzLxqUi4txkn1IMsi6Ke
X-Gm-Gg: AYBFou3NwYW/aTBUROV1Gojl7G65ecnVyPSaRjez/JwA2WzYirRMhs39DthviSEgdM6
	OAJ2HW2eki755EkJTu2X3p+oHR65Dsrr2o4lIkVZdYH8/l4ABq+mLAh1AIs6nWcobA9jC+nU8kS
	41M2mBmmRAMOi3xFVXwjuquUI8gv4RM9L+oqWl+7udED8aFA4YaMPBQn71VtSfNd+OeCSxpez0l
	BNHxk16b56co96NllKafv7/YbOaETz5rgJudw2heSWa1m/yW0QTLDdcIHwmVELk2LeQ6wpuf0hO
	1fILIagYDmgy1IsU/EFtOZcx7bQU6bd+DyDMH9kqz0vo5Y60wgMvb+4B/nYUIaQNveLRGa3HcJ7
	FmruYoQ8LlTzbh5v+LAPpX9KqkUlQLNwKLdYr9JNE7WS0xtPWVEBaa3DnRt57sBbodVbCXRoIp2
	YwNpgbRKPtggmtdpQjWmB/3Z8aaCFD9+lbuTotgh3uPK2g8NK4ikCa/RWJTZaGT8l7uADOzp6Xn
	jZRKF9CXNCur22igvRgd6oj2OQMdRGUoDvykfXHPhhbcI0k/1MPE0TrQeUiWIlLKl6lFg+X9Jzb
	2sXXBvMHuWp9zngxfaLCzMwuETykj2Qg/GsCJ1zAJcfg6SxqJ0nnN3bzVTFPtrbWl1j/p64raKs
	RQu3X44BGCz2inxO6pRoeNr3N9zrRHWGHrg==
X-Received: by 2002:a05:600c:a4c:b0:4a1:fba8:b13d with SMTP id 5b1f17b1804b1-4ac17d16ba4mr320226935e9.9.1793735061345;
        Tue, 03 Nov 2026 11:44:21 -0800 (PST)
Received: from Ansuel-XPS24.localdomain (93-34-90-148.ip49.fastwebnet.it. [93.34.90.148])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4b2a93232f0sm82557885e9.10.2026.11.03.11.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 11:44:20 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v15 1/3] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Tue,  3 Nov 2026 20:44:06 +0100
Message-ID: <20261103194410.6632-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261103194410.6632-1-ansuelsmth@gmail.com>
References: <20261103194410.6632-1-ansuelsmth@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_114423_435632_8C7475EC 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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

To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
property is required with the phandle pointing to the correct Serdes port
provided by the SCU node. Providing the phys property is optional if USB
3.0 is not used.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/phy/airoha,an7581-usb-phy.yaml   | 61 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
new file mode 100644
index 000000000000..61a8d773f207
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
@@ -0,0 +1,61 @@
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
+  phys:
+    items:
+      - description: phandle to Serdes PHY. Optional if USB 3.0 is not used.
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
+        phys = <&scu AIROHA_SCU_SERDES_USB1>;
+
+        #phy-cells = <1>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 93abbb315065..a9c78e635764 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -805,6 +805,12 @@ S:	Maintained
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
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
