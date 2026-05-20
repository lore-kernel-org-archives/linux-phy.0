Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A240CD5BA4
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 17:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9F8tFfrqp/77f9PRmVgX5vol3CVRMAc9jbLz28xxCM=; b=VUThK0dJPitYU7
	dU7A+/KFAiN+05NFSQg6xqm28mghHTqpmdKoKh3eNK0mcvhnGcPDZreRW2GdR5JUwhZiKZiIkfsEJ
	xKRop0NsszbABVSBIf3QUpNbDlCraDM5mTTmhCMevZthyjCcN+8tEUbA605utnL/0LB4QOBhDk/+L
	8b9NbS1cm2eZRIekROMGUfecEhfmX28mIqTyvdsleRNIUgzHtFF+LGyGjtcdM4kLA2qUFxMUdPXsE
	GN/dKkS2miNx28WLrzwhhLYr1D1xGdBKiSZWpJtKWLq/TeQQstTRpK7ADAGWliK7I4+XpdXH0Zx8T
	BHOlSYg68YDcz06QwT/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlBb-00000005Nie-1Yk5;
	Wed, 20 May 2026 17:58:27 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlBW-00000005Nfy-3xIt
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 17:58:26 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 6A746277FF;
	Wed, 20 May 2026 19:58:21 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uewAjqfCNRrl; Wed, 20 May 2026 19:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1779299900; bh=i3OzWIEXdFwM3ZDGDOHhTGJfsv6YbfoWvLpJPcKy9QU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=heVl+B+T3XhjLIYE4U2Vr8H1QlP/ZswiZWlHEhrcgRw9KMQlNDh4uWFe7OmW4vFMH
	 N0F8Q++TnD5wDekf4cyJxRWJgEV1uzy3hDUZbMDvL1YfLBg89RUVD4vbz1SvS6ahhP
	 KFjzsgzt7Hdr8UPVSlsW1i6lb+aYhSZXdWJCG/QYMzo0TRXp1h/7+D03hmZHJ8pXGC
	 LXNsN9ER49Ihh51aq+K4o8Q1tX48cwQXd1VAvDUcgw8tWsUKOIqpmt3/ytwMj/Dgw5
	 EIA1mYo527PQfQeOxwRHaBAKYT6GWYtucY1bCyLthw3o2A+inQxYIUfi30Fy9Cdbhi
	 YZufWycaJs56w==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH v6 6/6] phy: realtek: Make configs available for MACH_REALTEK_RTL
Date: Wed, 20 May 2026 22:57:28 +0500
Message-ID: <20260520175728.720877-7-adilov@disroot.org>
In-Reply-To: <20260520175728.720877-1-adilov@disroot.org>
References: <20260520175728.720877-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_105823_915035_BB83C2DF 
X-CRM114-Status: UNSURE (   9.38  )
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
 drivers/phy/realtek/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..76f9215d8b94 100644
--- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -3,7 +3,7 @@
 # Phy drivers for Realtek platforms
 #
 
-if ARCH_REALTEK || COMPILE_TEST
+if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
 
 config PHY_RTK_RTD_USB2PHY
 	tristate "Realtek RTD USB2 PHY Transceiver Driver"
@@ -29,4 +29,4 @@ config PHY_RTK_RTD_USB3PHY
 	  DWC3 USB IP. This driver will do the PHY initialization
 	  of the parameters.
 
-endif # ARCH_REALTEK || COMPILE_TEST
+endif # ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
