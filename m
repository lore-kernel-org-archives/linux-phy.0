Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 175E4CCF2C2
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 10:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P4ZmXtWH1HNReO9ZRjQdHtEPv8U6GU4NkbFfDu+0LRg=; b=KfNaztypyCPerb
	cAgNEQTMhCwxzLAVmpECmfgM5sXwmqapH3CUeHXgM5rGfO8i5UmS39RgvSm4Z4y6tfDlV9k12nNF2
	No2QCfi+X8gywmiRjYg2Q9o4X73y2Dah1mGp8pwqruyQkyphgJzHqcylpzswkl2wVucA0bSgtpskV
	2bOCLhwID1kp25DgUFhEPDFtWR7ci64ePSpgo5hZCTyKRAACKpANEZACoM1LyW9HAJexTSeKH9usx
	lsZSNPqn0bYpB2VSyBpaihQA7NAhMI2RCHv0FnsdUQAcXVtD3KsPoS5xm0jwkr+fsuLzSF3udnOX8
	PlZK8bsazWi3UtawJwrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfdI-00000002jO7-3CFz;
	Fri, 16 Oct 2026 10:57:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfdG-00000002jMs-2nY2
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 10:57:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 398D244588;
	Fri, 16 Oct 2026 10:57:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DBBEC2BCFF;
	Fri, 16 Oct 2026 10:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792148270;
	bh=TV9DLJDuw1FQrZ/rVzxqE6XFQGyxeTIM2rSFGxjqIu8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=RhhuqtlxlZCCpn4cEZH/PbWIegG7vtwya5vbD/eEZ0pR/FI6nyIg9+8sw483mXWJu
	 x6FWQtHEXRAcX49/Z9q76sSgVDM4XJkMSz+065HQVQ7IOJrpY5S5Y3V5GyF3gjHGMf
	 mrQlJfzuklEiwf8Xf2C/uSkov5rZa6Bz8AQvAhbQOlvpQ2M4H/jbnMKjdBYaZzp1KJ
	 S7KfiumoI5x+jGHXF6zgDy29dYrfDVeZbnnD0AQ/deteXdynCQiwBaT4LBkqjySlsG
	 XqTWvDYY5RawWdk+NxRsRln9egmgbizAYQ/P4rnv8/FK9+ADzoFga/6fyO8a5YwcLf
	 QnRIqtSBCD5vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C5F1CCA464;
	Fri, 16 Oct 2026 10:57:50 +0000 (UTC)
From: George Neacsu via B4 Relay <devnull+geocausa.gmail.com@kernel.org>
Date: Fri, 16 Oct 2026 11:57:50 +0100
Subject: [PATCH RFC v2 3/4] phy: qcom-mipi-csi2: Rename the D-PHY init
 sequence
MIME-Version: 1.0
Message-Id: <20261016-x1e-cphy-rfc-v2-3-377654253193@gmail.com>
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
In-Reply-To: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>, 
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>, 
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, George Neacsu <geocausa@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792148268; l=2310;
 i=geocausa@gmail.com; s=20261015; h=from:subject:message-id;
 bh=SD3slAeSdjPUrTN6ZY+x3rxA6L16Lc3UUAvMwX7PGlM=;
 b=Y4ilSXLGhBLnUFyTGY+Uk3YsGPvGo5mfUK12wtHunY3kVjHUSpYk2qeydelK65Tds2aDO+LNZ
 5/AkO6XvfYDCyhEaxczB7+VydcG3z7hrawFWDDOBq3DsKBffRw9MeHw
X-Developer-Key: i=geocausa@gmail.com; a=ed25519;
 pk=KyQk/iWbxsikewDBh0SwlHI51RvAqahD3loqmRp9DVI=
X-Endpoint-Received: by B4 Relay for geocausa@gmail.com/20261015 with
 auth_id=1199
X-Original-From: George Neacsu <geocausa@gmail.com>
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
Reply-To: geocausa@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: George Neacsu <geocausa@gmail.com>

The init sequence and its size describe the D-PHY mode only. Call them
dphy_init_seq and dphy_lane_array_size, so that a C-PHY sequence can sit
next to them under matching names.

No functional change.

Suggested-by: Bryan O'Donoghue <bod@kernel.org>
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: George Neacsu <geocausa@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 8 ++++----
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 966d79c98..b2d4ec3e8 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -246,8 +246,8 @@ phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
 				     u8 settle_cnt)
 {
 	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
-	const struct mipi_csi2phy_lane_regs *r = regs->init_seq;
-	int i, array_size = regs->lane_array_size;
+	const struct mipi_csi2phy_lane_regs *r = regs->dphy_init_seq;
+	int i, array_size = regs->dphy_lane_array_size;
 	u32 val;
 
 	for (i = 0; i < array_size; i++, r++) {
@@ -372,8 +372,8 @@ static struct mipi_csi2_genpd x1e_genpds[] = {
 const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
 	.reg_info = {
-		.init_seq = lane_regs_x1e80100,
-		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
+		.dphy_init_seq = lane_regs_x1e80100,
+		.dphy_lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
 		.common_regs_offset = 0x1000,
 	},
 	.supply_names = (const char **)x1e_supplies,
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 7e55ae007..0d6031a4d 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -48,8 +48,8 @@ struct mipi_csi2phy_lane_regs {
 };
 
 struct mipi_csi2phy_device_regs {
-	const struct mipi_csi2phy_lane_regs *init_seq;
-	const int lane_array_size;
+	const struct mipi_csi2phy_lane_regs *dphy_init_seq;
+	const int dphy_lane_array_size;
 	const u32 common_regs_offset;
 };
 

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
