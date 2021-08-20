Return-Path: <SRS0=GqE6=NL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89381C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 20 Aug 2021 02:47:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5483C6108B
	for <linux-phy@archiver.kernel.org>; Fri, 20 Aug 2021 02:47:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5483C6108B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wUGcKm+0k4yjLNXyVO14p6E492/1OlaKf0QekEHTHbc=; b=MhSB0kneXwlmES
	d6FKwZlBGQd/gQ3pZ6HjSrr9wQQy0RnGdyP+Yc8echdGpBLxqopAGKxJkhkvhLSE5fUwOqNfLpeQl
	rfPNGf6flmccUT4EQhvJojrMqtK7rDlgYzMB4OSAsaw+HoMPQLJj56kBxOUyWNGnFS0dyjzj+7reG
	Jf25ri+HhHxLc8qo1qjA/mHuTyigPG0IjYUyegy8rUV5PnVXVFLgsmFD+wsfT9WkMoQ6mDc0WSPTI
	Nza4IbrXXnJeUfC+M0bX7tvCBY6VYti3s5uhMqOcKwI+XbOHZZna0nl/gmDOURh8HlkGyoeUxKa6H
	OEpSSEiHpJw5QcD2X6bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGuYd-009wlN-Rs; Fri, 20 Aug 2021 02:46:59 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGuYb-009wkM-CR
 for linux-phy@lists.infradead.org; Fri, 20 Aug 2021 02:46:58 +0000
Received: by mail-qk1-x72a.google.com with SMTP id t190so9471222qke.7
 for <linux-phy@lists.infradead.org>; Thu, 19 Aug 2021 19:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mEQvc4tlW06aQJqJP5LbK405G6lgqY4IMl+A4wPSBEA=;
 b=fdhBJocQDNqphrkteBlkeqPku0mlxPINUWl4C8nI4Qr6xfjtjFWLSeIypVajikNdyC
 jnGQLD+Di4+bX+B0FZws/BcD6Rx5DaIpLUgSFx4fEDKGmeawzrDkkfOZ/bshLdK1jF0F
 wMb/hkN5fxq730lM+pnJOUE6eFb1cQVgED2RRbogUO9Kry9v4Kr/xwtwykWpDOOemUwf
 sv4la+9+zD8sU3dT+hdw4qOQDFfmudgDcTWf5d1IPaElYhSsKk8EOsSGptILqUuxkCAo
 UfUR7xJb4oc0OK8dY5jzUN3LZq57q639S4Tn2bg3hrv5FMWYjlNyW8idUXZBMyGd7JY2
 rHKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mEQvc4tlW06aQJqJP5LbK405G6lgqY4IMl+A4wPSBEA=;
 b=lY5+XPhdPD1WMGm5iEjYwMiy3ZsRfI/IEscnt8qi4YzPI9ZXMudY7UkrY8ANhysMmm
 MzgbJPTGGOVJCqy8L86wLEVM0PJgW6q7qN2nxQ7WCkrBaQI4XWq9SlXfIo6561k9r7Rv
 nx7YHLAHxjsqzPt30JjjOtkUkzBc2TdpIO8MyQ5VM9XbY0/E3k0UTpxPryQ98rQSjFbQ
 RykHD32X0Hu+KJBGUhWMkcdWBwkoowwZPAWsEP35cuGhpLwTULY/B2VdaT00v13Us5kB
 RAqxSB2xAeFqX81gU4ycwvzo7u3QKKgXC4smWxE9quEHQnDP5j1sXkpIl5WWNUsmiXtV
 BylA==
X-Gm-Message-State: AOAM532YNOQe6eZ7uYEGYep0SgVWyVTs+3IlRqyfIgzhFTKvvDsZ0x7O
 oqoDs04LH1e3TzFpg7CugTE=
X-Google-Smtp-Source: ABdhPJyMPt7err59CY9lYfPbUipGcotDfvL8uIT4zyvHaSCmMAXoK153CjrGeS2xi+yTxclElDp2ug==
X-Received: by 2002:a37:de02:: with SMTP id h2mr6565646qkj.411.1629427614352; 
 Thu, 19 Aug 2021 19:46:54 -0700 (PDT)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id u27sm2544108qku.9.2021.08.19.19.46.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 19:46:54 -0700 (PDT)
From: jing yangyang <cgel.zte@gmail.com>
X-Google-Original-From: jing yangyang <jing.yangyang@zte.com.cn>
To: JC Kuo <jckuo@nvidia.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 jing yangyang <jing.yangyang@zte.com.cn>, Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH linux-next] phy/tegra: add put_device() after
 of_find_device_by_node()
Date: Thu, 19 Aug 2021 19:46:33 -0700
Message-Id: <20210820024633.11757-1-jing.yangyang@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_194657_476874_FFDFEC82 
X-CRM114-Status: GOOD (  10.03  )
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

This was found by coccicheck:
./drivers/phy/tegra/xusb-tegra210.c:3174: 2-8:ERROR:
missing put_device;call of_find_device_by_node on line 3167,
but without a corresponding object release within this function.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: jing yangyang <jing.yangyang@zte.com.cn>
---
 drivers/phy/tegra/xusb-tegra210.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index eedfc7c..f26eb5a 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -3170,8 +3170,10 @@ static int tegra210_utmi_port_reset(struct phy *phy)
 		goto out;
 	}
 
-	if (!platform_get_drvdata(pdev))
+	if (!platform_get_drvdata(pdev)) {
+		put_device(&pdev->dev);
 		return ERR_PTR(-EPROBE_DEFER);
+	}
 
 	padctl->regmap = dev_get_regmap(&pdev->dev, "usb_sleepwalk");
 	if (!padctl->regmap)
-- 
1.8.3.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
