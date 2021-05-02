Return-Path: <SRS0=h+Aw=J5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11583C43470
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:07:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D6153613BB
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:07:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D6153613BB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XeiMGRsl3cZirpkeC23dAHVYTkW2IT0/ejITTXpSmcQ=; b=o0PstJn6o0nxoGkfQoceUoG4q
	MJXJ6GksOi0RjbsrfTpz+KJHoU2mTC1GND4/teJ2qMTU1HHrY4jCeEqylW5D7D0Ru+e8u1bnTWnSH
	BNhmGQkRZ/m0gbWbES8iTXN6Q0lMAdz3GXQjkXo89igJRj0DFjqCxYVoMGRmse8C9TmHboCCaSBRb
	jqUCMUQdD4p2cMLgqar7HHIggCgbmEGqGlkVJGzoivpjBqBnzJH90v+ZUJ5tuIt+DgTQ4CrmFDAUi
	zcOdHzqlOJABWinCMmh4Wd831gfw3jWmiSHfTTNxR4lMzk4/xKjmc8OemyH4j8cjsAobPAqCSNA00
	aRvsjQBqA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldCkQ-00BtSe-2W; Sun, 02 May 2021 14:07:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCk2-00BtJh-8l
 for linux-phy@desiato.infradead.org; Sun, 02 May 2021 14:06:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=wLnnn5ittrPUMyrGjmhCAO9CRK260ybXHWJWRoQh0s4=; b=au/g7kNAH7mbH2stmGzbioaXhZ
 uchWh6qD9uIfYW0Cdvn6mhJbHNLbC4bjewjGNlbzbLRM8MuHaVaclJCb9BiWlOOofE+yGHB0GAmD+
 BSd1yhYkSoHTHrI7EbQEYGAHyxsRdxkIE96QCDh38B5z1191kNTVYTQ6x3SqEJkdfaoq08yuGlAvQ
 QRHfvU4q/7vSNslgj/2cWw37UiJHemGkZ6iOLgU9//Q0XFzixpED5UAc1+MINVWeCwB5ylVLF34ea
 8AXnuIoT/II1OWvsPTKYN7T4TJfGXE5msXWgRya1IOFUw9nXjNgcHaTP9SXsE0qgR+5DOkIKFAOAg
 IVbQUABA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCjz-002YfM-Kt
 for linux-phy@lists.infradead.org; Sun, 02 May 2021 14:06:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 64CF4613D7;
 Sun,  2 May 2021 14:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619964395;
 bh=vcXjnd0RVtjp9wv8OGxIBH6Btu3mKLehj10zJxynX8M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uuCpSzIRAKIq58QUWKAuOvfbduZ61dixdMOB9hsLDyxcjergc74TGbUellDtNV79K
 dljE1sd+fpCiwS6O7p9sv7bNiiUMy8xah15nSoiKQn8syOCyL1y+KDRAAPxfqRxYVk
 p3atNMxs1pWeHZoDyl1BXblOq5ATFuqXGaowW/kzbdxTE0musZOcp9hrqPNY4PFjNm
 fsPpUoyVO4Huy/kBbqcv4ki5ERnXC8nqGWD2gqYVnMm5bOAdZQHukVI77lFraBveTj
 456KCgY6X92iGRkPVtlJ92PNhYI//mvOIAb0BehrqTy85l7Jer4BZVHraxdXaGozwu
 DA30wuUpRSiyg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Yingliang <yangyingliang@huawei.com>, Hulk Robot <hulkci@huawei.com>,
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>, linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 4.4 09/10] phy: phy-twl4030-usb: Fix possible
 use-after-free in twl4030_usb_remove()
Date: Sun,  2 May 2021 10:06:21 -0400
Message-Id: <20210502140623.2720479-9-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140623.2720479-1-sashal@kernel.org>
References: <20210502140623.2720479-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210502_070635_728011_727160DA 
X-CRM114-Status: GOOD (  11.30  )
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

From: Yang Yingliang <yangyingliang@huawei.com>

[ Upstream commit e1723d8b87b73ab363256e7ca3af3ddb75855680 ]

This driver's remove path calls cancel_delayed_work(). However, that
function does not wait until the work function finishes. This means
that the callback function may still be running after the driver's
remove function has finished, which would result in a use-after-free.

Fix by calling cancel_delayed_work_sync(), which ensures that
the work is properly cancelled, no longer running, and unable
to re-schedule itself.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
Link: https://lore.kernel.org/r/20210407092716.3270248-1-yangyingliang@huawei.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/phy-twl4030-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-twl4030-usb.c b/drivers/phy/phy-twl4030-usb.c
index f96065a81d1e..168780eb29aa 100644
--- a/drivers/phy/phy-twl4030-usb.c
+++ b/drivers/phy/phy-twl4030-usb.c
@@ -753,7 +753,7 @@ static int twl4030_usb_remove(struct platform_device *pdev)
 
 	usb_remove_phy(&twl->phy);
 	pm_runtime_get_sync(twl->dev);
-	cancel_delayed_work(&twl->id_workaround_work);
+	cancel_delayed_work_sync(&twl->id_workaround_work);
 	device_remove_file(twl->dev, &dev_attr_vbus);
 
 	/* set transceiver mode to power on defaults */
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
