Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C0FCC67868
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmdOnHnc5Pv4u48yqELRv0T+5YZoQw42u3Fdh1LsKRY=; b=iTOfQcFf10XwQf
	noj9iV9FIWmmd6EQjoW1b4A8DuMfH4tBguzJhwoMRYwIzV02XS0tX8PKNT0y2M9tXzycQGeDQXNvV
	si0HZ/wpo+QJGx05O/xmqxBmOKUJC7Ok2BLF7D5IzqQJ1C7t79tCAa83jpJBvBk4djoh8d5/g7Itr
	o+v5IQ9pt3vDVegxLAxjCV9lNMdWKCSUshZ3q+/ltKOZwwTtKCv6Pcr/8bdJ9gBTFe7K0kcnNjX2L
	bFrYUMyY1MVWLnUi/FXHxVjOsQRV+uxxXJr4yH8Q3XUlGFeTCYq47cM3woYHI+QrLcpfUbaWKBXPa
	nd9Y6STbUaXVbZLctq4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRk-00GZhk-I9; Tue, 30 Aug 2022 11:30:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRV-00GZYA-AO
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5D92561554;
	Tue, 30 Aug 2022 11:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A5D2C4FF40;
	Tue, 30 Aug 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859000;
	bh=knIBdM6fb5GT4CxHhjk3W96Yxu+TiJemn4fZ7BCYVMw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JgvC1eAwENHZ31iZU7aHsobemHSAinJ6IB2Pq0/rYcjNKVc5sZuQbC2BY+We+G4YO
	 0I7FUCTwaJPYI5m+tZ2nLJKRvepsz57HV1dUprYLhYRvY7kaqJcTOxmjsk5NcP+zVM
	 s+BbmuNAbosXY8I5M8M8WXaBHdz0syj0Rq8VRWD7j/LP+CLaiSD2Tmi4jEGq8RwkE4
	 bewjZWZubo0kx4WSGxv5De61qC4RjV/2rgpsF8O/6qn5nvJMfC7pWNFGWp/eRog5yl
	 C9ZmrAm5B3/Oy5StEdjglouPaU5TMfkBvY5T2itm+KiLB2QrY2M0I7bzaVLXQwCrjW
	 9NIZKWp6nIwVA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRO-00010a-7l; Tue, 30 Aug 2022 13:29:58 +0200
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
Subject: [PATCH v4 16/30] dt-bindings: phy: qcom,qmp-ufs: add missing SM8450 clock
Date: Tue, 30 Aug 2022 13:29:09 +0200
Message-Id: <20220830112923.3725-17-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043005_477073_CA661C55 
X-CRM114-Status: GOOD (  11.26  )
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
