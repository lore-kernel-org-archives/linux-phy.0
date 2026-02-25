Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 134E5FD3762
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 14:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVF2of95z5EchuT0o9zICUswRno5u4fyfZJlKv9rg9E=; b=eHWekzLYfCPKSu
	In7zxbEFBoF6e7Oc70DrAmMN8kSdsa4/IaXfez/XHLv53zs6S3RUQh22occQXnEE03VlpZmfkNjO4
	y3BrRGgM2+lnIr/4fcGnWhtXCKsP+MuTjHwp1+GtokdJwWNo81wszg2/B9z3qlAqJMTApq6jnVgKL
	doUfHZiXbfwkfBDkFBCavyAv6th1s1sQ0N/DJLzqp7j3NXmW4WwRFr2EAzWuMFEojfUNcpDrgwM0W
	TfMW+JZ1+fdBOxBcGm5pqAJI0nqa7iEwRnVzGbyqEYYNhmG7AvIYifQMb8iF+4FY0Crl5mXH9vnxC
	+/PrE0wWljvO0aQ0LQiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGMK-00000004Enc-39DF;
	Wed, 25 Feb 2026 14:59:28 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGMI-00000004EmK-1qcN
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 14:59:27 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-4398e850783so715052f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Feb 2026 06:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772031564; x=1772636364; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lD5KPsmZFgAJkA+qIS4dUtEngpbV+kIY4VWOK3YvjjE=;
        b=eyKc60/8BQ9Nz8j6tfKXwCmR1YkfBSXe5YtlYdPJI5hvnBX6qW127iHsvt+C8Bu60f
         508NIQnjynhi+5UTxm2v85fqQ5WpA9iWNmEReVwyTQIQbTgzuHRnvSHT1cO/umYzX7NH
         ftCdnk8Q6RWvKqF220dhW6S8KJfSFpDEn7HlOXBXINal9I83pO/aiFHzbMQ9zQhfL/lO
         GLwxj6UUcZsT1IFOsjBfHFq+gNbD2tDfqNKd4IjNkuzXT38eKxrzaobol5HM68uV1Zjs
         xFUJ1B2sbojwkYGXCrdIXTAXmNRwM7cl435D7rX99IYJcmmMIyEXiJefd6IsjJJAZqPe
         s8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772031564; x=1772636364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lD5KPsmZFgAJkA+qIS4dUtEngpbV+kIY4VWOK3YvjjE=;
        b=vHwvBzbX1EX7p5eiHGOdtucobOiWjQlaEiME2z1Te9IdLn+gvKdfi68ugcVVbY1bnm
         RTCKteUuct0IOrsSLYA+CZMrI4jOrEqxVah5bW2KG2BJZueoaINUFx+Cc/DJdL+ROihN
         GdwVXPjXMzf3foq/vHzwIv0Bw8Kaqz3ZaJrwtvgOp/HAilQmzhhadaRmjtLTXRV2TkFi
         r1Hmo/ppWWEW3uw+MjVsE4BS3SZHNcLWV99ft8OB2wopU0rmu1NeDuEanWpWMVemqEd8
         wdZnnqYUyk6PUA4ji+hC0WrcIzkJFiViY5dJu9rtzxb0YvhoNI1GA/SNHa1s2qUE1dsn
         1nmw==
X-Forwarded-Encrypted: i=1; AJvYcCVGxl43iMISjO/QZG/vxLTMKwcABItKhtDrRwbvk5+amLHzwYYcYLkMK+vUkXNpq9/X1Ou5o08BthI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyK/d8R0DvgvTLdT3X0QG6m4P9vBN7HvvjcOsn7DWLHVwZPjkyK
	/KWIy2IgzmmeVc9Eqd51A3CNz7b3YhHakVyalJuVxmBqGtrs6eHj9gpUu+tNC5nMNjI=
X-Gm-Gg: ATEYQzyrvOpouQHkA/KUkr+AGlDcPVV3gLYgrt5Onv1DvRWDAR468hEY8EYfviqUBBI
	P7KOi/Cxoo82MigX3Tnnq2sv6FLm+/A34sxt9tGNSUxj+Be/liSQpUvj1c+nhWM9DNPsK2hJIu8
	I7cke462aZCXJR860dwH1RICgfI482lQbir7MY42aPxhMdsXzd3vfdFWgEy426L8B4Dq9vMeiJD
	CTG7N1NK8C3wqw2rJbUjprA+79j5rioiSquxrMOyFbKfqAy3JV8VodBq5+PFbtm54ddHWI4Geti
	l8sx3ms8xeMxt5G27aAJBGyjv3o8Oe3tpZN6M/rjX4X1tagvt028xyl4B7aU1H6pOE80jWCh60S
	nD5kOmfZttPnCynsDZhJiyxtF71z8y46LNzQOW1NxGq1LfWe/D3uQr9SbiLIPiR/fJK64ovsCIe
	o8y8WrS2Pkvdx4A0lOJvZuuCohEIa7ExTf3bThajX9oPiPBqVW3YjnoQtUdf3lgsnN
X-Received: by 2002:a05:6000:2288:b0:436:d824:620b with SMTP id ffacd0b85a97d-4396f19e239mr27927106f8f.39.1772031564504;
        Wed, 25 Feb 2026 06:59:24 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d3fc12sm32445600f8f.24.2026.02.25.06.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 06:59:23 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 25 Feb 2026 14:59:12 +0000
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260225-x1e-csi2-phy-v2-1-7756edb67ea9@linaro.org>
References: <20260225-x1e-csi2-phy-v2-0-7756edb67ea9@linaro.org>
In-Reply-To: <20260225-x1e-csi2-phy-v2-0-7756edb67ea9@linaro.org>
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
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBpnw5KQp00QBm1YfmKi8Vnt75xPXqZLRcezK6mA
 cnFmoYNfzyJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaZ8OSgAKCRAicTuzoY3I
 OieiD/43WKOywRAOYv7f9nhA9QwcmaDbv+zwkgk3wp3uuFyL5HIpvv2wpMRbX4y1XGE78oZr0m2
 vzKzCuReM6ITwwln0eMYDrggcAOIHe43YvBmN0pP8dcQBhLf8NQw1FeTTBr6uXgqJtb2dwT5N0s
 OqVm4t3Oz76t+QigA7I3l7kJl7nZB7/wOygvvjKNGcl0BhqiLuKQhKh6NOwqMK+K8OxlMfzIWRm
 66/5q7b7PmR+W4VEf5HSiyfiwS4cqppKAReoHcxDua1dMOfT8RHewQMm4RYVMx0mdJdrGIi4fMe
 GiOE+A3yet91W3WnLPVFIuGCDFxGL5mCp3sTuzchC/wT/sW6gXhHmEhyvhIpiaVaM61ff1Jd3iO
 1bDy6OMoA5EwLv6sklQO+4tLTyBMcaeRPlkniXg05Y20D8U/W4gcct6lVz1pXgQgwQqbD5nv0CP
 uLnE7N/qZc4dPh461Ii8qekDUCIBfc1/qjfDwzPXAwXlCb0CCH26tZBuu6p9LM0/nhc4f2UKWuX
 kBvIzYU1lPYkhTudfZlSlOz7gTGQy37n9TK+GToQ+l+ERG1uIERlMWr3wBzZd0ouxIaSL/LSEx8
 0RZmxE2hR2MTP6kmSQ1BDugtJHlfOLBNo+CGGCzwQbB6ZDVxJqDvMvIqcuwYwz2p9373I0rbRLh
 x2xwN4gV0D4Pwxg==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_065926_531919_47DD4C25 
X-CRM114-Status: GOOD (  11.44  )
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
