Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A6A3C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 06:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fyQ668vCwot1xfYG1T7YnOvXkAslF74pyvJ3ElbmdPw=; b=edMbpHG5TOSxjs
	Xgi7tPkZLiH4FyrwmrwxxHvYtIwM3xQFAdnTQPrA7KI4azy5Fu7+eXCrKQNU++aguQhyDTAj3VAbX
	BzO4mFqEjRCE0sVBbIhIrvd5DwQTP5uKHnzGWyLjmEDlbY4na3+ZxZOn0Wjrn0UzIBRkN/UjL2fvT
	7Jv7Cew4pXpqBrb0aQu1Sllfmzudme8AZw6xs3yQ9lLcfVabExAHXnkGc+Zt0zl8Ql9zgQ7S1IV7s
	oLFwHU4UfKSIbATq+cFq5ieiUPeHpupCG9qGycAMgl9Ov72nOTAN2501onGdzY+9rd9S8ja3v9CDg
	1JzevFkIseBCtuMlfI6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osHpy-0036P6-Ph; Tue, 08 Nov 2022 06:11:54 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osHpv-0036Hj-Ks
	for linux-phy@lists.infradead.org; Tue, 08 Nov 2022 06:11:53 +0000
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4N5yR46k5CzRp5s;
	Tue,  8 Nov 2022 14:11:28 +0800 (CST)
Received: from localhost (10.174.179.215) by canpemm500007.china.huawei.com
 (7.192.104.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Tue, 8 Nov
 2022 14:11:36 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <vincent.sunplus@gmail.com>, <vkoul@kernel.org>, <kishon@kernel.org>
CC: <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, YueHaibing <yuehaibing@huawei.com>
Subject: [PATCH] phy: usb: sunplus: Fix memleak in update_disc_vol()
Date: Tue, 8 Nov 2022 14:11:13 +0800
Message-ID: <20221108061113.35964-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_221151_893165_0C6F9CBA 
X-CRM114-Status: UNSURE (   6.19  )
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

'otp_v' is allocated in nvmem_cell_read(), it should be freed
before return.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index e827b79f6d49..450cf8e6d7fb 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -96,6 +96,7 @@ static int update_disc_vol(struct sp_usbphy *usbphy)
 		set = *(otp_v + 1);
 		set = (set << (sizeof(char) * 8)) | *otp_v;
 		set = (set >> usbphy->disc_vol_addr_off) & J_DISC;
+		kfree(otp_v);
 	}
 
 	if (IS_ERR(otp_v) || set == 0)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
