Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C501EC48BC2
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 12:07:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5624761C2A
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 12:07:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5624761C2A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=wanadoo.fr
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fRudRqqCBHZCcPZQzCJ1k47D3Q4JwwtSUgnokA0Cf1Q=; b=x/Cg+xzM7yg1lh
	VFZ31xR4kPiWltxU7LYUnpuCTkl9thbll0DYINB+kOe6WKl6UbjQBS8AFFpr29tBBbFO6RSHch10m
	ZpwFIHWmBbjLDxpehWCeNviBQXlbVO4aTCzRWhgoalSSb/9J4KBCCX+GcSSOb0eDzW/mhUjGzBT6U
	FsYn+z2MhdePw471FgyLjr5VJqLUx9FaWGw6lfYya7NANlmomtU0VQf/UWOztaFs/s2XGqfdprsYK
	ywpKHoPYLi+gKrLhYZy3bOf+IpRmY/D/eyohR1Yzic/zQMuBUZhKW312QXaalDey+PRAKeSg11lmU
	YYR7H+EZ3PCkKg23p1jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxTZA-005Xns-SS; Sun, 27 Jun 2021 12:07:12 +0000
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxTZ8-005XnY-Ez
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 12:07:11 +0000
Received: from localhost.localdomain ([86.243.172.93]) by mwinf5d79 with ME
 id NBzd2500E21Fzsu03BzeWK; Sun, 27 Jun 2021 13:59:38 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 27 Jun 2021 13:59:38 +0200
X-ME-IP: 86.243.172.93
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
 vkoul@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH] phy: qcom-qmp: Fix an error handling path in
 'qcom_qmp_phy_power_on()'
Date: Sun, 27 Jun 2021 13:59:35 +0200
Message-Id: <3c641172c5b57dce56872d63c52dfae2645cc2d1.1624795081.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_050710_678364_B5F94D44 
X-CRM114-Status: GOOD (  11.31  )
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

If an error occurs after a successful 'clk_prepare_enable()' call, it must
be undone by a 'clk_disable_unprepare()' call, as already done in another
error handling path of this function.

Update the 'goto' to branch at the correct place of the error handling
path.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
/!\ This patch is speculative /!\
Review with care.

I've not been able to identify a Fixes tag.
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index cfe359488f5c..25006d80d347 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -4504,7 +4504,7 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
 
 	ret = reset_control_deassert(qmp->ufs_reset);
 	if (ret)
-		goto err_lane_rst;
+		goto err_pcs_ready;
 
 	qcom_qmp_phy_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
 			       cfg->pcs_misc_tbl_num);
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
