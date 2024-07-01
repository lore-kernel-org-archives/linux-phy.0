Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39B36C2BD09
	for <linux-phy@archiver.kernel.org>; Mon,  1 Jul 2024 11:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cnsop4rYjUGVeIVqKJXqxu5BAbdLB+VFHzB/lZ23fd0=; b=OmzNdU+AP0Txcl
	iygYEwyMFi2opk/kygYIQ8/pu9eIkQ98GR/LSlx61/hKtsyhrpPzer9GQp4IIbICPgxiExDn565Lg
	hw67Gl4ZULlVf+kvOtSpamvLDB8YDh39lqhCKPAYwrZzBgtBz/kHG7tk4Gfe82Rn+KOup50/iCDSd
	I10pVT+L0gbkWWNXVdCxjmaC9cOIr+RRYaMSMxmjYfRc6C2sSB8ll+DaO5eNNdYJO0R+6cj/rdsxC
	9RBFZyKGpLcKzRKgmZq2BNVD+wErhjfcxu0N3n3FReYgC7T7oDmZBh8pjraU1Mc4PZvXwXuevElc5
	1UCjpJDbVcZTsejzDcgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOFA4-00000002t9b-3sZ7;
	Mon, 01 Jul 2024 11:25:32 +0000
Received: from cmccmta4.chinamobile.com ([111.22.67.137] helo=cmccmta1.chinamobile.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOFA0-00000002t8a-2LQj;
	Mon, 01 Jul 2024 11:25:31 +0000
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from spf.mail.chinamobile.com (unknown[10.188.0.87])
	by rmmx-syy-dmz-app04-12004 (RichMail) with SMTP id 2ee46682921eb78-b0466;
	Mon, 01 Jul 2024 19:25:19 +0800 (CST)
X-RM-TRANSID: 2ee46682921eb78-b0466
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain.localdomain (unknown[10.54.5.252])
	by rmsmtp-syy-appsvr05-12005 (RichMail) with SMTP id 2ee56682921ea41-69f87;
	Mon, 01 Jul 2024 19:25:19 +0800 (CST)
X-RM-TRANSID: 2ee56682921ea41-69f87
From: Liu Jing <liujing@cmss.chinamobile.com>
To: s.nawrocki@samsung.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	krzk@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Liu Jing <liujing@cmss.chinamobile.com>
Subject: [PATCH] phy: Fix the cacography in phy-exynos5250-usb2.c
Date: Mon,  1 Jul 2024 19:25:17 +0800
Message-Id: <20240701112517.6597-1-liujing@cmss.chinamobile.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_042529_217652_58404421 
X-CRM114-Status: UNSURE (   7.72  )
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

The word 'swtich' is wrong, so fix it.

Signed-off-by: Liu Jing <liujing@cmss.chinamobile.com>
---
 drivers/phy/samsung/phy-exynos5250-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/samsung/phy-exynos5250-usb2.c b/drivers/phy/samsung/phy-exynos5250-usb2.c
index e198010e1bfd..21b06072f866 100644
--- a/drivers/phy/samsung/phy-exynos5250-usb2.c
+++ b/drivers/phy/samsung/phy-exynos5250-usb2.c
@@ -121,7 +121,7 @@
 #define EXYNOS_5420_USB_ISOL_HOST_OFFSET	0x70C
 #define EXYNOS_5250_USB_ISOL_ENABLE		BIT(0)
 
-/* Mode swtich register */
+/* Mode switch register */
 #define EXYNOS_5250_MODE_SWITCH_OFFSET		0x230
 #define EXYNOS_5250_MODE_SWITCH_MASK		1
 #define EXYNOS_5250_MODE_SWITCH_DEVICE		0
-- 
2.33.0




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
