Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CBCACDB474
	for <linux-phy@archiver.kernel.org>; Fri, 20 Oct 2023 09:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mwpfemJgdMjFwoQH5NkuhGvcq+eGUOFTm9wM5oiL1Ag=; b=rDL1UNKFjSEaz9
	LVYd0ko74I0XeEEozkP4+jUoIC2JzWVwlRSYwLsZ6vPwzmZ2apm11pV/ro+rnlrEBfEadA6YGKT7t
	ZwsllQg12uoNPSrxvNvxr+If2vnFCS3yi1kpjIYzNPIOAffpDC7h77vOkxwsvr5kXbNrDMEMzzD98
	OWjYvDLxCa3MTuVQ0eBPqSiAgIdiBfeoefZrrdOsgJIUZT38nGX4Wiew472HY22cv+PtINrbxD1Yg
	+IEp4tIyEMIDDhZn9xF0RTJhM4GNO531C3IpQmQiWrJk+w7bTNg/XI5Fg62Z3IBrzdJHvpI+jJe5t
	YBpf3Zg957+DI7m/HnuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtlal-001ecP-07;
	Fri, 20 Oct 2023 09:14:51 +0000
Received: from [42.101.60.195] (helo=mail.nfschina.com)
	by bombadil.infradead.org with smtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtlai-001ebP-0g
	for linux-phy@lists.infradead.org;
	Fri, 20 Oct 2023 09:14:50 +0000
Received: from localhost.localdomain (unknown [180.167.10.98])
	by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPA id 3D205604AABDF;
	Fri, 20 Oct 2023 17:14:34 +0800 (CST)
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: Su Hui <suhui@nfschina.com>,
	u.kleine-koenig@pengutronix.de,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH 1/2] phy: mapphone-mdm6600: fix an error code problem in phy_mdm6600_device_power_on
Date: Fri, 20 Oct 2023 17:14:13 +0800
Message-Id: <20231020091413.205743-1-suhui@nfschina.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_021448_452890_698EF27B 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
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

When wait_for_completion_timeout() failed, error is assigned
'-ETIMEDOUT'. But this error code is never used. Return '-ETIMEDOUT'
directly to fix this problem.

Signed-off-by: Su Hui <suhui@nfschina.com>
---

I'm not sure that return directly is true or not, maybe need some 
process before return directly.

 drivers/phy/motorola/phy-mapphone-mdm6600.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index 1d567604b650..e84e3390bff0 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -421,8 +421,8 @@ static int phy_mdm6600_device_power_on(struct phy_mdm6600 *ddata)
 			dev_info(ddata->dev, "Powered up OK\n");
 	} else {
 		ddata->enabled = false;
-		error = -ETIMEDOUT;
 		dev_err(ddata->dev, "Timed out powering up\n");
+		return -ETIMEDOUT;
 	}
 
 	/* Reconfigure mode1 GPIO as input for OOB wake */
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
