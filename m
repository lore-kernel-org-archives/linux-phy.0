Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B5DC433F5
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 09:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SUSHZIGrrSSuomf/RhE6DF3Z4sKdbDQuWJTs2LvQAX8=; b=0G2qpRtE3hABL/
	Livm86Asrdolgpih3fbdXZ/MOBDmcFqoxW2Tj9xqQbYGULinCe1+XgLStjRkFKZlaMkIinjX91Aqn
	qUsP94kcOe7O1trUdFX+bzocpkbkaglZONS/PeFxUauy7NQIzY2rWS2B3ljHBrsSV9NBZ8hGYFS7I
	rvNu8Qyg4K07CUQBgt0ewtlHw+4wnM3I2P6OWNhQhJjitMvpj2YA2Xrz5tqANjkeLygUAS9XGq2MW
	Giq+KkdWx9q8i5P4Zui+DdqdxWbVKNwaasXrgF8VV+7FKIZt0pNB9LMHoCD5hnHUg4yMY7FkMkmjf
	G/8e1E7CCotUXpSd+2/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZQQ-000MCa-S1; Wed, 13 Apr 2022 09:36:34 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZQO-000MAu-Dy
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 09:36:33 +0000
Received: by mail-pl1-x62d.google.com with SMTP id be5so1444994plb.13
 for <linux-phy@lists.infradead.org>; Wed, 13 Apr 2022 02:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BBck5kaS+8ySo+Y9DddXrQrFzgjIvN9VKWgdzVcVQZk=;
 b=ldiknisxlId9o4lGSkC2HrKfxrERDqQUFat1QoP1RPTrJJfytc1jO9Ry3JxT9LDvVH
 8lv1siAj/kqf+TwEOu1mwL8rFjZJwHHHPa4iAvSI7q/iUBwQsFEL5rX6lQSOyy7JHbSz
 mGudSyP9Ygj5mzIR6Y4duObPd972kc/OHy6VE1HwzjKBLCt7hwDawDr5EZNYmUyG47Iw
 O9R1t0hd6ji8LLirE2GFma3ye5q+iEafjn92kyWrwYcgj6n/Pb++qpLZv5tn13luHHNv
 Uzu6Y/AmtsqzHmfTxAbT8WWY4NPkMEWlfSjdXblDhNm3eMdznYozDWLpKc/TOEfpWXN/
 HfMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BBck5kaS+8ySo+Y9DddXrQrFzgjIvN9VKWgdzVcVQZk=;
 b=avyksEJs3l2T01iPZ7bRD97fFVBylLCQ6H2wk54qYVU2Zp4yTMD0FHkKwfaIA1mmxj
 Qn7fpn1NkMFWsa+WQkkE5cByDQwNQShIS1+sc5iwL8dpg2FvK17VWX6u1FmS04LzLT7J
 bsTzPbp79nEXHqUP1q+gRL52lbynfcZiWZDeSefDDb3NEAX5cYf5mtI3FZ1y3gJoOpSo
 wPvHumMJ5HmekilF375DTHlNYxoIo5buR1r0tVNoE3IlTw5peptC9ICYuCLOIdZ56uBC
 0ZSApS8hWac87YdCwUtan5N+W0TwVyKgJPqWyB4dDppgz5KflIv4tF7xSdSFRNh8J1z4
 2AIw==
X-Gm-Message-State: AOAM533jlRMictqpmoJnRa9gCeDsGwZSS6roLOKeiPWvy3LKp7Wvmueb
 lEkGroe//f1NdDywN/qqDkY=
X-Google-Smtp-Source: ABdhPJxvnVtlea8o8PHzNgPaRwsntTtc/f3oRZGoMc7XIVt/pFjpBupl6pxbVBb1ZhWBIlVrwyOg7w==
X-Received: by 2002:a17:902:ef46:b0:153:81f7:7fc2 with SMTP id
 e6-20020a170902ef4600b0015381f77fc2mr42038984plx.26.1649842591575; 
 Wed, 13 Apr 2022 02:36:31 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 25-20020a631259000000b0039d353e6d75sm5641352pgs.57.2022.04.13.02.36.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 02:36:31 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: kishon@ti.com
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] phy/motorola: using pm_runtime_resume_and_get instead of
 pm_runtime_get_sync
Date: Wed, 13 Apr 2022 09:36:27 +0000
Message-Id: <20220413093627.2538442-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_023632_509793_9310F060 
X-CRM114-Status: GOOD (  11.11  )
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

From: Minghao Chi <chi.minghao@zte.com.cn>

Using pm_runtime_resume_and_get is more appropriate
for simplifing code

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index 5172971f4c36..8738d512131d 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -253,12 +253,9 @@ static irqreturn_t phy_mdm6600_wakeirq_thread(int irq, void *data)
 		return IRQ_NONE;
 
 	dev_dbg(ddata->dev, "OOB wake on mode_gpio1: %i\n", wakeup);
-	error = pm_runtime_get_sync(ddata->dev);
-	if (error < 0) {
-		pm_runtime_put_noidle(ddata->dev);
-
+	error = pm_runtime_resume_and_get(ddata->dev);
+	if (error < 0)
 		return IRQ_NONE;
-	}
 
 	/* Just wake-up and kick the autosuspend timer */
 	pm_runtime_mark_last_busy(ddata->dev);
@@ -601,10 +598,9 @@ static int phy_mdm6600_probe(struct platform_device *pdev)
 	pm_runtime_set_autosuspend_delay(ddata->dev,
 					 MDM6600_MODEM_IDLE_DELAY_MS);
 	pm_runtime_enable(ddata->dev);
-	error = pm_runtime_get_sync(ddata->dev);
+	error = pm_runtime_resume_and_get(ddata->dev);
 	if (error < 0) {
 		dev_warn(ddata->dev, "failed to wake modem: %i\n", error);
-		pm_runtime_put_noidle(ddata->dev);
 		goto cleanup;
 	}
 
-- 
2.25.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
