Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEFA1C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avUZsCw+ABLiiOFkcOXXd2LdzaVIhbxGGBvVCbqgvX8=; b=3HO33UUdYlRvoO
	lCHVHKDmW1f2yJXsCy6J2lO3uNhpTYrRRvHOKl+knCRnUu9bKE6QbIIoBK/FK7BqDgPRtR3ZDbw6X
	dndMzPGFz5ksdxaVnAOMnZh5wEqvdH3gEYSMrVV1/R6g/PNO+c/HArpFKQ6qWdjO8n55xDugORukw
	0CSZ/K9yMw3CpsH4TKJVzuYvyPe/a/u8CXNC2QOGAgegpVEWLLm8dRMM+g6xhGkNdIRi5nEvZGoEe
	TWQjJpJ33zSq6SQkMHUKva0YwD8ARUUf72puLbgyEyFCbYOi/R/oCBhK//1SjCLCwTYgOkq8vwJOs
	EPgdD6tQggoOwM7LYg7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFP-00ENR3-Ra; Thu, 14 Jul 2022 12:47:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCZ-00ELI0-8A
	for linux-phy@bombadil.infradead.org; Thu, 14 Jul 2022 12:44:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=q9pv5AfjWHUi+wTHpqVRZsTfjmgIG9qQ1iFaBPfA7Hk=; b=NSUocv447XWWCGKwix5JWUQ5H8
	4FxxWsUj0sR6znzl1/wIqsYy3SdTA6N6x/T9SlVpaVciBMgb9NZrQ+6tD2dqmbPPYPf472ItatirS
	4QJ8xtn4OwuMtZTOilPJAMmNqmMIzicg1zBU/fvcXSWwn7XMlrjJMPCaAj0EU3htbxZYHGFXayVsi
	umhJj31ILjGUx2Rqsj/Eh4lo1SUHKF3njpmJ4PKFVtPEkUg32+hVVHjpwKGpmz99wwrVZB6D1I/r8
	51JMpV95THQiLxEWAZvxdwJc6qauYQ2lSEARNDGWADiH/yd+MMrQah649LomGIiXuLGgAnVOvonJK
	ijpXYBZw==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCV-003q76-9Y
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9203CB824EC;
	Thu, 14 Jul 2022 12:44:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03EB8C36AFB;
	Thu, 14 Jul 2022 12:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802646;
	bh=weaKifnS4ySesCA3aDiMG1xC5D2wnsitBfiCDd6gCnw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hpUcwyozJY/plqFu79J7HGNW4tMmjmCxKzLUfyTgdorvWB4n1yz8v+Pt3dKVANVXE
	 ApKwWjkwW5dlUXVtnxBOfBxv9PvEyJ5p7CZ9eBeaZgwwB+SohbF9UdI4rdaaWczaX0
	 iLufZrjqu8cPoatr8zwe/OgDgl2gOrDDXmqqQttPcZJhyhDab4/YzDKePwLaMzY6wB
	 zDUnLXZMS9/YrUWvt/kAGe7I35CIPJs3y/IdzT7GBzkhZ2YXDYv51mnnPyIBzSojwQ
	 qwIYT/3Nj6LCfuwPNrkemWmvx59FT959jSEPHfmJHR8OSoRWMF8Gy/rCBXZmJ6TjtG
	 PLcKDk6HbPIAA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCQ-0007Dt-Av; Thu, 14 Jul 2022 14:44:10 +0200
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
Subject: [PATCH v3 18/30] dt-bindings: phy: qcom,qmp-ufs: add missing child node schema
Date: Thu, 14 Jul 2022 14:43:21 +0200
Message-Id: <20220714124333.27643-19-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_134415_666234_46334FF1 
X-CRM114-Status: UNSURE (   8.95  )
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
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index 0e76256e5636..6e3c186b9972 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -68,6 +68,19 @@ patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
     description: single PHY-provider child node
+    properties:
+      reg:
+        minItems: 3
+        maxItems: 6
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - "#phy-cells"
+
+    additionalProperties: false
 
 required:
   - compatible
@@ -136,6 +149,65 @@ allOf:
             - const: ref_aux
             - const: qref
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc8280xp-qmp-ufs-phy
+              - qcom,sdm845-qmp-ufs-phy
+              - qcom,sm6350-qmp-ufs-phy
+              - qcom,sm8150-qmp-ufs-phy
+              - qcom,sm8250-qmp-ufs-phy
+              - qcom,sm8350-qmp-ufs-phy
+              - qcom,sm8450-qmp-ufs-phy
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
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8180x-qmp-ufs-phy
+              - qcom,sm6115-qmp-ufs-phy
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
+              - qcom,msm8996-qmp-ufs-phy
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
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
