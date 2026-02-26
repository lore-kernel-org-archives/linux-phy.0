Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D47DFCE064
	for <linux-phy@archiver.kernel.org>; Thu, 26 Feb 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVF2of95z5EchuT0o9zICUswRno5u4fyfZJlKv9rg9E=; b=4SnWaZtlmRs+pt
	0IUDkuATRV7mJhWCyQwC9plmc0XmVt9Xon2nGtUerzWXdgGUzdL5h1/H8stc0wZ8QXnp/xTq+S7/M
	GhIZs7q+qhNRi958vlw+XodRbwGK/11CxymuB6M3K6TQjT/8AyzbFxgNdznKS8bng0KTObproqtTA
	PtDMi4eNz+C28NL2sc5+LrFlXVx4wcYyWVKjwQfS+pfT/j7nsJT46GZOj4RjdjhfEdeGeypwK6u4S
	iKACy1NBAhGLjrOvxKA37cQBv4jbganaxFLJIj/tJvtOE8497n+zhZSXEZH7YkDvPoqm7H40jHweb
	kipWVRNwaQgDUKyzF8Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaZd-000000067wy-0ozG;
	Thu, 26 Feb 2026 12:34:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaZa-000000067vg-1RPI
	for linux-phy@lists.infradead.org;
	Thu, 26 Feb 2026 12:34:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id ffacd0b85a97d-4398d1f06caso756221f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 26 Feb 2026 04:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772109269; x=1772714069; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lD5KPsmZFgAJkA+qIS4dUtEngpbV+kIY4VWOK3YvjjE=;
        b=sUTMqJTqvlzHAHSK7t+cf/WNjW06GerQgWU5J2lXeVxNhPjSYRDtzBcFRICgTGp5Aj
         dz15kxCwNZzjLLIYYrVUTzrVeVaIDBJ6IbiRWmDlYHW22LEmDRIu5xO6DuZF0t8yygAh
         A+cxv+46anN/LUjsCglFs8ZCfruAVOVDR+I8OfK+JCVowz2N/Yz8be09ZoWO7OL0sTpk
         N8MASKr8rH/jt/7dql1BidyKccWAWCtZm5pWPmuGSBPStUXoVNfC84gJql14vbzT0vku
         Gzi/b4wgwcCEM8n1AgI05s43U5CcwnbrbBfN10uTgZHnQRHygjk7OL29aVVgjrBQHy5M
         Txyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772109269; x=1772714069;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lD5KPsmZFgAJkA+qIS4dUtEngpbV+kIY4VWOK3YvjjE=;
        b=SWmMuzw+hPtko8slw0ZatFF6Gec7HdzXRgWXk4+3qWzIIPlohKfguzz5Qh51ruRGow
         SR3VG0K1/6Vm2/k+tJWQAm/y5vva6V8isvjgVzng+IGQS0WJtkwnFA/aTHsCOgXwhwM1
         gy74TJiDpLhr6AQ+2HMOoa8YevgxbBTlzwFBQ1Jnk9jrlE3dK21JBqsvu2aU7LqnVqeM
         6gXgb++dM96Ihz2+7vOF7IXCfedYjGcmW0REHqu71ukF0gHPEqdh6hx7/BbP/ej8fxaD
         AffhFCwSZHvEDKt4VIJlE4LkNai0maxKEdAh0bYJagA3X8RtJGQoii4P9U/nRh1p/PMn
         XWUA==
X-Forwarded-Encrypted: i=1; AJvYcCUJJ4sR9tdXNoqcrnD8G0UxJpnAKeT9EFz0OX+0OFDGI0IqKL60VEN/d8MvbYcwRigA/2OPWpEBF2o=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHwE5EWHo23WRpPChDfMMxKF+QnrXzVtKyZG8Qq5zxESaa7z0O
	AaBJEZpPVBx10cFYzFEs1MhUtriacpkN7B0e7aQUR/36zW0fiQ6dGnZueTIVsS9VbPQ=
X-Gm-Gg: ATEYQzznNpPhobNqUXMDMX8sPIxL2sniKI/ScmPxQD24wIVUINE81EmxDM9u6N8CNaF
	xUo9IXX+L5F9QRYs+5ibgPTiXhpJ+FOaEK/zi4TCxtAPHwK9quM7mnigj4CPjXK/68HIPQvA/w9
	gyRxwxxyzs2gu5OXhxNva2NgJt8yYtfH4mWHNDrG9i0hMBgwibbB1VuWvmxScm19FK5wgJTf+aW
	MAqNTjmvV8kOirxaWrkimUjbIS0gEGscg3RIzT9FOBTPQWwOIbY5kBAcpKRnnHWaxeP4aKKI6el
	a205GEGiGtT3/pVGpKNbM3zJFFGg/g3jPTkuPVoyRmvDrbx6OTuAcI6qud89YNHMG8RGxcbSeFq
	4YsBDUrdb8RNr58U9DpOrrO/lczK3psUl0sGPTTtQ0OahMq2lV55gKw0BL/6RU/zhDVR5sAQ2Py
	mN42i+VBwqv/+U8DWvgeMrnwQw3zX0pGkHygJ2Bm0xMjbXDPRgUXT/xxyf2ehNkrUC
X-Received: by 2002:a05:6000:25c3:b0:439:704a:9838 with SMTP id ffacd0b85a97d-439942a422fmr7535125f8f.19.1772109268652;
        Thu, 26 Feb 2026 04:34:28 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d40004sm40800663f8f.21.2026.02.26.04.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 04:34:27 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 26 Feb 2026 12:34:25 +0000
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
In-Reply-To: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4179;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=Fb14ZMbHWSFCbI5l4Xnt+AafwH2WdWeazS5XcLdJBpU=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpoD3UAtH5OWrfI2Nzrg61AauaeQ+EKtK0s9CRd
 kFZkDKQz5iJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaaA91AAKCRAicTuzoY3I
 Ooc3EACde/1mls/OZ5YIwdSIyNFbLxLe5xeEYl95RXJBrTSIZdPMcNOq1M7juovHYI2ium70DLp
 Cw32/JoAWQHmfsJbxP4oD+602/FOCAj6RY6K6vK8Q+ToMZRcPzLrObmIrUZnvbfFJXuyk109z3K
 wht2iAsbOxuoRIlXMhZFBxjY2hLztnkOplXlU+Z2g+KPvHbzC1B0XIRjjmkBcAucxm2VQC1TxYR
 dp+Vca9vg+sS+r0IpEGmy6cHgmlF/AWK9O0DfaXgJiHArOn86noGlOFn1JclG/iQo09OV96YHzC
 5Qnfyu9jH0abLcoN+pTKEZJ4RxbwlDrs6L5z0nOc8WOwXfBdkUtSWuBQ2MiO2QixvGiktksQBDy
 vgYP/adlK39lp88AInfn3kZo3nW7NkSrxa7M+CTNLYWih8dxe+Rqj0yKR818/HUg4+P1u7ULTp8
 VVO5+HPU8pEAXgNJTPlCgYrkkpkWEf3BMd/to651taRP7VG8zOU30VVzsME0ZSXHYxDqXIhRcJQ
 UtawfKc/f9cfLAKciY27ZAkYWPU0AhxdifCAN3AhCeCKRoCS4v4dkyQ2qaBxhQ6FU/arLklyQ/X
 +9HA++9Yp/01KmkXRfsubndsiohiesUI5vI7hsMGwSCRaN7/jnFUo3Ozfc/KHtghn3BZzpYX8L/
 OlQKy+tem1ap41g==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_043430_402548_848C8E7E 
X-CRM114-Status: GOOD (  11.39  )
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

The hardware can support both C-PHY and D-PHY modes. The CSIPHY devices
have their own pinouts on the SoC as well as their own individual voltage
rails.

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
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 114 +++++++++++++++++++++
 1 file changed, 114 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..c937d26ccbda9
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,114 @@
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
+
+  clocks:
+    maxItems: 4
+
+  clock-names:
+    items:
+      - const: csiphy
+      - const: csiphy_timer
+      - const: camnoc_axi
+      - const: cpas_ahb
+
+  interrupts:
+    maxItems: 1
+
+  operating-points-v2:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  vdda-0p8-supply:
+    description: Phandle to a 0.8V regulator supply to a PHY.
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
+  - vdda-0p8-supply
+  - vdda-1p2-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/phy/phy.h>
+
+    csiphy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <1>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                 <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+                 <&camcc CAM_CC_CPAS_AHB_CLK>;
+        clock-names = "csiphy",
+                      "csiphy_timer",
+                      "camnoc_axi",
+                      "cpas_ahb";
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
+
+        vdda-0p8-supply = <&vreg_l2c_0p8>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+    };
+
+    csiphy_opp_table: opp-table-csiphy {
+        compatible = "operating-points-v2";
+
+        opp-300000000 {
+            opp-hz = /bits/ 64 <300000000>;
+            required-opps = <&rpmhpd_opp_low_svs_d1>;
+        };
+
+        opp-400000000 {
+            opp-hz = /bits/ 64 <400000000>;
+            required-opps = <&rpmhpd_opp_low_svs>;
+        };
+
+        opp-480000000 {
+            opp-hz = /bits/ 64 <480000000>;
+            required-opps = <&rpmhpd_opp_low_svs>;
+        };
+    };

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
