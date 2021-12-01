Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B0E5C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 18:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqHJDz9Lssk8Fx3r/rirR9Xj5jHLLWxxMWijo/uA7bA=; b=FwmtcRDIxT/ucK
	D3/X/hKXyJndJ7YUv6x/Nw+1VTFcqKZss2dcKh50ZtXSR6bkXHDqRJy5dGzfTFclnKMieSPkCYF/z
	gBJaynOQWe+ZjdM53vPwbRdhl4Al6TXhBzj3h3GX46Yx4SVRtyVP4MytPcZY6SGaxdy1UNGnRAOQk
	aSUl6gsG/fJbvv3x4PVVImwHfVE31pmtj0e8KZAxaJ7InQG+cej8mffMKguhQUqyy579I2VNLQPEQ
	P8C2cg297ysPUh8l8KtNhqKXvekFo/ZgCtdwPtOsCPbBdR29CSr4WFk0Cc4SNU0Tomnd2D3ycSUTH
	F1HAhys7c4cC53ScaAHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msU0Y-009hXC-Px; Wed, 01 Dec 2021 18:07:06 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msU0V-009hVK-SO
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 18:07:05 +0000
Received: by mail-pl1-x636.google.com with SMTP id p18so18310476plf.13
 for <linux-phy@lists.infradead.org>; Wed, 01 Dec 2021 10:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4ecpP48RccuXNO4SgNuVitHpjcRwWPUYXr+xSlajqRg=;
 b=KU5yCnxiU1nWbi6+szU2izK7gPazQlzOTLJZfeRrUbLx/t6GdEM/p0cShqUstWoflE
 HubVD35uMRXAyWuEne6X8+1Qu71VGWiUNXz2KdEAFHk/lkXL5dayubqrtZh6pTsEiKNj
 6Xsb/syAvakOfZi5BO9X6bAkxlkRQn2UJQg9m55nVmi0K0BZCChNVJfAhDF9biuXUWcr
 24hMuKAcX3hE7x5w8h7NfCSub2olqEaXIz7ug3UrHKF+ljIxBzLlvhNadX+ehlScxZ1u
 yuz/3iqOgTIUjh6ZoNaWXDbuXhN4qubFw1bkPF13GEbK7e7gi6Bzbb/ozVNxh0Hw7eZs
 Blfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4ecpP48RccuXNO4SgNuVitHpjcRwWPUYXr+xSlajqRg=;
 b=yxoEpL9uP7ZbDQ+N5qTAEAL5ova0ohBqAEP1ZwtHFJFDHVbZp+ZEzueMNQ6N09pZJo
 2asaPHQ8kHDpBkxVS4jGi0+HJtco1BxL69Ef9jt08SrvjnuTX2Fbifk1TdIgAfu1xZ3w
 6FwsKhhNyjoPdsR+hoMJeCwgeh2Zb3rXHia0gke5XHAoXX4gNYOcIPybio979jXR+LLF
 ZCPV1aJoQpsw+Hto1VTMTTcaN8r5qoYHfemWkAPvB67fexFadzeyfurNxMbtAiq+t58t
 FcchzmUWDkK5a+145OZLGIs/3oqQiRB7XCm9quukKy5D7EgHt017ioDZXUzkPbtpBuJW
 CJdQ==
X-Gm-Message-State: AOAM5317fAMoZ7uaTGP30YekqGrEyGDThBZH3qJFmYWtYp57iq7Tok8A
 rM77XtLfjVpqUsV5PbtKukw=
X-Google-Smtp-Source: ABdhPJwyDmOP1QSi3uTWWoqoJq/dBKqbQPrqJ/3IsE2TGb7ni/InMrGQk1dZe5M2qCWuklbL+I0ZiA==
X-Received: by 2002:a17:90b:4c0d:: with SMTP id
 na13mr9608617pjb.177.1638382022739; 
 Wed, 01 Dec 2021 10:07:02 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.11.250])
 by smtp.gmail.com with ESMTPSA id w142sm462582pfc.115.2021.12.01.10.07.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 10:07:02 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Al Cooper <alcooperx@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 3/3] phy: broadcom: Kconfig: Fix PHY_BRCM_USB config option
Date: Wed,  1 Dec 2021 13:06:53 -0500
Message-Id: <20211201180653.35097-4-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211201180653.35097-1-alcooperx@gmail.com>
References: <20211201180653.35097-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_100703_966325_266C86A8 
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The previous commit 4b402fa8e0b7 ("phy: phy-brcm-usb: support PHY on
the BCM4908") added a second "default" line for ARCH_BCM_4908 above
the original "default" line for ARCH_BRCMSTB. When two "default"
lines are used, only the first is used and this change stopped
the PHY_BRCM_USB option for being enabled for ARCH_BRCMSTB.
The fix is to use one "default line with "||".

Fixes: 4b402fa8e0b7 ("phy: phy-brcm-usb: support PHY on the BCM4908")
Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/broadcom/Kconfig b/drivers/phy/broadcom/Kconfig
index f81e23742079..849c4204f550 100644
--- a/drivers/phy/broadcom/Kconfig
+++ b/drivers/phy/broadcom/Kconfig
@@ -97,8 +97,7 @@ config PHY_BRCM_USB
 	depends on OF
 	select GENERIC_PHY
 	select SOC_BRCMSTB if ARCH_BRCMSTB
-	default ARCH_BCM4908
-	default ARCH_BRCMSTB
+	default ARCH_BCM4908 || ARCH_BRCMSTB
 	help
 	  Enable this to support the Broadcom STB USB PHY.
 	  This driver is required by the USB XHCI, EHCI and OHCI
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
