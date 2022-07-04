Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D24FC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  4 Jul 2022 08:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R4LkJpB8bOo+JAoOlwUEFRaR9tU5z7teF7LX8hb40ec=; b=hTBM5gk1OfXDhh
	eojgfILCCg/zcxn9S+eQDgVtgeBQyKguOYVQfQ8WUua+kClDq/0NAYgEgMvHOD/w61t3zf3k2zYwD
	HOvzWO+SYPDlBdmQKFs4VFNg1JwwIY5PF91DbR6WVshAZzaL7mvrSXq2xUX99ySiuRsnOvU1JrLfC
	DC+CEpN4+voRmRDhMZvVFPc0FEn6zk4gm7s7hbsiOUDUKzUpToKgzSOCHUxKOYQD6jA3iZK1r3bJY
	imBlraqKb9DQarf/QP44ucWyVaFWzX6d1UzVbbZ0NBqLtGT90ERKsSwMlNfIPZaXTIQju6cCbpp4G
	deFne4QdQssDtMgO01wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8HiD-0068jd-RC; Mon, 04 Jul 2022 08:45:45 +0000
Received: from m15112.mail.126.com ([220.181.15.112])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8HiB-0068f4-0s
	for linux-phy@lists.infradead.org; Mon, 04 Jul 2022 08:45:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=MuDoe
	08dNNBH2iR8u2GDQUkfwsc1EfDvNcbXMBWHLU8=; b=lgHMQbjTZUcowQct5rv/4
	4H8skZKzpEHwGMudVTI3zMjcRt2EKSJ45nhLLQoKQPlD0YlTBwvEJdxsuiB9J92v
	GBxvYfXMH4wgWYZjQIRrIIA6VMAuHqWH5omEZK1tvjcXPFi8mo0xnWuqhXoWEorp
	yiYYCzUJmds76c6Qu11ZOg=
Received: from localhost.localdomain (unknown [124.16.139.61])
	by smtp2 (Coremail) with SMTP id DMmowAD3Yf6bqMJi275fEQ--.34864S2;
	Mon, 04 Jul 2022 16:45:16 +0800 (CST)
From: Liang He <windhl@126.com>
To: jckuo@nvidia.com,
	kishon@ti.com,
	vkoul@kernel.org,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com,
	p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	windhl@126.com,
	linmq006@gmail.com
Subject: [PATCH] phy: tegra: Fix missing of_node_put() in tegra210_xusb_padctl_probe()
Date: Mon,  4 Jul 2022 16:45:14 +0800
Message-Id: <20220704084514.277005-1-windhl@126.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: DMmowAD3Yf6bqMJi275fEQ--.34864S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruw4fWF1ktFWUtF13Jw1UJrb_yoW3tFg_WF
	1xZr97XrWvgr4IvFyaqFyIyasrZ3W0qFsYgrs2vr93Ka1jqw1jyryDXry5ur12vw4DJFy7
	Aa4DZF1UAr4rZjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xREKZXDUUUUU==
X-Originating-IP: [124.16.139.61]
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbiuBw0F2JVkLyEqQAAsx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_014543_454257_D6CF59C7 
X-CRM114-Status: UNSURE (   4.99  )
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

We should call of_node_put() for the reference 'np' returned by
of_parse_phandle() which will increase the refcount.

Fixes: 2d1021487273 ("phy: tegra: xusb: Add wake/sleepwalk for Tegra210")
Co-authored-by: Miaoqian Lin <linmq006@gmail.com>
Signed-off-by: Liang He <windhl@126.com>
---
 drivers/phy/tegra/xusb-tegra210.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index eedfc7c2cc05..d5eebb7a266c 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -3165,6 +3165,7 @@ tegra210_xusb_padctl_probe(struct device *dev,
 	}
 
 	pdev = of_find_device_by_node(np);
+	of_node_put(np);
 	if (!pdev) {
 		dev_warn(dev, "PMC device is not available\n");
 		goto out;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
