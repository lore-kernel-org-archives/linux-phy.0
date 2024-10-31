Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67A01D74958
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 13:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GXxACyHOk/TgT6Ora53FCLl6GE1oB3b7ZTkXSYS5c0s=; b=3YH3YPBPiq/t9F
	6phv/R8yb4BAVVNvkA4M7QgCGeQC56zQxDyH8u7uk2DQa3rBWyk4XsUthc6zK9tzdNNRRPs/jPEyb
	PSklJvZ8sTXjVdBRwelkzdAz4EZ1j9gWjFwdZQ5GuBKnVPOFEexlM+W4/p6q8gOwVn8JEhYh+ZUw5
	2HMOvAAfVBqK4FaSm0rxzAdZhcZgYHGZ+ci11yWk+Dn5/yAAifFJVBvRh0yiZE0mytP5crxOERX2x
	VJ6lgpMUPpvJJrvZvBNdwrEjaCQtoxY/T+M8XRRFRcPJGWw9bRG5RtWdgk6/Jq+jeHEteE/BE8t6Q
	AwHq0CAqj6tnoD5PuJAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6UvI-00000003dQo-3ME8;
	Thu, 31 Oct 2024 13:09:12 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6USS-00000003YWd-0hW1
	for linux-phy@lists.infradead.org;
	Thu, 31 Oct 2024 12:39:26 +0000
Received: from mail.maildlp.com (unknown [172.19.163.44])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4XfNn20clWz2Fbsd;
	Thu, 31 Oct 2024 20:37:42 +0800 (CST)
Received: from kwepemg200008.china.huawei.com (unknown [7.202.181.35])
	by mail.maildlp.com (Postfix) with ESMTPS id 90A66140156;
	Thu, 31 Oct 2024 20:39:15 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemg200008.china.huawei.com
 (7.202.181.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Thu, 31 Oct
 2024 20:39:14 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <linus.walleij@linaro.org>,
	<treding@nvidia.com>, <florian.fainelli@broadcom.com>,
	<krzysztof.kozlowski@linaro.org>, <colin.foster@in-advantage.com>,
	<davem@davemloft.net>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH] phy: ocelot-serdes: Fix IS_ERR vs NULL bug in serdes_probe()
Date: Thu, 31 Oct 2024 20:38:47 +0800
Message-ID: <20241031123847.1356808-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemg200008.china.huawei.com (7.202.181.35)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_053924_375075_009843D5 
X-CRM114-Status: GOOD (  10.78  )
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

dev_get_regmap() return NULL and never return ERR_PTR().
check NULL to fix it.

Cc: stable@vger.kernel.org
Fixes: 672faa7bbf60 ("phy: phy-ocelot-serdes: add ability to be used in a non-syscon configuration")
Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
---
 drivers/phy/mscc/phy-ocelot-serdes.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/mscc/phy-ocelot-serdes.c b/drivers/phy/mscc/phy-ocelot-serdes.c
index 1cd1b5db2ad7..77ca67ce6e91 100644
--- a/drivers/phy/mscc/phy-ocelot-serdes.c
+++ b/drivers/phy/mscc/phy-ocelot-serdes.c
@@ -512,8 +512,8 @@ static int serdes_probe(struct platform_device *pdev)
 						    res->name);
 	}
 
-	if (IS_ERR(ctrl->regs))
-		return PTR_ERR(ctrl->regs);
+	if (!ctrl->regs)
+		return -EINVAL;
 
 	for (i = 0; i < SERDES_MAX; i++) {
 		ret = serdes_phy_create(ctrl, i, &ctrl->phys[i]);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
