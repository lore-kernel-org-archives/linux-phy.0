Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 706C0CA5FBB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 07:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cV0a+L5YfCrqnc0MyCxa478nfNN5zwRr4+zSi+e6s/w=; b=IhGwpI5tFQuDHf
	vTPum7KP6AmxxdLkqTKb2FV7Zz/elllvtuAs48cYlartJjELOv02DD+lPhSRYAJ8ncMaCo4JhXX4V
	xXaer1YPDxl/uY93YWQgPL3qxTy3NXtbSsfuvKa9WQa3C4Ovdu49WkET8uxpIyzUOeT6xCF1Avhl8
	cjlVmuBuQ9CZqiL3MatLopPGgjeEgTkAGfTff0ae4upHBZkW7G+y7rzbHIvY0uPCaVJffl3pTk1kZ
	rbA9/DvBn/JKpDXIzN7ODtx84mQwnEfSsedFrtBiJsKaTiJeCVKPAwMVuBKBsAYWnI2YTZozo637O
	adp81GXUvreRs/rQLmfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBoaZ-00000005Fm9-0cZx;
	Wed, 30 Sep 2026 07:18:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBoaP-00000005Fj2-3z8o
	for linux-phy@bombadil.infradead.org;
	Wed, 30 Sep 2026 07:18:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jaOi9SgQBlcEjje0pSLuoVl2zNe4f+4W9jub/av1TQM=; b=RNQ1CNa2GyGxzeKz9EgPVrA0Nz
	r7+eVxD8nfo2+zsJcmV3OQY/jCpBGLb/BHeMZsJRPtSbwuzaaFAlD9tIZoKUtNZDCV80L8xR5v6QQ
	z+sSA8PiAHCgyTyxrUb6abh8g3dxvU2zdUvjTNxNl5bVldoHq4kRLSJQQPsaZI4/V3kytrriAQjDU
	kqpxF/c0bqo4hnBdLsVvyB9elzRDGZGW2Gun1TVaYbdDbr8mN1zasuf4fflnVJfGBG3zIJSUSI1Pu
	V+l9NTiYzNRYy4v9I8XmKOwlXyrZWMamTCjQoF9Yrk+vAaVszmbBllWA8K0Ohwd+J3kEImwqlK0Z5
	LMrX02dA==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBoaM-00000003Sgd-2oue
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 07:18:40 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-4a003bd18e5so16331535e9.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 00:18:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790752717; x=1791357517; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jaOi9SgQBlcEjje0pSLuoVl2zNe4f+4W9jub/av1TQM=;
        b=IpTZ0OdHzPQ5uzmpwWtldITwrNEUVUXp7NPnQimt4AjBTryvNuxQ+BWPBV3sMF7bw2
         pGrUL9FB573yvcbxvMJFat594/ahOrpgeLbb5TSqYSEcyUJuvkbxzNdu5I71i2kp/JMK
         tKgbEs4ZiWmhCR3l6zLYOmsaeyHRsOque3pUdNrOXNJWpU9rvH1mBNruG11cxt2lTuDz
         EEwlETsN3/5aP6tB05ZzzDV0MPYipTxDE2PoFEFx9Eo8PntrvJpIA107DH1s0Unr8zzD
         a1TS++o9SLBWHwI9/l+R7FEvxWj06xXNkB/vPLvdVZvCkZ5zk8azNz1VCtdz70+LZ+x/
         xy1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790752717; x=1791357517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jaOi9SgQBlcEjje0pSLuoVl2zNe4f+4W9jub/av1TQM=;
        b=vbefevHQ6rMGil2Ce6qW1DHPmT1LE9nFgA4mD9sq5WZM+GXiZb6nCAVk4QIEQ6TN5n
         zt68CMPC0EpBaUqP9NO6axE5OYTRlvFYraKvQYpiNxf4TO/l2h9sa5BFTuTmU6wY6JGy
         93JTPbkfV689WK4TAS1y8ogT7bnUxPv8B+wxJBlkd1l2JC+Dd8lI12C/FHxZ/F/GgAU6
         zoLA3nnmu7OxrjwdrE5W9LQ0lYxcEpEslMaWHLnVxmRVkNzkjrfwnt5Hm1Wh4pLU9Sng
         CRtaAp0S6YpPM1b3FZvsAAN3TO6/HjgNY8wLMQ8GP/ZFt8g9v99Ol52t2kVm3R0r8uet
         hiSw==
X-Forwarded-Encrypted: i=1; AKwUvBxH4v25CiXgEGlg+1jTEqYUE7T7IMYmoW25GLAzhANd0LVI2Co4tu7zJalfNmyHNvS6RIon6kFXNEI=@lists.infradead.org
X-Gm-Message-State: AFuF++nHt4u5wsVFpgNIe+f+i2g1QjPggNBbWB0RBFALd52969/rtVlz
	m6sdHIUR8iYWSk0tIepMCQ0FUldHzBVu0bJn3WJBYwsCzh7HUv4YKjrV
X-Gm-Gg: AYBFou39xAF24zIFVQGMLtLzlypoHldov3wdFftoWyx1gxfqMM/Qucr63gy0cHobNV5
	WSQcfbWiMAVxBmoggnFhQ5GuaRBZrDStXwUHnZdlFcHQkvtAPe3u+35hXMmVkbqVpQb6GL/Y9jh
	83B5qts4zXrx/yk8/fbu9VllMhsdJTlZ7ZZ70jo1DW7jFUNZyVV87LspFdGGt36jmcJpsziq4T+
	I7qcXbqmH6bw6v65v9+JWFflDKTJKRjJ0s/fGnnYmBpQXHdsf11U0fW4j6HYZmnL5P83ujmggvw
	tgQ8LkEVtaMS6f9lRd10TJjHhWtV7gVt0/E5LVCVTw0pEQHWlN4yg395cg2rLhgdtRPzQjQsG84
	N2HuXmRp5gu0FISMFJEwHFKtz6rxJGV6ffbltOKobqbpKENUEdAnVQOwJ18UXPA5+U/BQv3QZ1u
	Uyj260nkq7r2MhH+nKx1VooygpnyxRnXXktkQlFHPcWF2KaVGAVeWHdNt4V+WRJgXGFdWybTVah
	gtvCr86VDTNDsle/+tnMqpZ8enn6+Vg2Z5l5hOpx6UDLasRc3nTVWCwq1bjEeiB
X-Received: by 2002:a05:600c:6815:b0:49f:f963:7093 with SMTP id 5b1f17b1804b1-4a01b00d679mr6300785e9.23.1790752716700;
        Wed, 30 Sep 2026 00:18:36 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-82-57-191-234.retail.telecomitalia.it. [82.57.191.234])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a01b1e79e4sm10590905e9.2.2026.09.30.00.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 00:18:36 -0700 (PDT)
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
Subject: [PATCH v12 1/3] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Wed, 30 Sep 2026 09:18:17 +0200
Message-ID: <20260930071826.48811-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260930071826.48811-1-ansuelsmth@gmail.com>
References: <20260930071826.48811-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_081838_940766_8ABEBAC7 
X-CRM114-Status: GOOD (  20.37  )
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
index 70a11f2ff61d..0b9946c532af 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -785,6 +785,12 @@ S:	Maintained
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
