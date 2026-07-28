Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C3B5C53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWV2+gGvSE4l46m8fYjhox0anVHnAAnQMpNOTypjfnM=; b=kFdDOXU9tnVKUA
	Izd68AnyIBgaLXVfMR9jrWXMEwkXc4Up9u189+EzoD7FEyd9bWW8xnpAWygBg+LeEz8Qf1kfgCoqZ
	raJUXJ3vZMnp1ThSPFIfYss28IESjDJHZPKb2JtjmE8r2vq1gnaH3b3lqCwk6q3ww/hGysp3BIUdY
	ZD8AhU/b/nW9cWxvFy1Hh+H1huwZJ6uDRZmHQ7hV/Gmh+jOzPWaDV4yucJwA64jkqydcAbSYnnYpJ
	dqov+QIXNjyO814AUJTpNNurMRfrNzzrO/Xu18vaE1K5PY8f9ABfVsuPMTv/4x216BqNo440T2SXD
	cBlG3MxlEDe4jqTtD0lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woelc-00000004vKD-0mLa;
	Tue, 28 Jul 2026 10:10:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woelb-00000004vJv-1rGh
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:10:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0045443FD5;
	Tue, 28 Jul 2026 10:10:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67AA71F00A3A;
	Tue, 28 Jul 2026 10:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785233430;
	bh=dIfKfIec2FGyunm/+Tus+IvAl0rnNUfIxPefz6BsbXY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=NqOPIrSr2+Occ4XhQr1KZ0XuBly1TE2GhzBy/+cWvDRh7NYwFgr8neXajzO1N5Sq2
	 aBKywUx6W4poGFUi7ictguc+7IYopS7rjV2A055ZZpWxrvHTD1IwtMb09cLWpnwYtk
	 OuxFXaKhqVecqZ4WSCeQ74lPOVhQCi7Kaz4gdgmSQRTHoZdQdKr0KWEPZ8CEvlPToa
	 y/Tnxjl9/UgU/ecqZRXPNWHh4A7RyD6nkLAIfMYCNUxZPpCeX6Wj4zOvFFl7ciBv8E
	 rUbWKWKyJvSbnakn96HFNCtC+4EIbtCf9ZBaLo2GKaXHhT6JJnYCV2vwgvaIg9j11n
	 wE7Rf0ffqQJUQ==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 28 Jul 2026 12:10:12 +0200
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E
 description for USB4
MIME-Version: 1.0
Message-Id: <20260728-topic-usb4phy-v2-1-5d9dd5149ec7@oss.qualcomm.com>
References: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
In-Reply-To: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 usb4-upstream@oss.qualcomm.com, 
 Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, 
 Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785233420; l=3334;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=XfP7xVdYmEavZgvB7n2IjdAMBM/4sWrCIVDpXN+ojc8=;
 b=3/hQ+Ov7/Y9sKkI/61WAhAUy1JYmU7q0ruqkaxf3IM12+YJY4bOQs1Ve32ZyIMFcuJ4Cxq0uq
 gfZV2MMFbV6AEtTHleyOO684RqiSSnIJiXDf9v5KOWEf1CtuhfU1VhM
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Some instances of the QMP combo PHY (called USB43DP) feature a third
functional sub-block, responsible for USB4/Thunderbolt 3 communication.

Compared to the today's state of the binding, one more clock (P2RR2P -
PHY-to-Router, Router-to-PHY) needs to be enabled for the PHY to be
able to switch to USB4 mode. Allow that for X1E.

Also, add a bindings define to let consumers access it.

Assisted-by: Claude Code:Sonnet 5
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 55 +++++++++++++++++-----
 include/dt-bindings/phy/phy-qcom-qmp.h             |  1 +
 2 files changed, 45 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 4eff92343ce4..18930eb96bdf 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -51,12 +51,7 @@ properties:
 
   clock-names:
     minItems: 4
-    items:
-      - const: aux
-      - const: ref
-      - const: com_aux
-      - const: usb3_pipe
-      - const: cfg_ahb
+    maxItems: 5
 
   power-domains:
     maxItems: 1
@@ -187,21 +182,59 @@ allOf:
   - if:
       properties:
         compatible:
-          enum:
-            - qcom,sc7180-qmp-usb3-dp-phy
-            - qcom,sdm845-qmp-usb3-dp-phy
+          contains:
+            enum:
+              - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       properties:
         clocks:
           maxItems: 5
         clock-names:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
+            - const: p2rr2p_pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7180-qmp-usb3-dp-phy
+              - qcom,sdm845-qmp-usb3-dp-phy
+    then:
+      properties:
+        clocks:
           maxItems: 5
-    else:
+        clock-names:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
+            - const: cfg_ahb
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,x1e80100-qmp-usb3-dp-phy
+                - qcom,sc7180-qmp-usb3-dp-phy
+                - qcom,sdm845-qmp-usb3-dp-phy
+    then:
       properties:
         clocks:
           maxItems: 4
         clock-names:
-          maxItems: 4
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
 
   - if:
       properties:
diff --git a/include/dt-bindings/phy/phy-qcom-qmp.h b/include/dt-bindings/phy/phy-qcom-qmp.h
index 6b43ea9e0051..1c3ce0c02b0c 100644
--- a/include/dt-bindings/phy/phy-qcom-qmp.h
+++ b/include/dt-bindings/phy/phy-qcom-qmp.h
@@ -16,6 +16,7 @@
 /* QMP USB4-USB3-DP PHYs */
 #define QMP_USB43DP_USB3_PHY		0
 #define QMP_USB43DP_DP_PHY		1
+#define QMP_USB43DP_USB4_PHY		2
 
 /* QMP PCIE PHYs */
 #define QMP_PCIE_PIPE_CLK		0

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
