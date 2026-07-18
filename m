Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 320FBC44515
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 02:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFwhS7ZlgSY0TC3B8DdpbVTwavpSzPydtXNjhAl7G4s=; b=WL4Fg1e7lEycPY
	HSch58zwGpZ7tcx0I8sT/ZU6StmgI1Jwo/JbFqFfsa5Tg66k/f57zgJJhrkrNU8Xo8/i07ktvCe9V
	INA1dPYeNTXs3xJzwce47EUKl4v/qcvRNWy3KIvKIauJcvHRzLMY83RU8dZ0a5usgLvXEb5Zi7Naz
	L7eaVFoXMSQr0tZIjIMKRUuSWBKXx5ZbJ4jvyl8OVPwkgDaV8iXcWf/58+9/JFAOTQrlB2eSszj1B
	QgRXuBkkNLxmCO/417AbXzyzO7hJC5egaEXoiC2xAALr1KXFRHAJnwlJbYH65tg/8ftlsOO1//QRy
	Lk9kuigiruUCCnvLtfRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkuwe-00000003YqC-2CUB;
	Sat, 18 Jul 2026 02:38:28 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkuwb-00000003Yp7-33rp
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 02:38:27 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-493ce08a75bso34565905e9.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 19:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784342303; x=1784947103; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C1zdgJ/E2ohNwZS2QQgpks1mLElw1NRwGvhu99duCc8=;
        b=ijFdrCydFvfz4JpkM7ZBbv5ZkCfcGKM8jT7qqOp8dD9mMlVWzfDM6J/paCyysYa2f/
         B6mGI746FWlEHCtG3kPicIfBMkje4cpqPqeQKOE4MgCTycK9HyqGb4T24tNCxwORSwQD
         ZmTiI/3eZqKIjFysFHRdJ60Kc+kBqQeZZLjXaNECVVaKHj31030vIehsB9o5jHs9keq7
         w8ikCSbgN1tVjkVVjhwqdIxMOB+NzmY4rHXhKGu+UgP30DpWKl93gYKagVCNonXFaW6o
         qc2t9k0rAsz8GPA0N/JPqZOW7DHoCdgnZZvIsKQ+fOYHWIHpv0SSZSENm+ESA+KbNas2
         MsnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784342303; x=1784947103;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C1zdgJ/E2ohNwZS2QQgpks1mLElw1NRwGvhu99duCc8=;
        b=AzJMbqR+AkICiCuKAHPZrlUrtpucu4UAFHcsSOmLKqaERT6UmGZK0v0Cqj6/NYIxTn
         R2iyAUKi3yIEdK0WHexB55FdfLK/KmUsmcc6AxopCDpHfybiaPFM2M0caz+B6CISET4j
         VLuH/XsAYbd1+ghvnkPHIlOwEDcCI9UpLH5LCKxZKe7rQw805UZa9LwVMJ15iHvZ69hV
         ICtgfQhCpxVlUgZIDU7bi3/SOJRtU45hnCrqM+Ui8IbCUjZIZxUqwPwiWdX+DLGj7bV7
         6mwikdOYCIPZLHWncKgUqMnQfUY9r3Kci8e+q7leiilRGHX53Lf2U5uC4DJp6tOpQmwX
         v3qA==
X-Forwarded-Encrypted: i=1; AHgh+RrzOdhX0JOkaRHaa09p54vvC4uJ0U7/RQrNkCEVGvWAfDMKfs0yADeQKwemg6m/upwdFUdBCPeMs5A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0/9RTcos1zl985pTztBsUvooQ07hppdl2hmw5OYjzyE8KML8n
	jfZH3u8uflpekuwc2uD/ByMu5x77JjAVYl/1GPPjy68qQ3JX/047tiR3xhbnlESjRxo=
X-Gm-Gg: AfdE7clFuAkRkTwhIWJw7d9YJhlW1SkssD5mUoaWF6b2tt90kGaDC/0tytP79ewzRmW
	1G4xsorphnrWx42he8DNczaIXXVg9EJKarsuai9isKovpmRm2Ze0D+G4wZdKbE9KQwHz8lNofCE
	Uo5tgrY+AP8JiVZljvaLW4vsSIDIuM6WEJOFpun6oaXUbkUGzifLhfYzCjfNx3orDt3h5B3FB1v
	snwFq3hLFiMeqSJc0+rhB4mkoIkD7ajTu7NLgkzAfzvzrAPbYcyN2Wc+ZbB7N7iSOX07o5D+6Lo
	6TD8U7mqIpVi6mVsVQ9ciMEDwb8dNM40bxNhB4uDbd5Q5S/BWQiiYnOQ0H2LNm/FasN42YyXV4+
	YA8KSrsDqaOeXKT4fX/C3FMD/I7Px06Q/yLCLhRHhDZjOMYgmn8CiSGsgML2Ep0R5FYCNqh2DtB
	HgYvTTeFis/XSx
X-Received: by 2002:a05:600c:4585:b0:492:45a0:dcef with SMTP id 5b1f17b1804b1-4954a3eeb63mr57220575e9.5.1784342303493;
        Fri, 17 Jul 2026 19:38:23 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.30.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49548e14e1bsm67524235e9.2.2026.07.17.19.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 19:38:22 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sat, 18 Jul 2026 03:38:17 +0100
Subject: [PATCH v10 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260718-x1e-csi2-phy-v10-1-5720a7888953@linaro.org>
References: <20260718-x1e-csi2-phy-v10-0-5720a7888953@linaro.org>
In-Reply-To: <20260718-x1e-csi2-phy-v10-0-5720a7888953@linaro.org>
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
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6162;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=4CejNBxwYr6qK2LLBsKy77yO7TG9DBAT6iXNJvDrqBI=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqWuccR4/99Ti/mSZWTs9hwp+xMB6opOoBdZDY1
 BkyiC+f8g6JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCalrnHAAKCRAicTuzoY3I
 OqdrD/9IGCUSzAzY3e+PzlnyOyJDkZmAI0VPNiJV5bmz9O2udJuaYDUBVTlDitGO4agnKlaP9iy
 FGKA+56SBdoNldIw3Eonob4beh678TAK/DdHkjhVqnmU9TMb6KiCP87/mg+MQZC6UnwvpAM7mou
 /dujngstFjE81sctbqs8BAkLRJWGv/UIeyim2UKVLdwQbVyhzjejCECa+r+V6GlOD7fpo4nYOvh
 3BL/CrSXaU865RktVcQYzwd0VbCabMJsgjfl+1s0iSnj728bALSS/MufTTxUG6IbI/EvN9DYZ/y
 nHi/f0dxDeMin8c3IaHxxgeupnajcmFJ+YqQsxRdRO2qqNeWWi4EGOQvJ+ecvzKVz5v2+AOmewp
 kUHzniHd8UxhDEZCbH1LJXnS0qNZH8vLWHBD2j+kY595wMB99OGWoVkV1EnJBncli0wM+q88/j8
 YLk7183Zox8GTy+KKyRGiG33PA9jV9O+AIpQ+6Ln+ckdx4aweRIq0TifDIdJ8cS6Ktc8iraEvRa
 LxhqqdGYjK3hGHhNd3Bpz4T+WEStAx/KzMaNvZaKHLX27f7/lfkED2YTuLSJoFmwgaiR0ojAcXW
 aOOaTOegULeT+Azv56loxZfhHyRp7+ryzSoC83iuxMjqrrBbjnwMrO2eByM1lQ5oeWEF8dOM2U4
 h8Hvnf3+CeMWl1w==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_193825_822548_218B97A6 
X-CRM114-Status: GOOD (  11.69  )
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
