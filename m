Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2476D6AAE2
	for <linux-phy@archiver.kernel.org>; Thu,  2 Apr 2026 15:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMu+83ktx7c4V0moE0J4PfjD1pDfCyeX+tnw4YfC9Us=; b=CnovJ4B51oftli
	7vQn1nx/MYrbj7aty57wK6y81IecOVfAKjaNdzRLPVv37DVOdGzBJumnmQ9IeKKjSjLBUCEIJsMqO
	ecaKrqnZriDCnSop8+4IXCuiDCmcUy9M9Ia0NnxdWnXbG1kBYj/oBH7J4SNR4KjPW1CM82oOYTycp
	w/98TcJW2Ej8qjb4yG0//Q8YHhTg59N/h9dLNsSKjvq+MJKm098r7GqR5AgSoxq+JXFOIeYM7kLr7
	y1B9mwwsRpRXcb6Z2BIEHCnimzgA8qS7LaKpUbwzlzTo0GWp3VvJuWuQCW2jVaFN+5+WEJjY5EFGh
	5qjuZQDYmTONjB33V9ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8KEC-00000000SiW-1tJF;
	Thu, 02 Apr 2026 15:45:04 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8KEA-00000000Sh5-1dS0
	for linux-phy@lists.infradead.org;
	Thu, 02 Apr 2026 15:45:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id ABC6E26EBC;
	Thu,  2 Apr 2026 17:45:00 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1bvd1Qxpz8Hf; Thu,  2 Apr 2026 17:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1775144700; bh=Fsbxr1KoI6nvNJg1iQcsK0ER51AzQq33E2rDDFIUpTE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Oaw1BJE7LnpxDGuJ1aGiJK2AufcxtklAYKsmnkIF9hc9KpHxEmIgBx2C0qaWBDfQo
	 VxKLsdGc84osNMCEmZlj4OlRz8kBujHRKrFT/KOaH9dIuLczZQ33tzfCcF0T+tFRM8
	 tHuBsOlS+qOvzaNu0OcUri59TqeTS4dtpnd2a5cS+11meHehH7fxVLDsK5Kdgfhfi7
	 SI0sA4qn5jvzfOoGf0H07fWOf7I/7lBulnBc8cJuNrnbfmTexgEdXQVx5iMZrg6atz
	 38YuoO8lfyrQq+IEyVOvAz0Kb8Bvq0JKzYXZ+VcfXMjxKJ7CBkiKLf1iiZQun1pu9e
	 dV53Tt0E8GPWg==
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
Subject: [PATCH v3 6/6] phy: realtek: Make configs available for MACH_REALTEK_RTL
Date: Thu,  2 Apr 2026 20:44:14 +0500
Message-ID: <20260402154414.196012-7-adilov@disroot.org>
In-Reply-To: <20260402154414.196012-1-adilov@disroot.org>
References: <20260402154414.196012-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_084502_571399_7EF5E949 
X-CRM114-Status: UNSURE (   9.40  )
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
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
