Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE704D24451
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 20:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/CImXiEjEe7aUhBGMBRaJNmXvYEBaL/aJa5CBgkbWHg=; b=RxgC2YyxH2lnwO
	hj6T+MA+f0BvVxw5JD5Mv6i3jHewDIQQecKQH4dy+buXXz5UvgA7gMOc9dCNMkpbDoPo5sSlygwwq
	48Y//aGq/oINRdcfPSVmDHTcacHzq/f7p79ZMqzcsqK5FeEz29xukjSQZqA6YATigxzjMfJ+Iq4k8
	mc2f2HsJEmulBX/ymXpQ3j1ELaLDhhXFj5wdyKnEMxg06hERu15eDY9IJ726ORSYkoPGttd3gIf7s
	ho1l/qOQ6bU81WSWr1pkPXW/+vOwg+8ScA//Z/sutteQ/jrt0iDzSc5QLQiL2QyRhg6a0HsVM8TbO
	UwFh5dPAH8n/XsNZPm2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syzsN-0000000EHqL-1bfF;
	Thu, 10 Oct 2024 20:35:11 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syyIH-0000000E0Hl-4Bga
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 18:53:51 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-6cbd550b648so9947736d6.0
        for <linux-phy@lists.infradead.org>; Thu, 10 Oct 2024 11:53:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728586428; x=1729191228; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=q0vz9WSS8OYzcFI14VH3qHGhzUgVEMufNF/u1NNl44Q=;
        b=O3NJXlwzgYaDwYn+fL6IeMxXsrJYhzj0zgP4b++JU9PQbmlsVXhX00f/Gvp5h20SOQ
         BHCowMGckmm97zEbZPRPIEvrrCGvUxBVnJM/kSbQVQ87Hqnn4pTa+EDZiFYY5+jxvrF9
         EWEdUoFjnnerrwQeT+Do+5Kd/6k8/G6Zn2Wok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728586428; x=1729191228;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q0vz9WSS8OYzcFI14VH3qHGhzUgVEMufNF/u1NNl44Q=;
        b=eV34m1bwC2FXK9aNaIkxb/OCro1uNkq6b4IbZMFIIf5MZOhQ9NxoFoyUY2U3Q5/cN0
         vbFVa6baifWbD+lnVqxsBZa0e+NZr5dS90q/T5ue1A9H6/2yhEnm1VnpCFudnnHyTonS
         Z4Sg0CdWxgpXSQ/i/rDcYZ6GXaSo0Prf4S5GaLIblv0QgC29m7Rq+k5QrLSE8LnUnjIK
         Gn25qLGIJgA8F9dvXQ2dUwc190RotrM9tfrwHWam6CB+yfC2bLi7jWf5AXY4XhzMB21X
         oYRdI8IpWN5Sad1xkPimhTNGlc6ND1DSOKBdACsX9YEKO6VTPatoeKcaRF3tgp4lfZef
         hl2g==
X-Gm-Message-State: AOJu0YwiKjtHs/USloI92TbrZreqd1Ipgs+i/GfkCArv418Y3PuY7fIu
	1x4Zh0dvgzDgfn8lU75CZpmiGGFL49JIJ9rc5yQW+Lw4TYViX+mLoMIScaW/6lcqClkRCS3L7Qd
	GyEZq69z4AdbVhLINUtO7oN5QNCjn6SJIWPWQ8CwYMLmw+yoDiyiRW/hb/yVISHnTqdLkRBA16a
	O3uI34ZsF59XQ1D5BEUkUSTuxWH/XSut09mSlgkSW8Y/JVee0aNns0DA==
X-Google-Smtp-Source: AGHT+IHq4QVrHWyYcSIFYx/vaH/NttHm08mDWIDi8RHb4TEWTJxti5cMtxtf9E/sHSq4dbmLlMc3yA==
X-Received: by 2002:a05:6214:4346:b0:6cb:ee89:9982 with SMTP id 6a1803df08f44-6cbf0013dcbmr561366d6.38.1728586427804;
        Thu, 10 Oct 2024 11:53:47 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6cbe85a5b95sm7912166d6.6.2024.10.10.11.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 11:53:47 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: linux-phy@lists.infradead.org
Cc: florian.fainelli@broadcom.com,
	kishon@kernel.org,
	vkoul@kernel.org,
	bcm-kernel-feedback-list@broadcom.com,
	alcooperx@gmail.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH] phy: usb: disable COMMONONN for dual mode
Date: Thu, 10 Oct 2024 11:53:44 -0700
Message-Id: <20241010185344.859865-1-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_115350_104458_989C30A9 
X-CRM114-Status: GOOD (  12.20  )
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

The COMMONONN bit suspends the phy when the port is put into a suspend
state. However when the phy is shared between host and device in dual
mode, this no longer works cleanly as there is no synchronization between
the two.

Fixes: 5095d045a962 ("phy: usb: Turn off phy when port is in suspend")
Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index 4c10cafded4e..950b7ae1d1a8 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
@@ -153,7 +153,9 @@ static void xhci_soft_reset(struct brcm_usb_init_params *params,
 	} else {
 		USB_CTRL_SET(ctrl, USB_PM, XHC_SOFT_RESETB);
 		/* Required for COMMONONN to be set */
-		USB_XHCI_GBL_UNSET(xhci_gbl, GUSB2PHYCFG, U2_FREECLK_EXISTS);
+		if (params->supported_port_modes != USB_CTLR_MODE_DRD)
+			USB_XHCI_GBL_UNSET(xhci_gbl, GUSB2PHYCFG,
+					   U2_FREECLK_EXISTS);
 	}
 }
 
@@ -328,8 +330,12 @@ static void usb_init_common_7216(struct brcm_usb_init_params *params)
 	/* 1 millisecond - for USB clocks to settle down */
 	usleep_range(1000, 2000);
 
-	/* Disable PHY when port is suspended */
-	USB_CTRL_SET(ctrl, P0_U2PHY_CFG1, COMMONONN);
+	/*
+	 * Disable PHY when port is suspended
+	 * Does not work in DRD mode
+	 */
+	if (params->supported_port_modes != USB_CTLR_MODE_DRD)
+		USB_CTRL_SET(ctrl, P0_U2PHY_CFG1, COMMONONN);
 
 	usb_wake_enable_7216(params, false);
 	usb_init_common(params);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
