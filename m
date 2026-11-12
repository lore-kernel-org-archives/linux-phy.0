Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2E5606A33A
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 19:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2rtqFaCQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=OSZs3QTo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=MlriT1KXluRpRNnQL8uATjsQT7duAC0bGtUKt6ryVmM=; b=2rtqFaCQWnTaToV76n/At/35ow
	BCzwP8VO+SNvKJ/6VA04U6lDzNWgpPTXTnlaZR89ZmCceIpMeA47V79ZpZAPpr24eVMV+hR7PScit
	Ur3Ld0JmOUwXri69UgwGeN/jSwMjyjhxpKqz9beLv1Grt+f/QvYTUUdjpJZwE75j4jQqqBuKDh8Rl
	p8nkk/eN29Rh0KFULos8LvFZcHPeOpRdgEZ1utJstSubh7ZFhwCEhk9uGLUg8RPuy7IETat5uS1kZ
	y0CFM+xkhE/rAP1KBCrFW71ZZESIhYjhv8l9UC8qIQ8w5bDRouAzZBwvA6IIxxpQZ3Po0irCv9puA
	PQuUcOxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRaOt-0000000AwZF-03aE;
	Thu, 12 Nov 2026 19:23:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRaOr-0000000AwYx-2mJQ
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 19:23:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2AB4A42AC8;
	Thu, 12 Nov 2026 19:23:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD1661F000C5;
	Thu, 12 Nov 2026 19:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794511437;
	bh=i3t+AreUue7siiZH8t6zrV81m0hBjn5b8jFxGm+MTNE=;
	h=From:To:Cc:Subject:Date;
	b=OSZs3QTornnsEGVWo5cP+/cgdr8bt9n7x2CA05Thl1ln0yZkj4dC4NuyFRRpJa+iu
	 PTIVAkiDPz0Ri3necM92pppNyiUqkZUmudYVe2FkdxXVUqDydo3AalIXvc1DeRDz9N
	 JvylzoaXKZBfo50TYh99giTP+ibx954zHosbwIcQ7gHyOvFUaNaxYWiujW8r8UMYSy
	 su+MM3w3dSdDmCCJ5YiLy8gS0jZffsOtHssspKg4aFy7GqxIjjApIPDrW/WLDZTHH9
	 kWta8293oSdD9/9wQtjXpSb4ghaiDYgpETi76BqryINNQPgjEOoHIFF7tLY32t4200
	 ii0LtU3AEiCug==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: phy: qcom: Relax required supplies
Date: Thu, 12 Nov 2026 13:23:44 -0600
Message-ID: <20261112192345.3962577-1-robh@kernel.org>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

For the QUSB2 PHY binding, keep the three regulator supplies required
except for legacy IPQ6018 nodes that do not describe the board rails.

This relaxes the requirements for the IPQ5210 as well as if it is
compatible with IPQ6018, then it shouldn't have more required
properties either.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
v3:
 - Rebase on phy-next

v2:
 - Fix trailing whitespace
 - Add blurb to commit msg (for sashiko)
---
 .../bindings/phy/qcom,qusb2-phy.yaml          | 30 ++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index cfc5a1d16b7f..de0041dd2846 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -174,11 +174,35 @@ required:
   - "#phy-cells"
   - clocks
   - clock-names
-  - vdda-pll-supply
-  - vdda-phy-dpdm-supply
   - resets
 
 allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,ipq6018-qusb2-phy
+                - qcom,ipq8074-qusb2-phy
+    then:
+      required:
+        - vdda-pll-supply
+        - vdda-phy-dpdm-supply
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,ipq6018-qusb2-phy
+                - qcom,ipq8074-qusb2-phy
+                - qcom,msm8996-qusb2-phy
+    then:
+      required:
+        - vdd-supply
+
   - if:
       not:
         properties:
@@ -208,8 +232,6 @@ allOf:
       properties:
         power-domains: false
         required-opps: false
-      required:
-        - vdd-supply
 
 additionalProperties: false
 
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
