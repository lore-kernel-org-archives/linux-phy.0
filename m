Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45FF9C4167B
	for <linux-phy@archiver.kernel.org>; Wed, 29 Nov 2023 12:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lIk54E9qTUnfwyTrNs2tfb+TlnS3UR7KYbkNJU2dbTI=; b=ol5Xj/Ah8pRXrH
	2T/LedhGUr17JaGova/GklLeV2BT/kVzl/1NEKaC3vAqqOpRoB9sAmKi2B8cGt2B67Wn7ti5xGHAz
	oy74mlziJChJzVQTCicAAsga9bQDP5wkBrIy6WDzPng24iW2l1Id29RDIkFLS8Q3DTAaUTFri64Bf
	IcCQsjIn3XtuRudR3ep+UJpwn6it8X4gTUwYjVxNLLeIApZd+KOgts1LmsFxKZKWMlFZytrKwX2RH
	9+eaQcbYxGc/10daKjnkIZV1p86EYOintk8qw1X5j//o/AJRemtlkUK8Yf0c2nKxkLx0ViKb0LuJd
	A9AeZt7hq11d+SWw6aCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JLG-008F0f-01;
	Wed, 29 Nov 2023 12:06:58 +0000
Received: from m12.mail.163.com ([220.181.12.198])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8JLC-008Eyx-2u
	for linux-phy@lists.infradead.org;
	Wed, 29 Nov 2023 12:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id; bh=XcvJyms8UCabUgFAD5
	Q++wTaeOfxzMUw/2HahmsKw7w=; b=Fs+iPt63eB79uiYrz7SjpBk2kVq0U5i4em
	a51Q0n4JP9nQ9+06RfVarzHO9KUZqgN5MfmWcTtsId+DskcMOAO6650AESeX5eNP
	LUL/xxh4JkCmrLiCYjdQkJdNfzoRE6PhZH0PWXygbJ7Y/Vc9WxGazZSELF8q8C3i
	5uEu3ghIc=
Received: from localhost.localdomain (unknown [39.144.190.126])
	by zwqz-smtp-mta-g5-0 (Coremail) with SMTP id _____wBnbzhPKWdlcauGAQ--.39921S2;
	Wed, 29 Nov 2023 20:06:40 +0800 (CST)
From: Haoran Liu <liuhaoran14@163.com>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Haoran Liu <liuhaoran14@163.com>
Subject: [PATCH] [phy/marvell] phy-pxa-28nm-hsic: Add error handling
Date: Wed, 29 Nov 2023 04:06:38 -0800
Message-Id: <20231129120638.33294-1-liuhaoran14@163.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: _____wBnbzhPKWdlcauGAQ--.39921S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrur1DZFWUJw1xtF4DGrWfZrb_yoWDtrcEgr
	18CrZ3XF4j9anrK345Gw1rJ3s2kF9avayxWFyIqrWSyFy7X3Za93yDZwsxA3s8Wa12krWD
	Gw45ZrW7Ar13WjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRKpB-UUUUUU==
X-Originating-IP: [39.144.190.126]
X-CM-SenderInfo: xolxxtxrud0iqu6rljoofrz/1tbiZQY3gl8ZaQ1sNgABsv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_040655_301472_75D3E397 
X-CRM114-Status: UNSURE (   9.85  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch add error handling for the clk_prepare_enable call
in the mv_hsic_phy_init function. Previously, the
function did not handle potential failure cases of
clk_prepare_enable, which could result in undefined behavior if
the clock preparation failed.

Signed-off-by: Haoran Liu <liuhaoran14@163.com>
---
 drivers/phy/marvell/phy-pxa-28nm-hsic.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/marvell/phy-pxa-28nm-hsic.c b/drivers/phy/marvell/phy-pxa-28nm-hsic.c
index eff6dd6b2dd0..1aa09ebeaa8e 100644
--- a/drivers/phy/marvell/phy-pxa-28nm-hsic.c
+++ b/drivers/phy/marvell/phy-pxa-28nm-hsic.c
@@ -60,7 +60,11 @@ static int mv_hsic_phy_init(struct phy *phy)
 	void __iomem *base = mv_phy->base;
 	int ret;
 
-	clk_prepare_enable(mv_phy->clk);
+	ret = clk_prepare_enable(mv_phy->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to enable clock: %d\n", ret);
+		return ret;
+	}
 
 	/* Set reference clock */
 	writel(0x1 << PHY_28NM_HSIC_PLL_SELLPFR_SHIFT |
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
