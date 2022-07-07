Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBD2DCCA488
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7RSfvYsBUJxBOwCj7hhFuJy4xk+E/TSavDsesQ3w10=; b=rGCgnOHU1w8SFj
	zXd4bHicAIV0yWaAML4702AuC4fSUpZIDolA3eLxdFmfapgQqkD9r1aUAmj5Tt1KL0t9wAm7C0unF
	AA1cd039aRnApfTv2lmFpVdJWnBQDKD9P+0Z/CLPYZBoTeehctb6j2g1OqU80/axsa9E9MTq1SGu0
	Krt0A5c3qvBKdGfsFD3Pha02NZ+oich7w9LtEwSvEMshy3SZLutXluJDkiFPGL2FX7jiD9+ERjyZ8
	wLHpU/4WjOGzpeDa5W1yRMdx6EBPwosCTFXWpbApCnRi0bnzqcu6GTEilXvw6W6i2MxGLHXfnkuqG
	i2w/fmi9KvadhuI+6now==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrD-00GKmT-K8; Thu, 07 Jul 2022 13:47:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr4-00GKce-RV
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id ADEBA621AF;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AD89C341DB;
	Thu,  7 Jul 2022 13:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201659;
	bh=nsBGsr4XzACo0oOKuodhYrKEKO7HUqy+Yib6di9ICIY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ozBSbjpp9k6O2ZKVvm498hDVDKmBjN7aaJ8EQOGjgMFv+hrwPMxPPd7x5Lt1n7gkO
	 UB8vg73NioDO/abh8gYSVNiN9OItA+53YWW9RqxfZ1lRcV/uPlexkV5vCixEUXd8Jd
	 najyUPpmJC9MGJDrEBcw52iAUueqRu0nLuIn2sBFO4ydJcZ1d8vSFdw1nG91qJ86qK
	 RI16VWud2kXu6EugFXUilvx7VIaaZv8WUNyjfKX0QogrU/mR7nzPgXghMno8SMi9k4
	 q/Cq7bmedXMIiPBMt+KMa3ErGht0GcfCOre1mPAFYcMEExUBbbCB93q7VK8tBAv7mt
	 jhmKLtleiwBEw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr3-0000vu-Qu; Thu, 07 Jul 2022 15:47:41 +0200
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
Subject: [PATCH v2 03/30] dt-bindings: phy: qcom,qmp: drop redundant descriptions
Date: Thu,  7 Jul 2022 15:46:58 +0200
Message-Id: <20220707134725.3512-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064743_008190_58A51842 
X-CRM114-Status: GOOD (  10.26  )
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

Drop the redundant supply and clock descriptions which did not add much
information beyond what can be inferred from the corresponding resource
names.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 108 ++++--------------
 1 file changed, 25 insertions(+), 83 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 38e0ade01687..ea028bad961d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -90,17 +90,11 @@ properties:
     minItems: 1
     maxItems: 3
 
-  vdda-phy-supply:
-    description:
-      Phandle to a regulator supply to PHY core block.
+  vdda-phy-supply: true
 
-  vdda-pll-supply:
-    description:
-      Phandle to 1.8V regulator supply to PHY refclk pll block.
+  vdda-pll-supply: true
 
-  vddp-ref-clk-supply:
-    description:
-      Phandle to a regulator supply to any specific refclk pll block.
+  vddp-ref-clk-supply: true
 
 #Required nodes:
 patternProperties:
@@ -133,11 +127,7 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Phy aux clock.
-            - description: Phy config clock.
-            - description: 19.2 MHz ref clk.
-            - description: Phy common block aux clock.
+          maxItems: 4
         clock-names:
           items:
             - const: aux
@@ -145,9 +135,7 @@ allOf:
             - const: ref
             - const: com_aux
         resets:
-          items:
-            - description: reset of phy block.
-            - description: phy common block reset.
+          maxItems: 2
         reset-names:
           items:
             - const: phy
@@ -165,19 +153,14 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Phy aux clock.
-            - description: Phy config clock.
-            - description: 19.2 MHz ref clk.
+          maxItems: 3
         clock-names:
           items:
             - const: aux
             - const: cfg_ahb
             - const: ref
         resets:
-          items:
-            - description: reset of phy block.
-            - description: phy common block reset.
+          maxItems: 2
         reset-names:
           items:
             - const: phy
@@ -194,20 +177,14 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Phy aux clock.
-            - description: Phy config clock.
-            - description: 19.2 MHz ref clk.
+          maxItems: 3
         clock-names:
           items:
             - const: aux
             - const: cfg_ahb
             - const: ref
         resets:
-          items:
-            - description: reset of phy block.
-            - description: phy common block reset.
-            - description: phy's ahb cfg block reset.
+          maxItems: 3
         reset-names:
           items:
             - const: phy
@@ -228,19 +205,14 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Phy aux clock.
-            - description: Phy config clock.
-            - description: 19.2 MHz ref clk.
+          maxItems: 3
         clock-names:
           items:
             - const: aux
             - const: cfg_ahb
             - const: ref
         resets:
-          items:
-            - description: reset of phy block.
-            - description: phy common block reset.
+          maxItems: 2
         reset-names:
           items:
             - const: phy
@@ -257,14 +229,12 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: 19.2 MHz ref clk.
+          maxItems: 1
         clock-names:
           items:
             - const: ref
         resets:
-          items:
-            - description: PHY reset in the UFS controller.
+          maxItems: 1
         reset-names:
           items:
             - const: ufsphy
@@ -286,16 +256,13 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: 19.2 MHz ref clk.
-            - description: Phy reference aux clock.
+          maxItems: 2
         clock-names:
           items:
             - const: ref
             - const: ref_aux
         resets:
-          items:
-            - description: PHY reset in the UFS controller.
+          maxItems: 1
         reset-names:
           items:
             - const: ufsphy
@@ -312,17 +279,13 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Phy aux clock.
-            - description: Phy config clock.
+          maxItems: 2
         clock-names:
           items:
             - const: aux
             - const: cfg_ahb
         resets:
-          items:
-            - description: reset of phy block.
-            - description: phy common block reset.
+          maxItems: 2
         reset-names:
           items:
             - const: phy
@@ -344,11 +307,7 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Phy aux clock.
-            - description: Phy config clock.
-            - description: 19.2 MHz ref clk.
-            - description: Phy refgen clk.
+          maxItems: 4
         clock-names:
           items:
             - const: aux
@@ -356,8 +315,7 @@ allOf:
             - const: ref
             - const: refgen
         resets:
-          items:
-            - description: reset of phy block.
+          maxItems: 1
         reset-names:
           items:
             - const: phy
@@ -376,11 +334,7 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Phy aux clock.
-            - description: 19.2 MHz ref clk source.
-            - description: 19.2 MHz ref clk.
-            - description: Phy common block aux clock.
+          maxItems: 4
         clock-names:
           items:
             - const: aux
@@ -388,9 +342,7 @@ allOf:
             - const: ref
             - const: com_aux
         resets:
-          items:
-            - description: reset of phy block.
-            - description: phy common block reset.
+          maxItems: 2
         reset-names:
           items:
             - const: phy
@@ -408,19 +360,14 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Phy aux clock.
-            - description: 19.2 MHz ref clk.
-            - description: Phy common block aux clock.
+          maxItems: 3
         clock-names:
           items:
             - const: aux
             - const: ref_clk_src
             - const: com_aux
         resets:
-          items:
-            - description: reset of phy block.
-            - description: phy common block reset.
+          maxItems: 2
         reset-names:
           items:
             - const: phy
@@ -437,19 +384,14 @@ allOf:
     then:
       properties:
         clocks:
-          items:
-            - description: Phy config clock.
-            - description: 19.2 MHz ref clk.
-            - description: Phy common block aux clock.
+          maxItems: 3
         clock-names:
           items:
             - const: cfg_ahb
             - const: ref
             - const: com_aux
         resets:
-          items:
-            - description: phy_phy reset.
-            - description: reset of phy block.
+          maxItems: 2
         reset-names:
           items:
             - const: phy_phy
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
