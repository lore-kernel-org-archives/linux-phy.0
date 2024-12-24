Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0BB8E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 07:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wQ7T+TgR98exSx/S6Kdj9wB+K9BJ91/JRdNfZIHCRXM=; b=Sr9bEXhyTWNb4H
	VCYsPxD6bktIlWNhrIgHIBQ41vhU37Uyag/dSFKTvSIH1eADCI5SZ88t8BDvfdW+eYWu53OPrPq7f
	QOLHKMFQVx4S6NFUIwlBPfdpYQ4qqfxOArkcrLtn/BbnHLqsCK2g2Dipg4Y1NoIWmwOGkj5YRqw9/
	LKI29VAT1KFsdGD6dDqqwUGprRFFdhc0WENWR4DI0Oo0dGmtfRvmDiTbBb8J3TP81YaId+mcTjedz
	lOkX/SZ3AeCNp+LLpwKfpbGXt9VdA9Y4nAnY3IWNtD5mFa0Fz/HLvlHoBqGGyC6pmT63Ac2TZV/XE
	tB6DNDldtc8FH6dE728g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPzhq-0000000BSG6-39fM;
	Tue, 24 Dec 2024 07:51:54 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPzhn-0000000BSFU-1Mg5
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 07:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=SNECs
	J0XKp8vy5JU0Zqz2v1x01Madw93zTND8IbZ038=; b=jOi5IPjrssH7Kc5ew7L5k
	SwIi84doG3BrbNg/yhbzl60++ya+LLIWdhNaJW5M900tWlfetN3UkSzwnpNwL5pd
	jkdpyRb7xnxhSA+Urr6Rel+Vp2GN8KNvEUIDesB9RvIMiNtmk6DYjeWoqecHAT6D
	qx1KlMpUnAlN6DbnhLOzGQ=
Received: from icess-ProLiant-DL380-Gen10.. (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wBnofntZ2pnyb0QBQ--.44335S4;
	Tue, 24 Dec 2024 15:51:17 +0800 (CST)
From: Ma Ke <make_ruc2021@163.com>
To: jckuo@nvidia.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com
Cc: linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ma Ke <make_ruc2021@163.com>,
	stable@vger.kernel.org
Subject: [PATCH RESEND] phy: Fix error handling in tegra_xusb_port_init
Date: Tue, 24 Dec 2024 15:51:08 +0800
Message-Id: <20241224075108.3770055-1-make_ruc2021@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: _____wBnofntZ2pnyb0QBQ--.44335S4
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gr15JF48GryxJFy3Zr1UKFg_yoWkXrgEkr
	nYv3s3WrWvga1kCr15Crn3ZryIkF42qFyIqr4IqF93AayrXrs2vryDWrZxZr47Wws8ur1U
	Ga45ur48Zr1SgjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRM0eHDUUUUU==
X-Originating-IP: [183.174.60.14]
X-CM-SenderInfo: 5pdnvshuxfjiisr6il2tof0z/xtbBFRG-C2dqZf4oZQAAsr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_235151_811579_13E55321 
X-CRM114-Status: UNSURE (   8.61  )
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

The reference count of the device incremented in device_initialize() is
not decremented when device_add() fails. Add a put_device() call before
returning from the function to decrement reference count for cleanup.
Or it could cause memory leak.

Found by code review.

Cc: stable@vger.kernel.org
Fixes: 53d2a715c240 ("phy: Add Tegra XUSB pad controller support")
Signed-off-by: Ma Ke <make_ruc2021@163.com>
---
 drivers/phy/tegra/xusb.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 79d4814d758d..c89df95aa6ca 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -548,16 +548,16 @@ static int tegra_xusb_port_init(struct tegra_xusb_port *port,
 
 	err = dev_set_name(&port->dev, "%s-%u", name, index);
 	if (err < 0)
-		goto unregister;
+		goto put_device;
 
 	err = device_add(&port->dev);
 	if (err < 0)
-		goto unregister;
+		goto put_device;
 
 	return 0;
 
-unregister:
-	device_unregister(&port->dev);
+put_device:
+	put_device(&port->dev);
 	return err;
 }
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
