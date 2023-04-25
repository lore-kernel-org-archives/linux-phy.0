Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D03FDC77B7F
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 21:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fvmNfK20q/0VdchCbUJn687TYPZdE8/9xFiQUedLjCQ=; b=2zzr4pqoSBdLu+
	0urVHaIt7q7HJ13+J0QZ+gflb28AKpqTtaYCIvjQi9Lm207fpUNR2JIDugCnpSG7I7geH4NWI6RBH
	FxVtq66tN8mDQB1bIFuG+/TdJ0as752aa9hGYLbsz299IqaHMoQs5LO+vTzrXS1MzW60taOpzRNDh
	OQLvpENTjfaZtNSuI9Vnke2D50ZHsSanG/oSKEW7S6AEcIM5zghm7H/U7t38ET6z9OItOfb0PMT4l
	8j6CaZ3yub5udSegIGLezXxEI3naosZMd2kIL4vC5qKmWEGXfmJ7rnDNKMg+qvf9GU+WBoQ0Ptbze
	L+B9YXDgl3Rp1ogTN4Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prQhL-002Hzi-1N;
	Tue, 25 Apr 2023 21:59:43 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prQhH-002HzD-2R
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 21:59:41 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1a66b9bd7dfso67203435ad.2
        for <linux-phy@lists.infradead.org>; Tue, 25 Apr 2023 14:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682459977; x=1685051977;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=difEtPuCDEVNmMp3S1bKLId011LEY1AQ3x0QKrDmjBQ=;
        b=S3w+hxVSXUjf+CkB5IyKTXkNPx182kQt0bKRPexETKFUkN8pGQjz1YYaCBNrFBYpzr
         cgi4wmshcc49UKLYxPdlTPvHulSkuLEXFIQxZiNrH+GokivUC6o8+5D82mUqwg3gvDrS
         O95mwo//wvuVH5ZzO04oQsPyJKr0GYNAwK63URxj6fmM5x9ZwdRK6D6H1IMfHTz1FBRV
         PIK6bE6VGLjTpoFHFH6ZREy3i66Ja7naVM+8/4w0CQjcR16K9JDilSNHPEmPPpMrRxr7
         DC8ZkZqGmVeldX3G6n2+sR5A/n1ow4wFTp9DFKP4PbJ4amp+JbuywNG0iU/iar1fJOOf
         iZ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682459977; x=1685051977;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=difEtPuCDEVNmMp3S1bKLId011LEY1AQ3x0QKrDmjBQ=;
        b=dh1Hivk56S3RkkvqdjioVqXPKjTqNU4BgfHogJ20VX0+eC8ko9R2biQJ1O2lFppCyt
         Lz/CAwmhte32GMtFZMJMwJNfRogzUO2ppyUkZX0dOxON3WLh6SL1Xlb36ihAFDznq0Lt
         zQqai1XxYoQ0JnJpPcwFfO5PG86x7pwzd5XMjxnOOyqZ973vkudbuOvaCPNSW6WPj4Z5
         8zbSs/uiXJDbEUnl/fRKyjXKbMqlq6jIP8IkT66Tha+qJ1XbxogGiDQ2r7hnza57s8EW
         rJovvh1ogNMFHF0wUcp1WZWHtYBP4deYexJELJ3SFVuX7clC7Ix/9qSeoK3R0fQ2wFDL
         toWw==
X-Gm-Message-State: AAQBX9fTwJl1NXjARU7qQEAu/3R9MrkOL+XedyiOri9OBQRGcx5+BtWK
	3keP3Ys8CQKTPLLsV5uZIjQ=
X-Google-Smtp-Source: AKy350bwWHi609pFymTUNkUnd3Frl4I/UsuTySFhImTSUYKfyFWlWHvltuFBRCbB+upAb9j6bMrEng==
X-Received: by 2002:a17:903:32cc:b0:1a1:f5dd:2dce with SMTP id i12-20020a17090332cc00b001a1f5dd2dcemr23876138plr.6.1682459976758;
        Tue, 25 Apr 2023 14:59:36 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902b70900b001a96d295f15sm4414634pls.284.2023.04.25.14.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Apr 2023 14:59:36 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: stable@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	sashal@kernel.org,
	gregkh@linuxfoundation.org,
	Florian Fainelli <f.fainelli@gmail.com>,
	Justin Chen <justinpopo6@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Al Cooper <alcooperx@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH stable 6.1] phy: phy-brcm-usb: Utilize platform_get_irq_byname_optional()
Date: Tue, 25 Apr 2023 14:59:32 -0700
Message-Id: <20230425215932.4063037-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_145939_799450_01B1DF5B 
X-CRM114-Status: GOOD (  11.99  )
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

commit 53bffe0055741440a6c91abb80bad1c62ea443e3 upstream

The wake-up interrupt lines are entirely optional, avoid printing
messages that interrupts were not found by switching to the _optional
variant.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Acked-by: Justin Chen <justinpopo6@gmail.com>
Link: https://lore.kernel.org/r/20221026224450.2958762-1-f.fainelli@gmail.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
This patch is only needed in Linux 6.1 and is already in Linux 6.2.

 drivers/phy/broadcom/phy-brcm-usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 2bfd78e2d8fd..7a4c328bac58 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -445,9 +445,9 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 		priv->suspend_clk = NULL;
 	}
 
-	priv->wake_irq = platform_get_irq_byname(pdev, "wake");
+	priv->wake_irq = platform_get_irq_byname_optional(pdev, "wake");
 	if (priv->wake_irq < 0)
-		priv->wake_irq = platform_get_irq_byname(pdev, "wakeup");
+		priv->wake_irq = platform_get_irq_byname_optional(pdev, "wakeup");
 	if (priv->wake_irq >= 0) {
 		err = devm_request_irq(dev, priv->wake_irq,
 				       brcm_usb_phy_wake_isr, 0,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
