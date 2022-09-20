Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F89C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5L2LUFFHOLQwyBYhxcmbo/I85kja/+wHwBrZbrsAfek=; b=zXjP4u9scHVDkM
	/65ODMUyZBVlri+mvRWFkMTDLKBYpafqra4TxrmARQddI1n8VjKrFbnmWCfYEHxkh6nStj70oimtl
	uJE8p+J4W6paGE2azflX6U4eTeHGsXVbZnjcmPzkeFIfjTfwSHk9jQ9P4lNF4A4ZgVKyANxH1odCu
	HO2t05CUBCZ1X89Ji5bsOObc+TPgBMZHEVQ2LqppHcoxlMEkdm1uJo/pm4wKDqPv2x4W3nkRZ9kuh
	7wRmX9vGCcdabqLsV5iKHohCCRZQvkNwUVTYHOXIT+dEFRoFRjpCG21cLB6uMbAx6I8aQM5+VOuPp
	lnphcpoRt6I2/XuC+PHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqS-001QYo-TX; Tue, 20 Sep 2022 07:39:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqO-001QTL-Oj
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5E4F362126;
	Tue, 20 Sep 2022 07:39:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16D0EC433B5;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=ja9XqDAmZ5CFMR6H8RvNH8uNGTVJF/3Unra5I3v55cM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=m8xgu2B74jte4blFCGoySWzInTORniHueikbkE1ZEsVPHkWmy9PgqFVJaZWG9V+dF
	 Mru2NFKEw492A95chuuAje0n3VX9+dqrNefLk9fhxPUN9uvgH90KMTVEt/LykWiejf
	 oyNcKcrIT9SUyxx7Vg+y86cs3K4VGGD/PLBsWE4EDAYBPSFl+u7lwNU1XYNdHtFdn8
	 0ZpGiLaCA0S7qh+LYJ1WirYcVo4qkaLiBB4Z+VBO0Ply8WI2oX/Z4CMnc0o3kW0zzU
	 Ill/8q4UB2syRmiI0wjz11wXJ9n4evrjpo8sh8iFvPJOxqmSwWEAVsjMQRaJnZ/HdD
	 HYFaq5T6AYhhQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqP-0005Qi-Gc; Tue, 20 Sep 2022 09:39:01 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 03/17] phy: qcom-qmp-ufs: drop unused type from config
Date: Tue, 20 Sep 2022 09:38:12 +0200
Message-Id: <20220920073826.20811-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220920073826.20811-1-johan+linaro@kernel.org>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003900_877870_D3CF43F8 
X-CRM114-Status: GOOD (  11.83  )
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

The configuration PHY type is no longer used since the QMP driver split
so drop it from the configuration.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 7b335b50b4a1..e5c8d3a4fdaa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -535,8 +535,6 @@ struct qmp_phy;
 
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
-	/* phy-type - PCIE/UFS/USB */
-	unsigned int type;
 	/* number of lanes provided by phy */
 	int nlanes;
 
@@ -668,7 +666,6 @@ static const char * const qmp_phy_vreg_l[] = {
 };
 
 static const struct qmp_phy_cfg msm8996_ufs_cfg = {
-	.type			= PHY_TYPE_UFS,
 	.nlanes			= 1,
 
 	.serdes_tbl		= msm8996_ufs_serdes_tbl,
@@ -694,7 +691,6 @@ static const struct qmp_phy_cfg msm8996_ufs_cfg = {
 };
 
 static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
-	.type			= PHY_TYPE_UFS,
 	.nlanes			= 2,
 
 	.serdes_tbl		= sdm845_ufsphy_serdes_tbl,
@@ -720,7 +716,6 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
-	.type			= PHY_TYPE_UFS,
 	.nlanes			= 1,
 
 	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
@@ -744,7 +739,6 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
-	.type			= PHY_TYPE_UFS,
 	.nlanes			= 2,
 
 	.serdes_tbl		= sm8150_ufsphy_serdes_tbl,
@@ -769,7 +763,6 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
-	.type			= PHY_TYPE_UFS,
 	.nlanes			= 2,
 
 	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
@@ -794,7 +787,6 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 };
 
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
-	.type			= PHY_TYPE_UFS,
 	.nlanes			= 2,
 
 	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
