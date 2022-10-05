Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82906C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  5 Oct 2022 21:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCIF9AAnQ2+HDwxqaYiEc3Qs7fUaJITfamnuVnJgHas=; b=mj+igwYEgazlc5
	e1GCPL2QVCVie92bgavzwPQq3AATkh/Tz2FZmGZ6SSLbL+cGmDHCEhfhzH5M01cE/lMtWZtf+Q/d2
	MeozxLsARDdyz3x/tjDSpgS4ou+szHeSg6Wwx7rxrGW8s2TXLrzzhX5LEs29E3vNGBpo5XASxV4gR
	Gz16Bft+Z3Qh24m5gOMZtUtByE1F2jfdftbT2Zg/jysVxQMBGG125XkiQGi1JvyZdZPGD76B7X85j
	NV9FvVwImutef6tH8+oryeduvPdix/K28VtfATiAiBWVisWa5Y0rDx4L89qIjNWnLN3yefz0P4GgM
	Vy4p11rGUepW6RKz36PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByR-00G9GZ-Vg; Wed, 05 Oct 2022 21:30:39 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByO-00G9Ex-Vq
	for linux-phy@lists.infradead.org; Wed, 05 Oct 2022 21:30:38 +0000
Received: by mail-qk1-x729.google.com with SMTP id d15so11048124qka.9
        for <linux-phy@lists.infradead.org>; Wed, 05 Oct 2022 14:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date;
        bh=ADXfYjVqcsb71HATcSWA4CTLqWqDoNigZwkBL1NsNA0=;
        b=VMAultGS/VumpE0hdEat79ZOtj7Ps6VEKJe73ns71ai3VkjcGU1DZv2b+1XtrvH+19
         QFyC5d3J/f+mEI03MEimDecJryzOie69YRas0xRcoiOFdArT3CzqiQ6zi28eLNY+WnWp
         /jfhbjFnC8VuQPsnck0Y5v5NfXzamtmXQgcdCL2iMbM5nei4Q9j6VDFCWKmuOOPqCnKC
         eyluSC76Vr5Lj5ZVE3lVfE9HGRjDScfWNcnW4qSQIQre8lWIcVS62nvL9LxI2qF5OWnI
         Zb2hmuf7SWX4U5AKJQnzJX791ayOcjtP7JWFw7BM76/CZEezwK4PIiN12pKlf0S1yHck
         EJng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ADXfYjVqcsb71HATcSWA4CTLqWqDoNigZwkBL1NsNA0=;
        b=MlPYiFRJGnDCM1N5/aL3YNLjH9DekRvaBsxIWV4FMmWVAUsGx25fAB3TlAtHRgtF5E
         cGnvxvRdsu5VARaYFZ7VminCMTU+bufYmCHq471CpDAbIV/mjADz/O/d3L5xlbwVob8h
         KCGcenwwlchJ2fcflYsjIOejcS90Wg7uT1qxcgZYVCgGrXoZj+lyg0xIAd0Cl/uHkGqy
         gv67uI2vsRnO8nUdbIdbXYXxgS3/tGPHeJYfCGVPWVPu6zHfa9nW51HM/sgJBiRXi7bB
         Z7QXIxYTfjVWQAiJ7AN85l5sbV8zV5vFzMklVVe0/xv8+iD0m4r6cbiGwSAw5NPPx/vP
         DDsw==
X-Gm-Message-State: ACrzQf2I4bT84W/9QhQynTpHwJtqMifvzVTvIpeDrp0iMGiUMB43ixUW
	D0ebr0IyJU8n9KXJveod5+w=
X-Google-Smtp-Source: AMsMyM5SMCbfYce20jcrqzVl+aVKGTNodDOWJfok6qBCDyQqyEPY5dIYpL0BbCy/jvmC1YLsNAnK/w==
X-Received: by 2002:a05:620a:2a02:b0:6ce:90fb:51b8 with SMTP id o2-20020a05620a2a0200b006ce90fb51b8mr1151710qkp.460.1665005435541;
        Wed, 05 Oct 2022 14:30:35 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a255600b006b929a56a2bsm20058566qko.3.2022.10.05.14.30.34
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2022 14:30:35 -0700 (PDT)
From: justinpopo6@gmail.com
To: alcooperx@gmail.com,
	kishon@ti.com,
	vkoul@kernel.org,
	f.fainelli@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justinpopo6@gmail.com>
Subject: [PATCH 5/6] phy: usb: Use slow clock for wake enabled suspend
Date: Wed,  5 Oct 2022 14:30:17 -0700
Message-Id: <1665005418-15807-6-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
References: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_143037_044524_4C162F90 
X-CRM114-Status: GOOD (  10.76  )
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

The logic was incorrect when switching to slow clock. We want the slow
clock if wake_enabled is set.

Fixes: ae532b2b7aa5 ("usb: Add "wake on" functionality for newer Synopsis XHCI controllers")
Signed-off-by: Justin Chen <justinpopo6@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index 6a4d478..f78cff2 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -337,13 +337,12 @@ static void usb_uninit_common_7216(struct brcm_usb_init_params *params)
 
 	pr_debug("%s\n", __func__);
 
-	if (!params->wake_enabled) {
-		USB_CTRL_SET(ctrl, USB_PM, USB_PWRDN);
-
+	if (params->wake_enabled) {
 		/* Switch to using slower clock during suspend to save power */
 		USB_CTRL_SET(ctrl, USB_PM, XHC_S2_CLK_SWITCH_EN);
-	} else {
 		usb_wake_enable_7216(params, true);
+	} else {
+		USB_CTRL_SET(ctrl, USB_PM, USB_PWRDN);
 	}
 }
 
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
