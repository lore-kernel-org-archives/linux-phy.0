Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2B34CD5BA4
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 22:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o472Oa9lvsSdfkq0MRYTau8xA1z4XG8wt6HGdHSChPk=; b=0Gr5jIQC8fwkdf
	oAYYtfmCrjJ7Wr91+xwSwEX9PBe7YoGHiNjjzhOu5NwPUaMgkswPxQtCOvueQi1sNnzvqJO4K/qSE
	DrH74C7NsRz84kmS/FVuMm0QbOk+U0/Dm2tr9lnfxVWW89R4BjCaK6HvP5cvvCuRt9uAyclqd82Uf
	9nFhqkycoY+s/V7IYeK+WSS6S+H8BcIOS5yOauf/EiUwnIXzbQfCR5Y/nGQ9BQukOAuv0hyxvWR2Y
	7bkwIFjyj/rAzOhN6gCD3OgOpwgbs1OzFmTljAcuB4ag8o0qRLqXCsPblbobvTApf0HGcP3Z8oTmm
	oqMS7sUhD0M3yZvNRicg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPScD-00000002uK3-1hZX;
	Tue, 19 May 2026 22:08:41 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPSc4-00000002uDX-1jLO
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 22:08:34 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-48a3e9862f0so23874825e9.1
        for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 15:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779228511; x=1779833311; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lV7W1ei2FqWvKC5DxEE00R5KzZQXh+DIYHlxBEzj0kw=;
        b=GMXLD8tsCLP30uufi+CaqQMBKoQtlRdDOtvkW5ZBryPxnXuB6O8nUXA4oev7lKUSBB
         LJRs8qP1zmbM+YkqlsSV7JcN5eIPHEu5ZMfRd6mEK0Y1HiqAPJf+q9JpQavVOYlXnOhw
         NLLEgR6wsyfTwnFnpkFyUigfwOpPSyb7wHGDjIvwF9RGgfjXZPdVFXWP+/Y9iwhVyiER
         FwtWZLnAfKCfWqL+CHdL9DmXd6Bpzw3iWMPtMLkZUDw6LntEpG/j5caSwd15gLR15dg0
         qG9FHPHNxU8PmADMIwPbrCjZXVWIawyUk+fFT6FPp1phJoifbpMEjGCDgyUwuoCA+lbq
         wvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779228511; x=1779833311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lV7W1ei2FqWvKC5DxEE00R5KzZQXh+DIYHlxBEzj0kw=;
        b=e0Ft5cRfpvjNP0QpVO7G3cCOpBng3jQ6NJ1FdfJ9KHVuVi3Zm8bF69Fb6/EiBh638q
         mBmH2Fz5kGnQbUodCfJC3xYIjqUvxB8IZCxB6zGz9wx2TzQp4zN8dOZqZCnGAfjlVo6K
         THxGROzDIMSenpb/X5nnDvkQm58kYqXsZNyju6Yvq0nspyniTKG+yBcSK7K9HJCenDH/
         KGEPL79/E1kJm3P/Zr6iSB9yPpqN/u59Xv6Cu9PvVDkIpDUN16VoWfZEaBPJyoI/VShH
         xIY59cFQIGLH8tt2Rs5PSxkwPwpM3jiwo1b9M65F7sPL9jOu+dG5Ap8FA2MDXDlc4hKB
         /eHw==
X-Forwarded-Encrypted: i=1; AFNElJ/KsyrJ9d3de+uyto1GCNSYYhLusEhcff8YAkezREgov3V8H2mXbi+J8x3W01+++Hsv1avDbI9Lfqc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwC73GkFvE6I2OgL+1Zi9Y+MH0YGE5t0vsH5s+cLJGGCpfbhvOp
	InQ1rZtZs/PJA69KAnJx1XH089Xh0wJ40pS5U/7XnQOTVQ/+JG5iQiiX9WDGSQ==
X-Gm-Gg: Acq92OEa385kqezKeJTSUbB32WVrhR4rGU1csFkGE2FijaNLBmXrIUo0FEkz2+cegL3
	jXCdnRV394tAx7rlailnJ6OZELsdNzMEZltkEnRxoKG/vM/90xjsydK9AGNRVg6taXKAwcjQCfC
	UR0Mxz26+EgKIH0VWELiZbCwjekujidN8awX5UeSC2DPo07Hp0lLWqquYcc0iRK2T7V1CfSNRTO
	KCPPhbIpRLLfB2HYbthVFUu3yn2XBNioeuri1smVEQRQcvwZr8p/pWMWRyPVXNUQn7YHTjbcsIl
	ncUFC/ugHgzlpe/+ivPWZ5RIQgBfeWJSqbrNIroVp74sbuKBmnGyHRuLF0K6QiDmo0USRzi1B/F
	BBAdy9kgFjAWgFeihd+lRROfuT8BXeQlkZTPtJXXFbHQYFS6XehGcyN0CyoVjNgsDcRFgI5MfrX
	AO3BtyPtb/kGKUpwPWJD5AuTEKH18RQnMuty4fA8TODJxaM86M9xJz1mxO4FwESLTf3mE23h8=
X-Received: by 2002:a05:600c:4851:b0:48a:79d8:a8d6 with SMTP id 5b1f17b1804b1-48feea99dc7mr173268915e9.7.1779228510595;
        Tue, 19 May 2026 15:08:30 -0700 (PDT)
Received: from Ansuel-XPS24 (host-82-55-252-101.retail.telecomitalia.it. [82.55.252.101])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-48febe585absm118304005e9.19.2026.05.19.15.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 May 2026 15:08:29 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v7 3/6] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Wed, 20 May 2026 00:08:08 +0200
Message-ID: <20260519220813.28468-4-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260519220813.28468-1-ansuelsmth@gmail.com>
References: <20260519220813.28468-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_150832_496842_035206B4 
X-CRM114-Status: GOOD (  18.81  )
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
provided by the SCU node.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/phy/airoha,an7581-usb-phy.yaml   | 62 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
new file mode 100644
index 000000000000..f561cf2a8103
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
+      - description: phandle to Serdes PHY
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
index 21c0ef0b9ce5..932044785a39 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -771,6 +771,12 @@ S:	Maintained
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
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
