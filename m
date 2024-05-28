Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97908C27C44
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 10:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSuBkOuQSnctorVq6Njb5jDatc1d/Aa/kzXiBg6VtCA=; b=Nf0qFAfPegGBl+
	csDszpMXrjE+QLlcDVHlVVBxrlzEt4G2D6sQlwiXiYJ9CTiMPWS/n810+d5Okt9M0p9mr4sEf1iGa
	ddh4gDN2N03kOXMXl3+vZEO+A1SMZe3Kfbq4br84jXvamS/LNu4IHB0Uy14ctWqbm4W/gFVaoBaer
	OXDrV5lcyU9FtdMeyfzAByeyAzpy/D9ryGArbbnfIblCl6dEv1DazwsRvZsQvKVFm3IJC9NJXNl1Y
	rX3IDaEo7sI2Vq4R0sqfGPe9fmUpCMARc71ZcW0cOlWomlTTVDKWrUJKTkbUNGLt8fsuVwQPFLlzs
	VG/VpqV3y74TFT9JkMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwi-00000000BrS-1D9o;
	Tue, 28 May 2024 10:20:44 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwc-00000000Bo0-0bHT
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 10:20:40 +0000
Received: by mail.gandi.net (Postfix) with ESMTPA id B72CF240006;
	Tue, 28 May 2024 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1716891634;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qsG4a+QexdrWaD9z2b31NrWRE7fUVEl7ydWLvlxj0hU=;
	b=eTYE/3jdhGs5GEmTPLjC0zOErFPdwpIx6cL82ctXvsH22SFUCPeUB17Hsoo6/SHf3kkiGV
	xdIxWufJv5otteYpxjkhpbOtucCY8cv0tNs9Sh8y7dYGQ3dbK8ZNbqcGdieCedb9ahbkvd
	aDpqUPn5El7xZnIcCjS9tP7Eu+ggm2v68DEssTyT8Qd9DkmQOnSzfixwG8faZ8q9Lo6ttz
	BH+PPK/KQu5/mI1pXUnZSdZaiMfhPJRXQlJZndR1ekCy8Gsbvl9KRbq5J6kxE9oXCIhouS
	5AeZZ1ekOh28JdrPbzkQdZwA253A0j3QMDjQkZsmHwSRkRNyga/HxfCMAJOMeQ==
From: Bastien Curutchet <bastien.curutchet@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bin Liu <b-liu@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	herve.codina@bootlin.com,
	christophercordahi@nanometrics.ca,
	Bastien Curutchet <bastien.curutchet@bootlin.com>
Subject: [PATCH 4/4] usb: musb: da8xx: Implement BABBLE recovery
Date: Tue, 28 May 2024 12:20:26 +0200
Message-ID: <20240528102026.40136-5-bastien.curutchet@bootlin.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
References: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
MIME-Version: 1.0
X-GND-Sasl: bastien.curutchet@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_032038_382999_33126DC4 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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

There is no specific behaviour implemented to recover from a babble
error. When a BABBLE error happens, recovery fails as connected sticks
are no longer detected by the USB controller.

Implement the recover callback of the MUSB operation to reset the USB
controller when a BABBLE happens.

Signed-off-by: Bastien Curutchet <bastien.curutchet@bootlin.com>
---
 drivers/usb/musb/da8xx.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/usb/musb/da8xx.c b/drivers/usb/musb/da8xx.c
index c5cf733673a2..fcf06dcf2d61 100644
--- a/drivers/usb/musb/da8xx.c
+++ b/drivers/usb/musb/da8xx.c
@@ -220,6 +220,13 @@ static void __maybe_unused da8xx_musb_try_idle(struct musb *musb, unsigned long
 	mod_timer(&musb->dev_timer, timeout);
 }
 
+static int da8xx_babble_recover(struct musb *musb)
+{
+	dev_dbg(musb->controller, "resetting controller to recover from babble\n");
+	musb_writel(musb->ctrl_base, DA8XX_USB_CTRL_REG, DA8XX_SOFT_RESET_MASK);
+	return 0;
+}
+
 static irqreturn_t da8xx_musb_interrupt(int irq, void *hci)
 {
 	struct musb		*musb = hci;
@@ -480,6 +487,7 @@ static const struct musb_platform_ops da8xx_ops = {
 #ifndef CONFIG_USB_MUSB_HOST
 	.try_idle	= da8xx_musb_try_idle,
 #endif
+	.recover	= da8xx_babble_recover,
 
 	.set_vbus	= da8xx_musb_set_vbus,
 };
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
