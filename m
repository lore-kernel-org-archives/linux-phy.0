Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 895C2C6FD1D
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 07:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=R5vThkMBbnRQgTN9F5QzpqnFTa5MlP6rz30ctCfg3MI=; b=T67
	AJWrDCPQiJP+qR6HzH12rWvU6wHC6q2Dqg3MeCitdck4nYs/psUuAzv7q87ucWaA0NcMXY3lwuHMT
	2YcBiZYyZQK1h95K01v4KbXzsVMr2Qxq7zcfClHoggmBXxG/wCdGo9tiSIiPI46lOgtb9PxL795On
	mUMqbIFyj3i1yoO2JY+fGg132umrteus2TCm6XN7d8SQU9T5niNIlbIEX3NAhCpoLTcGFP9nmiws+
	Anreh7EnHBHDo9K+rzAX4y080vn5/XWF9OmzPrzpQwWIlow9prOV7ajJq/WgdRSg5FXf1bWCJhfbq
	0FjSsZIUsPyl1u61yp7e7lxBSQzVNLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFe8-0018ia-0K;
	Thu, 23 Mar 2023 07:46:04 +0000
Received: from mxct.zte.com.cn ([183.62.165.209])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfFe5-0018hV-2T
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 07:46:03 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4Phy7q58x9z501Sn;
	Thu, 23 Mar 2023 15:45:59 +0800 (CST)
Received: from xaxapp03.zte.com.cn ([10.88.97.17])
	by mse-fl2.zte.com.cn with SMTP id 32N7joU5090489;
	Thu, 23 Mar 2023 15:45:50 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Thu, 23 Mar 2023 15:45:52 +0800 (CST)
Date: Thu, 23 Mar 2023 15:45:52 +0800 (CST)
X-Zmail-TransId: 2afa641c03b012f-8631f
X-Mailer: Zmail v1.0
Message-ID: <202303231545522162256@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <vkoul@kernel.org>
Cc: <kishon@kernel.org>, <u.kleine-koenig@pengutronix.de>,
        <linmq006@gmail.com>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBwaHk6IG9tYXAtdXNiMi1waHk6IFVzZSBkZXZfZXJyX3Byb2JlKCk=?=
X-MAIL: mse-fl2.zte.com.cn 32N7joU5090489
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641C03B7.001/4Phy7q58x9z501Sn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_004602_051073_0C19F3DF 
X-CRM114-Status: UNSURE (   9.53  )
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

From: Ye Xingchen <ye.xingchen@zte.com.cn>

Replace the open-code with dev_err_probe() to simplify the code.

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/phy/ti/phy-omap-usb2.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index bbe5d25b0351..762d3de8b3c5 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -445,11 +445,9 @@ static int omap_usb2_probe(struct platform_device *pdev)
 			 PTR_ERR(phy->wkupclk));
 		phy->wkupclk = devm_clk_get(phy->dev, "usb_phy_cm_clk32k");

-		if (IS_ERR(phy->wkupclk)) {
-			if (PTR_ERR(phy->wkupclk) != -EPROBE_DEFER)
-				dev_err(&pdev->dev, "unable to get usb_phy_cm_clk32k\n");
-			return PTR_ERR(phy->wkupclk);
-		}
+		if (IS_ERR(phy->wkupclk))
+			return dev_err_probe(&pdev->dev, PTR_ERR(phy->wkupclk),
+					     "unable to get usb_phy_cm_clk32k\n");

 		dev_warn(&pdev->dev,
 			 "found usb_phy_cm_clk32k, please fix DTS\n");
-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
