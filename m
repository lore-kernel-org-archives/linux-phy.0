Return-Path: <SRS0=G5Ry=KM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 713B5C433ED
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 01:59:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30870611CA
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 01:59:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30870611CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t72ByQVBgr1eQnUEpw1S6BvmUIljVwFSXak2ZrRPhhU=; b=kgcNNwA44cyGtTosfqeT6SC1uF
	CCqOfuJ8DTPskYCTqCPqSnhdAk3jSGiB0CL7Icab2CrUfY0B/Rh4syfJi9H3RZPorXjUugXCWveBz
	oWJDhzx3vn06jAlkXvS/nZW4H16mO1XQ+/nV9duYAnt/40UUZ1ht0iQecuru0bKYwxQ+sXvInyBEA
	Z1ZshpHNrEiItx841HDyyNYPIN0tJKaBtTMQfU0nisogSgBGVsYFmBPhsvjTpd9gs95ZeJR3lflIC
	UdifnZVNai0UXFNEL3ggZFG3Hval4KBML/aqfeqRl/MYRicIVqWqe44+1wfJb/aOcEPTimbLOgWks
	M3HGbQOw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liSX8-00DRWx-2n; Mon, 17 May 2021 01:59:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liSX6-00DRWk-5z
 for linux-phy@desiato.infradead.org; Mon, 17 May 2021 01:59:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:MIME-Version:Message-ID:
 Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=/TgyQdre/uh26HaFPZ5lzIxhntSnOOtfzsbeqwJcqno=; b=GSGRRuoFtgHnMZobU6fI3AmmSY
 nEsfoH7Ypjm2YMNruJmsFvwZAuNEfmKhXBpglmOr5pQK9Ddx5l0Fb2jkCrTkHN4/KGswkx3Ts3LJF
 LwwQxROGIVLyROZu+ZU5mlvRUQICSBUDiA7bCsyiO1I5aPZZ+89k85XBbbLMtyLOCTojUHBNeXfYk
 XmBNtmo8Mp/LNduVFdoFqd8wXfcwm/FzB45dmPpaartukav4ngCcGiP5ZBvtgz+fJShdxRao6WrhW
 jnejRznh02eUJqke/jYKL43lPEyLP6l2M0qy2MRhhYCx1WgRHznmv6NQALNT0QIrToGmMcaIMYZv+
 a1za+Q6Q==;
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liSX2-00DQ12-R4
 for linux-phy@lists.infradead.org; Mon, 17 May 2021 01:58:58 +0000
Received: from dggems705-chm.china.huawei.com (unknown [172.30.72.58])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4Fk2KT6xQjz16R5W;
 Mon, 17 May 2021 09:55:57 +0800 (CST)
Received: from dggeme762-chm.china.huawei.com (10.3.19.108) by
 dggems705-chm.china.huawei.com (10.3.19.182) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Mon, 17 May 2021 09:58:41 +0800
Received: from huawei.com (10.175.112.208) by dggeme762-chm.china.huawei.com
 (10.3.19.108) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 17
 May 2021 09:58:41 +0800
From: Wang Wensheng <wangwensheng4@huawei.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <sjakhade@cadence.com>,
 <p.zabel@pengutronix.de>, <wangwensheng4@huawei.com>,
 <rikard.falkeborn@gmail.com>, <sparmar@cadence.com>,
 <chunfeng.yun@mediatek.com>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
CC: <rui.xiang@huawei.com>
Subject: [PATCH -next] phy: cadence: Sierra: Fix error return code in
 cdns_sierra_phy_probe()
Date: Mon, 17 May 2021 01:57:49 +0000
Message-ID: <20210517015749.127799-1-wangwensheng4@huawei.com>
X-Mailer: git-send-email 2.9.4
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggeme762-chm.china.huawei.com (10.3.19.108)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_185857_079041_7E754C39 
X-CRM114-Status: UNSURE (   7.62  )
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

Fix to return a negative error code from the error handling
case instead of 0, as done elsewhere in this function.

Fixes: a43f72ae136a ("phy: cadence: Sierra: Change MAX_LANES of Sierra to 16")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Wensheng <wangwensheng4@huawei.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 5c68e31..e93818e 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -940,6 +940,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 	sp->nsubnodes = node;
 
 	if (sp->num_lanes > SIERRA_MAX_LANES) {
+		ret = -EINVAL;
 		dev_err(dev, "Invalid lane configuration\n");
 		goto put_child2;
 	}
-- 
2.9.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
