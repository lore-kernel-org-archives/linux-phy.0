Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E075C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  5 Oct 2022 21:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9xIvIqO7h9REUP2IchaBX2fHBP7hMcP4kMFoKx6mg8=; b=gZLkkoaSGJDAVa
	u1R2GcBUXIbCNFeYRAoTZZjZk3BUIB0/8PY3e1KfNFsncR72pFyKokMjsKjXbuHzJ0EGERwJGoysB
	jmM5x/ZX/DptsSe1e0pw/B/pmrE0vMtt9rA8LQaS0HiN2sGC6HIhiR1bzXl/VIqvWFDHqnqJJzrps
	MMuy0tVYQ2YZ5L2w90+UxYpyf+in555cMg06+WjLrLRCiyF2kB4rX44ORqwV1Kn7aHNiVvYKiHsy3
	SNGOII1kt0Khl7SBHE8ZkwQtC+DR1SOTfCzwUy6zm55mLZULygrsdJjkp8bG+bbCBcUPMbRIecxO7
	hFODqeMOgOYScZuighRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByO-00G9F1-SG; Wed, 05 Oct 2022 21:30:36 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByM-00G9Ds-Da
	for linux-phy@lists.infradead.org; Wed, 05 Oct 2022 21:30:35 +0000
Received: by mail-qt1-x82d.google.com with SMTP id cj27so5109qtb.7
        for <linux-phy@lists.infradead.org>; Wed, 05 Oct 2022 14:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date;
        bh=JMIcP68+Fkm6QiK7bn2NZQ+WwlSpELUW7JSzlcBQXcE=;
        b=RdlMc163f0DwQiYc58pXZZHCtKq17vcinyVQ5I3n1gtbL9aZrGWogdk9LB0JeE5STV
         2t1voGI1U8lB6aEImQ0agWciSFUb4QEImZ6vwSY2aXnqhcdClH6xbIjVKYFICbU1dbTB
         RHnacX7eI3DZoWGYVRMTQ/6wUQJsRF2YBp1+Y6B76FpzVBSCbxqdlCIAgE9XrPBsiGoI
         LBwqWMZB49pLzXTrkwYn02e3HrxVrEe8BkTcs1WIeocuKG9HjQ6VQuVXXxzTY4owMnKy
         MuJOFHJ1QbUnz3OIge9Y7O2N+05h7s+wWQoaF+k2XReDSmH/WpZaZUIyJ8x5p10xEHwG
         vBEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JMIcP68+Fkm6QiK7bn2NZQ+WwlSpELUW7JSzlcBQXcE=;
        b=tu3JQeTarHsJB+JJVPeWWMPl9IyDDn1GBPGoQq1V8gJiO15dtV9Mx9mZSw4vezjeZd
         vJvGcFrKCy+PYxqTXU0lbvJloOJlsoBNKg1e2Mo7paY5qqTBboU/JG1q1KbX3ESBSHU7
         Ombxy+/ehWe+bI+WlmiiQ1yaQS6bAhEqpZxZQb0QfoR9sz5JQt9jPtgGJf5ZoIAIHaiG
         P8Enz+jbeHZ9XeBA6WFkDhiVeUs0FbIRrxfpo9TPkrHMdRbPC6FzW77ygWWVjZ9zo07t
         HMSo75ApO3afmtUH9vZj0k0YxZpJiW6dAWVgY26tsJ9GTtPhv55F4suRPgIDguGFlE2c
         7IiQ==
X-Gm-Message-State: ACrzQf2oBl36JgVULNAw+KJJjcrf/J0H+f3lV0aEtok97WohzHMytEip
	tvtj+5Ct/0uWrIumKsI8Ojc=
X-Google-Smtp-Source: AMsMyM7yBI/1soiutIAnpBUkd2ed6zqRgJOIjL8DjGpPDQ+u2ATre1Q0dxIKJX/13+4NsRLpTj30kg==
X-Received: by 2002:a05:622a:248:b0:388:60a2:5eed with SMTP id c8-20020a05622a024800b0038860a25eedmr1200614qtx.296.1665005432904;
        Wed, 05 Oct 2022 14:30:32 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a255600b006b929a56a2bsm20058566qko.3.2022.10.05.14.30.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2022 14:30:32 -0700 (PDT)
From: justinpopo6@gmail.com
To: alcooperx@gmail.com,
	kishon@ti.com,
	vkoul@kernel.org,
	f.fainelli@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justinpopo6@gmail.com>
Subject: [PATCH 4/6] phy: usb: Disable phy auto-suspend
Date: Wed,  5 Oct 2022 14:30:16 -0700
Message-Id: <1665005418-15807-5-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
References: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_143034_475021_879EEBEF 
X-CRM114-Status: GOOD (  11.45  )
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

The BDC block requires the PLL lock in order to grab the PLL clock.
The phy auto-suspend feature turns off the phy when nothing is attached
leading to the PLL to not lock. This leads the BDC block to grab the AUX
clock instead of the PLL clock. This is not ideal, so lets turn this
feature off.

Signed-off-by: Justin Chen <justinpopo6@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index 26e9585e..6a4d478 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -62,6 +62,7 @@
 
 /* Register definitions for the USB_PHY block in 7211b0 */
 #define USB_PHY_PLL_CTL			0x00
+#define   USB_PHY_PLL_CTL_PLL_SUSPEND_MASK		BIT(27)
 #define   USB_PHY_PLL_CTL_PLL_RESETB_MASK		BIT(30)
 #define USB_PHY_PLL_LDO_CTL		0x08
 #define   USB_PHY_PLL_LDO_CTL_AFE_BG_PWRDWNB_MASK	BIT(0)
@@ -259,6 +260,11 @@ static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 		brcm_usb_writel(reg, usb_phy + USB_PHY_UTMI_CTL_1);
 	}
 
+	/* Disable PLL auto suspend */
+	reg = brcm_usb_readl(usb_phy + USB_PHY_PLL_CTL);
+	reg |= USB_PHY_PLL_CTL_PLL_SUSPEND_MASK;
+	brcm_usb_writel(reg, usb_phy + USB_PHY_PLL_CTL);
+
 	/* Init the PHY */
 	reg = USB_PHY_PLL_LDO_CTL_AFE_CORERDY_MASK |
 		USB_PHY_PLL_LDO_CTL_AFE_LDO_PWRDWNB_MASK |
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
