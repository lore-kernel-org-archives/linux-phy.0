Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E55DC44525
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 01:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyoVBOwZ6N4i4WhvAsBFHXffPZS9NG445PKcth0er4w=; b=UM5jSi8I7lE1Za
	ZCqcv1qMzhQfCW/59G29RhaBZh0zG+0wtdVR1WEUyZIqnjtPWwnzmSCGj8Y7mtd80PawMSRbuKGv6
	OclNNPRbBICVbuWGp5QmHebqWakFj8+m2ayUksTrufEPxJTUgtx/UUPpz8KeOqtk2PZuc4fHgLDzB
	9RhEhU/ZmKbmqmOcWeOcaFc7d5S/PByEWISKxdyKr5RCkmJlLDDFPKgPPIaSbaqzLdJ5dqN/IsnWU
	lSFVMADJ8Kz6FG9yNNfzX691STqMyaEbu19SGW5zsUYoO7DkaOwB6IKkMjnfwyApNf1RwRtVFuC21
	7YtPPcyX940AG4hdPyRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlcXu-00000005ZvR-0GGB;
	Mon, 20 Jul 2026 01:11:50 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlcXo-00000005Zt9-2vGQ
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 01:11:46 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-49548e01d02so10865015e9.0
        for <linux-phy@lists.infradead.org>; Sun, 19 Jul 2026 18:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784509903; x=1785114703; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4XnV+FykkybVqG+qJ/ggN1ABFG87UERnEoUc/FfnJBw=;
        b=TdDsEuZDNMNBy+P2Knwk1popWUgUuNawF0QJwNYKRUmwP5O54cjIIzu9G3UKhJdLb2
         sEOY5z43Cyw/JVU9yLzC5UcP82NJZRE+D8yi2ss0SLUkv28pI6uieQMO+PpIzkomvCHe
         dcg8UcxceKCuVviBa9bK/zt/olZdUXHmvdTLvcCirl2ujRHvZL4rc9jAisdA3N8E+59d
         FaYjsamHQM8yT0WPe6RaOoM+Q3lgpKRlqGbRexi91pu9F/9/EUBl/VCjskDAJe+m1wKM
         pb7Ua1Og62hbn4EyfXcpDSFX7flhFCtAfIxdYiV6rwDczvCccj+HZOJl5TCc3Jn6pft9
         LNBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784509903; x=1785114703;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4XnV+FykkybVqG+qJ/ggN1ABFG87UERnEoUc/FfnJBw=;
        b=GnE0J0TKLcYPQOc2ctTbBSMLakA9sCjgTjFo99782x6ns59bvdHwxh1kUZiiC07ZYu
         VjOqf9GV3yRqHJGhTcdV6pUUtaPAehF1gqgyOE8x8pCIfppmvmQrWX7b+BiYFsLXllx1
         /47Mt/wDPmWWBfULpFwHwcMr61ehIcM2P/bEvWnh87PqUNFVOz6jFo++2aobENcUcKYh
         Mt+1jYXM7pM5F+icMyupzDjLbafr/moqQdv38mezQXKOSu6BZ6k8P0TEGmUJz65ciEER
         nTf5dvctkQgxFc46ZVUv+2N+djwNEJaHpJ+EUQLblXC7U985NOE7yIuggNnObccq5jrm
         uD1A==
X-Forwarded-Encrypted: i=1; AHgh+RoHmeaJ4u2drdnQeh/3v9tFJ9pgfn/VUZuyeHZEFCorQ1uF3w48+NOKBPqE5ARfvPqDLkzH+9zhsSo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGnFcAViwW91MXsCxIC7PODOg7zJK6Q5N3Qb2vMlZrSl6K3p4U
	EweyfSE9+ptbFzYiXKSM5iZp9gSfy572l3rlYTQukjM27Jbp6x2f9Ip96EBy1hTfec8=
X-Gm-Gg: AfdE7cmpy2f6t431+Dk6y1L1ZKS3408PZwdenlB11Xswq+UY0hZHv1X/yKU8tROBX45
	IaF792CPa3FVlZjQ5ir3mn2cWmQxZcQaiplA/+9Lh2eAKxHymH69gjvdBjBY1rdqteTON8Z9fLn
	v+Wj/Hryax5kSVut/hFv09z1+6DZLHBatQHPRD1qvVrPiPjm4xkxLlh5V4sLcCbgRRSZq/XfKmr
	/38zdxSo4LHWyFqg2VHuSqH5tUI2d+7ZfFrJGiBRVQKAHXBW84qB6GZqOlvZfmwlAHxgqaxpf26
	tclnQ2dFD/imfLnLOKnuL+bX6r5kzHN9/eNuk+i6nxBgzattmfnWjGddIy5/NH9C+gWVpyQes7i
	bbNgiJvG7SrouHUamxlnlRE79Vs55x9x04VzvIr9rKiDvv6yAUrheMKgYOuX13yrJwk88ispTjn
	rO75w7HcTY0roh
X-Received: by 2002:a05:600c:c490:b0:495:4730:15b2 with SMTP id 5b1f17b1804b1-4954a40d1c9mr125802115e9.31.1784509902427;
        Sun, 19 Jul 2026 18:11:42 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.79.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4954d384146sm180847285e9.14.2026.07.19.18.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jul 2026 18:11:41 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Mon, 20 Jul 2026 02:11:34 +0100
Subject: [PATCH v13 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260720-x1e-csi2-phy-v13-1-160c31958863@linaro.org>
References: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
In-Reply-To: <20260720-x1e-csi2-phy-v13-0-160c31958863@linaro.org>
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
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqXXXKvBp3dUE1KtESZ7+ZHlIp/cv9XUuMb2l0g
 16nZ0I4ltuJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCal11ygAKCRAicTuzoY3I
 Oo9LEACTzkusJ7PUs4YxRQWdEU58xvKYuA3I6VtctNKxxL4llpjHHfU+PoReyDg0vAgy2vxWbsZ
 VIc3KMgb+z72wXoxiW/uMO/qTkSMzIFOP239wLExgXPvrkSQWosIdhiGvPY/67sqRTphlDADLIM
 +aaA3oPOSkBKxoEpTh6AANvqmUejhM/t68xVDqsoWFRygiyGTjVTU3jdXBNdcNqkfcIfnE9013z
 dm29kgfJT8ZQtuPKMQZIBCAgl1sfQkoRV4OX3dDzsdkpD4WMPSICC7kLaCD90yRskCbGqB6s0LS
 u/qR1d1ostvTx/p3a+jVA7JfBDFMP/TZxlK7kGQndT/IcCRMqgacMAadhXrGuZcSBHDwuBAx+u1
 a+e6TM7MdJcttBdtDbLs7XiVGcKe/DuPPgGwQkN+8CUGfSdTWjLfpiz1zsyqjGQe5X/rzc81uPo
 loADr6tFPA1pNbWkLGJOfSgm27cRbMSbt3dIFPFMl5sc5RF1rC+uaicBUCRQN6N1+OrGzj2Jjxa
 hKtCBQgoc2RLDZTVHVz7WX44N90qwRS7Ox2AVBahZ1zXvb7Mctns6ook+KNkJcu3bdOhbeFNxNV
 YvOeCi3u/yiy3z2oE7A6XOMfETKaIPCcJ8IyU9/XfEwXYMdRL4NKYuFyVI1Tv9wIeEtPWhcvB+L
 rItQkwSaj3yZaQA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_181144_790998_79AECA06 
X-CRM114-Status: GOOD (  11.96  )
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
