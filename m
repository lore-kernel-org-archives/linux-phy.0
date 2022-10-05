Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93D98C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  5 Oct 2022 21:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbCYxFyOWnptIH99oRt8IIeNpw5W6l7gjbUok8gdyMo=; b=c2fKaB0wPMO9Aw
	D6JyGB07swJWVgLdY7ShdskBOIE/1rMXOTjVPMZFilijnlaI8NIxFTZmxIoBvyuOnlqGOb0KrXfzq
	97B/gMNjPm9bDXy8osOM3qvQKV1H/jhLNz6vKTdzk3faRZ8fiuVdxf46RyddjNDlINfCcr38mgBVR
	Lbo8gpvJa2lPFYv7wF4YBQdxRfMhZJtefrW3SQipCBBcr11+AN/bLe0EUIYfQ6m340uSDWXIQta5X
	jic7t57/EB/Y01XJhvxBdnIFU97qQgU4zJrAQy+GWmVOFp/6F3wH7EJWnH1robKENP0KVNGRrGLIv
	OMYPiRNQmtUMuFnCk0LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByU-00G9H1-1W; Wed, 05 Oct 2022 21:30:42 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByR-00G9Fk-4L
	for linux-phy@lists.infradead.org; Wed, 05 Oct 2022 21:30:40 +0000
Received: by mail-qv1-xf32.google.com with SMTP id de14so71790qvb.5
        for <linux-phy@lists.infradead.org>; Wed, 05 Oct 2022 14:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date;
        bh=sM0ExHCLiFuiNysHjATwyWwifukOjz6sXbjAjjuylIg=;
        b=i+h2r/8ajVjQMilxnWQsj9nP0OygzHyl2uRRAyql2j0kVET68KWR8nZjxjMG2rteW3
         X1YLshoKitkthEvYCk3QDosntzib7x7L50ZGC3g31mnfbbm92cNXBDh17K2frGV734hd
         zpPWuD1l6gFcdqWXfMx6gcAhPaezFV8h6vciUpjdExpPWZffFotggfldSZDTBOO5EkPB
         TO50IiXDiavtQWYv4B45jgDFF4P4VHFRYSG1LJesjEM91+I5mYV/ItIEBFQI6sjSm3Jj
         3OnBgsGWBcI3oWaM7KOaU8tCFSmZ7QNphLWeAuJ4YuL1zKwiPGTzQfggyS+VzGLAETYQ
         b+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=sM0ExHCLiFuiNysHjATwyWwifukOjz6sXbjAjjuylIg=;
        b=xLo7iTYRBW/MUeY7LIf91R4zYi46AOuLO2W+hNwYk/nqcvVtuhRW0f/sGHaE1lDPIu
         sHRTbhwxL3muNT/P2g+gmdZcWAP15X+WHyk+Mxc+VfMuWSnc98+tZrYToVNZ/9lQRsjA
         FUMhmcIV7aTlu4L5F1kcMxYaeOA/Vv2udNwp/2OoH//Hg2JLnPCQpitUcuX67pcmIhKD
         jCpmUhDbfvUZWuRoMi04DC46JV7FYPrllqg/fbhClOcZIuTpE9fxBPNowcCdf9ioAR6/
         rwEs1OIa255ky8xND/vJMN9dnVyolB/susYL3uvK9BqC1jnk7nqyyb1tgHK+ibwglQPO
         qyVQ==
X-Gm-Message-State: ACrzQf0x0lmDsVpQ31IZplHj6n9sUvNtobKatatcC6MEgboSZ4L//mxX
	/m+NvwL++rKwMTTd+K+HUY8=
X-Google-Smtp-Source: AMsMyM6yleovQFJ3ah6fjoL4/GqjeNqvkGqszLLljHIBY4JlX3ZKKOCIiNe5GzcvgUAqIk8KTFGPnQ==
X-Received: by 2002:a05:6214:5005:b0:4af:b6ef:eee2 with SMTP id jo5-20020a056214500500b004afb6efeee2mr1379601qvb.75.1665005437802;
        Wed, 05 Oct 2022 14:30:37 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a255600b006b929a56a2bsm20058566qko.3.2022.10.05.14.30.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2022 14:30:37 -0700 (PDT)
From: justinpopo6@gmail.com
To: alcooperx@gmail.com,
	kishon@ti.com,
	vkoul@kernel.org,
	f.fainelli@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justinpopo6@gmail.com>
Subject: [PATCH 6/6] phy: usb: Fix clock imbalance for suspend/resume
Date: Wed,  5 Oct 2022 14:30:18 -0700
Message-Id: <1665005418-15807-7-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
References: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_143039_197529_6BF8D4B7 
X-CRM114-Status: GOOD (  15.53  )
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

From: Justin Chen <justinpopo6@gmail.com>

We should be disabling clocks when wake from USB is not needed. Since
this wasn't done, we had a clock imbalance since clocks were always
being enabled on resume.

Fixes: ae532b2b7aa5 ("usb: Add "wake on" functionality for newer Synopsis XHCI controllers")
Fixes: b0c0b66c0b43 ("phy: usb: Add support for wake and USB low power mode for 7211 S2/S5")
Signed-off-by: Justin Chen <justinpopo6@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 2 --
 drivers/phy/broadcom/phy-brcm-usb-init.h          | 1 -
 drivers/phy/broadcom/phy-brcm-usb.c               | 8 +++++---
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index f78cff2..76cf428 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -430,7 +430,6 @@ void brcm_usb_dvr_init_7216(struct brcm_usb_init_params *params)
 
 	params->family_name = "7216";
 	params->ops = &bcm7216_ops;
-	params->suspend_with_clocks = true;
 }
 
 void brcm_usb_dvr_init_7211b0(struct brcm_usb_init_params *params)
@@ -440,5 +439,4 @@ void brcm_usb_dvr_init_7211b0(struct brcm_usb_init_params *params)
 
 	params->family_name = "7211";
 	params->ops = &bcm7211b0_ops;
-	params->suspend_with_clocks = true;
 }
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index bedf2b8..f9fbf8f 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -62,7 +62,6 @@ struct  brcm_usb_init_params {
 	const struct brcm_usb_init_ops *ops;
 	struct regmap *syscon_piarbctl;
 	bool wake_enabled;
-	bool suspend_with_clocks;
 };
 
 void brcm_usb_dvr_init_4908(struct brcm_usb_init_params *params);
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index d97fa58..aafba4a 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -602,7 +602,7 @@ static int brcm_usb_phy_suspend(struct device *dev)
 		 * and newer XHCI->2.0-clks/3.0-clks.
 		 */
 
-		if (!priv->ini.suspend_with_clocks) {
+		if (!priv->ini.wake_enabled) {
 			if (priv->phys[BRCM_USB_PHY_3_0].inited)
 				clk_disable_unprepare(priv->usb_30_clk);
 			if (priv->phys[BRCM_USB_PHY_2_0].inited ||
@@ -619,8 +619,10 @@ static int brcm_usb_phy_resume(struct device *dev)
 {
 	struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 
-	clk_prepare_enable(priv->usb_20_clk);
-	clk_prepare_enable(priv->usb_30_clk);
+	if (!priv->ini.wake_enabled) {
+		clk_prepare_enable(priv->usb_20_clk);
+		clk_prepare_enable(priv->usb_30_clk);
+	}
 	brcm_usb_init_ipp(&priv->ini);
 
 	/*
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
