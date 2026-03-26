Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B48B109E535
	for <linux-phy@archiver.kernel.org>; Thu, 26 Mar 2026 01:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7cZsdHjNOOPVMuNn32NKtuqpb4DT8vqWKLR98HvcOWg=; b=sOa+QoP1Cq1Xhn
	3frf4RjmIOFXus+JiRhtNyscD54cZdMqMQOYs7w3jqhcrLrmZLpD5VfCQiJXEsCOeEFPCsIdMR1D4
	XC8YqVGYMfAE7GIqk3hCQ3tCyq64k1hhVPPwAD+jyk7Rfjvt+tmKDJe9Wpdlejk3G08zO/KJUuruB
	VQXpKH8uT+uiOubI2JF4LwP1RNdT8VXX4Ts/5PWgBaMGrIm1ouqsxoAdLA5KLwKYxhcOp/a7KhhtE
	QbJ041MO6YR2aFKviRq6sBSzi50llDxI/TR7N8J7hNwL4De0XLpZYke+Ylw7/G6LKvy5TQUW7IlTz
	V+NApckYOeEitJp+xFoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Z9A-00000004V6O-0BGp;
	Thu, 26 Mar 2026 01:04:28 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Z97-00000004V5O-2BcX
	for linux-phy@lists.infradead.org;
	Thu, 26 Mar 2026 01:04:26 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4870206f73bso2432475e9.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 18:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774487063; x=1775091863; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=26uXUdPFSZi5gxCtVHWZmoe+sZRz0mTOQs6SpMuS8Do=;
        b=iq08rtq924Fl97S+QgbOt4qvQRCZr/N6adZpEMQ1vYEql/a/S7pIRKI5d4QavlOD86
         qdi0l/vcbE7258V+GOAgpD7lx1gkTCuna0Qh7FlpbXioCz7ZEDTqyv/1q4NheJEM1C2q
         iizunlF2S6baMNEhSeHcqn5rj81OiP9WuEpnETU7Dh4gH0kFtYNZkD3BHrWJlcHg41oM
         XDxszKZmppq9EsfLgS3mfzpiHfaVY65qMpDmnMVCl/SQaRh9ywsQ7XqKnhK5jF7JRLDj
         enGWuh0RjZYWA32llYo1g72M2pd042DmKD0BTapymTlJEX+HEUPan12phz8upNkgIGZf
         h/UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774487063; x=1775091863;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=26uXUdPFSZi5gxCtVHWZmoe+sZRz0mTOQs6SpMuS8Do=;
        b=UbJ9rpfNoV+eL47Toz4YCaUDC36Zwj8iwAfpjHMpyRtU7KFaz1xG3b09hgSMSmenxu
         WirfzUQfXqaOvxv6eJ92K2lhrF3bx6/JjVFF/iA+wPYANLSxViMHEHjrwRbo/0R2lWSU
         eFNDL6agRiUaWEsID5gre3JVGvdWGSVWglT4GT//sCUts3NmywForWrWQwK20Raz27SF
         d2hYpDnpk41ar1S4QzgSA+9nw8cBrRUoxtMrutytVivDJCptotnAa7YpkzJZItFeEOis
         kRyMsQh7JKI0OpknfIIzOKfeaETyA69P1Yt5GOPAPbJ1v2XWa8pGziM4jwvFusMpeJ6d
         UMGw==
X-Forwarded-Encrypted: i=1; AJvYcCUB12GSmXynsPuLF2N1sQrXxZfJVqSZ4rYXd4pKti/Ywh+W5DDeTXUIWnoQmmsKL6VYswNdy9EuZHg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1HzdiKWTBqxA9ASH5vKbfNvzTzTqvzXXi095+LS8LzjkLctvi
	otDUNAtpL+9L0Waxb4MdmET2EmW2BAlTWSNTJrK1rGIROwjaL9X40bUxDbdvjABpHoY=
X-Gm-Gg: ATEYQzwCGUpi8rtPYxO7i0GxpjW+FsydEISEUtPWrDMAy398PbHfb+PFLepqttwItUG
	By09C8upP+gc9anahwsJjH+S9mTQ+Es/+C4Xd/khBox1wVa3ZCcnl9QUBmBKIYUMjRzTYics/6G
	dKfKaPDAlVpqDXw4yFEAK4YG/KL7TgteJ9MM7JhVVVdRaL5kUCoO3u2GasFUB21ksbbw4yzr1Sg
	SAvJI27EDLyLxGV3yy/xEFHArnGMpDGXHTtRkZxsKqNVuHF7kr2qnWkWPknCWSZScY9S+iXoBFk
	G7LA3DVSN8yxJMNa+A+h/jLv307bWvfrs5OwOr373+DEqcTz1TdVHhHNf/PCRdZxT5IWr08X50y
	WsVN5wHvEFD1fJMPQORv6PUCHN4JicrBwiOPZZMYer4mjIXMWwJN36/djPlbVZ50aKD6aG5qrDe
	8FOJQ+vZMBx1JNgC9MUfJpA7uOyut5z4ZsCoY=
X-Received: by 2002:a05:600c:1913:b0:480:3ad0:93bf with SMTP id 5b1f17b1804b1-48716061795mr79375885e9.24.1774487063444;
        Wed, 25 Mar 2026 18:04:23 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.163.154])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48711701804sm168552605e9.4.2026.03.25.18.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 18:04:23 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 26 Mar 2026 01:04:43 +0000
Subject: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
In-Reply-To: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=5552;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=qGmgHk355RdMVEd5Dw2LrYt4qWgKg67NpTd8E0fFkWo=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpxIY0MZlUEWyTdMRZlCTbN3IGMZ1OmF0GctovG
 PPJu0g0ymaJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCacSGNAAKCRAicTuzoY3I
 OunUD/9TscQxTa6h7cse7W5SIw1NapN227nZz5NYSjlP/BYNTHIhE/Qq1KWhIng4lD7LqpiSk+K
 CSmPTdCHNMjwLN2qfLvJJ2rLKmp/MVhyS3HnCguGTtbPo5Zr3llI6i7lx1xH5GRUrv4IqR8dnJu
 RJK6xLNimF6KUkcaeOuKI0wgESN/uwZHHiDz6YDRGzoUsXDMmWh6ukngta/9pNW+y/om25KYmYJ
 m/v7J6B79MZb6p4zl+tgYCTQfDGTl8mBdbPKmrEGifYb8wThhkDOvV0qbgLSrMyj2gXAYCf1YCJ
 NzKiPl/IjRoTSLBjZnYRRoguKHtDC1FvZY9T7R8uHpTQkqOGPGM0aUDP/bbMXT9AnHAd74yRC+S
 rIf/7Hj6HPoGbM8Z+FhNORcQQ8Fe0jimSpHLqYBgs8SP6rbonTMPyBI6pBi8qLQPzhDqAekVsyU
 hCdNaYpj8JGAvpj7B3abTHc5Bs+4NH+9YfutPaDSKljnudyiiEeHLs3agAQ0q8v18vE1x/ciQin
 bMyV/emVaO0hldzh2wkO1xHHwZPGWNRVTkNXGyF/V6xczZV5n7wG4LHsz8W/ZGAgexxSKRwtvlh
 VX3wvTa7lG1G3fran7TU+VhB6fkPui+uT0GOLmt1hWt56YlqSX0Gw8kwZutAm0oZHJK+JnZ9dJA
 A0I4Ty72Xqvci6g==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_180425_601628_01021C5E 
X-CRM114-Status: GOOD (  12.84  )
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

Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
PHY devices.

The hardware can support both CPHY, DPHY and a special split-mode DPHY. We
capture those modes as:

- PHY_QCOM_CSI2_MODE_DPHY
- PHY_QCOM_CSI2_MODE_CPHY
- PHY_QCOM_CSI2_MODE_SPLIT_DPHY

The CSIPHY devices have their own pinouts on the SoC as well as their own
individual voltage rails.

The need to model voltage rails on a per-PHY basis leads us to define
CSIPHY devices as individual nodes.

Two nice outcomes in terms of schema and DT arise from this change.

1. The ability to define on a per-PHY basis voltage rails.
2. The ability to require those voltage.

We have had a complete bodge upstream for this where a single set of
voltage rail for all CSIPHYs has been buried inside of CAMSS.

Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
CAMSS parlance, the CSIPHY devices should be individually modelled.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 130 +++++++++++++++++++++
 include/dt-bindings/phy/phy-qcom-mipi-csi2.h       |  15 +++
 2 files changed, 145 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..63114151104b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,130 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm CSI2 PHY
+
+maintainers:
+  - Bryan O'Donoghue <bod@kernel.org>
+
+description:
+  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
+  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
+  modes.
+
+properties:
+  compatible:
+    const: qcom,x1e80100-csi2-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 1
+    description:
+      The single cell specifies the PHY operating mode.
+      See include/dt-bindings/phy/phy-qcom-mipi-csi2.h for valid values.
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: core
+      - const: timer
+
+  interrupts:
+    maxItems: 1
+
+  operating-points-v2:
+    maxItems: 1
+
+  power-domains:
+    items:
+      - description: MXC or MXA voltage rail
+      - description: MMCX voltage rail
+
+  power-domain-names:
+    items:
+      - const: mx
+      - const: mmcx
+
+  vdda-0p9-supply:
+    description: Phandle to a 0.9V regulator supply to a PHY.
+
+  vdda-1p2-supply:
+    description: Phandle to 1.2V regulator supply to a PHY.
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - interrupts
+  - operating-points-v2
+  - power-domains
+  - power-domain-names
+  - vdda-0p9-supply
+  - vdda-1p2-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/phy/phy-qcom-mipi-csi2.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    csiphy4: csiphy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <1>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
+        clock-names = "core",
+                      "timer";
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        power-domains = <&rpmhpd RPMHPD_MX>,
+                        <&rpmhpd RPMHPD_MMCX>;
+        power-domain-names = "mx",
+                             "mmcx";
+
+        vdda-0p9-supply = <&vreg_l2c_0p8>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+    };
+
+    csiphy_opp_table: opp-table {
+        compatible = "operating-points-v2";
+
+        opp-300000000 {
+            opp-hz = /bits/ 64 <300000000>;
+            required-opps = <&rpmhpd_opp_low_svs_d1>,
+                            <&rpmhpd_opp_low_svs_d1>;
+        };
+
+        opp-400000000 {
+            opp-hz = /bits/ 64 <400000000>;
+            required-opps = <&rpmhpd_opp_low_svs>,
+                            <&rpmhpd_opp_low_svs>;
+        };
+
+        opp-480000000 {
+            opp-hz = /bits/ 64 <480000000>;
+            required-opps = <&rpmhpd_opp_low_svs>,
+                            <&rpmhpd_opp_low_svs>;
+        };
+    };
+
+    isp@acb7000 {
+        phys = <&csiphy4 PHY_QCOM_CSI2_MODE_DPHY>;
+    };
diff --git a/include/dt-bindings/phy/phy-qcom-mipi-csi2.h b/include/dt-bindings/phy/phy-qcom-mipi-csi2.h
new file mode 100644
index 0000000000000..fa48fd75c58d8
--- /dev/null
+++ b/include/dt-bindings/phy/phy-qcom-mipi-csi2.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause) */
+/*
+ * Qualcomm MIPI CSI2 PHY constants
+ *
+ * Copyright (C) 2026 Linaro Limited
+ */
+
+#ifndef __DT_BINDINGS_PHY_MIPI_CSI2__
+#define __DT_BINDINGS_PHY_MIPI_CSI2__
+
+#define PHY_QCOM_CSI2_MODE_DPHY		0
+#define PHY_QCOM_CSI2_MODE_CPHY		1
+#define PHY_QCOM_CSI2_MODE_SPLIT_DPHY	2
+
+#endif /* __DT_BINDINGS_PHY_MIPI_CSI2__ */

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
