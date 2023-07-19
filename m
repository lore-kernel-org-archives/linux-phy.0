Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 135CCEB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 05:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j6+JvHcqN9u0Ej2lmGgOs5PBl7+iMwQDVSaiadOZzI4=; b=jdQSmOsEAHCgtb
	HPYqg+z3WGG7KF9PjtELJsaQpHLgHDKUZXlRvVwvo5uu4skgYgB8YRIcHuDuR6Odrr8JBV9ObKmNl
	D+vT+ilYwDTh0fbKApOW4UdFDIbn5Ju6zhdKVCF3tD9i6LiCUdIeUHufqkdT8MLApUf8KOY+PqqeK
	Z+mB7EeczKrYxPduCg67he7+u7cfgO2RwFzUkb7ilGjakjnUeVTUAqK7SwMlAIt19Tdhp7D2H9VvR
	az/T+wMMFM1kkJno8M5XaAIHY71w4NH53xlqrrNhWWoie7ChwdCshkIzppIKtkbYv4kpTqUC4NIS2
	xezAnrrqK2C0nt2dzNEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLzTY-005B2J-22;
	Wed, 19 Jul 2023 05:11:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLzTX-005B1l-0b
	for linux-phy@bombadil.infradead.org;
	Wed, 19 Jul 2023 05:11:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=RhEQzcWCoyu9DkXJQ7D7u5aHs46BM/T89PJ+iA90cg8=; b=IPRObxltwpgJPaVbSWL+JZS0Py
	V4CzNNqt1dHtWALoDi2NAchekaGUK5+3Q7HtWCwRqYVusEL9aWvHZ3EnflrSN8/y/MXu+NdVHAabS
	ud3Pw60SctEPjAPv28WlpyCuOSkGDvlrOyXrycWQdiPFcyRwrQ0rPlNZJ62h9hTNCe4wF1reahD0o
	LUjErVvJdtuEOvZiu2BaSzyi6b5rcP8gYcPbbn23KktBrJSgO4PyqkplDhvBbxaapHHCg2m9gbl9b
	1Ivrm7cv8YVjt8bHzamzRRPPnB0DR70O+zP8cm+/Ngz/5PDx5xcL0uss6SLYT54upeSEzUXFTZ0Qw
	/GqWu+Xw==;
Received: from out30-99.freemail.mail.aliyun.com ([115.124.30.99])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLvBD-00CJyM-1C
	for linux-phy@lists.infradead.org;
	Wed, 19 Jul 2023 00:36:40 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R251e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046049;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0VnjO7FX_1689726974;
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0VnjO7FX_1689726974)
          by smtp.aliyun-inc.com;
          Wed, 19 Jul 2023 08:36:15 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: jckuo@nvidia.com
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH -next] phy: Remove duplicated include in xusb.c
Date: Wed, 19 Jul 2023 08:36:14 +0800
Message-Id: <20230719003614.5506-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_013636_861740_86AA7323 
X-CRM114-Status: UNSURE (   6.13  )
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

./drivers/phy/tegra/xusb.c: linux/platform_device.h is included more than once.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Closes: https://bugzilla.openanolis.cn/show_bug.cgi?id=5930
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/phy/tegra/xusb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index ed30866e7647..142ebe0247cc 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -12,7 +12,6 @@
 #include <linux/phy/phy.h>
 #include <linux/phy/tegra/xusb.h>
 #include <linux/platform_device.h>
-#include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
-- 
2.20.1.7.g153144c


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
