Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA6A6CCA480
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWJpst/BELUj4gTy8uOmDXbVrW8kkE8gsvuuUKTQUrY=; b=Mxf0S2XiFcYsfK
	YOT7O2IisEiN1hI9uo5MhwDtMdBgR9dYU1KJh4QkSOCsDts4ZFvcogEcPdRCrRYktzWN8vq/RVWG+
	aGWY0N5uWQgefEDk+SAiDNaKnxJliZWxfCVEvQG1KXosWqw9vU5Q+EAbbJx/tkYBGgXfBI9eAlTHu
	vAtQnTZGLOYauvVmGMmv7Q/S+n54fXm8fCXBn4ifyY5j9RYvh0z3d3RfqNyE6cBK7F6mlsf1vr0ew
	hqg6rYut1+vz63kXuglKsYnNvgNMUgV5di9GXDOpmI/BdRPUw03tuYrxvpapeuWzLGwIdWLuYU0j+
	DmGNEK0eFyQOeAbL+F9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFG-00ENGU-HR; Thu, 14 Jul 2022 12:47:06 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCN-00EL5v-Hv
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 228AAB824ED;
	Thu, 14 Jul 2022 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E4D4C341EB;
	Thu, 14 Jul 2022 12:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802644;
	bh=6YeHOv+P58qgygSiXKo+R2eVJkpM031KCqRhgElnomc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mLbhmQrclYLsU7ljmXe2Ani5iS1brqiP0KcziN6E1cJWUSP8PA8WvrwSkLY+rjP7E
	 Oig4bfhXyt90C+w7+uhEHC/RYPBVIHLwcyMuTzUNFKRKQ4O/1sJ1fEpoY6CTkSH51i
	 NJSIiOy/aFF3adM7wn4MXG/lzEFIapkKGscqbb3NQPLt1gwY/EdhVTkWqtGieQgmiD
	 3utW/6Y+Jz6wiQUBTYyIJHX1U6AWX6d5Cyi6tJPz/SZJSkD0+eHrs1304O1pNKaM5h
	 Xgrm9epT0pgAnvWy8Ic0l0TJ43FVftj5JoSPTp1Lz8MSHB1F2RriMCLKvIPMB6KdNQ
	 tZ6nmu5C9XZ6g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCP-0007De-Rq; Thu, 14 Jul 2022 14:44:09 +0200
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
Subject: [PATCH v3 13/30] dt-bindings: phy: qcom,qmp-pcie: add missing child node schema
Date: Thu, 14 Jul 2022 14:43:16 +0200
Message-Id: <20220714124333.27643-14-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054407_980915_498F4C1A 
X-CRM114-Status: UNSURE (   9.65  )
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

Add the missing the description of the PHY-provider child node which was
ignored when converting to DT schema.

Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
index 84642cd53b38..5466a6d35e2a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -68,6 +68,37 @@ patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
     description: single PHY-provider child node
+    properties:
+      reg:
+        minItems: 3
+        maxItems: 6
+
+      clocks:
+        items:
+          - description: PIPE clock
+
+      clock-names:
+        items:
+          - const: pipe0
+
+      "#clock-cells":
+        const: 0
+
+      clock-output-names:
+        maxItems: 1
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - clocks
+      - clock-names
+      - "#clock-cells"
+      - clock-output-names
+      - "#phy-cells"
+
+    additionalProperties: false
 
 required:
   - compatible
@@ -164,6 +195,67 @@ allOf:
         - vdda-phy-supply
         - vdda-pll-supply
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8250-qmp-gen3x2-pcie-phy
+              - qcom,sm8250-qmp-modem-pcie-phy
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                - description: TX lane 1
+                - description: RX lane 1
+                - description: PCS
+                - description: TX lane 2
+                - description: RX lane 2
+                - description: PCS_MISC
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8180x-qmp-pcie-phy
+              - qcom,sdm845-qmp-pcie-phy
+              - qcom,sdx55-qmp-pcie-phy
+              - qcom,sm8250-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                - description: TX
+                - description: RX
+                - description: PCS
+                - description: PCS_MISC
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-pcie-phy
+              - qcom,msm8998-qmp-pcie-phy
+              - qcom,sdm845-qhp-pcie-phy
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                - description: TX
+                - description: RX
+                - description: PCS
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sm8250.h>
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
