Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09894C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ASPQZRl2jPFUyDDXTVbLONkGkALkNf2pwzO14PlO4o=; b=yJ2mFF/HWSZ+Cy
	dozp1udKWqQkSXigfYmF7nxYsIH4IvF1QsF94V/9acxLk9EddyVj4Lo+p27PGPKWOluQ5WP93FucS
	rcOFPZWYvtToxlJBqwcbo5Fd0iwLuFSI0BeywS1zqpthWR2Ier10HgV1wCSo9gJvzzNptKuy11wRZ
	+B0Azruu1KFcadzB/mOgHjbIcMmPgamNmFmqdZsZ38hiPzwUhIeYzsEtNXIJTG4V0jryqWT3F0kt2
	+3Y+FqgFwZsqLLy51X5YwmWm+1Koyr5cSI5Yx6wStq6BVFIkHE6MOniOdBu7upKqSRh0MIj6J0k1a
	wahYiv6tg9eT+cf3A8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK168-0000000BWXl-3GVU;
	Tue, 27 May 2025 20:40:32 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK166-0000000BWWv-3u7K
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 20:40:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 18DDEA4F23C;
	Tue, 27 May 2025 20:40:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50DC6C4CEEB;
	Tue, 27 May 2025 20:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748378429;
	bh=80WshDR6zLihMIQ1Fuov3rKfCExcliWYG7gNxmXPk7c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=OwtdtunmXPkzmcPo5Zvv90XBDCf3clkTZfEJ+lQkMvBnR6NGp1JWLo4YpnpQouhY5
	 l91S4Y2z4hOLNvUIwbuO+zRT6T98CGMNGJV8Tm+jaIKhRJQa2KfTk5Ql5KtiL0ma76
	 +b1N7UYQo+403snDupipODXZ2vQl5eDtfjiGRIWFGaf3uMKCxAoiHIndK927UDnR9A
	 toNThqSZKsDQTMf81hXqIDAKZV96zls8uomnZ1fsH2fG6yCUTWVNBnsTocx/L2Gh0m
	 r65qn+57Lbr3hkFzPvDP4gqKqcY810sai7xe9A1HmZc4ZW87RP0LwprblFFSq0L368
	 jwY8oDt868zPw==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Tue, 27 May 2025 22:40:04 +0200
Subject: [PATCH v3 2/6] phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
MIME-Version: 1.0
Message-Id: <20250527-topic-4ln_dp_respin-v3-2-f9a0763ec289@oss.qualcomm.com>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748378414; l=2335;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=8zsk6pY1mGQ9V2CSqJ6lVOkHlqYoE0Q7NoLJL4vEC8U=;
 b=5MZe69aj4TYyDsj0Y9IbfBXXuhHnoYF7mfs5DjE0ElcTr5cxe9zX++shRcDvpWPbFqlYIvSs5
 LxW3ZppyI3TDwJFWCZLKRQ4nHbjHj7FWOBJ8JnX3o1n6gqjn/nKG0y/
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_134031_109005_1C9BD761 
X-CRM114-Status: GOOD (  10.91  )
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

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b09fa00e9fe7db8d97b7179ee15d3f07fe578b0c..d0396817f3a05c7e4baeef0de1332c3a83942a51 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1687,7 +1687,7 @@ struct qmp_combo {
 	int init_count;
 
 	struct phy *usb_phy;
-	enum phy_mode mode;
+	enum phy_mode phy_mode;
 	unsigned int usb_init_count;
 
 	struct phy *dp_phy;
@@ -3062,7 +3062,7 @@ static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submo
 {
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 
-	qmp->mode = mode;
+	qmp->phy_mode = mode;
 
 	return 0;
 }
@@ -3091,8 +3091,8 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
 	void __iomem *pcs_misc = qmp->pcs_misc;
 	u32 intr_mask;
 
-	if (qmp->mode == PHY_MODE_USB_HOST_SS ||
-	    qmp->mode == PHY_MODE_USB_DEVICE_SS)
+	if (qmp->phy_mode == PHY_MODE_USB_HOST_SS ||
+	    qmp->phy_mode == PHY_MODE_USB_DEVICE_SS)
 		intr_mask = ARCVR_DTCT_EN | ALFPS_DTCT_EN;
 	else
 		intr_mask = ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL;
@@ -3135,7 +3135,7 @@ static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
 {
 	struct qmp_combo *qmp = dev_get_drvdata(dev);
 
-	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
+	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->phy_mode);
 
 	if (!qmp->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
@@ -3155,7 +3155,7 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 	struct qmp_combo *qmp = dev_get_drvdata(dev);
 	int ret = 0;
 
-	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
+	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->phy_mode);
 
 	if (!qmp->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");

-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
