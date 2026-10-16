Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E2CFCCF2C4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 18:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POWW0qkLtQIEuPuB4LnSG6mVBLMFo3W22+veiup585A=; b=CgItOE082Jd4iV
	m+xVAl9KjGcgZTHjuoneVCqfjZ6yZVslSPH5zbxRKzSoC2gJbqQHUzdSzlYlWHhcj7SD2VjGZ0H4P
	XpqJzccGlSQFhcp2UE0qtbeoSR7X0+v+rk2ZG3z5wNHXCE0q+8AuC4b9MVSXXfGOAfNyMDoeNLxmi
	cjD9XnuGeKMAqipPWzdM6kMhNNwr9EkkFHFF4bZBgAZcr2Yzravi12DeKGYYeU/dtjoKy3rpuP9hG
	4lg+dcABS96971jjME/BLgAe2FeDK56Qf9UWzPBAjrzgqbgZhj/deeOQoCsnrMl2zpSwEC4XrG2Km
	RnIvHgp+qOhD1Jo7j1tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmHs-00000003cUs-3J7d;
	Fri, 16 Oct 2026 18:04:12 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHmHo-00000003cSf-2sXz
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 18:04:09 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id D858B807C2;
	Fri, 16 Oct 2026 20:04:06 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oTAlrEeAuC64; Fri, 16 Oct 2026 20:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1792173846; bh=gQxRqRAcTBBtn+Pdf8s6VE+j9Sm8M1pZxvO62yYs9oE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Wl9iBqhZITXp/tXTCIW9fRLHOcjidAy1NdHfh/akFgG9J2GxxJW9XROPR5saZZLAr
	 ILxj3CCIpExEC8Mr1c0q/nhCP9bm4b0OuNVAxMf5xb1w7Y0C6x0kHb8jAUh2k0qUFo
	 eBrXThKkzOyCwCZXa8WzcZveVLPqshfezj+oZ74Rdo6ig3LqnWsrgux8k58FNDJh0f
	 5LuZApVE5s4Yq//KkkstGuSaAg8w+tCgctS0CSxwkNUcztkcVaRw4YDQjdBqNVp6zM
	 6y4HTW+gnGUNB6uj9bPDBGgXUYb6Zj/Mijr0P/7CvCVLcLTRKb5tzwfNoD7Mc19KL0
	 QYeF1V9C3VPhw==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH v9 6/6] phy: realtek: Make configs available for MACH_REALTEK_RTL
Date: Fri, 16 Oct 2026 23:03:14 +0500
Message-ID: <20261016180314.31760-7-adilov@disroot.org>
In-Reply-To: <20261016180314.31760-1-adilov@disroot.org>
References: <20261016180314.31760-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_110408_860515_BAC9EEA3 
X-CRM114-Status: UNSURE (   8.75  )
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

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
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
2.56.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
