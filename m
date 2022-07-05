Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB8ADCCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bKNKhMJJeIr9MIWR7j4w7nNOzeX7iKY0TEndcEMBGeM=; b=Y7ppullcaNqvnL
	51avg1I0f0qqZkty9kgbKmmwQOAl/TGLZOQoVRNWS9cGVVxk80U7vBwdH60eLv1bXfh55YoewEMRW
	jccR37JW4eWrfSSSGRY7WCguVqpVTt9RRi27LjAL716e4Dl3Fmt2FI7uU3dUwVNMptiDZ7ca/EPMp
	OErfH73v/eMe2/kt5FYLasduCzW3pm1VR1NmYrtoOXsn90HKRbEzRzsJxPF4dxF5s+DlpcGDxLaYr
	38n7BTnSGzKSNGVd4AXKkIailMorbFQI6GlhesGr5mbmESPduorsbOdpV423X9ZKByvh0h/oIyFwn
	HfZw+KNxkPRQtvwuKihA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDf-00GwYJ-Cu; Tue, 05 Jul 2022 09:51:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB9-00GuYX-AN
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CEB3E61952;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C11BC36B16;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=UOvgIt68/j0BXReTfByF9D0uM5TktGkUFQmmNBsctqk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p1x0H5uW3YjeOMaRVvDxzSB9awWtwLtO0hLCgNcKXaf+GSfvv0b74qzug73eAW9/p
	 fmWIakJGJ6CDe7gAnwGfwtoMHEjppVAnkWnZ5GecV3pyt4mF8lCOaWi17JD2wOeIjV
	 Bj6W8eSrYMNesKhvG32keynjw2FRhakWbBUTyd0TponsMHJAolFWaBMt+Er52uG53d
	 PpLQ6nJv/mnxzddlz3ajzPNdNMwNshJH7cQ1bdky4QUEur1N/uPjmF77Kpm7c8p/nm
	 9MHoDz8YtH3zRjudiwo8JRPHr1Kmeu2AIJnAIhtHCVzSRjDB59ovInvN9w23w0/9bi
	 Eyd9caIItJB2w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Xm-9r; Tue, 05 Jul 2022 11:49:04 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 20/43] dt-bindings: phy: qcom,qmp: split out UFS PHY binding
Date: Tue,  5 Jul 2022 11:42:16 +0200
Message-Id: <20220705094239.17174-21-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024911_509819_D965F42F 
X-CRM114-Status: GOOD (  14.18  )
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

The QMP PHY DT schema is getting unwieldy. Break out the UFS PHY
binding in a separate file.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  65 --------
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 149 ++++++++++++++++++
 2 files changed, 149 insertions(+), 65 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index f416a1a53a3f..04c24f8e4526 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -19,32 +19,21 @@ properties:
     enum:
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy
-      - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8996-qmp-usb3-phy
-      - qcom,msm8998-qmp-ufs-phy
       - qcom,msm8998-qmp-usb3-phy
       - qcom,qcm2290-qmp-usb3-phy
       - qcom,sc7180-qmp-usb3-phy
-      - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
-      - qcom,sc8280xp-qmp-ufs-phy
-      - qcom,sdm845-qmp-ufs-phy
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sdx55-qmp-usb3-uni-phy
       - qcom,sdx65-qmp-usb3-uni-phy
-      - qcom,sm6115-qmp-ufs-phy
-      - qcom,sm6350-qmp-ufs-phy
-      - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
-      - qcom,sm8250-qmp-ufs-phy
       - qcom,sm8250-qmp-usb3-phy
       - qcom,sm8250-qmp-usb3-uni-phy
-      - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
-      - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8450-qmp-usb3-phy
 
   reg:
@@ -202,60 +191,6 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8996-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          items:
-            - description: 19.2 MHz ref clock.
-        clock-names:
-          items:
-            - const: ref
-        resets:
-          items:
-            - description: PHY reset in the UFS controller.
-        reset-names:
-          items:
-            - const: ufsphy
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8998-qmp-ufs-phy
-              - qcom,sc8180x-qmp-ufs-phy
-              - qcom,sc8280xp-qmp-ufs-phy
-              - qcom,sdm845-qmp-ufs-phy
-              - qcom,sm6350-qmp-ufs-phy
-              - qcom,sm8150-qmp-ufs-phy
-              - qcom,sm8250-qmp-ufs-phy
-    then:
-      properties:
-        clocks:
-          items:
-            - description: 19.2 MHz ref clock.
-            - description: PHY reference aux clock.
-        clock-names:
-          items:
-            - const: ref
-            - const: ref_aux
-        resets:
-          items:
-            - description: PHY reset in the UFS controller.
-        reset-names:
-          items:
-            - const: ufsphy
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
   - if:
       properties:
         compatible:
diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
new file mode 100644
index 000000000000..4471f1b4fb7a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -0,0 +1,149 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/qcom,qmp-ufs-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm QMP PHY controller (UFS)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  QMP PHY controller supports physical layer functionality for a number of
+  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
+
+properties:
+  compatible:
+    enum:
+      - qcom,msm8996-qmp-ufs-phy
+      - qcom,msm8998-qmp-ufs-phy
+      - qcom,sc8180x-qmp-ufs-phy
+      - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sdm845-qmp-ufs-phy
+      - qcom,sm6115-qmp-ufs-phy
+      - qcom,sm6350-qmp-ufs-phy
+      - qcom,sm8150-qmp-ufs-phy
+      - qcom,sm8250-qmp-ufs-phy
+      - qcom,sm8350-qmp-ufs-phy
+      - qcom,sm8450-qmp-ufs-phy
+
+  reg:
+    minItems: 1
+    items:
+      - description: Address and length of PHY's common serdes block.
+      - description: Address and length of PHY's DP_COM control block.
+
+  "#address-cells":
+    enum: [ 1, 2 ]
+
+  "#size-cells":
+    enum: [ 1, 2 ]
+
+  ranges: true
+
+  clocks:
+    minItems: 1
+    maxItems: 4
+
+  clock-names:
+    minItems: 1
+    maxItems: 4
+
+  resets:
+    minItems: 1
+    maxItems: 3
+
+  reset-names:
+    minItems: 1
+    maxItems: 3
+
+  vdda-phy-supply:
+    description:
+      Phandle to a regulator supply to PHY core block.
+
+  vdda-pll-supply:
+    description:
+      Phandle to 1.8V regulator supply to PHY refclk pll block.
+
+  vddp-ref-clk-supply:
+    description:
+      Phandle to a regulator supply to any specific refclk pll block.
+
+patternProperties:
+  "^phy@[0-9a-f]+$":
+    type: object
+    description:
+      Each device node of QMP PHY is required to have as many child nodes as
+      the number of lanes the PHY has.
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8996-qmp-ufs-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: 19.2 MHz ref clock.
+        clock-names:
+          items:
+            - const: ref
+        resets:
+          items:
+            - description: PHY reset in the UFS controller.
+        reset-names:
+          items:
+            - const: ufsphy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc8180x-qmp-ufs-phy
+              - qcom,sc8280xp-qmp-ufs-phy
+              - qcom,sdm845-qmp-ufs-phy
+              - qcom,sm6350-qmp-ufs-phy
+              - qcom,sm8150-qmp-ufs-phy
+              - qcom,sm8250-qmp-ufs-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: 19.2 MHz ref clock.
+            - description: PHY reference aux clock.
+        clock-names:
+          items:
+            - const: ref
+            - const: ref_aux
+        resets:
+          items:
+            - description: PHY reset in the UFS controller.
+        reset-names:
+          items:
+            - const: ufsphy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
