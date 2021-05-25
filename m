Return-Path: <SRS0=/rwg=KU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C02C4707F
	for <linux-phy@archiver.kernel.org>; Tue, 25 May 2021 10:50:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A0256142E
	for <linux-phy@archiver.kernel.org>; Tue, 25 May 2021 10:50:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1A0256142E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.alibaba.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EgSAuDIcB1LS4kp6D3oSwRSfmaWwJBn1zC0bqLRfMr8=; b=sDj1uH9aiwkumC
	rqX++HUe+pDQ9Evmm6vvH32+knnBuJIOX5rVQUIF3lw6WY4pWjCGhlxiff1YrxQJsXawh1KX9Ttkr
	jM5ep6E6MbRQJp7yqrmiE3G+k6h2MSl1JN5R4th0g+5L5ptTK6JpfxsRpYPSBHrMV4NbhFkLa6UFI
	4/vt4jNum2V2SYuIdnxto+iA5q5YkG4IQRWjU2nMFVXlDlZv5k46tN8YVrnA314URU42/peoUHWyQ
	01pUE1UeYdXmwvPU3C9zwESecsyLq8uA7NluFUIwOKDR4ovf02Fi6DUfzX/2eYiMDjNOtZDckdP4B
	wPtHIDljW0e+Tl7ZQfuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llUe1-004dv4-Kq; Tue, 25 May 2021 10:50:41 +0000
Received: from out30-44.freemail.mail.aliyun.com ([115.124.30.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llUdx-004dta-VU
 for linux-phy@lists.infradead.org; Tue, 25 May 2021 10:50:40 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R141e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04423; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=5; SR=0; TI=SMTPD_---0Ua4PLBH_1621939834; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0Ua4PLBH_1621939834) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 25 May 2021 18:50:35 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: kishon@ti.com
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH] phy: ti: Fix an error code in wiz_probe()
Date: Tue, 25 May 2021 18:50:32 +0800
Message-Id: <1621939832-65535-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_035038_193110_9B7F2FE9 
X-CRM114-Status: UNSURE (   8.27  )
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

When the code execute this if statement, the value of ret is 0. 
However, we can see from the dev_err() log that the value of 
ret should be -EINVAL.

Clean up smatch warning:

drivers/phy/ti/phy-j721e-wiz.c:1216 wiz_probe() warn: missing error code
'ret'

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Fixes: 'commit c9f9eba06629 ("phy: ti: j721e-wiz: Manage
typec-gpio-dir")'
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 9eb6d37..126f5b8 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1212,6 +1212,7 @@ static int wiz_probe(struct platform_device *pdev)
 
 		if (wiz->typec_dir_delay < WIZ_TYPEC_DIR_DEBOUNCE_MIN ||
 		    wiz->typec_dir_delay > WIZ_TYPEC_DIR_DEBOUNCE_MAX) {
+			ret = -EINVAL;
 			dev_err(dev, "Invalid typec-dir-debounce property\n");
 			goto err_addr_to_resource;
 		}
-- 
1.8.3.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
