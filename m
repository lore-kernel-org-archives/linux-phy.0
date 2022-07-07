Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AB29C04E85
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYLlkHuj2vzH2+qA6pF5b3Uvd27iLbey+rygS5m4r+M=; b=FigwAFfSeOzU3z
	fmsYVfeDa6hjSVeZ8/J8NumGIFE9/2tPF5W2ZP6m9jgUQn4AFNp4tSdmejZXn+tqqgwT1AfKfPfjL
	wJAtcx954QbOxIe+zgIHfDqVmr2t9MTh3DWqS/pYNGOrJXngFPWtdcftilntXcsyCMY+wh6/pRi60
	gvLjq0YT8geG5K45uzzEi4f0J9Glcd+BlqTg4sKCWcT/LlqvdAyulbpPlntSaAYGIUXLLLznEtPmY
	fJlQddToWiXjyRsfHI24GYh9XGkas9YwtTdbKDmLouv5pR2D6k3zvG7ktFivF+u6N+MNFbAIZK6mn
	dv464lyb8weBh4F1kqZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrR-00GL1n-Ig; Thu, 07 Jul 2022 13:48:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrI-00GKr4-Dj
	for linux-phy@bombadil.infradead.org; Thu, 07 Jul 2022 13:47:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=O0QOefw24hzVyPGwAUMNn0ZuDRMQGF74f5lsKvWKsZg=; b=O+9dvcaFOnSWe0t3arK/hn7Ih7
	ceoVrWT/dtwPSl49/cFxrWazzU79o8O+U+pKTT3LnXkqg0wUeFM63Ux3e6qQnlkYaVUryYcl/YzQU
	0K/YKUCojLIJLkrwbqpkKQ6cbJwXp2oBJZZTqMzLTuXLKjODZbuV03PjePHib6CfS9SD7/PSYpQ4j
	3wCvw2Xwkq/E9ymXdLz2c22C9Hk94yHljnRgfXX0IIrhLeZxSawCffACwoJwCQo1yazZPsZxPj4y/
	X3N0iN6JMZ2YRbzYtvDxRk6UXoT6/wpi1XV3saXP/MFxUmQwRRXMEnNBcaa7xUFy3dcEPP7fXZggP
	ohbUCKIQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrD-001IQG-IO
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 24015621A0;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41877C36B18;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201660;
	bh=HEgMwQ8qqlSDilU664H/drCY92HIR0qcwkEnBpKRAns=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=M/o2sq2Fu3BxKJs2l2XTDmvxxvKPzPFF09ye+Vsgz0ilJRcMklgkOvqLNrM0n9i+j
	 HNHwDLat0CE8hy3JqpAaE4K7Ntp6h2gCtxtO3iz+PG2ONtok+UtXWwfW5Og0eDHRAz
	 JmWofbh6PCEg6DCgUe+Uni/4oMJvsvNvGSMHE4P+9Zxx23FF2PSG8No0PsOx1oJkGW
	 tPk73OWFDxC1lrSXqbtD1v18MzsHVUchElDRdkK9G8eCNSv6CklXiTClXgPtwa/yah
	 1fF23npCt7tyVX8wvxbDOdUQntPjJ/GaKBKE1F6X+Sl6vuLbPsbhov3PG8H3SDbUU7
	 A525jS5BYUo0w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr5-0000xP-9f; Thu, 07 Jul 2022 15:47:43 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 19/30] dt-bindings: phy: add QMP USB PHY schema
Date: Thu,  7 Jul 2022 15:47:14 +0200
Message-Id: <20220707134725.3512-20-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_144752_299140_5F8B8475 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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

The QMP PHY DT schema is getting unwieldy. Break out the USB PHY
binding in a separate file.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 ...com,qmp-phy.yaml => qcom,qmp-usb-phy.yaml} | 69 +++++--------------
 1 file changed, 18 insertions(+), 51 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-phy.yaml => qcom,qmp-usb-phy.yaml} (82%)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
similarity index 82%
rename from Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 21d6ec875529..66cabf4d5722 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -1,11 +1,10 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-
 %YAML 1.2
 ---
-$id: "http://devicetree.org/schemas/phy/qcom,qmp-phy.yaml#"
-$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+$id: http://devicetree.org/schemas/phy/qcom,qmp-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Qualcomm QMP PHY controller
+title: Qualcomm QMP PHY controller (USB)
 
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
@@ -51,20 +50,20 @@ properties:
   ranges: true
 
   clocks:
-    minItems: 1
+    minItems: 3
     maxItems: 4
 
   clock-names:
-    minItems: 1
+    minItems: 3
     maxItems: 4
 
   resets:
-    minItems: 1
-    maxItems: 3
+    minItems: 2
+    maxItems: 2
 
   reset-names:
-    minItems: 1
-    maxItems: 3
+    minItems: 2
+    maxItems: 2
 
   vdda-phy-supply: true
 
@@ -75,7 +74,7 @@ properties:
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-    description: one child node per PHY provided by this block
+    description: single PHY-provider child node
 
 required:
   - compatible
@@ -87,6 +86,8 @@ required:
   - clock-names
   - resets
   - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
 
 additionalProperties: false
 
@@ -113,34 +114,7 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sdx55-qmp-usb3-uni-phy
-              - qcom,sdx65-qmp-usb3-uni-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy
-            - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
+
   - if:
       properties:
         compatible:
@@ -149,6 +123,8 @@ allOf:
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,msm8998-qmp-usb3-phy
+              - qcom,sdx55-qmp-usb3-uni-phy
+              - qcom,sdx65-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
@@ -164,9 +140,7 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
+
   - if:
       properties:
         compatible:
@@ -192,9 +166,7 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
+
   - if:
       properties:
         compatible:
@@ -217,9 +189,7 @@ allOf:
           items:
             - const: phy
             - const: common
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
+
   - if:
       properties:
         compatible:
@@ -241,9 +211,6 @@ allOf:
           items:
             - const: phy_phy
             - const: phy
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
 
 examples:
   - |
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
