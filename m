Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 193C6C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Mar 2022 10:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DwgwsK0YUnqfe3mcCQJYSqe1xdVUWltuaANyVK5A5cM=; b=AtHmKf9YT5xJB2
	JVvuRLK/UXf0WsWsJlYbXOqy23+bS55MVlUpJ9ghI8BoLWrR6XIeqYDXlGjA9YoFU6yXdcmSmF0gQ
	OdjSP+k2fsj8faAtPQ+bF5l32p5Y7MYl4EDo4BLVOP9sCplQfiY2EDcTRFRwownD4nPEfdZRRjt8R
	UQ+aq9n2vDPW12G0Yf1pIVxPxzs+KJ/DeBtvPEnX7bwSo7vWolub2SnyyJzBe3k3OrDb/mQuiD8B4
	eHybg3WatA17ANJl1zFR4AZbYCARy8iTaAXiOzJEgvZRvQ5H/xbzbTFXu6R19pCcHzCZnT2GApBzm
	u5UYyaLmsoMCeNqEsEdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVAJE-001JUv-Hy; Fri, 18 Mar 2022 10:58:16 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVAJ1-001JNR-5P
 for linux-phy@lists.infradead.org; Fri, 18 Mar 2022 10:58:04 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 o6-20020a17090a9f8600b001c6562049d9so7999552pjp.3
 for <linux-phy@lists.infradead.org>; Fri, 18 Mar 2022 03:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=iD3SQVbluqBYYl9Q69vFkPZdZHA/c5gFmaZJqTpGnFU=;
 b=LB6IRGcklNnwQHkAZy+NfZBjeW2iyozb0k13pHIvTXLERYiuuiIQKxMQKG3jGjQDgH
 5XRzkxwO7s4RQAjA8UmlZ1YslJwftMpAv/RkjHvsLISVeZHtV4qqd9Bd/Js6RUpOMlcR
 vDv6K7HQ1iR2RCdmjNofYtP7kruyENxGSuGiokdOI++DeV6239nV5jZ54SbOzF5bB94t
 5rcjjahQ1gI5eW+ynRue/5Tr6szEjF4NIWPIuMeG8KwNOldqh61PB5jwfuoERXyi4hNE
 YhLwy+lgPIFL2ny4vnqdAYHj1Rw7oCXb0fYCSWjflD5vlNE45pplP5cRqitPb6OFbDqH
 4gOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=iD3SQVbluqBYYl9Q69vFkPZdZHA/c5gFmaZJqTpGnFU=;
 b=WsGBTf7YEFltoscBEFws5iouDHfgT+YFSfWmj8U5gPSjQrjCklunW70yj2s+yRoR8c
 X6K8WilLtCnrDqcReFED1B7D7mGe+dKh9s+N7KffePIAGlN71tN5fu9ZcOGxvVi4lgAA
 lUfQPUD21y2zL/35MVjGMsEufGE13sBhKrKT91lxcMOUHIF+4N5WmuhDph90YOcymzGb
 DZfoej8afmGwABCs0FuvFstAQcs03obT1iJxy3qub0gu14BANuLfV0OF2FyEf7zo0Wti
 52n3aoG/YSSyOUBqjumxmbQFQKQVrZyEwRh0QJgrdfIyy9QI42GwKxNv7iohjkW3z8SD
 dkmg==
X-Gm-Message-State: AOAM533vVkqfWAuaP/r3sq1ZPZnWmUa9wI2emVJezEoCAfQGlyFpgMC4
 4VCC9T6wxpVkXwd4RJngrVw=
X-Google-Smtp-Source: ABdhPJz2XjBakfUvIu6Dk3uZ7H0HejvxnQ1wS/ofnXn23ahjHMcBc/HpZEz0xoC9PiU3Z1bfrlL9pg==
X-Received: by 2002:a17:90b:1a8b:b0:1bf:89c2:3a0f with SMTP id
 ng11-20020a17090b1a8b00b001bf89c23a0fmr10229585pjb.215.1647601079714; 
 Fri, 18 Mar 2022 03:57:59 -0700 (PDT)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id
 h6-20020a056a00230600b004fa1209e0f3sm9897718pfh.23.2022.03.18.03.57.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Mar 2022 03:57:59 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Miaoqian Lin <linmq006@gmail.com>, Liam Beguin <liambeguin@gmail.com>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: ti: omap-usb2: Fix error handling in
 omap_usb2_enable_clocks
Date: Fri, 18 Mar 2022 10:57:46 +0000
Message-Id: <20220318105748.19532-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <YjIC1hWuVN3qkdqx@shaak>
References: <YjIC1hWuVN3qkdqx@shaak>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_035803_257683_B6CF512A 
X-CRM114-Status: GOOD (  11.48  )
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

The corresponding API for clk_prepare_enable is clk_disable_unprepare.
Make sure that the clock is unprepared on exit by changing clk_disable
to clk_disable_unprepare.

Fixes: ed31ee7cf1fe ("phy: ti: usb2: Fix logic on -EPROBE_DEFER")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
changes in v2:
- fix typo in commit message.
---
 drivers/phy/ti/phy-omap-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index 3a505fe5715a..31a775877f6e 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -215,7 +215,7 @@ static int omap_usb2_enable_clocks(struct omap_usb *phy)
 	return 0;
 
 err1:
-	clk_disable(phy->wkupclk);
+	clk_disable_unprepare(phy->wkupclk);
 
 err0:
 	return ret;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
