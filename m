Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 029BACD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 09:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WnErfmhIROFLmucwFKjjG6mA8ijD/3mOgBqGDIcFtpA=; b=ShPuGxKvBu3o2X
	uYBfn4rPLRqQlEC4pCfZN7oYtPORh+8RYi5O3HBX2+3ALMJn9LjYbBZqpqO7OH60HoyIrAkTnUG0N
	AO2Pv8N9kgdYcJdAzX/5K4NwUkp8+P0TYPWJElzEJmrRNeG1SADKlAaIf+VGkLdEOGvoXnnoKYRHd
	B6L6tlQZYpLp7W/kXmfaNyxVBZ0bLe6BUmHEsph1zPPMkjp6K5U+JtDa9s0IkYR8Ff3wuUMsWC493
	HjWfU5ofqC+A3f0SnGlIvphJ68sSnja2ufsSc7iywSUaRyNIB5a3D+l8IJ2NuEnKBMqswbrkGFP6O
	uQ1KVadyBU/MW0gIb3Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXFUz-00000007Iko-1auz;
	Wed, 10 Jun 2026 09:45:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXFUx-00000007Ikf-3ICV
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 09:45:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 36E6F43C70;
	Wed, 10 Jun 2026 09:45:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C3611F00898;
	Wed, 10 Jun 2026 09:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781084723;
	bh=GjyZ/G42bA3GTIlq/LFEMgm0aKS64MYE1ovw5eVTyAE=;
	h=From:Date:Subject:To:Cc;
	b=hZawZbxUF5eBk51hsQfIRT+t66KcENSaND2yIt5fooOz3e0idZqayR6uK9qPNun7+
	 gcY4d9jOh9bZ6lKi+ZpOwxfmxO2FethUQP1njwd4MxG00ikCQxhL6o0XrFgjyu17tR
	 tCxuROeF3eHu9t+MOQn8w7YF7b210mfwyUM8lJ+xYGqqCsOfk7th7U4EH07cmJd6Gb
	 G1b3D+9ugj/z3jokHt/n4EW7eT9jfDWcEtaHfyOwFXkM87q8vW/cV8r3FPjNsdDzgq
	 GpFSgcbYSWGeCmUMPTg4FfjqYSnYBzZP5I5jr8/RlY8u7iQC523BBKvyp5JuFA/F1U
	 jbhB44/nWpKEA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Wed, 10 Jun 2026 11:45:12 +0200
Subject: [PATCH v2] dt-bindings: phy: sc8280xp-qmp-pcie: Disallow
 bifurcation register on Purwa
MIME-Version: 1.0
Message-Id: <20260610-topic-purwa_phy_shutup_warning-v2-1-951c1fbfe9b2@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/42NQQ6CMBBFr0JmbQmtCVJX3sMQMtRKJ5G2thQkh
 LtbOYGbn7y/eG+DqAPpCNdig6BniuRsBnEqQBm0g2b0yAyiEnXFuWST86SYT2HBzpu1iyZNyXc
 LBkt2YI3kukHshXwKyBIf9JM+R+DeZjYUJxfWozfz3/u3euaMMykvWEvRn7mqby7G8p3wpdw4l
 nmg3ff9CzYuknnTAAAA
X-Change-ID: 20260119-topic-purwa_phy_shutup_warning-891e8aab29f2
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 YijieYang <yijie.yang@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781084720; l=2609;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=f3+4d0okBov4perqxPrhCEQLipcvHRqkv7paraH+R6w=;
 b=Wv3VEDIvLwXJ7Zb53ahiTHmQO58d/QmQ/Gjbaj3PFzHJMAfAtcYlzREmGHVt/4uVwffZlKm79
 vkzIwXRzJ2dCO1aMHH+uAiL/ioPr+vLYeo7XqQ10xEhC4xUtY0e3vCz
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

Neither of the two Gen4x4 PHYs found on Purwa supports bifurcation.
The PHY is however physically laid out as if it were to, since there
are two separate ports (A/B).

Split out a new if-then block to un-require the bifurcation register
handle to squash this warning:

purwa-iot-evk.dtb: phy@1bd4000 (qcom,x1p42100-qmp-gen4x4-pcie-phy): 'qcom,4ln-config-sel' is a required property

Fixes: 2e1ffd4c1805 ("dt-bindings: phy: qcom,qmp-pcie: Add X1P42100 PCIe Gen4x4 PHY")
Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/linux-arm-msm/176857775469.1631885.16133311938753588148.robh@kernel.org/
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
Changes in v2:
- Rebase
- Don't drop the mention of the warning, as it now actually exists in
  the tree..
- Link to v1: https://lore.kernel.org/r/20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec..431e8cb5df84 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -136,13 +136,22 @@ allOf:
           items:
             - description: port a
             - description: port b
-      required:
-        - qcom,4ln-config-sel
     else:
       properties:
         reg:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
+    then:
+      required:
+        - qcom,4ln-config-sel
+
   - if:
       properties:
         compatible:

---
base-commit: 49e02880ec0a8c378e811bc9d85da188d7c6204c
change-id: 20260119-topic-purwa_phy_shutup_warning-891e8aab29f2

Best regards,
--  
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
