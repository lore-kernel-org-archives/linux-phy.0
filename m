Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27ABEC4167E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQgOvjmHnkwfPmmvJCD2waSi38P8cin6oWwL2sjlQKE=; b=QERNq0IFsXqJV8
	tQgfkjC9Yie3y8qV9zi1U8mMdzLGhneagQ84+9rZ91qIBZoQU1rrzKp8p1HIKBXiU0TfFSYtohV5j
	x6ZKf2rydVVxp6wHaQgisWj/Sdz06d8svl2Ndt3dFnPoeNY+5nSQ+vk3VZpeF6W1Ad/VHC0x5QsIO
	MpN2gJcGEeLYOdRs0alv/yY+Tg2Vu6bjbCkcLtjVVL2TUQY732m/k3OLJtZ6DTAfjx3gcoy7f7Neq
	nkDbe12YZI3wdzQD3TDDXH/H2zhDWgVMcBp7Z+d52WKsuogtY22mC5Q9qZbdIk/YYf0PBZc9zXpM4
	IYY5Gs6f91cF4+HHffbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXS4-007QBS-Dz; Wed, 12 Oct 2022 08:50:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRp-007Q22-R6
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7BBD36148A;
	Wed, 12 Oct 2022 08:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 552A1C4315B;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=L2r5Llz8bICSfAgFyovsSZ4B8gYdr24Rp3FuSWegNM0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FH0mkLZeCGwM/4rZwPIcpyFuBWSaUnftGJvPP0pM+dwkH7tA8AUsMyoWIqE6HPaEq
	 /lb91fXAl7I8G0fVmWtHAKwSu/tJpXnDR9amcWAilmOqvYS5dtcONCdmJ9xDrplPJD
	 tkgUTduMMP8NQCVAKce3H1ZtRl82ZnschU/3AJ3+YxyQuHplYWWN8ymP+0vpaoLB9m
	 9TrZwEUaSMGRUarpZP4xSUnYRuQKv18MVYMNikMZWfiOjGAmqmpXiKJzdB3n1hZQKu
	 p969hvJJsoIFL7uUaSZ0C92wKaAjcOYZ4qLM40gurQMSy+nu4G2iZQJaiMjCpGlp+d
	 /jc3VXO1rS/ZA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRe-0006Hv-Tu; Wed, 12 Oct 2022 10:50:30 +0200
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
Subject: [PATCH 10/20] phy: qcom-qmp-ufs: drop unused phy-status config
Date: Wed, 12 Oct 2022 10:49:52 +0200
Message-Id: <20221012085002.24099-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015042_090641_D2A45A95 
X-CRM114-Status: GOOD (  10.15  )
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

Drop the unused phy-status configuration mask which has never been used
for UFS PHYs.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 02931b82132f..1c7d8fc9b94a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -31,8 +31,6 @@
 /* QPHY_START_CONTROL bits */
 #define SERDES_START				BIT(0)
 #define PCS_START				BIT(1)
-/* QPHY_PCS_STATUS bit */
-#define PHYSTATUS				BIT(6)
 /* QPHY_PCS_READY_STATUS bit */
 #define PCS_READY				BIT(0)
 
@@ -548,8 +546,6 @@ struct qmp_phy_cfg {
 
 	unsigned int start_ctrl;
 	unsigned int pwrdn_ctrl;
-	/* bit offset of PHYSTATUS in QPHY_PCS_STATUS register */
-	unsigned int phy_status;
 
 	/* true, if PCS block has no separate SW_RESET register */
 	bool no_pcs_sw_reset;
@@ -668,7 +664,6 @@ static const struct qmp_phy_cfg msm8996_ufs_cfg = {
 
 	.start_ctrl		= SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.no_pcs_sw_reset	= true,
 };
@@ -692,7 +687,6 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
 
 	.start_ctrl		= SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 
 	.no_pcs_sw_reset	= true,
 };
@@ -739,7 +733,6 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
 
 	.start_ctrl		= SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 };
 
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
@@ -761,7 +754,6 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 
 	.start_ctrl		= SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 };
 
 static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
@@ -783,7 +775,6 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 
 	.start_ctrl		= SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN,
-	.phy_status		= PHYSTATUS,
 };
 
 static void qmp_ufs_configure_lane(void __iomem *base,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
