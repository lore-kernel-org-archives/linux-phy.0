Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C58FAC4450A
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jul 2026 13:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyoVBOwZ6N4i4WhvAsBFHXffPZS9NG445PKcth0er4w=; b=u0oxBUvCkB17mP
	L3z4wmy13onWVf1eJqP+/nhuTSvYpkUYNSQZlyIFNfLHHs3yD6LFrwogJSFom8vZvraZ9rOktyME4
	zS1lZ/zXCFgLqC3ia1No424Ep3Gjrl9gGTBGvvSge1/GwyTPGEnarovVAteX9mQ9ibSgOCd/PH1kh
	iovCB/s1m3U1JnG4p2ZMz8fmMbbtE4MXAozbeqjSNCia4mi6Zk2kE7YpzuVTfG/el7e3EqyvUgL2l
	aVZcJGFrZlYFQmDqwX3zleCOKZfZGbM2FCl07Is5kcc2ooHdR8lQzbUvwA2ydbJtDA8C0WCAFKRXr
	zJtwhbVuK3GUisJ19mIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlRrz-000000052hv-3nk1;
	Sun, 19 Jul 2026 13:47:51 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlRrw-000000052gq-12ex
	for linux-phy@lists.infradead.org;
	Sun, 19 Jul 2026 13:47:50 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-472326ca506so7172557f8f.2
        for <linux-phy@lists.infradead.org>; Sun, 19 Jul 2026 06:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784468866; x=1785073666; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4XnV+FykkybVqG+qJ/ggN1ABFG87UERnEoUc/FfnJBw=;
        b=daWfLBhYD0pyCMt6t1543yu1h7OtTCVM+v9YJA6P/Aa+Z9eHLLqu84u4Qvf2HvV+jZ
         qllzMM9V/03qsnW2w+FfO+tKaXYs6taExHzkLSzGy2J9NL8wBlOOosixEsCuAUDyG2FT
         QZxT+IUUwZRPsZxSfjoT3VLAXTQ+FDk3jtIBY9sMaBrKxNLPdrGVqMtX8xfg0IwIwWYQ
         vKIvKn9saqL3RXFyagdxElRKViKmnTo2ID+ge4SRUaGrhHhlFFPUxugnZ3opjeX82ubc
         CDI8Rr9nAXFGlL0KkQrpJUwmueVIn90E+PnM5KhkLupHid9/en39N76RxME9yvZEDiv1
         Vdvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784468866; x=1785073666;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4XnV+FykkybVqG+qJ/ggN1ABFG87UERnEoUc/FfnJBw=;
        b=ojasgJkVG7iO871ecmHDgLjBYuB6AI8bJxYcLHSDSPWEk5nD0x9wvopfci0Y4Lhcxr
         /JOS8NztdcQtW7zPQyPEnWJx4iDqqs4/ZdqvkquVpMnTiXTyhBllXh6YoIDcspZGb+CY
         5248bMPyKj6N4VZiE82eii+d3lIGNS2UydovVgOe/zoqJb0bHOyZf7+JdUp5oca3UWKm
         3ldPD6lQhgGGktz2SJW+NbsY0AQNjEXuOjLTsGkpTsC3tiACaP2sinffVd6iYJoxR9Z7
         BD6pOLEsJbbeX2B5FwMcr/u9lao5xIg7oZQPzdo/APfqf9sdQtg8RnnXtLGiEwjXrMjn
         H1ZA==
X-Forwarded-Encrypted: i=1; AHgh+RosA/3aZIhH1P/R4X3SoaomW0z7DOOgZEh1AeGoyU+qxrw+hlSy6oAwFr8ZVxzbEucTDZ7/00CUz8s=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz0XL4d/kXIWzRLJq03cs/MD01Ss/NnUL/tiEz9OJfD/O2TD2R
	sII9Hwn9Ive+WNLdzM198fuytmPUe3kMqvIuoxdJvwjIB5KAzlEXUuhzCZ/wlN8BIoI=
X-Gm-Gg: AfdE7cnCpcqtaPsLfKXCs+XJ9dSyG9Dqa+py5b5pLcWYxJemFlEGkup5rchqPeC2u7k
	6pYSLDDcVyFyKUa57r+qxelcM3hCNgV7ESB/I9PzJ1q6I9VRTtREz29ShLSMAV2stxSvR9/0rgv
	kdJCwIcwc4HhM2WzYeuCswmk7FUeXii0ZR0465P9zoA1WySWiCIIMsnII7tYJjhqro87WIBNR9X
	Y6mzT9mA3iRd8Nq3TUYtJ4qRnFZ8Cih5gSJFjpbBbcsjYPyXaMFQBxHFKdlxynIHoBldgquvaER
	PLT03SZRpBSyi+JGbN0u8w5BgpNLuUG3rf0pSFbjJOYIOYn8jevYNbfGz/Banm5UaiIzXilS3oO
	q01+99wOGh6S2lyaXAuEtgMvmd7fXxC8S3mQlDriEkY1r/oHiKBWhx21OM4/Gl5gfS1FxePJLv2
	1gDGh5Cn27FOqO
X-Received: by 2002:a05:6000:29c3:b0:460:3233:beee with SMTP id ffacd0b85a97d-47f6232e402mr7551351f8f.42.1784468866196;
        Sun, 19 Jul 2026 06:47:46 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.79.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63ed1911sm22345902f8f.22.2026.07.19.06.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2026 06:47:45 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sun, 19 Jul 2026 14:47:40 +0100
Subject: [PATCH v12 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260719-x1e-csi2-phy-v12-1-cc7311326d1b@linaro.org>
References: <20260719-x1e-csi2-phy-v12-0-cc7311326d1b@linaro.org>
In-Reply-To: <20260719-x1e-csi2-phy-v12-0-cc7311326d1b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6235;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=AC1MUPJeho28pBdVYrHItIRHxia1fJXAF7Xy5HQMoms=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqXNV+sD+2HdNBVGJbrmz7Ftn1cKJQuBNo+KzVj
 ZykSc+USbCJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCalzVfgAKCRAicTuzoY3I
 OhyrEACyT5DLK7ogJQq65UBK/r/kVSsvJyZIetufSjelyZLyoTkVFiUDD1AKDxy9JgkgpRpCoAn
 uwvxw4AndHAJY1CEcUS/CBO0MCutBZCwnnnOKpABm92+a4a2jQCOTpHvQ782Ywsz7xcmt4tF7FQ
 dniETf2ylH61bgyEnP9AbULHVYfLBU3NbFtKuMgAlaR0O/LyieHDQL6N1D8XNyw/dhAPQumvLns
 miqdlg8xXji7dJ2/EK40hRtw8hsPGE7Pp2K2ojXGHIc3c8JpELtMO6MwJOBy7kmWZQs8o5jKpJo
 XDI4DPbbLLeecGkr2La6Rm06wsMxTBmdazh8ukK9Ucv1LRkfdMGdWycV59KAd5nU9p9GwlNp3XZ
 TrRGFigK/+Oe5XYMYjAuosyrZof8GD2YSVMJ88wbkf9fo4youbKzd1BEpovU4Ys33FCzDLC9+X/
 41AMfAGl/D7Wqvl28outJOJSvZKdoKRqcaw1mmMl0GGMrxBISgev5lxxa79REiwo6M1ZXopSzGA
 GQgz+2FPg1jP4n1amii1eBB+ceqoQ6jaf/Cm5TTHs1SQI8a936gVOr8kN5NJkJ6u6qRfhSkzvjw
 2tZQ3LLhT4Byb0rT8hI2bgNES8o/4uK/+/sD8NdwdnekRb2kYQMf0ZOF30iJJTTIQCJshDIpVkA
 A4YRmBT6Jau4lGA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_064748_319829_5871404C 
X-CRM114-Status: GOOD (  12.42  )
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

Add a base schema for the MIPI CSI2 PHYs on Qualcomm SoCs. This PHY
supports both DPHY and CPHY operation. A special mode of DPHY operation -
called variously split-mode or combo-mode also allows for two sensors to be
connected to one PHY.

The submitted binding here describes the DPHY modes of operation only. CPHY
is left to future work.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 195 +++++++++++++++++++++
 1 file changed, 195 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..880fe602945cb
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,195 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm X1E80100 SoC CSI2 PHY
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
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: core
+      - const: timer
+      - const: ahb
+
+  interrupts:
+    maxItems: 1
+
+  operating-points-v2: true
+
+  opp-table:
+    type: object
+
+  power-domains:
+    items:
+      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
+      - description: MMCX voltage rail
+      - description: MXC or MXA voltage rail
+
+  power-domain-names:
+    items:
+      - const: top
+      - const: mmcx
+      - const: mx
+
+  vdda-0p9-supply:
+    description: Phandle to a 0.9V regulator supply to a PHY.
+
+  vdda-1p2-supply:
+    description: Phandle to 1.2V regulator supply to a PHY.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Sensor input. Always present. A single sensor is described by a
+          single endpoint with one to four data lanes. DPHY split mode,
+          where two independent sensors share the same PHY, is described
+          by two endpoints; endpoint@0 with exactly two data-lanes and
+          endpoint@1 with exactly one data-lane.
+        unevaluatedProperties: false
+
+        patternProperties:
+          "^endpoint(@[0-9a-f]+)?$":
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+            required:
+              - data-lanes
+              - remote-endpoint
+
+        allOf:
+          - if:
+              required:
+                - endpoint@1
+            then:
+              properties:
+                endpoint@0:
+                  properties:
+                    data-lanes:
+                      minItems: 2
+                      maxItems: 2
+                endpoint@1:
+                  properties:
+                    data-lanes:
+                      maxItems: 1
+              required:
+                - endpoint@0
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output to the CAMSS CSID controller.
+
+    required:
+      - port@0
+      - port@1
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
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    phy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <1>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                 <&camcc CAM_CC_CORE_AHB_CLK>;
+        clock-names = "core",
+                      "timer",
+                      "ahb";
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+                        <&rpmhpd RPMHPD_MMCX>,
+                        <&rpmhpd RPMHPD_MX>;
+        power-domain-names = "top",
+                             "mmcx",
+                             "mx";
+
+        vdda-0p9-supply = <&vreg_l2c_0p9>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                csiphy0_in: endpoint {
+                    data-lanes = <0 1 2 3>;
+                    remote-endpoint = <&sensor_out>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                csiphy0_out: endpoint {
+                    remote-endpoint = <&csid_in>;
+                };
+            };
+        };
+
+        csiphy_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-300000000 {
+                opp-hz = /bits/ 64 <300000000>;
+                required-opps = <&rpmhpd_opp_low_svs_d1>,
+                                <&rpmhpd_opp_low_svs_d1>;
+            };
+        };
+    };

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
