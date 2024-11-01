Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AD7FE674A7
	for <linux-phy@archiver.kernel.org>; Fri,  1 Nov 2024 06:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EHG6+OyYUFjfILACEj0+gTqPoGpzgA9rNFwEpDOz/H4=; b=Q+Evc0LGkir2cE
	++ragHzbdyTzdfSrpmkK8ibTtp3LELcUr8r0zHBJ1s4B7yW9a2PMe2JGaSnWupn0S5RWi12mnpwEF
	1mKjiFGbJeWW+F7qep/ZRzwlm1OFnbHQAfWfDJeatPg6XVLOMBM2d/iULv9yvrb06Jfrgnj7cQJnc
	VXN+X1Prz31tRvSloom0sEMZYrvJ54Hv31ZbPPxYRUBLTJQgeFtQ8QBZsYxnJ9D3o0h5/Q4gd43BX
	IIzQ1tff5yGqxs4SDT3MXUzC07Za3/vDsYNa0OBRKat/jb0vFKJSQrVST+3Io9+3yOD2OR780z5yc
	O3+CkeCCE/ym3F7LHfhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6ktW-00000005w6f-1AxF;
	Fri, 01 Nov 2024 06:12:26 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6ktT-00000005w5v-2DGK
	for linux-phy@lists.infradead.org;
	Fri, 01 Nov 2024 06:12:25 +0000
Received: from mail.maildlp.com (unknown [172.19.162.254])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4Xfr7C57hNz1T9XN;
	Fri,  1 Nov 2024 14:09:59 +0800 (CST)
Received: from kwepemg200008.china.huawei.com (unknown [7.202.181.35])
	by mail.maildlp.com (Postfix) with ESMTPS id E1E241800F2;
	Fri,  1 Nov 2024 14:12:12 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemg200008.china.huawei.com
 (7.202.181.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 1 Nov
 2024 14:12:12 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <krzysztof.kozlowski@linaro.org>,
	<florian.fainelli@broadcom.com>, <ruanjinjie@huawei.com>,
	<colin.foster@in-advantage.com>, <davem@davemloft.net>,
	<linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] phy: ocelot-serdes: Fix IS_ERR() vs NULL bug in serdes_probe()
Date: Fri, 1 Nov 2024 14:11:45 +0800
Message-ID: <20241101061145.2282501-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemg200008.china.huawei.com (7.202.181.35)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_231223_745708_BF015A8F 
X-CRM114-Status: GOOD (  11.55  )
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

dev_get_regmap() call can return a null pointer. It will not return
error pointers. Thus apply a null pointer check instead.

Cc: stable@vger.kernel.org
Fixes: 672faa7bbf60 ("phy: phy-ocelot-serdes: add ability to be used in a non-syscon configuration")
Acked-by: Colin Foster <colin.foster@in-advantage.com>
Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
---
v2:
- Add Acked-by.
- Update the commit message as Markus suggested.
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
