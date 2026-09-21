Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD409C982E6
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 23:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=slK2+M9WmR5jPyx12Ll8Y0KQ+tpVYZqjXV7byA4vv6w=; b=PHanuAn9JKGxVN
	+0vK30WM5N9fFkfqVi0cpta4TzmSefQZl5qF8EvTAemd92m8voyL5ZqLvb69o03QstSfa2gaIleJ0
	cBe74/Js0+XBbxRWiokK5edhvoUVU4qziY4chEx7Fif8xVm7XlB6KQv2ZGs+3eld7sKQ7VH/up/CZ
	I/rUDGi9v/oWuHRNDCQEQAM6+/KCjSaM5MhKFA1aVA9KqhLKds0rn9o99oTY6Dc7M0extjO379tGd
	sgv5kjYw9sSQA/QpysP51lC0dJEfqarSYUQlPUfPl82tV6PdR+0mLxafvBjEuF/ezouhdIOlq7KfV
	J/dlLD0k9edORCkHI2Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8nOk-00000003f7V-0ogJ;
	Mon, 21 Sep 2026 23:26:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8nOh-00000003f6S-0XTT
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 23:26:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9040B6057A;
	Mon, 21 Sep 2026 23:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 129D11F00893;
	Mon, 21 Sep 2026 23:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790033166;
	bh=8GAx9y7yJ/xv7ZzWtq+gXF0YOXtW3406JmpS9FGPHkQ=;
	h=From:To:Cc:Subject:Date;
	b=POkAV19NqyryMrsyWC7a+LyTrBB+FPUhjeYSS84r79quiJ8prDKy5wvDIpRDsAexT
	 Qr/GpW5AeGdxr4556y65o9MgFKuzSvTNt8tBoj6SaJXH6NDTiD/rn0bNH6yua/cmKK
	 n5WCSYThWBHaHimzrmPpZUBNgLqmF8+4E6Om/YHEwx3+ZClIk1+VH81SgYztlTGN46
	 sA+g5ktxfMlcok1NvzAfv2TitX8ZBU9H6Tf30QoVUPJK4gJBHdURUMVbDNbxg/iclv
	 Mqq/2TPre8jQLD3TbZFuVVZYt83bsLdrsxAv/90HbQ3ZoWCrX6ifI1RZjOQxeuWBCy
	 sA2Z2vg/gnwnw==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: qcom: Relax required supplies
Date: Mon, 21 Sep 2026 18:26:02 -0500
Message-ID: <20260921232603.3129898-1-robh@kernel.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
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

For the QUSB2 PHY binding, keep the three regulator supplies required
except for legacy IPQ6018 nodes that do not describe the board rails.

Assisted-by: LLM
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 001fd0ccc985..2516eab7f6d3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -165,12 +165,23 @@ required:
   - "#phy-cells"
   - clocks
   - clock-names
-  - vdd-supply
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
+        - vdd-supply
+        - vdda-pll-supply
+        - vdda-phy-dpdm-supply
+
   - if:
       not:
         properties:
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
