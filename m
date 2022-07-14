Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CE3FCCA47B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuMPpTzIwyhITHco3CG0iMb5jpO382afumH8IB3yNII=; b=Yxwq80xecHVpv4
	HJTdPAPJCyoDJ2oNxRj6Ea6zCzqC33FuCvV07gKuvR2k3YF9n7eP8F8SaY3G20xTxRCV7HhTnBoKr
	5jY/mHWdeTXNty/GAl45SXvsOWOXrf1/bVXGKybHT+oZjwGnai4gsiS90IAGX7mzDoFb37uMXstRY
	vIVBc1LCZJRGC10ifWDrUSBcJ7+RpanjjFzoO1zgszBTRrD/AyuSzofkDx701QFvtPZ3q0pRUQP4G
	ENHS3xZSXdf1IovbHM1cn9iIJxq2YdKIEGV7xygxCzqICGKq4ZeR2QSbK/sdBCdeKz1G/G3+CVQBJ
	NopHDjScBGhW/mSOq4eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFL-00ENLI-7b; Thu, 14 Jul 2022 12:47:11 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCQ-00ELA1-Rf
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9F6DAB81677;
	Thu, 14 Jul 2022 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F15AFC341FB;
	Thu, 14 Jul 2022 12:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802645;
	bh=tzNpftOmst6GU4IazMokTsUpgzdTm/ZJtIMAExt/haY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fEalZaQ/FGb67GDScedbjZtpkAKmemM8ZaJvbebPJ1STPjDhzW4/1wollTOhfbueT
	 Lexe2/aJmeQBIMWbN7KzZRCsSZm44pJA0grTZ3vz8fvvGNCHVP9DrDbJkGmLJ4sEM0
	 MA9CUnjv4gKKlXZKFXW69GuvFefSkI3cybGi9MJSn3Z4j4YUQJZ+O9F8Z31hyrSSAn
	 5VRInNU4WJSpgbDUeQJXBdGeW+AeMOZMZ1j2fPdyT90lsLFtJVmYGymx2N+245vnRW
	 tQKBxiO8u68L5tPJgzTanUejqgGP0R/dHPqcFkmvHjY4hAezOeSqH1k8zEMUVBYTt+
	 vBdBCn7ntJ+ew==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCQ-0007Dx-E9; Thu, 14 Jul 2022 14:44:10 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 19/30] dt-bindings: phy: add QMP USB PHY schema
Date: Thu, 14 Jul 2022 14:43:22 +0200
Message-Id: <20220714124333.27643-20-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054411_230482_4C5B7FDB 
X-CRM114-Status: UNSURE (   8.76  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 ...com,qmp-phy.yaml => qcom,qmp-usb-phy.yaml} | 67 +++++--------------
 1 file changed, 16 insertions(+), 51 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-phy.yaml => qcom,qmp-usb-phy.yaml} (82%)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
similarity index 82%
rename from Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
rename to Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 21d6ec875529..430b34eae7bd 100644
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
@@ -51,20 +50,18 @@ properties:
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
+    maxItems: 2
 
   reset-names:
-    minItems: 1
-    maxItems: 3
+    maxItems: 2
 
   vdda-phy-supply: true
 
@@ -75,7 +72,7 @@ properties:
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-    description: one child node per PHY provided by this block
+    description: single PHY-provider child node
 
 required:
   - compatible
@@ -87,6 +84,8 @@ required:
   - clock-names
   - resets
   - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
 
 additionalProperties: false
 
@@ -113,34 +112,7 @@ allOf:
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
@@ -149,6 +121,8 @@ allOf:
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,msm8998-qmp-usb3-phy
+              - qcom,sdx55-qmp-usb3-uni-phy
+              - qcom,sdx65-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
@@ -164,9 +138,7 @@ allOf:
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
@@ -192,9 +164,7 @@ allOf:
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
@@ -217,9 +187,7 @@ allOf:
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
@@ -241,9 +209,6 @@ allOf:
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
