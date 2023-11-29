Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B765C07E98
	for <linux-phy@archiver.kernel.org>; Wed, 29 Nov 2023 12:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+ySq09pBnxWEJEYIuw5971F7gOrmeNjPsN+1EN0bNNk=; b=pjxxEVts9K43f/
	0vyya1cjZMS3gOtE29289cQ3COVSH+++xYNVCKjQ9U6U3MYZYU8kXUzPhH0zNZgbjM5dkx/KE0IlM
	ZBJzVgyp2APB4LVN8HNZaXQBt/XzPR7mlWWV8gP1+diPJ2x1LHU5EjdKcyOB65XE3vDd0jwuUaods
	t0uBCrKP7vZ9bOKWa9SEW8KOP2EDDt/Kyr+4QTUI1H+DAPRdG0+vRy27bMw8flixkNF6LgWazzk1+
	2T0FqmpuwqzSWt/lk8DLm+7TEW+PCbAa2tMRFa6EXNi0FBZkYmfYjvFIOgN94WTDTBaQvstBZ73Pi
	+RYuzPGyFtCB7F+Fi90w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JsM-008N4O-0U;
	Wed, 29 Nov 2023 12:41:10 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JsJ-008N2P-13
	for linux-phy@lists.infradead.org;
	Wed, 29 Nov 2023 12:41:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id; bh=C9pbxi/4On2uizg/mt
	LqDiesLQ/rTQR6z5ASO0iY7R0=; b=Vu9/fmZupquMIwiW9wtZ+ZCmEhKvfb74BT
	aAAjJYGPvsjHI9qlV2PnqrM9oBqnakGouNzht8XhdvO0SaxDObuxIlwrWk/+4Nli
	IZB29FSVePhhuy1xynHDMrL/ZnOegX7jAeygF20XopG26bClC+u7EUA0PaiC6hfD
	sJQ4piNLo=
Received: from localhost.localdomain (unknown [39.144.190.126])
	by zwqz-smtp-mta-g2-1 (Coremail) with SMTP id _____wDX1o5NMWdlf2UAEQ--.41802S2;
	Wed, 29 Nov 2023 20:40:46 +0800 (CST)
From: Haoran Liu <liuhaoran14@163.com>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Haoran Liu <liuhaoran14@163.com>
Subject: [PATCH] [phy/renesas] phy-rcar-gen2: Add error handling
Date: Wed, 29 Nov 2023 04:40:43 -0800
Message-Id: <20231129124043.33526-1-liuhaoran14@163.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: _____wDX1o5NMWdlf2UAEQ--.41802S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxJrW5uF13Aw43Cr4DAr4fKrg_yoW8GrWkpF
	WkGaySyrW8JFsrtrZxtr45ZFn0kw4xK343tFW3Ka4fZF1UAr909a4a9a4YvF1Ygr4vyF4Y
	qr18tFykAF1UZF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0JUOeOdUUUUU=
X-Originating-IP: [39.144.190.126]
X-CM-SenderInfo: xolxxtxrud0iqu6rljoofrz/1tbiwg83glc6610M6QAAsG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_044107_740743_DEE31507 
X-CRM114-Status: GOOD (  10.11  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch introduces error handling for the clk_prepare_enable
call in the rcar_gen2_phy_init function within
drivers/phy/renesas/phy-rcar-gen2.c. Previously, the function
lacked appropriate handling for potential failures of
clk_prepare_enable, which could lead to instability if the clock
preparation failed.

Signed-off-by: Haoran Liu <liuhaoran14@163.com>
---
 drivers/phy/renesas/phy-rcar-gen2.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen2.c b/drivers/phy/renesas/phy-rcar-gen2.c
index 507435af2656..c84eeaf1f607 100644
--- a/drivers/phy/renesas/phy-rcar-gen2.c
+++ b/drivers/phy/renesas/phy-rcar-gen2.c
@@ -80,6 +80,7 @@ static int rcar_gen2_phy_init(struct phy *p)
 	struct rcar_gen2_phy_driver *drv = channel->drv;
 	unsigned long flags;
 	u32 ugctrl2;
+	int ret;
 
 	/*
 	 * Try to acquire exclusive access to PHY.  The first driver calling
@@ -90,7 +91,11 @@ static int rcar_gen2_phy_init(struct phy *p)
 	if (cmpxchg(&channel->selected_phy, -1, phy->number) != -1)
 		return -EBUSY;
 
-	clk_prepare_enable(drv->clk);
+	ret = clk_prepare_enable(drv->clk);
+	if (ret) {
+		dev_err(&p->dev, "Failed to enable clock: %d\n", ret);
+		return ret;
+	}
 
 	spin_lock_irqsave(&drv->lock, flags);
 	ugctrl2 = readl(drv->base + USBHS_UGCTRL2);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
