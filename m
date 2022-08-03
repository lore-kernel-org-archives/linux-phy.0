Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0FCFC19F28
	for <linux-phy@archiver.kernel.org>; Wed,  3 Aug 2022 06:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B3JAhja8dHQhE4B6TQzifXEUiE1v3iqwxyqFkZXZiC4=; b=lgCpjIWq9G3V6m
	snDts4hdpiPhVBmSjGDfNfCm69wlWH3C3x4p2o9wUP8WhoNzAVHFkWXbD9NqE7yx76oTYKIYPRQXm
	8zP4IvLfnCjFUhoUNiHIEGeh2lMRGH6I+Y/pzhQW9nVL8E3bY9tW3fabe88MqwmC6T4/TP2hSu6z7
	EnQi2uxRMnSRviWWEV+tO50Ft0Tk+Ug3ZJolD97ZZnUoBTSpWy7b5vx09N3keNZNT0hJ90WAhNNm8
	z8ERMOVDBlsGrrq8amATSZO6y3YPOHxGRtTAhmRVVzyCaj9b0jDTB8/jppdhOxBDX7sMFwqWqVgmJ
	elJbZBRYgSii5YM93gFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJ7hO-0033fV-5S; Wed, 03 Aug 2022 06:17:42 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJ7hL-0033dU-9M
	for linux-phy@lists.infradead.org; Wed, 03 Aug 2022 06:17:40 +0000
Received: by mail-pl1-x62f.google.com with SMTP id x10so14789326plb.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Aug 2022 23:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=Jlv66Vke6l8SYjueTnqS1mdIvxjlr2VRAIqrKVb1kto=;
        b=WEvmmSZzPBk5pgi20n1KHhSr4m0/uV5Gp/E10LInyrGNM5KdfCx/lCWizepPxUuaD4
         AgKPVrf2wr59DyEhXIPtWLBNIdEpHiPeAN1Jc0VZIL08L8siZ/yz7fdxCvhtUyuFuz8G
         hY2xd+nnbc6FEcLJxmMemWavAGQUQfCqa9GderCVzegyX0Rbf2fNrr3blz/0vpMKtV81
         fkA/ZRX/UmLTkB/1ssvViXY1GFsymmmaAj6D9GVoxMrb7yu8pctQKxroB1BkO2fAf4D5
         yy49Guqi41IG+ZA7srtGumj9ZvZHZ+XtbIFsx7/F7eZxkvgTGimc0ApDZ/4k60dMUHAx
         +LNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=Jlv66Vke6l8SYjueTnqS1mdIvxjlr2VRAIqrKVb1kto=;
        b=gBoMLciGGmBz9NjkodHYXAIhDc+YHLdD2NV8bE1koKdlk65QgwV0MZMQHQW/WogOpI
         vQtzFnjb9IBf0dChV9agT1OFkqnuxFA6JPBpdH1xFVYPNV5cUuiDm6wULYCdAUyhKsuA
         ez3DNMV0UrBpqDf/OIZi5jVhE8uEKo0j9g61kwd9fDY3FaKov5UhiN5jN6UB6JX2R0ya
         6gYs+wsPLgyGM8nH9Hjg7mmEP/8us0dsEis/rIxFlOJKAr3WLmXuY/y/rYhT+bmb9Gfn
         LdDJwerwRxjp1In6g5ROHHXf0Z+ZHz7sYpBHZx3KJ7ud9avcDZu0n87XNxD0bi0GdGGa
         EGsQ==
X-Gm-Message-State: ACgBeo2h66I2zQ0KCGafcsNHQmoaofO+Rycdq3cbKskRwgpZAskcTl+l
	peMAzZzm4HePjp6XWlsMP5SsKeYEBk4=
X-Google-Smtp-Source: AA6agR5gwzAONw8jejdaO+54xyeQ2fkw6EGCJC+kNk5R3U7hy6Da9RcVOJfBYcckeuLmTUg6Pdau0w==
X-Received: by 2002:a17:90a:430e:b0:1f2:33ee:75da with SMTP id q14-20020a17090a430e00b001f233ee75damr3352958pjg.140.1659507457879;
        Tue, 02 Aug 2022 23:17:37 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
        by smtp.gmail.com with ESMTPSA id a9-20020a170902710900b0016dbce87aecsm852115pll.182.2022.08.02.23.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Aug 2022 23:17:37 -0700 (PDT)
From: cgel.zte@gmail.com
X-Google-Original-From: ye.xingchen@zte.com.cn
To: linux-phy@lists.infradead.org
Cc: kishon@ti.com,
	linux-kernel@vger.kernel.org,
	ye xingchen <ye.xingchen@zte.com.cn>,
	Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH linux-next] phy: mapphone-mdm6600:using the pm_runtime_resume_and_get to  simplify the code
Date: Wed,  3 Aug 2022 06:17:34 +0000
Message-Id: <20220803061734.1650606-1-ye.xingchen@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220802_231739_355690_818B628A 
X-CRM114-Status: GOOD (  11.14  )
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

From: ye xingchen <ye.xingchen@zte.com.cn>

Using pm_runtime_resume_and_get() to instade of  pm_runtime_get_sync
and pm_runtime_put_noidle.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index 3cd4d51c247c..c1a1b8b0a13b 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -253,9 +253,8 @@ static irqreturn_t phy_mdm6600_wakeirq_thread(int irq, void *data)
 		return IRQ_NONE;
 
 	dev_dbg(ddata->dev, "OOB wake on mode_gpio1: %i\n", wakeup);
-	error = pm_runtime_get_sync(ddata->dev);
+	error = pm_runtime_resume_and_get(ddata->dev);
 	if (error < 0) {
-		pm_runtime_put_noidle(ddata->dev);
 
 		return IRQ_NONE;
 	}
@@ -601,10 +600,9 @@ static int phy_mdm6600_probe(struct platform_device *pdev)
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
