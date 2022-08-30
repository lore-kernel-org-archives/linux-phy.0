Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5F63C0502C
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yylhq0SJHSXkAgNf102RJU7yg2lJT99VsnGUGfMJ0cU=; b=Ef4srSLpxyL2M4
	NEGpSNzEDV2t5g6tik1ns1yHtflu6RY25baMmKhXavVSf8hXc+HGa786sleSJKceoW0K1Kv+LDraQ
	on064MSlYW3mK9EYCLZTQ7d6DfxCblDapqc+nEJeaV4w9NejxCfaLFKw5pz0p7cF1fdO742WyPEbb
	VgGujHjDO5XbdHu7Sd4Xi9eWyWXPM3PP/oVxBhUOg3KoAQ5EOfdSy/KzIaM7lBAtPFnj2NDPCcZbv
	V/k27/VEVHiSpmvCBIHA7DuhBVIq61oA9vbvcNMVYoAZG0G493PdD8D++h921fhIgfegFOnqYbRHe
	GuMa/0zrOAhglGXJ7Ngw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRZ-00GZeB-UD; Tue, 30 Aug 2022 11:30:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRT-00GZWo-Jj
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 80C4D61572;
	Tue, 30 Aug 2022 11:30:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1ECDC433D7;
	Tue, 30 Aug 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859000;
	bh=YXEO7TnIknDOjep8rYgIZiNPpS/HJKSGiIdHgQZk324=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rylHwQlZG/b4yn90lJCctDXJE4uvye6FnTwrMNeEZNmagerqm1rHpYJx6G1fdm1UD
	 2PP4NR1pAk8kPuZZba272ADvur1YiJfiRnEGJZzxkdD7d6MWvNng/jKQXn/J+RBO2i
	 Wy/4djdagi6A98V8/nTfaTMDkx0RQnQcmxjpHf8PqQuyrndUYcV6EBxXbFJetM5tj1
	 2M89evbCM+mdgCtZflmhM2cW4Et2Hdl6vM+W9nJ45AOOPAAe0cXxfgUbiA5Xtwt4et
	 nlwMhCvDOc3YXUbtNNCevxDXIZ4x7l+iLXlI2qYhnlpyj11hsjDFOJpWt8q/UL8BqJ
	 QhPKaeXJwsXZA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRN-0000zt-3w; Tue, 30 Aug 2022 13:29:57 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 03/30] dt-bindings: phy: qcom,qmp: drop redundant descriptions
Date: Tue, 30 Aug 2022 13:28:56 +0200
Message-Id: <20220830112923.3725-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043003_775205_25E23D25 
X-CRM114-Status: UNSURE (   9.90  )
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

Drop the redundant supply and clock descriptions which did not add much
information beyond what can be inferred from the corresponding resource
names.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 108 ++++--------------
 1 file changed, 25 insertions(+), 83 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index f3976b1585b5..da38764f845b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -92,17 +92,11 @@ properties:
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
@@ -135,11 +129,7 @@ allOf:
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
@@ -147,9 +137,7 @@ allOf:
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
@@ -167,19 +155,14 @@ allOf:
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
@@ -196,20 +179,14 @@ allOf:
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
@@ -230,19 +207,14 @@ allOf:
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
@@ -259,14 +231,12 @@ allOf:
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
@@ -288,16 +258,13 @@ allOf:
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
@@ -315,17 +282,13 @@ allOf:
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
@@ -347,11 +310,7 @@ allOf:
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
@@ -359,8 +318,7 @@ allOf:
             - const: ref
             - const: refgen
         resets:
-          items:
-            - description: reset of phy block.
+          maxItems: 1
         reset-names:
           items:
             - const: phy
@@ -380,11 +338,7 @@ allOf:
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
@@ -392,9 +346,7 @@ allOf:
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
@@ -412,19 +364,14 @@ allOf:
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
@@ -441,19 +388,14 @@ allOf:
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
