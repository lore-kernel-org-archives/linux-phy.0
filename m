Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA50FC61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 20:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xcg5IWc/wJQgje0LQnW5Uleo/ztMWbXK2ZstIIO4o+I=; b=I1upD3mrPG4ELz
	7RV/40ezxHkYgRlKgwM94KIlVY+ByZERRSyUCgxKQED4v+I25Zr+RItw5VVQvpBsBJrxPXnjY1afi
	GveOX/2YUAajn7vQgTVvsrlg+H1XrSn7H4RPBwRinoE6e6o+mtHT3kv4P8TIRUlCtqHf5YxifnURV
	x3fAW1ESi/m77K3Pr+0ykTlUPlsxRDFtF7X1Dn0Cza+yXGsaVb8vY+8xuj7LUndRz1uJGB8dNwGVh
	dP0ffKh/p5CBs6Ts4reH5I6YLrnWSiOEFZqlQyGdm9y0BhEE4W/ooFoawsi35w9IYxvpSAd7aWS46
	YTS2LRZ40XNUygIrhPTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1UtQ-0000000DJDn-1LxM;
	Tue, 01 Sep 2026 20:15:40 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1UtN-0000000DJC7-2Iyd
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 20:15:38 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-499ac87c92bso2190455e9.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 13:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788293736; x=1788898536; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1DfCv07TuYAcDHU/m3IYLwtGwLnyflgAyzox3zgKtP4=;
        b=SbOmHq4p2DsLqTJ4fY8qsx8xHBGwkvX0WpqB/KO0MIIApRfJSzbRyHX5naSbP30Wqc
         J0pPXwfk9o5amQO7Ip96jFYAm7qQ1eqE5M8HqL5T7blynEhLs8sjLiacc/KxW/otYYEI
         k3dBpljBsGFkkLNRQfoViCqWn9HjdMTPVzKZHP7B37oLU9q6WgTDRtoyHw5p0TGxVlqu
         ackfaHapMYIvLhWdktBeGaHeMeqAIwNpQkcLr8QikyuRgZOgAMmQ2RdsFMy2Wrxlei+Y
         XOJNjh05FXPfbfdVHNTPZ84jhRHpx01X1bIZE93QcD1eE/6M6V/sMiqzYit4dYTJ/kOj
         4bVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788293736; x=1788898536;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1DfCv07TuYAcDHU/m3IYLwtGwLnyflgAyzox3zgKtP4=;
        b=KVa97hH3rbC8o2Thzz9yDT+2mgfLWW10CxXuDo0t9Gnso+mxkN5NuCqZjirsjQO+an
         zUYGiIrdWqkO1MB5mEtpJkstYljv5gzri4ETdPE8RcSsivm7mjjohh6MME2mvMyvRWEt
         1L0ugMroBHmC7jNeBv0eLWuEgMN97s+UWiEySLPcgC2lW/L9ZQ4baCvt74qpYt2hEUnl
         h4KvIUGqoWhVuQp1BTs/NjSnohEcdQnqrANPPma3vYnwc6k74DEdHbYfAzAgnCMhGcGo
         rOriODkb/dJPzknXJg2kfoLlVt7Lu2GnYeqlBM2gp7fIHbQ8dDVE5gXQKN5QQY7uXf0X
         +KMw==
X-Forwarded-Encrypted: i=1; AHgh+Rp0oybecJljTc7oOiQ7hqmlqUEoVgHpyl5OZQ9fHrHOFgTIMP0WHpdiMDC96gcwEYyIxnptx5mBEbM=@lists.infradead.org
X-Gm-Message-State: AFuF++l6vy/53r5Msr1hQbFqWR3yJhVgPsBsSv9HCqCxp4IFQhuFf3WX
	WRKx4jrfq9rjVkwJ4AjtlauXDRBlnADckE09LvKFjocSyi5UqoKHk4OBXSeqKS2ey/M=
X-Gm-Gg: AR+sD12xUBeOOJCgyn8J7gMSOOP9TosNikJFPCdS9BefDPyDWx/PUwnKXPYCivbpYvu
	XRe1COnkXKO8CkpJnn2Dd7LUsx2GRdiaeXyM39eT3huEKRJkQ/gSV+YDwt7kvmuSp+vXvbYd4P9
	0ozGSTQ+f5Ht9QnU3Re2uKE6zNhNhX0sKG8fZCPjVB3cKnQEM3ate72m5fi2uCB2XBMPpBYsqSG
	hzWNSq6gJnuALmSJ4YtENP759I5Ccs0AArsOY93ubXGDxdv+R+SEd5wI9L7olbWkhLHIcMz+yWW
	6wlUrY5oZGjxl6QTal3Ge6jqSRYi26WZWqREMostOi+xqZlCrpGNvMkUHrdW4k6B71ZweTl32g0
	aaBZm2T/4cM3e9ecYKsfLOF/YhsncIOZV9xrR5/uI4SsvcRzckLrE2gnZcsG3lvOcAY99vPW8QQ
	5scw1CB4r9KiIRXvlPYM60CJljTzxxUmbbBIPzB1j75wlMUl8TNuGiry6wBI4kgEtySg8/yg==
X-Received: by 2002:a05:600c:3b1b:b0:499:db27:7b1 with SMTP id 5b1f17b1804b1-49ce5823d39mr1851615e9.15.1788293735483;
        Tue, 01 Sep 2026 13:15:35 -0700 (PDT)
Received: from [192.168.0.35] ([64.43.35.244])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce478daf6sm19909445e9.15.2026.09.01.13.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 13:15:35 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 01 Sep 2026 21:15:22 +0100
Subject: [PATCH v16 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260901-x1e-csi2-phy-v16-1-dd863b929080@linaro.org>
References: <20260901-x1e-csi2-phy-v16-0-dd863b929080@linaro.org>
In-Reply-To: <20260901-x1e-csi2-phy-v16-0-dd863b929080@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7269;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=f5FtGtGO+ENQx81CmNtjaZyTiv2Q/DOGPEtD8cXJQFY=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqlzJi0P+3pQNzVlqYjozs9s8CIp9SYDGl+3ITk
 d9AyT7iiuCJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCapcyYgAKCRAicTuzoY3I
 OjtXD/9fG4sA1qwE6pyHb25d9OIr91F9eePmcXskZNf/DsDbKUEMGioojWA1kIWJwmfHoatysj9
 c1D7udNq+Uw6OJGLYxweQL2Iiy/TwAjQIMQsLysWYa4uATD0H07DF047NJ3pxcp+hI6OanRAW1a
 2pX5rKkwdSOET6so3dTx1yEM9/zQmy24RNO7zMlgWpsxNpFDlehzoqhmhoqc6uhLFs2yssIA5Cv
 iZp6T0bjqlvk02u9Mro7LEYNQq0Fk2xYj+r8OVSGp0TkuDIVk6Vp+Y/AuHlxnQ6bMnOOgTOr0Kb
 OiEDCvj9kZwAigNe4mBff52odLWo+fzayxmppuJqgS5nSyvYL+GtS0l1Sydw9eCrJ+lsSmP610k
 uBRwQSujpXrccc+GdklNWYPJHXItzQr1E0KSoCZWyX1w6tIp8Zz/tSlxbFK6siDd+9s1wXZnKD+
 HZs0txVAoA81Z4AJqBmHczWUNOqOHMhyG/9TS1OvAnUYhPLFLvb4h2OXMk7vpXtZxrXfWst/Hdf
 /rIfraSKNA4ziv04yRMUB7ikDsMuY9VOGHtuLe6sqq9AEhh4TK6fquBmcZyZOq6nz4Km4Ci6R3c
 YjR9xb0wIkOMIj63jZe1I+MpPP/JX04Gdcms1OiqxnSQz0xINYnQHDZk2trkRd27RGqVGDJEY8e
 SVO0w7vO13+gYfQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_131537_642818_9C0A6516 
X-CRM114-Status: GOOD (  13.50  )
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

Suggested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 222 +++++++++++++++++++++
 1 file changed, 222 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..17de0701eb103
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,222 @@
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
+          single endpoint with the clock lane at position 0 and one to four
+          data lanes.
+
+          DPHY split mode, where two independent sensors share the same PHY,
+          is described by two endpoints, each with its own clock lane position;
+          endpoint@0 with clock-lanes = <0> and one or two data-lanes and
+          endpoint@1 with clock-lanes = <3> and one data lane.
+
+        unevaluatedProperties: false
+
+        patternProperties:
+          "^endpoint(@[01])?$":
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+
+              clock-lanes:
+                maxItems: 1
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                items:
+                  minimum: 1
+                  maximum: 4
+                description:
+                  Data lane positions following this endpoint's clock
+                  lane. Positions are a per-port logical numbering, not
+                  package pad or ball positions.
+
+            required:
+              - bus-type
+              - data-lanes
+              - clock-lanes
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
+                    clock-lanes:
+                      const: 0
+                    data-lanes:
+                      maxItems: 2
+                endpoint@1:
+                  properties:
+                    clock-lanes:
+                      const: 3
+                    data-lanes:
+                      items:
+                        - const: 4
+              required:
+                - endpoint@0
+            else:
+              patternProperties:
+                "^endpoint(@0)?$":
+                  properties:
+                    clock-lanes:
+                      const: 0
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
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/media/video-interfaces.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    phy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
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
+                    bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
+                    clock-lanes = <0>;
+                    data-lanes = <1 2 3 4>;
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
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
