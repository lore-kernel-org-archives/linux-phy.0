Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67E44CA6002
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCoBsL2juYpS0+01/fgSyvgc9lKZwehV7azbbt99QQE=; b=nc4EV7zgHbqOoZ
	cXU5MBqy7UtzlBbiu5qH/TQ2FBt669EWX8EBuG6fMAsT+HkeYuEHKZtLUrBlPvFqy9AWkhD8pjens
	raN/sX+mPgsq/EU2A+AJvjqJLKy5hkPVbKGSZh2y7o15XJ/AqVYWvROb3yFF+ATQ5r7+sLuswXWTn
	f8m9uEIUH/iN0sBPc6PjMKI1MtKSbsaDxWfbj/AxwfH8G/NZvzWxlaWgZdf6tqGhdT54utgaHVzpN
	KskjtlvRnYItQb90/uhRJN9/TMQpfV60hD2bvXZRvjlYVDO31SRKToePk65BhDuZ3vMxq+OklDTwE
	STkMGFlMJdQnJWsb2VeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2Qi-00000000VTF-47zk;
	Tue, 06 Oct 2026 10:29:52 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE2Qe-00000000VPH-2RPB
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 10:29:50 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4a0286c981dso24343915e9.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 03:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791282587; x=1791887387; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Lg3zQibfNcBS7Sf0Juia6yunt6F/9FPxX2r5Kh6Q+zc=;
        b=XNUCrWDheiD0+5fd46++DmWznDLOQrbgKXnEPGhaTKUEmxWeCDSNjNKy4VCm1HP7QY
         hePeDq+33JadlHN0zoBOzcM3ogpfftLB9syiRYmWZV0pUFcBnFlRNkaRat4OVUa0j8ig
         kiGFpjK1iTn0J6BRPw+Ks6jE6QP9HzCwuj7LFVFtakGVybEeODcOEpUYQFmNuBv0Izub
         Cl/lB8frkpL/k43RGVClBBW3QNfvucTa80yLR6FN3qUT6+Sf5Pm9udfO6IZgacq2PUch
         4TUP0Q8Q+o65Lygy4nPOcIpPI9dE0ArR18mJJlK6wPSlzTA8bkd+Ty//+kj0AJhhB1hW
         xOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791282587; x=1791887387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Lg3zQibfNcBS7Sf0Juia6yunt6F/9FPxX2r5Kh6Q+zc=;
        b=kDU1uJcqpQ9YA79VpsbzbEIQO9vjteCFhx2uxj2x1Zsec1BJ3JRm23K071iTbJNim4
         amt9T4oZP42ZFZU4b2i2usuFGwbMb9h0BFEHwbzEfGM4dDMjjTkZvwCodjsyG/ikf7c3
         /SYG0+Cr+y+D1yAmTSFIsuyrlURf34jVTYn/RkN9In9Sivfzp0hjToG7PSRHesi5ReN9
         2+zb7NpACemB47NVm7qtUL7vidMay8SvKVO6aNel0nXSL9cC8qaS5FeRnIS1+HEyLO/Q
         orKyd58/Scu3ovCLKCO6Fh5thDfTjz63xykX0pku43K9TTzuOse0Qf5wB2bsTkIu3aky
         kMmw==
X-Forwarded-Encrypted: i=1; AKwUvBw09uShi+sb1ptniuNVZc2roGKNZ3h18IxatL5rM6bkMEb0zM6xknunrPVoF5cdg2Gza9sRgalF/x8=@lists.infradead.org
X-Gm-Message-State: AFuF++k+CZd1XirtmejVt+vcfmwUSq4ChupxIfX82POCol1dYL1wMLDH
	VeGPDnYU6YBlR5h8Du2j6UJ2+HA6Yp/qf7BYHA2H/aed7UCgc1lW3h6C
X-Gm-Gg: AYBFou1LtfVaUBqtZ5Mr0IeEbYZ71KbbGKHa6uicyR5CtVP8G2qD7o+QZmYvZSUD9lK
	JN6Ku/hHG2sRv7u6QwgMvERjiiHmLwvyJUNjR8e+EnbAA35TplXBu1AMaoz2VDirwPE9mH4dxEb
	RD3jmU9L1V8UJ8hlp4U2iH8s575uV3PKriZ1o+cOQLqkm0vQg/6nD6LPQ3tx1Gi48FGNC2oUrXI
	i64B7A3syd+i31JBpLNc6yqf84D/YeSkwwx07mkvzB/Xv0mG8UDTg4ws+uLjuOgZD50EjdgF81u
	dX4vITncS5IPEnrXBL54ZfrKNMg48FhZSPfWxsYs83Qg0iHTZycCbs45o7uoP2+L8iyJFcz6JrB
	jU10LQaYFyrKFtOJsL/5QqnacY178oIHVsbRSdW/dmfbY9Qkddsey5DYHUfI2+wn2m8gTM/A2BM
	Z9TYkcE543jpb95zX76kW6TJVkRcWI6CzMVhvr1fL9jQuSsKdM7Fx4lf7KdEIG5bbst+O1EKGgR
	copNOcGblWiq7P7mrEgOPmvwCdtM/Jqw+vIg5tufQlRQBPg7z8+EhRIjfpd
X-Received: by 2002:a05:600c:1394:b0:49d:17d4:d6ad with SMTP id 5b1f17b1804b1-4a17b551b8bmr15839765e9.23.1791282586565;
        Tue, 06 Oct 2026 03:29:46 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-87-20-252-14.retail.telecomitalia.it. [87.20.252.14])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4a178c33091sm63427485e9.4.2026.10.06.03.29.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 03:29:46 -0700 (PDT)
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
Subject: [PATCH v14 1/3] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Tue,  6 Oct 2026 12:29:33 +0200
Message-ID: <20261006102937.10972-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261006102937.10972-1-ansuelsmth@gmail.com>
References: <20261006102937.10972-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_032948_860178_CE2BF42B 
X-CRM114-Status: GOOD (  18.49  )
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
