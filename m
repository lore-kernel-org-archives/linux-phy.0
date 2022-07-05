Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80910C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nl/DVGMXI8suG0RbYe8R1ZHI4mxR6QeenidgX0xk9IU=; b=RlqiJN1KejdMqs
	nKCcn2urmnghrrUI+NHSRBqTVd1UUI0SZpvVks13OE7AzLsu4rwKXE6vztKXotOCdy08gMlemIs8L
	bZKKfqZ/iByZNnC2m4yEUwTBc0GOfqtis17QInSJ/pR1wdXaY1vlhZSqYKxSnmjDABu7YVaBMnZ+Z
	avX0rlgYQHVUSG2iG6ruhZgeWVh+Vj/tcVvtE5CqV71UWOwzCKC4tPIOsxvGjXRqBg7gBQVPbXKW2
	a5UD5g6XZMxXWYo6m6vC0jWbcFqNGZ7UsuEfvAymaZcbvria4dTKeoUTg42YdYBRm6e0tdYt9CTo5
	YshXm1ZBRse3zXztXUFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDY-00GwQD-Eu; Tue, 05 Jul 2022 09:51:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB3-00GuRh-Iz
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F2F0761917;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27361C341D2;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=FQcNecU5EN3xvEBaRrDBNhVj2QdH74mRC4IAq8Yjrog=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DGlfmyCGrxx0Bsgsr3Vho2ChSD5Ptb1KUzM+seaZ+hyhCC/2EZ/T1ykQyQx2lGqQy
	 3+VwfNHui4wJoqPynUjzjuyv6Qws0EG3vGkYctg9KVrbO3ht/8tySaiNRNSSx0aDQh
	 d5CMvjj8T6917jYpmSKK9e2T/ypakDQFE44xto4T2gl/o8OHqx6Gv3cvClz/FoPnLv
	 waWOnyVUbT1yYENexm2zEudDB3+/tjwStpfthXV9yCQMXWwZxCjdX4s8GV1En0Cntb
	 0HblG+PpCdFzxiLXeqO0bCMdPnmaiXnrAg81m0sqJMjzF85ExIxUZATqK8z3s0W16T
	 9L3kJLu/pOPUg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB1-0004X6-1Z; Tue, 05 Jul 2022 11:49:03 +0200
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
Subject: [PATCH 06/43] dt-bindings: phy: qcom,qmp: split out msm8996-qmp-pcie-phy
Date: Tue,  5 Jul 2022 11:42:02 +0200
Message-Id: <20220705094239.17174-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024905_853047_2DC5D78D 
X-CRM114-Status: GOOD (  14.45  )
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

The QMP PHY DT schema is getting unwieldy. Break out the odd-bird
msm8996-qmp-pcie-phy which is the only QMP PHY that uses separate
"per-lane" nodes.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 114 ++++++++++++++++++
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  32 -----
 2 files changed, 114 insertions(+), 32 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
new file mode 100644
index 000000000000..14fd86fd91ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/qcom,msm8996-qmp-pcie-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Qualcomm QMP PHY controller (MSM8996 PCIe)
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
+    const: qcom,msm8996-qmp-pcie-phy
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
+              - qcom,msm8996-qmp-pcie-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: PHY aux clock.
+            - description: PHY config clock.
+            - description: 19.2 MHz ref clock.
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+        resets:
+          items:
+            - description: Reset of PHY block.
+            - description: PHY common block reset.
+            - description: PHY's ahb cfg block reset.
+        reset-names:
+          items:
+            - const: phy
+            - const: common
+            - const: cfg
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index bca006e41821..7a76fd286cee 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -21,7 +21,6 @@ properties:
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-pcie-phy
       - qcom,ipq8074-qmp-usb3-phy
-      - qcom,msm8996-qmp-pcie-phy
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8996-qmp-usb3-phy
       - qcom,msm8998-qmp-pcie-phy
@@ -184,37 +183,6 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8996-qmp-pcie-phy
-    then:
-      properties:
-        clocks:
-          items:
-            - description: PHY aux clock.
-            - description: PHY config clock.
-            - description: 19.2 MHz ref clock.
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-        resets:
-          items:
-            - description: Reset of PHY block.
-            - description: PHY common block reset.
-            - description: PHY's ahb cfg block reset.
-        reset-names:
-          items:
-            - const: phy
-            - const: common
-            - const: cfg
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
   - if:
       properties:
         compatible:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
