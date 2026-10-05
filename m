Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91FE3CA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 10:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWxatk5YwmPTQeMr/3RGduf7U7qivExrhYvBB9PgN9w=; b=HWRvmK8IozFVLl
	OtAXVFVvo1LsHISRc6n8T3LGxnq7OTvYeMYXqakTmBQlmp1wG54zC1yHL+tQQovMq/4IN97DJgN+E
	s/9R+x/8oh9F0pnDtec+ElLeD5EajXuJeVeRqfL/JVvSveefrUpiJNo9EMHyNOExyjVLSE6EMkF21
	Al/RNDPUbb2e29xoHgb0bwcclA6oW2MFqy5mHQMVNWAmX/H161rrvq8TVIXYMcxnBGY4P22jLwa9W
	EtEgYzFmpA2bvjzkBwBZDQ62FVJUDD3MSp8ffhYdpATPf5JRheAd+0V+kTk7uqffOsgFG989UVurq
	6KolBoGxeo7LUDOupPig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgMR-0000000GFS9-2F6h;
	Mon, 05 Oct 2026 10:56:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgMP-0000000GFQL-2Cnz
	for linux-phy@bombadil.infradead.org;
	Mon, 05 Oct 2026 10:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6jvg2zQzFo45CneV/j/IiL4jEY6i2n1nGDduqF0/0xg=; b=YMPQN+6LbFLLEs0bpoq62NRETk
	Ywyxr8JEUNgxuPIkJ4R8R3cKeeIiWGjkUNL503+vBqVNT5qDST7cWiOUD4phAWougZqKK7MGNTUAt
	HVk9v5T/8RLGTtVKAjCHisUMShqQ3lY/DlORSIAX++aqCt4BTpykQ6BAwoODYmXtaRzsxUsXb8Kbs
	xoQW3PxDwuCu8NqG4rxEOwgpfuwSKoeM6FrLOhamdSG/e7/iPpl84mQTR5Z7f5Mor3iiFygmqWtSI
	x/T0dmqXEQfcvzR8bt2O9j3xaAfDICxuFRN194H4VeXJiicpNmYilfTAr630h2N64AEOO7s92Bl8T
	BDNOx6Yg==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDgMH-00000001SZW-3lIn
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 10:55:56 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49e66390995so10252345e9.2
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 03:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791197748; x=1791802548; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6jvg2zQzFo45CneV/j/IiL4jEY6i2n1nGDduqF0/0xg=;
        b=J/G4k5lktb16FSptHORCeEzz+Jn1ER59cXLxdF8EnmEnM4V2Z4yWA8TjY39uxCxp5p
         VHXVL8/O1l0p/8HH1+MpWgbtMQNRv2XCITyH1gSMkCZ/aLqN0UuITz3sHuUt2tLeLkiI
         xbplVYTke/X1GE13gvt1b63d60aG53Z4crmCVi4nykDpp4Ys7Jw+1m2zFXyw+Ig0OOyl
         eFHE0wTP+nVJ09I8+1TeIW1f+0W/MN2kUZmIIqCg9nuPAWAjj/kZeq3ssm25bAhnCz3B
         yubi+qYKfSn4UwqM0wy5SRmPL9tnUTLX88N9h+DsjZ15WbudajphcwTsvB+PB0pavBc/
         qJnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791197748; x=1791802548;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6jvg2zQzFo45CneV/j/IiL4jEY6i2n1nGDduqF0/0xg=;
        b=Rc00aUg6rDh4LU/lx/5Yzb7HM+3UDBrwsT4phHsVC2DiTYNdwdf29gGmvKtmn5VMMj
         G3m8uxk8fqW1W3OCFbwa/xs/LoJAIjkervuAgX3jgy25tTbe912C8GJnmm/DUJlH3ZRX
         KlO8/JHccvG0Nc5KUK++veu/5YLTTBvnXHxV0mEQqW6KeIXCTUxb19pt2lpPuj96uegX
         C6kKwGceE0cUtoS7dGBgTTnjKvFe7HH6XzYnxR4HBNvGFUttOvu7VAVaQgQUndhdeOKP
         0Z5g144Os6MNJ4Vd53ZAKi3Dyd/GPLWaw9DExcxtpK0HgxknflwZEwOA5UwbCFCe7xcy
         LvSw==
X-Forwarded-Encrypted: i=1; AKwUvBy7FunDSHzogmPLR2r/uzYkQkfsIkJVJF2wScX//SuixQg8f14mVRg41vLFxvDkpRF6aqFqcH2JH74=@lists.infradead.org
X-Gm-Message-State: AFuF++lTOtpQfQggnSDTCpMIpMtjfibEGph1V0VuVhcSnd1G3t8hKher
	Y6LFQKJ5VO9UarB97oB4yKtT5a0BzTK9CPvqU8gDqssaeiPavi7G8fp0
X-Gm-Gg: AYBFou075Tepozs4G9YOfYmWCJvsyFQV06EVUUr4qheuKazNT2rT8jlMWuxAr8KP+L0
	sFTlc761YwvhZGr5yyIW5QDrX5Rb8gQHQMwJEgOaa8j7rQkxtslgP5Y44QqbgjJ9Ikz6yhkzDTN
	UwH6n6w5JiPGspbPVjSkBqdnptN6LAlisCX2DM5ES5KYmo/yn9V/k2qrav4DgKSrvFHB5it+uzr
	OLyxDH1ct2SfheA2uESzIkOIo/p/ZC+YRImo938GryO0Bt53aTHbykF4WVJWWm2v6INYJ3byfqd
	kImUcS+JPYv5T2nTw9yEpg7teUpwCNJjuq5/I3yLtEEOziYXT/PR1nEeI7wZowPOl/D/RHJeKCu
	h2L0HtfStdpRLoUdj0HC/1p0dVMvB20Kgn4jQxiPiqxcWpV3A1h0cfaUmJMEQ0iU/Cs0rTnLXO9
	ZoCW373zTogQ4fY9O4lZtP5ydDKFswMfrJZQB6Vdn9LQDrcgvZKdoxCjWd+Y29sCctfp+jpCYL2
	En2nLLC2kwxzxWNyPfN59yBEWv8GLPeFlTukucZvHxTlX6hPVBpGWFAATGfjgY=
X-Received: by 2002:a05:600c:19d0:b0:49e:8191:e5cb with SMTP id 5b1f17b1804b1-4a02756f0c3mr166346825e9.5.1791197747443;
        Mon, 05 Oct 2026 03:55:47 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-82-57-191-234.retail.telecomitalia.it. [82.57.191.234])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a030326132sm270319635e9.0.2026.10.05.03.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 03:55:46 -0700 (PDT)
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
Subject: [PATCH v13 1/3] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Mon,  5 Oct 2026 12:55:30 +0200
Message-ID: <20261005105535.2472-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261005105535.2472-1-ansuelsmth@gmail.com>
References: <20261005105535.2472-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_115549_995330_366C98EA 
X-CRM114-Status: GOOD (  16.16  )
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

To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
property is required with the phandle pointing to the correct Serdes port
provided by the SCU node. Providing the phys property is optional if USB
3.0 is not used.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/phy/airoha,an7581-usb-phy.yaml   | 62 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
new file mode 100644
index 000000000000..f42e3d49a61f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
@@ -0,0 +1,62 @@
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
+
diff --git a/MAINTAINERS b/MAINTAINERS
index 0570815ee980..d8cf9722f76e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -776,6 +776,12 @@ S:	Maintained
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
