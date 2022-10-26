Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11527C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 22:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NxZdlNmw6jpD/1ERqmS1JmkBVEogRvrsp5fNMQpAbjQ=; b=fnekkVes7PwNEX
	bifByEXLyR3JweZ4aG9VEiyIMzL/sT/kfJ4QJUz+S5RvyuNLdXuJ+A8fmGi1FzjfgdXq9CR1YWHHP
	s8jOk2WnTbQXFliAmkkVf3yHeyBckJWxNBZWDgq7y159PCD2N3A5/m2Lu7XT1ooyrfIFFw6nP/rje
	ngif2ENLp1y8QBo9k67QNfGa0XO2bdeirg4v4JW7AMA8VANB2HUTtM6o/rwcFodLie/dsVyIXL0Dn
	bnGS9TVsCIDpBPV+GMZnLW+Sl/hJdlpgsyySRQg0e2WWr7qCYc4zqxZgEfBADceDqaEdCKPKaDhrr
	GHOEJFI9fNeq56+hmSKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onp9i-00BAF8-2h; Wed, 26 Oct 2022 22:45:50 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onp9e-00BAEW-Bv
	for linux-phy@lists.infradead.org; Wed, 26 Oct 2022 22:45:49 +0000
Received: by mail-qt1-x829.google.com with SMTP id c23so11183240qtw.8
        for <linux-phy@lists.infradead.org>; Wed, 26 Oct 2022 15:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C6Inx+2mnGbd87syi22INdQZv7d9rvjsHpIiLrtgoFk=;
        b=qhzYBGmPJLhr8FTtHtDHTDfF6FveUlj/50ukcwNWiL09tfLEQeDT1eJ6yHVlePX8De
         1JAhpVZfHM0OLzPnJPCofWMmbnDTLgLAvMNkRlSOU7rrHj1GfmEK/n//wSoZRkYyXDPB
         vQIXxP8bH3s5+rCid+nhpK+2TFBuAOti2UTot4o5v5dQWw5naEw6+ZTOF8dvwRo+142u
         uB9nh7tFjtqRHK6iuexCz8w/BSBtPm6wQfycyjHmvbNEyQSmyu7PcYM2OKbz7UpnDxoH
         Q3wvsiStSf/uu+ttt+YzftSb1X/p8ujRRudK7Q3ksTNs7BAb0DSgLFkGyXAnBgIHk5+G
         3mJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C6Inx+2mnGbd87syi22INdQZv7d9rvjsHpIiLrtgoFk=;
        b=vUUcpH+nFJqagwTaAzOdqXfAP1k1kif9reP6ja7lVdiPL+yOOTuX1h5/+kXB8RfOHQ
         p6DKLF5nLhMIHHUs08ecO1oUAHpYkwOC1uvRpKfYCMlq28bQFnLlbi7786IyGp89ydpm
         0+QK+P9qcuj0GLUNa1upPzt7BkWReRIlihnwli+jw3ZiEWU9M856n3jEYFpBA0SiR6Hu
         d2e8RFdh9qRhlWmpfiGPc/gaGnnNbEGhlo8mpNeoFt+ON3NiA+OFhx9t49Pw0rys5+OQ
         H7QNTamhdwNS0AGqL/LAi8R+Nh7W1hD3F/SD2Fwpp+XKPa9jrreWBqRNB7/8kwr5um4t
         XHoA==
X-Gm-Message-State: ACrzQf0Bvj4/DI+n7lVvSq8UbZuwdCbgrUiq7OxYdRaOoutDFuC/glQC
	18YPKBsrYKpkQkhc9rtT1+ZCQj6iyApplw==
X-Google-Smtp-Source: AMsMyM7MvMhCDWgRBDgUrZo7cfyQBcnISZuDPBui6lKaPU83fxccaA7gUQsXIT2f5HaUidS9r3icag==
X-Received: by 2002:a05:622a:284:b0:39c:cbec:e1f0 with SMTP id z4-20020a05622a028400b0039ccbece1f0mr38410506qtw.451.1666824340718;
        Wed, 26 Oct 2022 15:45:40 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id ff12-20020a05622a4d8c00b0039cb5c9dbacsm3895060qtb.22.2022.10.26.15.45.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 15:45:39 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: justinpopo6@gmail.com,
	Florian Fainelli <f.fainelli@gmail.com>,
	Al Cooper <alcooperx@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH] phy: phy-brcm-usb: Utilize platform_get_irq_byname_optional()
Date: Wed, 26 Oct 2022 15:44:49 -0700
Message-Id: <20221026224450.2958762-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_154547_924575_457ECC4D 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The wake-up interrupt lines are entirely optional, avoid printing
messages that interrupts were not found by switching to the _optional
variant.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 2cb3779fcdf8..fbf454b206f2 100644
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
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
