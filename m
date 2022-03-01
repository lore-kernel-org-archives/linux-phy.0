Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE0F4C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 02:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWpUc69XGw596rHD58t7M62O8p5+cn0iD/m/oSZc2NU=; b=pAl4N1/zm98ZGU
	4bGH4ne58WTfQEoG47Y+PMJo1T0ws199Sc6KCXwVooSEE+d8BJAlTSOfKAg4G7N6wOKpf4zYGOwGZ
	c5LJnbFYhVH8XXGqNL25V+RiGchVw91WsAp0SshTSVo8kNkbWN/bMOkjoipXTTcbhk04ZBPQnnW/w
	RCbKG2IvW3OkRvT7xoLG+FdAT4VRT4Z0FqtL78gaTZdsftOL1BV7HxIq/AexKIuwx08DHNtuyOlJl
	6iIKkV2ddWX12QVX52Mofd78Dlc2uH1LzVYJB6Gdm7HG9tEE0kJI1jOa0l6UK+Mdsg4r+ODFiyroJ
	cwNpoBS+1s+KQNH2INxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOsX4-00EjAK-3k; Tue, 01 Mar 2022 02:46:34 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOsX1-00Ej9j-DK
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 02:46:32 +0000
Received: by mail-pl1-x631.google.com with SMTP id bd1so12310652plb.13
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 18:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=Oh77CwmcM8TqQGwRDvYrvPiyyCBaVXCwM96gKvsyh0c=;
 b=cKgQn+iSiUti9x7VYjmZIZ10o8SAl7Y55nkiuo/+bpRiPYT1stJ6ggJklb6u8XoRXz
 Et4saEOaAACuxUhA1LAMv3LrHG0QnCibU1WHYFFXRcTuEVUXSTwfOJWC9J9rM5JBoaGy
 lO6aMbnnF8nD5xgx3LfQT30MOoGHCyhEMGEdl3wV72ofW+zuFdNtIHBO596XSNBiBIz3
 0EQsVSJppoMLizuOB+7u12dFxO5D2ViwDzDcjYgQXoOYDBS5pHW1YaeipwaEUHqVZKTe
 yT9HyrNfXmv7O+FY+O1N/Gp8dPlSc6ViSO8LnEerMvzDovesI7Rqj4gtLgFX48UNUfNd
 1bzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=Oh77CwmcM8TqQGwRDvYrvPiyyCBaVXCwM96gKvsyh0c=;
 b=8RQbdHcy69my4zvEgtprXPxLALgrmGkvI2J6gbW51DEJb7MaBQZKfh5W4gv9HKb+oT
 +3NwElbjeMnk2btiviLrdZYkOpopW5jx2hVRW6MmkUencp4onzSkXx7cu9xnTTZuiXyM
 JPJyfIrEhn4/0rlznqU3UtVBiPJsGoAokBJmrK1gNY9g/2w7zO2PTWJZnfuubPLBWLmc
 ghHP4LgnrF/sGXBgrTrydRkJ+PameADi4IBFSvWiQT1riCgBWqP0InFVNfJX8Knuh6Co
 WyCaDv7zLDRPRgug3NoeioDJwj7IXxWj4BeTtLdtefno1dnXH04wa5M0Gsyzcst+S6qj
 +xsw==
X-Gm-Message-State: AOAM531Vzli1AdPaTkRmJFoP67biDy9QtFy86IbQ53qLJekJeeOYwIkl
 Hhpoq0xd1vlaXYzL847Z4gRpgINPD99IQltQzt8=
X-Google-Smtp-Source: ABdhPJxuyzzCqyPsxftZG5kik28R9flxKAT1VMHHtF755Tw/FboWjZE+mIlnRbvPeZonXtIveEVwPQ==
X-Received: by 2002:a17:90a:a78f:b0:1bc:8042:9330 with SMTP id
 f15-20020a17090aa78f00b001bc80429330mr19438763pjq.229.1646102789999; 
 Mon, 28 Feb 2022 18:46:29 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id
 t8-20020a6549c8000000b00372eb3a7fb3sm11399940pgs.92.2022.02.28.18.46.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 18:46:29 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Miaoqian Lin <linmq006@gmail.com>, Tony Lindgren <tony@atomide.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: mapphone-mdm6600: Fix PM error handling in
 phy_mdm6600_probe
Date: Tue,  1 Mar 2022 02:46:11 +0000
Message-Id: <20220301024615.31899-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220105123947.17946-1-linmq006@gmail.com>
References: <20220105123947.17946-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_184631_471217_99275DC0 
X-CRM114-Status: GOOD (  12.94  )
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

The pm_runtime_enable will increase power disable depth.
If the probe fails, we should use pm_runtime_disable() to balance
pm_runtime_enable(). And use pm_runtime_dont_use_autosuspend() to
undo pm_runtime_use_autosuspend()
In the PM Runtime docs:
    Drivers in ->remove() callback should undo the runtime PM changes done
    in ->probe(). Usually this means calling pm_runtime_disable(),
    pm_runtime_dont_use_autosuspend() etc.

We should do this in error handling.

Fixes: f7f50b2 ("phy: mapphone-mdm6600: Add runtime PM support for n_gsm on USB suspend")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
changes in v2:
- remove unused label
- add pm_runtime_dont_use_autosuspend
---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index 5172971f4c36..3cd4d51c247c 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -629,7 +629,8 @@ static int phy_mdm6600_probe(struct platform_device *pdev)
 cleanup:
 	if (error < 0)
 		phy_mdm6600_device_power_off(ddata);
-
+	pm_runtime_disable(ddata->dev);
+	pm_runtime_dont_use_autosuspend(ddata->dev);
 	return error;
 }
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
