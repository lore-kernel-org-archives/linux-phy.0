Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F82B606A326
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 22:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jM9yw587;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=f9V7vfXu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=F/DLxlqBV77TcgKbSko336OMd8YsJPYECswpnQx8ns4=; b=jM9yw587H9UDbei5RKyH/oOzWx
	i8upqYvicOokPJUq7mX5bN9V4MTwPKUNgGHKBLNS/0gNKllJkHtqogX/ZpzjC1wT6s5i0TZlMDhoh
	S50yXWRLnJMJ8YsqlNJnPaoV6NOIvD+bcuPfayBCouH5Ohcum7rwKtN2J9A63cUJN/gM8T2fotGO7
	GGJSsEUNu2jhZ1kAZae9ryNkiMVgQMRXn2kLWTTBWcskl3YaHBBBvthXEMhw+cfYPRkulelvSgJGW
	y/mO5f1civCFR7jrouJMMNjsRj3cekY/jzeafAJiNqMFktOq/jbGR9D0qaKnEfxjGZKGquTaT4b/9
	qtOPjO6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVywm-00000007zHW-1LeW;
	Tue, 24 Nov 2026 22:25:08 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVywj-00000007zGU-2koH
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 22:25:07 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-48e3b22e971so2666553f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 14:25:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795559103; x=1796163903; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=hbE4Q7q4TrDtAfvA5QvxISTriMkp04Un/AU1m5jHodE=;
        b=f9V7vfXuUrioM2xQp42H5wzimo3dV8H+cdjHSPCEt9Gkz3OqwTx6+68MEb6tHVrCEX
         oZGLHyFuskB53Voh5piS3KNtsrNlGCuVWesux8nMSGPJ7ZQh8A/hHYRjYRlZcEYPFxlh
         RPMQdEMlveHqLyX2LAmqF/WHuwsziuhzZlE3ssfXVj00O5nQyoAS+GFM3lO+UHHfeiJX
         t+WmTFk2SloPcb3cOKIv40Px73skh7ah74Ljew15j9j1zY/0tWp5V4tB/6MGiiQhHOZt
         CvNUFK2R7CyHav3ju+LOpNVUX+MxfMAk/pm9lUMzftNkSkTlCuNe0cuxwFXfKvRI2fnC
         DhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795559103; x=1796163903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=hbE4Q7q4TrDtAfvA5QvxISTriMkp04Un/AU1m5jHodE=;
        b=Ipnwtn7WMl1jetNatKOWhTvqT7dIKfYH3XdGdTaTRP5sl2P70XzJ+jgJPx5Mk1xNOk
         g7NalMNbekJXwOGPytxsnBdykkb5TeUx4aQm1jAuzYHOvTZxfQuDMQ9H8jyJCi+XWkHx
         CAoj0lsPPp5DJMvlPVllwSb2BFIkGbicPO+4D6E6WoglJwp0xgsuIoMMgBEhsD2eqD0N
         ZFW1CdRwHnEwShGe1eGvvRgsf6Rf0vSmFAY1fUii72L1f32aHfCdIza1OWAW+2oeu104
         ohleKYadXt1mKOSUkAHyfxkeE2nudOVVGCd04KkB5P7fl45/8zmwqnRgVYlJWHmNp3H1
         gsoA==
X-Forwarded-Encrypted: i=1; AL+hErE0zrUiFGvFE1239vjt+Z926Y5y/ONp7SBFMrFOkWm3is23jNjgXK3tlhZM10jdkjby6IFGOEGeHdQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z+SH6hoXAoSfI6lWzhm3q+OIL7FLvwGdfsMzV1FPaL/C6rHJKdi
	XOigyXSrzlV1pQKzQlqSPl0iqFcqiEb5vfJv/HFgENVnN5rLe34hKHjcyKNRYA==
X-Gm-Gg: AZFdTZc7j+clYiwBJlH9iRmxQ3cmxAaZKy0lfYPxYD2PjXTSLYtqJNzpIVjp/FlKlEF
	vjaxElcE0p2qA3eK3VjsZPD3q4FHcnL3+N3R0n4KfOnpjKNH88awusUSfMDWhdhD0tbdtV4Xlf2
	pMVuBY/pc1+l5VbHwpVL1vslLLhBl7rRmyvKFeFQTkz/5hVLC0JnsbnznTCFpPxYa+grhrpcYxo
	2srV5sr+vrpmJwO8Z8UplaXCAmXSOoFlw48OT91Aqka97V/++Xm3jVfzFcyDsVKnhUzVwo9wYcu
	ES6EDgRgrK9NjmA7IIHjBEyqKSa6jAgMIxx14auTyLkmjm3aLF108oyQfwbGxR6B4t3FRb5Q2wO
	MO/ZZpxbJF2ZLqzhBFK882rp62K1B3SKhdXm7c4lnELow+5f6KyILZMmiLtGpudFJOgLg3Swgli
	QpjLBfcoX3XztS+1UXMh5OoDRJW4G2/qXRjoF6rFo6iS8dFZBSoRkz+GLN02bL/QTl1vLGHICMk
	pjOf0R0NsbI9EdbvP6U6O3vQLlUY3meZtit12xRYi7praD1sIp3fka1jGAGpi6/J2OpUIOrVX8J
	I/I62/Eqpyz8yuzzJi/xvOIoFt2jM3t+guwYwIHYwULG9KNykBNEWiB0z6sz6gCVnk3PCYzODKd
	rS9o=
X-Received: by 2002:a05:6000:2f87:b0:4a3:7954:ac75 with SMTP id ffacd0b85a97d-4abb2910fb2mr29043091f8f.37.1795559103518;
        Tue, 24 Nov 2026 14:25:03 -0800 (PST)
Received: from Ansuel-XPS24.localdomain ([87.13.246.159])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab69bf630esm31125711f8f.16.2026.11.24.14.25.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 14:25:03 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	John Crispin <john@phrozen.org>
Subject: [PATCH v5 1/3] dt-bindings: phy: airoha: Document support for AN7583 USB PHY
Date: Tue, 24 Nov 2026 23:24:31 +0100
Message-ID: <20261124222452.219832-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261124222452.219832-1-ansuelsmth@gmail.com>
References: <20261124222452.219832-1-ansuelsmth@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_142505_727427_DCF207F9 
X-CRM114-Status: GOOD (  17.60  )
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

Add documentation for Airoha AN7583 USB PHY that describe the USB PHY
for the USB controller.

Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
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

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/phy/airoha,an7583-usb-phy.yaml   | 133 ++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
new file mode 100644
index 000000000000..f1a5d83e8968
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7583-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7583 SoC USB PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7583 SoC USB PHY describes the USB PHY for the USB controller..
+
+  Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
+  always supported. The USB 3.0 mode is optional and depends on the Serdes
+  mode currently configured on the system for the relevant USB port.
+
+  On Airoha AN7583 there is an unified PHY implementation where a single
+  PHY provide support for both the 2 USB 2.0 port and
+  optionally one 3.0 USB.
+
+properties:
+  compatible:
+    const: airoha,an7583-usb-phy
+
+  reg:
+    items:
+      - description: phy register
+      - description: ana register
+      - description: pma register
+      - description: dig register
+
+  reg-names:
+    items:
+      - const: phy
+      - const: ana
+      - const: pma
+      - const: dig
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  usb3-phy:
+    type: object
+
+    properties:
+      phys:
+        items:
+          - description: phandle to Serdes PHY
+
+      '#phy-cells':
+        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+          as defined in dt-bindings/phy/phy.h.
+        const: 1
+
+    required:
+      - phys
+      - '#phy-cells'
+
+    additionalProperties: false
+
+patternProperties:
+  '^usb2-phy@[0-9a-f]+$':
+    type: object
+
+    properties:
+      reg:
+        enum: [0x0, 0x1000]
+
+      airoha,usb2-monitor-clk-sel:
+        description: Describe what oscillator across the available 4
+          should be selected for USB 2.0 Slew Rate calibration.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2, 3]
+
+      '#phy-cells':
+        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+          as defined in dt-bindings/phy/phy.h.
+        const: 1
+
+    required:
+      - reg
+      - airoha,usb2-monitor-clk-sel
+      - '#phy-cells'
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - '#address-cells'
+  - '#size-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    phy@1fac0000 {
+        compatible = "airoha,an7583-usb-phy";
+        reg = <0x1fac0000 0x1200>,
+              <0x1fa6f000 0x100>,
+              <0x1fa6e000 0x400>,
+              <0x1fa6a000 0x900>;
+        reg-names = "phy", "ana", "pma", "dig";
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        usb2-phy@0 {
+            reg = <0x0>;
+            airoha,usb2-monitor-clk-sel = <0>;
+
+            #phy-cells = <1>;
+        };
+
+        usb2-phy@1000 {
+            reg = <0x1000>;
+            airoha,usb2-monitor-clk-sel = <1>;
+
+            #phy-cells = <1>;
+        };
+
+        usb3-phy {
+            phys = <&serdes_phy>;
+
+            #phy-cells = <1>;
+        };
+    };
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
