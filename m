Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34376C3ABBC
	for <linux-phy@archiver.kernel.org>; Mon, 12 May 2025 11:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	References:In-Reply-To:Message-ID:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+TV7TQ8frn3y7vtg2OloiIigXfzrg51THRo6kbpsKCg=; b=tJuAXXibrKB1s4w3K7uV5Fjj5P
	7FqwyjoiBOobyhVWM9TcVg1Q6OEE++wZh0j7n0qa9lniB7MV5hkJi1J8u1LEo+XWWsHeFlhkTMIvj
	kRkS/37ozNDtwj1F2QG0hhBQ+LhtGiY8/yNWs45YqPNpp1R6VX4zlmlNPqL+nylzf55SwsnoYTjj2
	rwWGMMzOhnkP4HfDplc+E4XAVDYrUZh3p1qlqmUZnoRbyvynDdia2t4AgOnK7YXg2834t1ZK3yu2T
	7vpEz4o2d+SYNmil71FD685H8amOlb5R+tr2evpVE2RjpF/6KKdR6R8k0KEH55hmmIRiMTg/cNqAp
	f0D+53ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uER9d-00000009E7K-42oV;
	Mon, 12 May 2025 11:17:05 +0000
Received: from mxhk.zte.com.cn ([63.216.63.35])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZyY-00000002oQa-3mzI
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 11:40:16 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZRmJY3zdRz5B1KR;
	Tue,  1 Apr 2025 19:40:13 +0800 (CST)
Received: from xaxapp01.zte.com.cn ([10.88.99.176])
	by mse-fl2.zte.com.cn with SMTP id 531Be38U094450;
	Tue, 1 Apr 2025 19:40:04 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp04[null])
	by mapi (Zmail) with MAPI id mid32;
	Tue, 1 Apr 2025 19:40:06 +0800 (CST)
Date: Tue, 1 Apr 2025 19:40:06 +0800 (CST)
X-Zmail-TransId: 2afb67ebd09627d-9a1f2
X-Mailer: Zmail v1.0
Message-ID: <20250401194006848hzqFNLT61SYyidkSwwH4C@zte.com.cn>
In-Reply-To: <20250401193134281Nbc40spYmxjVmftwF0KTZ@zte.com.cn>
References: 20250401193134281Nbc40spYmxjVmftwF0KTZ@zte.com.cn
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <miquel.raynal@bootlin.com>, <jckuo@nvidia.com>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <thierry.reding@gmail.com>,
        <jonathanh@nvidia.com>, <linux-tegra@vger.kernel.org>,
        <yang.yang29@zte.com.cn>, <xu.xin16@zte.com.cn>,
        <ye.xingchen@zte.com.cn>, <xie.ludan@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIIDIvMl0gcGh5OiB0ZWdyYTogeHVzYjogVXNlwqBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2VfYnluYW1l?=
X-MAIL: mse-fl2.zte.com.cn 531Be38U094450
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67EBD09D.001/4ZRmJY3zdRz5B1KR
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_044015_094060_265E60D5 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 12 May 2025 03:58:59 -0700
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

From: Xie Ludan <xie.ludan@zte.com.cn>

Introduce devm_platform_ioremap_resource_byname() to simplify resource
retrieval and mapping.This new function consolidates
platform_get_resource_byname() and devm_ioremap_resource() into
a single call, improving code readability and reducing API call overhead.

Signed-off-by: Xie Ludan <xie.ludan@zte.com.cn>
Signed-off-by: Shao Mingyin <shao.mingyin@zte.com.cn>
---
 drivers/phy/tegra/xusb-tegra186.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index fae6242aa730..6586472866e2 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -1485,7 +1485,6 @@ tegra186_xusb_padctl_probe(struct device *dev,
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct tegra186_xusb_padctl *priv;
-	struct resource *res;
 	int err;

 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
@@ -1495,8 +1494,7 @@ tegra186_xusb_padctl_probe(struct device *dev,
 	priv->base.dev = dev;
 	priv->base.soc = soc;

-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "ao");
-	priv->ao_regs = devm_ioremap_resource(dev, res);
+	priv->ao_regs = devm_platform_ioremap_resource_byname(pdev, "ao");
 	if (IS_ERR(priv->ao_regs))
 		return ERR_CAST(priv->ao_regs);

-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
