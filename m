Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D26EC87FDA
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 16:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FR/3iSZbF+Q7PZTmhii1/6thLVW5cBqH2ge1Usty+NY=; b=QoisUgzCJfbYqV
	5gciV2oHblUjXdWngW/Vb4lRG0BbujgbG4jGtkXEL/Tad+2LVl4keugbYUObPX/gWW9Im020PnMVW
	qB8SSc4JP5j874xp0IzlulGsuYqe2tqB7MG39RDRMBIOv6zbjUdopYNGs0JbWHICa04d08U+1mCMx
	kDbPoYU4ldWARYz66pB09egcMPY8LFtbgpGPLYe0pi9zSYqf6PC91Dqs9HNo1k+b99fCAd/7JdIrD
	MhIMLvczmAhs9KzWsqa0xWIGE7lLE3Q9kRZalJFsWMZD3lf6eW06NTRUuwuxj7UvwGS75zaTDDEng
	WckVkiB0ANBwiirHxPhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Yg-000000019x2-0bAx;
	Thu, 07 Aug 2025 16:33:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3Ye-000000019wB-2TUy
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 16:33:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 074E5601E1;
	Thu,  7 Aug 2025 16:33:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30C90C4CEEB;
	Thu,  7 Aug 2025 16:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754584415;
	bh=pA19sZ42BZajVjYKOabBiRIt+Rnz8rtfme/PEUxiTnA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QVqX96baNidINxbX0llwlb7Ty5zXd1G8jLebOWqs5ipFzhLVpGA+VXar+fHNTz/1p
	 XKl98sxLevpGcgpFuj7pbxWKVnazD0p5CqvuhYh5/ge00l6ELdsdCgvOn4+vBgIiaN
	 DQLK8pZitPydHmzBO/+UH0PQZjdHO1uYhbJYAxadvbEb+z0R8bxrpGu3lWt3vBxfUG
	 MeXLO+umGa1/SaqOXYScwKjxcMek3FL0g00DvHIdMftEFfKIcfD8EA2ZLQ78wNaKzN
	 mxSb6HFERb76z7SkwtlYxqScKo4Zhqq/oxDDng/73Koqo6+6Jvpi0VCU/Ofkpvm2G2
	 HFDi7uirGa2QA==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 07 Aug 2025 18:33:20 +0200
Subject: [PATCH v4 2/6] phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
MIME-Version: 1.0
Message-Id: <20250807-topic-4ln_dp_respin-v4-2-43272d6eca92@oss.qualcomm.com>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754584403; l=2402;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=kCUGw2ZG4jADwmyw1DR7mxx+tUirNJ8dufluE/gZfMU=;
 b=RVFvlh2VFtFHI/0LV1PdsnCTQLkqID5tl54VfFMW9rq5TP6hD0LXShLfOWFj6SNoblpQz8SuU
 8Zd2z5bMnCLBZoEIJrVTnBjaCmPru/NBLw9KhKD8ezHNg0mz69yZz10
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

There are a numbers of ""modes"" involved: USB mode, Type-C mode (with
its altmodes), phy_mode and QMP_PHY mode (DP/combo/USB/off).

Rename the generic sounding 'mode' to 'phy_mode' to hopefully make
the code easier to follow.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index f07d097b129fb7b3fad003103b7468b16c1c4390..30749943f66280c3aa9e9673466f6f736d1adbc8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1846,7 +1846,7 @@ struct qmp_combo {
 	int init_count;
 
 	struct phy *usb_phy;
-	enum phy_mode mode;
+	enum phy_mode phy_mode;
 	unsigned int usb_init_count;
 
 	struct phy *dp_phy;
@@ -3282,7 +3282,7 @@ static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submo
 {
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 
-	qmp->mode = mode;
+	qmp->phy_mode = mode;
 
 	return 0;
 }
@@ -3311,8 +3311,8 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 	void __iomem *pcs_misc = qmp->pcs_misc;
 	u32 intr_mask;
 
-	if (qmp->mode == PHY_MODE_USB_HOST_SS ||
-	    qmp->mode == PHY_MODE_USB_DEVICE_SS)
+	if (qmp->phy_mode == PHY_MODE_USB_HOST_SS ||
+	    qmp->phy_mode == PHY_MODE_USB_DEVICE_SS)
 		intr_mask = ARCVR_DTCT_EN | ALFPS_DTCT_EN;
 	else
 		intr_mask = ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL;
@@ -3355,7 +3355,7 @@ static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
 {
 	struct qmp_combo *qmp = dev_get_drvdata(dev);
 
-	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
+	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->phy_mode);
 
 	if (!qmp->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
@@ -3375,7 +3375,7 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 	struct qmp_combo *qmp = dev_get_drvdata(dev);
 	int ret = 0;
 
-	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
+	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->phy_mode);
 
 	if (!qmp->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
