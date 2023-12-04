Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9984C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 23:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zv0PHF150ZnOFjLHJHoMtsNE9GEk5/OIPjoDCLSeA7s=; b=FZN3iAfjQ+VTp8
	JuMRGxC2vPVNmcBMYKyXj2g2Kx+yIrlxYJ+Vr6JB1lOvbzxV63pGw9Y/EbNx4jETasrF0H0Q/kVmc
	xCdF9VjlCX1S0BcTU6AeexI9yLOQRug/lF7dlAEHnD35xJBjA5xgLTLqlpSa/Af6UCs29gl82sQ1Y
	rvjhI2jK+jEqmiPlgY8p+At0mDvvguK9IPBkwnMZybBYhmq2gExF9iDKwoWfm87ju4FVbD3XNvaTH
	VDfw9o+gqT690YtD5GizuDfENJcdtNjV4Tkfw7DmdEWXYtvab6VEyxEMVgjmYpZElRh4DNciKWTzb
	+/VHufhHjaBuwiRSnXPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIgh-005p0t-2H;
	Mon, 04 Dec 2023 23:49:20 +0000
Received: from [50.53.46.231] (helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIgg-005p0j-0w;
	Mon, 04 Dec 2023 23:49:18 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: renesas: phy-rcar-gen2: use select for GENERIC_PHY
Date: Mon,  4 Dec 2023 15:49:17 -0800
Message-ID: <20231204234917.23509-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

Change the last "depends on GENERIC_PHY" to use select, like the
other 170+ Kconfig users do. This can help prevent circular
dependency issues.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org
---
 drivers/phy/renesas/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff -- a/drivers/phy/renesas/Kconfig b/drivers/phy/renesas/Kconfig
--- a/drivers/phy/renesas/Kconfig
+++ b/drivers/phy/renesas/Kconfig
@@ -13,7 +13,7 @@ config PHY_R8A779F0_ETHERNET_SERDES
 config PHY_RCAR_GEN2
 	tristate "Renesas R-Car generation 2 USB PHY driver"
 	depends on ARCH_RENESAS
-	depends on GENERIC_PHY
+	select GENERIC_PHY
 	help
 	  Support for USB PHY found on Renesas R-Car generation 2 SoCs.
 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
