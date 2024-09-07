Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2877EE71080
	for <linux-phy@archiver.kernel.org>; Sat,  7 Sep 2024 13:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ui70Jsb1nvTUcxWkHt5lPVvi/ypUklagxvqIKOTpx0o=; b=QJERt61kB4kFpg
	fKfQ+xZhKkBfM5GU3zlRXNnvbmRxsUIo54UurSIzxYH/Ig6J+rOm6rWapTtCvN58lpup+N/WKCN9g
	D3HrWCsrBPjLEyQ+BOxKGUFQMT9MshqAOVd5xAS+ndeZRm4SyA0UX1gl9h/TYnX0rz9ojjmmIc6h0
	lHc65hl2HalOUyrrg26dzwJixiF1dsBLFuWdr9JNW0N97JtjSKjTGAwKhe7mcTymXwwprrCMyvzc+
	HGzqtqe84fmtsXzhYeQpnNc3G4c6Pn91zRSj9C00ij+SHak37rNR569VC3JGCjmnwnIdYEQK1CxOb
	8B4wKRTJHxzSlhqmJv8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smvxy-0000000F6q7-35UG;
	Sat, 07 Sep 2024 13:59:06 +0000
Received: from smtp-22.smtpout.orange.fr ([80.12.242.22] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smvxu-0000000F6pM-0mkZ
	for linux-phy@lists.infradead.org;
	Sat, 07 Sep 2024 13:59:04 +0000
Received: from fedora.home ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id mvxns88H1730VmvxnssasU; Sat, 07 Sep 2024 15:58:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1725717539;
	bh=32/HoL3jcmr5qRrQpL/j/PmxL/AzMzQm8GZ2DrNSaj4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=SYH5bcSp2M88X2ZraPu/u7TNfNAsBTnp3PHyY7KTnJpgeDHJDgOJdwMleML/RCM58
	 wVqvs1uFJBfqUofUptcQdrPCKyBOINK5cBXlT6QxlW4lOs40BM3w+VRNqa1nGHpPsq
	 i9OKzavdcUxMthx0qta40gM4byrjb1/YLLnM5nnTG9SkzwicwGDthFJn27R2uESweG
	 Fs7o21d0MoH5p2ukXIuoUjt+xLsIW4ScdGhPiaKx8UfO6pNBXZ72qz0L5MCMtr4xWm
	 hrw28A1sZ//tzKXXBzQTULG1wh0td2A1WlhwAh7usAgCJ2cSiUduHuh/WJEwI/CbH4
	 TkRgu9Ti7d+5Q==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 07 Sep 2024 15:58:59 +0200
X-ME-IP: 90.11.132.44
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
Date: Sat,  7 Sep 2024 15:58:52 +0200
Message-ID: <4efe2d0419cbe98163e2422ebe0c7896b8a5efed.1725717505.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_065902_659078_80DC0167 
X-CRM114-Status: GOOD (  10.09  )
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

If an error occurs after the rcar_gen3_phy_usb2_init_bus(),
reset_control_assert() must be called, as already done in the remove
function.

This is fine to re-use the existing error handling path, because even if
"channel->rstc" is still NULL at this point, it is safe to call
reset_control_assert(NULL).

Fixes: 4eae16375357 ("phy: renesas: rcar-gen3-usb2: Add support to initialize the bus")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
Changes in v2:
  - Re-use 'error' to simplify the patch   [claudiu beznea]
  - Update the commit description to explain why it is safe.

v1: https://lore.kernel.org/all/fc9f7b444f0ca645411868992bbe16514aeccfed.1725652654.git.christophe.jaillet@wanadoo.fr/
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 58e123305152..ccb0b54b70f7 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -803,6 +803,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	return 0;
 
 error:
+	reset_control_assert(channel->rstc);
 	pm_runtime_disable(dev);
 
 	return ret;
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
