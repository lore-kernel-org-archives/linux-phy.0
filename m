Return-Path: <SRS0=UbcY=ID=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C99C433DB
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 04:00:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F6FA6500D
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 04:00:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F6FA6500D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BBvn7JBOpnyZn53qXYpykTOJW5JH2g70DaMUrqo0gN4=; b=cj/XZctfcQxPLRaLlWrUTw9o2F
	DwNeZyiqwaoVBuWee/txfitEG9SHvO8oZPX8z+nf4fR1qhrrEjh7Ayru+/qp/WRTMGmPfjqA7rGaE
	8vzJRJPAkvsIczi0zjGs+i/OW/ximd+Xe6VWqZSmwy9i8EwSXLDyf6up0OGf9KY5K0GQtJcqnggFC
	W/pmG3JZtm8tvv0ssecWm28XNVylpYSsDAukwdukerTQvmdza6bnk/V2VYkCuGM+YBhsGSICeFGoK
	nbbR6lX3w9QbEKLx8Ud5aeN46UPvN2aEv95tNUAkvrDnpwPt4xgqMa5/f607BjSZoSo7j0t/of0Jg
	WUfeEHGQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI1dB-00CEiY-FH; Fri, 05 Mar 2021 04:00:01 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI1Kb-00C7eB-Pv
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 03:40:54 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4DsD475xxtz8srs;
 Fri,  5 Mar 2021 11:39:03 +0800 (CST)
Received: from localhost.localdomain (10.175.102.38) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.498.0; Fri, 5 Mar 2021 11:40:37 +0800
From: 'Wei Yongjun <weiyongjun1@huawei.com>
To: <weiyongjun1@huawei.com>, Kishon Vijay Abraham I <kishon@ti.com>, "Vinod
 Koul" <vkoul@kernel.org>, Paul Cercueil <paul@crapouillou.net>,
 =?UTF-8?q?=E5=91=A8=E7=90=B0=E6=9D=B0=20=28Zhou=20Yanjie=29?=
 <zhouyanjie@wanyeetech.com>,
 =?UTF-8?q?=E6=BC=86=E9=B9=8F=E6=8C=AF=20=28Qi=20Pengzhen=29?=
 <aric.pzqi@ingenic.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <kernel-janitors@vger.kernel.org>, Hulk Robot <hulkci@huawei.com>
Subject: [PATCH -next] phy: ingenic: Fix a typo in ingenic_usb_phy_probe()
Date: Fri, 5 Mar 2021 03:49:33 +0000
Message-ID: <20210305034933.3240914-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.102.38]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_034051_030706_313C84FF 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Fri, 05 Mar 2021 03:59:53 +0000
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

From: Wei Yongjun <weiyongjun1@huawei.com>

Fix the return value check typo which testing the wrong variable
in ingenic_usb_phy_probe().

Fixes: 31de313dfdcf ("PHY: Ingenic: Add USB PHY driver using generic PHY framework.")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/phy/ingenic/phy-ingenic-usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ingenic/phy-ingenic-usb.c b/drivers/phy/ingenic/phy-ingenic-usb.c
index ea127b177f46..28c28d816484 100644
--- a/drivers/phy/ingenic/phy-ingenic-usb.c
+++ b/drivers/phy/ingenic/phy-ingenic-usb.c
@@ -352,8 +352,8 @@ static int ingenic_usb_phy_probe(struct platform_device *pdev)
 	}
 
 	priv->phy = devm_phy_create(dev, NULL, &ingenic_usb_phy_ops);
-	if (IS_ERR(priv))
-		return PTR_ERR(priv);
+	if (IS_ERR(priv->phy))
+		return PTR_ERR(priv->phy);
 
 	phy_set_drvdata(priv->phy, priv);
 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
