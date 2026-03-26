Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18D4110AB810
	for <linux-phy@archiver.kernel.org>; Thu, 26 Mar 2026 19:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0X7p9n8Qr3Vz5PnA7oArIsGOgKjnP54BcYdhSQHr2E=; b=xIIgkTO5x+yb53
	xKtbiCWMRYqU5668ZyuDNZR8+d1+h3CvJbmUh8Lxx5tNhzbHArOuDQ67OyLNDzeAsCo4PSgI9+WuN
	EOStpTwziDLLLFAY/mjB87SeLVEnSZh6KceEeCLfIxq7iVjbIng5al0JOkgemhykzIv0+Ay9EZjjY
	VjEQa412PLwCtv0Scvj1YC4xJAA7gWNoQo6mMEiKcPEXug96WxmlsD2TvWO4v6EXhIYFlE0mAI411
	REz+kaUGyqtm77Y8AApOC3oDatjQ+ecn+DgJf5dD8wOij2BU2el7PfX6BrRLmP6Tz9tnhK7wW6tff
	KA/QtUFFrtVjygw4Oa9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qU8-000000067Vt-3P5w;
	Thu, 26 Mar 2026 19:35:16 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qU7-000000067Ua-0JH9
	for linux-phy@lists.infradead.org;
	Thu, 26 Mar 2026 19:35:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 7A83A267D8;
	Thu, 26 Mar 2026 20:35:13 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3UicETYF_tVn; Thu, 26 Mar 2026 20:35:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774553712; bh=6B7686z3QUopU/zWMAAwBVlHDWV9IFVlgjbzHESJ76k=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=mV7euzOoPEwIOGE4BSw0d9ECKi2Rt49aJrN2gZ+qi6hq7mbpy6jeBLKq54Ybs+gsr
	 l4U9GEX2BFR+Xeswy+jbyoWl4+fRXdkMlHAN1/eaYvPxHWtp9pTVeAEJFNUvvya0Pi
	 juaXWgLvqZJMkjGZ9uy9hsGCr38z+g8lu35GP0pbGW6BII+MvBELBIsYsf5vALNm6c
	 Ge2R7kN3Phq7aX8J0i4mRhM3ov11SgkKnbkoFfwUV72tnT2zjkevqbm/9Vqxjw1Uj4
	 pTRxyL58SOffIqVMKrgzHcw58MRGLSSkUy101AWD2DlVg6efcTjY9N/jFoQUA0Ec3m
	 mdXe3QM76Kw9Q==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH 6/6] phy: realtek: usb2: Make configs available for MACH_REALTEK_RTL
Date: Fri, 27 Mar 2026 00:34:19 +0500
Message-ID: <20260326193419.48419-7-adilov@disroot.org>
In-Reply-To: <20260326193419.48419-1-adilov@disroot.org>
References: <20260326193419.48419-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_123515_253491_D2A5CF77 
X-CRM114-Status: UNSURE (   9.51  )
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

Add the MACH_REALTEK_RTL to the if statement to make the config
options available for Realtek RTL SoCs as well.

Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..f9eadffacd18 100644
--- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -3,7 +3,7 @@
 # Phy drivers for Realtek platforms
 #
 
-if ARCH_REALTEK || COMPILE_TEST
+if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
 
 config PHY_RTK_RTD_USB2PHY
 	tristate "Realtek RTD USB2 PHY Transceiver Driver"
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
