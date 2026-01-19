Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFD89CCF2EE
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 11:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GJZJYODpyS9YjRB2ebOqqii3dlbUCcHdDvgzt95/YxI=; b=XCEnS6RDDNKbRB
	h3jYCr1kv0s3PQza6o+CivyeQBGhuEPMLnAa0GQhp+2wxXm4BbQX5Pe7csqEX+DgARDnmgA6jw1PE
	9DVRHp6UxLNUEm6B4/t++CSt0vvdWN8nd4CPyKV2ht9Fg9KKCCnrnglTHb9PhxWF/gCAd79ND4O2D
	vpU3mk2k/a2+lRYCxSXXuJ2p0zf19pP3NuXq/UwwMtUZtCTuA3SRE9XZllrZI5bXcBfTj03AFVn4N
	e03zNaqLN6ul0o5QDG0/d2HRTUy+SvmvwdLAVE7V1r1LccO25J6KgHxpZ0OZTq8iQcvC6sr0ncXFE
	cTogVJafV7Klas2ZsDlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnk8-00000001v21-0V2M;
	Mon, 19 Jan 2026 11:48:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnk5-00000001v1f-3uSD
	for linux-phy@lists.infradead.org;
	Mon, 19 Jan 2026 11:48:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0629B60155;
	Mon, 19 Jan 2026 11:48:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0655C116C6;
	Mon, 19 Jan 2026 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768823300;
	bh=m6fiWE2pnNbhhpX2oZo1w8HwzGDymsBUVv89HVOO69U=;
	h=From:Date:Subject:To:Cc:From;
	b=dGpWhgAurL7BUnf4WTlLuqSPiBQMLfaJ+N4lNv78Mqtkq6aOvXdiNKHYVnTFQq3Gg
	 +BVC6XpwEtrGE27QhPeKoor+bKLLEDwAcmx/RUiaAkkUxYcWZqIrYvJVLWQcInXPOQ
	 ylySNStLJ8At2aG6CyVM8D5BukbjCuc+GZ/rLfMRZ96j/z0QfJtxn9JTfETdBzPStM
	 HqYAjgVM98kJrpJtqyd1hBu7OS3zdqU/8sNkJ2dcpQ5pCIClyNZY0z5MZE7X4OnC+f
	 ILjJu6T0+H3Eibk/w3W5AGWdBuuP8R4+uVrcYBzG6CHDou8/S207qOO1hXqVJr5EL6
	 3hGumzdCnjm/w==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 19 Jan 2026 12:48:02 +0100
Subject: [PATCH] dt-bindings: phy: sc8280xp-qmp-pcie: Disallow bifurcation
 register on Purwa
MIME-Version: 1.0
Message-Id: <20260119-topic-purwa_phy_shutup_warning-v1-1-997a692b31c6@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3NMQ6DMAxA0asgz41EMiDCVaoqcsEQL8FySClC3
 J2I8S3/n5BJmTIMzQlKP868pgr7amCMmBYyPFWDa13XWuvNtgqPRoruGCQeIceyFQk7auK0mN5
 b6hG/zs8OakSUZv4/g/fnum6VGMFkcAAAAA==
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
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768823296; l=1939;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=zafLI2H+tXlTDyy9bg4Qs3Rs79fUkAKI4Fp2LAgvkag=;
 b=xMtsEXOFlGjBtcLWdBg61jlatkGD/wYUEzbmPAYeQhklx4IQ70ZSTFCzFs9+IO93tnU6QAYA9
 UO8+tyvJDlxDvGch8lq32075lXJNwX6bGI+2xuSCiRKOUz8TQ9KYG/R
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
base-commit: 46fe65a2c28ecf5df1a7475aba1f08ccf4c0ac1b
change-id: 20260119-topic-purwa_phy_shutup_warning-891e8aab29f2

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
