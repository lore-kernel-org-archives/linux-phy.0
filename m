Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A6CCC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  8 Apr 2022 09:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M/PSX/rzGsCdSEOTrxT2z57iej+8ZMB8Q3Ofk7lRe4c=; b=UnBhprw68LS6h0
	so98JAX1ILMlFLU5s5u4aKarDGhUOa2j6YncWJBmIlN9T8HZ61Ve+yaaxQh2r8iZZytjOwJkfbT3O
	Uqy8bSi6QIBWcaqVZTIpBaJF55NAU1gsfeF6c0/h3cmWovdFGHJWSznuWMpXGyPnIfU4wA1lbnJMY
	JkgjnytK194JWC+x4HTsgtiRLXIRCQe0wBot1+prECJGYcFk+hQrpdZhi3U0bFfo8ktPeMomiJbiv
	tRwikDB+yVlQ5I+8xqqb8SS4AHOMUswAQJXpcjmcfl4FYxIucLbb3tuMGdET41dc3LeKSvb7MdlZn
	3sSaebPOym4Y2V4iR62g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nclLv-00GDN2-Vy; Fri, 08 Apr 2022 09:56:28 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nclLt-00GDLp-3i
 for linux-phy@lists.infradead.org; Fri, 08 Apr 2022 09:56:26 +0000
Received: by mail-qk1-x736.google.com with SMTP id b33so4359710qkp.13
 for <linux-phy@lists.infradead.org>; Fri, 08 Apr 2022 02:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zjH23Wya03LzbkbLO4xeU6GQ68cZ1wSb3Yi2WGQa36g=;
 b=kwZlD3/T+8qksiVvwDWjaBxxgIIVSYni2McJG2R8ABsKzH3XAndqvyO/puYitsTS6I
 hyMn439AjiX6+X7t0ybOotbpCUKestpjSQW+MwJ1tn4yHdhW/iHjc2WxVFtkKxfdhMAU
 DVfwk9KVG8qsFEUGmjkHd9pYPrhRDmsbMdOdVjHZwd+FqnmsWSchDQHJ9fRn+co8JGCF
 S64FHnf3u98DW7FeyG76CogW0Ge+PYcZgXfkzQ8n0D2kH6+QPg0CQu1Oa9OBJ8da223Q
 HpyDqiuyfos5Pwyf7YCGWgz9zahQ3CkyB9/mlOTc8gflv7vqJsXV1oQEHdGxbzldjx8D
 Cxmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zjH23Wya03LzbkbLO4xeU6GQ68cZ1wSb3Yi2WGQa36g=;
 b=GfD2GU+DlamdWtVtt7XJdWJSzJCUvR5cJshZZB0HN+fpsE4cZYUC3fErNBasP+USC2
 OssnmLc3+PCS7yrCvv/0j20BaCYdE/jYoFZrVnTFgDjPPpNmBoxj1yF+tz78ZahVS9o9
 c4W9bxOFWfoS6NXmy/DFaVFBPskVdtcJ6HXiQbOx0cooKVOGmozfcZ57G/s4+8ehpeyo
 tW9wv5Xmjs8u6TsQmX3X6vCyP5PzdsdGAh82tK0yXXwErFMermReD3KadQ/dEHH+Jkbv
 5V9HOKNlfWCPMYa7Mnbk9TwCX67P/8ZWjp1YbsZeRSto7PDJKG64jEPHI+0L9SYo5Yoj
 yIBw==
X-Gm-Message-State: AOAM533TYWj6GCT3W6wTa7fuFjq+3PRFtJR05prAu/5u+Mah+CcdxaPx
 6SfphjBYMm4ieT9w4FLLvnI=
X-Google-Smtp-Source: ABdhPJzBDfUMRgrkFGRaQjb3JnVcxyXu1WVg91CC9KZq/9K2aRGRx1RKgyBqq018Jv1LGYCHzqJ3Qw==
X-Received: by 2002:a05:620a:288c:b0:699:bbc6:9e54 with SMTP id
 j12-20020a05620a288c00b00699bbc69e54mr12416634qkp.226.1649411783812; 
 Fri, 08 Apr 2022 02:56:23 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 c10-20020ac87dca000000b002e1db1b7b10sm18053944qte.25.2022.04.08.02.56.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 02:56:23 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: lv.ruyi@zte.com.cn
To: kishon@ti.com,
	vkoul@kernel.org
Cc: lv.ruyi@zte.com.cn, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] phy: ti: Fix missing of_node_put in ti_pipe3_get_sysctrl()
Date: Fri,  8 Apr 2022 09:56:17 +0000
Message-Id: <20220408095617.2495234-1-lv.ruyi@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_025625_193723_48747C5F 
X-CRM114-Status: UNSURE (   7.99  )
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

From: Lv Ruyi <lv.ruyi@zte.com.cn>

of_parse_phandle() returns node pointer with refcount incremented, use
of_node_put() on it to decrease refcount when done.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Lv Ruyi <lv.ruyi@zte.com.cn>
---
 drivers/phy/ti/phy-ti-pipe3.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index 2cbc91e535d4..f502c36f3be5 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -696,6 +696,7 @@ static int ti_pipe3_get_sysctrl(struct ti_pipe3 *phy)
 		}
 
 		control_pdev = of_find_device_by_node(control_node);
+		of_node_put(control_node);
 		if (!control_pdev) {
 			dev_err(dev, "Failed to get control device\n");
 			return -EINVAL;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
