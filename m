Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD074CCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4GWQJjQB5hYiNt0KgL8imEcL/dWJLWSTEAIkV7a9bQ=; b=AOE52YjUhRcZEJ
	XvX7San25nswBtmAoItMEfKIuxfpPQ3eHszYvzflcRqmTXGy++4B2DNc7ZWfquDO9uIuNUBuIS++O
	SdANDhVScZkgYnC4z/dVr/T8nmVCEMG5CG/2Fzy7mmujArJ40vLjLsw+Pk2q/hxqaZumBDqE8bTAG
	Avk/BU1KqzFn8ig1FAhEf3/xupVJOPEJH/nlmA1BM4nzim3UMeNP3sH+waslCN7N7X2licvG1dvVP
	k4ZV6QMU29q1LfnauCuDThypOaYDkPbFTwUHV8QQypT3MA05cF8uFYRoGaEasj11BSBwwI6ViY8oZ
	ceqPxsZB+Ely3l0EqwcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDX-00GwPC-Ts; Tue, 05 Jul 2022 09:51:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB3-00GuS6-I7
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9BD3E6192B;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D140C341E1;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=5IEFwvykKWpluWYXuOvfZ01fDmcJ5NrUbb4Qf56H6+g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fvKR8YLNh6OgoPX2GLks3m2adddWQtdVdc/rNcRL0ZkIEzfSO0DHlLGw/fGPEM4AC
	 Qc7Thw9QZhHLpEAVo7pCxBFHAb70VESP6/F+vDykawvtTudUwOVIDIRrNaZJsWGvhS
	 7ml2Ug1lQzFexSGVHeZTfGeR+8DO7twQm57/Z6Ic+f1Qx3n5DXwWuFEXsMUmaQ8kLK
	 YD1RI/Bl8MYxgzwrwFmAPD0bLa2ZR+OyeU5kCuzdZ8Evbk6GMV5/vLdqUvFhfhF+9N
	 iw+7RI9FpJNDocQYt4twpUoYbWrvPBdLItla/zVqosHlX3tEJqLwk+HZD3V6no1iSs
	 7/tMu+eL9tQaA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB1-0004X9-46; Tue, 05 Jul 2022 11:49:03 +0200
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
Subject: [PATCH 07/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: clean up constraints
Date: Tue,  5 Jul 2022 11:42:03 +0200
Message-Id: <20220705094239.17174-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024905_794840_5A1CE702 
X-CRM114-Status: GOOD (  10.44  )
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

Drop the compatible conditional and tighten the property constraints.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 65 +++++--------------
 1 file changed, 18 insertions(+), 47 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
index 14fd86fd91ec..b73bf5c06358 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
@@ -19,10 +19,8 @@ properties:
     const: qcom,msm8996-qmp-pcie-phy
 
   reg:
-    minItems: 1
     items:
       - description: Address and length of PHY's common serdes block.
-      - description: Address and length of PHY's DP_COM control block.
 
   "#address-cells":
     enum: [ 1, 2 ]
@@ -33,20 +31,28 @@ properties:
   ranges: true
 
   clocks:
-    minItems: 1
-    maxItems: 4
+    items:
+      - description: PHY aux clock.
+      - description: PHY config clock.
+      - description: 19.2 MHz ref clock.
 
   clock-names:
-    minItems: 1
-    maxItems: 4
+    items:
+      - const: aux
+      - const: cfg_ahb
+      - const: ref
 
   resets:
-    minItems: 1
-    maxItems: 3
+    items:
+      - description: Reset of PHY block.
+      - description: PHY common block reset.
+      - description: PHY's ahb cfg block reset.
 
   reset-names:
-    minItems: 1
-    maxItems: 3
+    items:
+      - const: phy
+      - const: common
+      - const: cfg
 
   vdda-phy-supply:
     description:
@@ -56,10 +62,6 @@ properties:
     description:
       Phandle to 1.8V regulator supply to PHY refclk pll block.
 
-  vddp-ref-clk-supply:
-    description:
-      Phandle to a regulator supply to any specific refclk pll block.
-
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
@@ -77,38 +79,7 @@ required:
   - clock-names
   - resets
   - reset-names
+  - vdda-phy-supply
+  - vdda-pll-supply
 
 additionalProperties: false
-
-allOf:
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
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
