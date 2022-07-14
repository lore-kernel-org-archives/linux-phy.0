Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0DF5CCA485
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmdOnHnc5Pv4u48yqELRv0T+5YZoQw42u3Fdh1LsKRY=; b=AQbZmM4Th77W7J
	yX8Nhj87MnpblH2/uuBl+dbYZ9qdeQeajLHwiGHSGr/ZOL36dvpLUwKc7AqsEwF0D6BJkgLoCazcy
	EJJ+gmfcVzgQSKeAtqXmGn6ZgrmGUGIuFbzEs6FK/XQIZ72CoHNdb8Fk/t4nGArxeorsmuCldclaj
	L/ixCLPmevNfwLLVNNrnTzxvYOVbU5fF8+79uGQKENIdqdgXI9ayo19AleH4z/8Wjmv3ZFyd7St3h
	/DkZRc+IAsYq9U/iqKlUDfBziduk3mPivCg3e390Pj6//cDCivFRasyqFboD4U3dTkaMUXANAs2Ho
	7mSbMHru+djibcOxA/Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFO-00ENQE-SU; Thu, 14 Jul 2022 12:47:14 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCV-00EL7s-3t
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 78181CE26A8;
	Thu, 14 Jul 2022 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8AEFC341F6;
	Thu, 14 Jul 2022 12:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802644;
	bh=knIBdM6fb5GT4CxHhjk3W96Yxu+TiJemn4fZ7BCYVMw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oTfP91U953wGZBm/eMMF8j1Mtu7pdAM9aeyqZY8G/Uo0WR06DE9SdosonMb+JwFbp
	 4DqjGDXGzHLa9wERO9zTN6Zzsy3bRRW8ThwRm1ZoftVkX7lzUGeg2qsdQqWtrCDhzx
	 fYg4F7cEs7G9z+bfG7kSOMa1R/ScKzSVcR3w8ebaKFRYKX3rrcOCfYUbQ/bhjULy5d
	 STU4ahZtPoBo8GjS/RLqTEXcKGgzVqTdQLyJVmAIEXZ+dzNoDvv/1nCQRf02q/+KIW
	 hzhWzhaisMFArEw33R79dV3ijwsKqAdlM2uUXo8e0f1/DyUp8gJ/Kz8kR2ualskfzw
	 pkw5NEsXKAaWA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCQ-0007Dn-4n; Thu, 14 Jul 2022 14:44:10 +0200
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
Subject: [PATCH v3 16/30] dt-bindings: phy: qcom,qmp-ufs: add missing SM8450 clock
Date: Thu, 14 Jul 2022 14:43:19 +0200
Message-Id: <20220714124333.27643-17-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054416_287013_878F4116 
X-CRM114-Status: GOOD (  11.05  )
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

Add the missing "qref" clock used by the SM8450 UFS QMP PHY to the
binding.

Note that the "qref" clock was added to sm8450.dtsi by commit
07fa917a335e ("arm64: dts: qcom: sm8450: add ufs nodes") but the binding
was never updated to match.

Fixes: e04121ba1b08 ("dt-bindings: phy: qcom,qmp: Add SM8450 UFS phy compatible")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 20 +++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index e9dfed29e996..7a1f80e2cf23 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -42,11 +42,11 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
 
   clock-names:
     minItems: 1
-    maxItems: 2
+    maxItems: 3
 
   resets:
     maxItems: 1
@@ -117,6 +117,22 @@ allOf:
             - const: ref
             - const: ref_aux
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8450-qmp-ufs-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: ref
+            - const: ref_aux
+            - const: qref
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
