Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A3DEC54EAA
	for <linux-phy@archiver.kernel.org>; Mon, 30 Jan 2023 14:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOYeTeI2PkbvlGv7qRLy9TM/hk04OphGT0ZustFNsuQ=; b=u/DLfk1Wpcg3M0
	6MpaSAh8U5FH7V+xpdC8Nvg7JIMAs/khktqgvoM/GmGG3z1NLHnBUQyiZXQiFCMqaHihcD9X6wePV
	U9VPpFzflJs47aBBCLWbFAZCEacPBrUujE4pnfUSQLwwoZU41qkib+7Xp3bXQ+rWJyMoLjk0TcOJn
	ohgvwZSyuuXJV2lM6Rkm1hTSxsyslVRDxPfJ46uCfrAbMG+G4UjmBXsrhThUU6BYt44jhlPUWEXR2
	XZ/D7FKk5dwjrSCUfmNEydrEzpnHc8eVpa9VK9rdgfLbOA1rrLn8G7bHAvWQAvRwhaHMms//5tuqS
	MwkzJJW6CZGxtR1xAEtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMUs6-003pYo-By; Mon, 30 Jan 2023 14:10:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMUs3-003pXc-EM
	for linux-phy@lists.infradead.org; Mon, 30 Jan 2023 14:10:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A0E5061089;
	Mon, 30 Jan 2023 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A50A3C433D2;
	Mon, 30 Jan 2023 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1675087854;
	bh=UeGqHrvCWKj5EAXMF8Sn6n5DCLBy4MFpPvC5d4V2EpE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PLXk1z/NpT/pE+lVcq96GnD/V0O1CiXvcDGAUSUyswt4w0G+OwROAQ9ErEBUx+u+d
	 TKm0FUjFomP3JWi2lc/i+2eo1Xw9IYDTRIaVx2pLxLfbnA0VUuMezMUyL7U9p7QuCe
	 Xv2Yd97g5td0GvyUC3zbYOuE1NALODOvXxQoQSWA=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	patches@lists.linux.dev,
	Randy Dunlap <rdunlap@infradead.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.15 031/204] phy: ti: fix Kconfig warning and operator precedence
Date: Mon, 30 Jan 2023 14:49:56 +0100
Message-Id: <20230130134317.684944945@linuxfoundation.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130134316.327556078@linuxfoundation.org>
References: <20230130134316.327556078@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_061055_524782_48A5F27D 
X-CRM114-Status: GOOD (  13.76  )
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

From: Randy Dunlap <rdunlap@infradead.org>

[ Upstream commit 7124c93887cc4e6c5b48920f83115e4a5892e870 ]

Fix Kconfig depends operator precedence to prevent a Kconfig warning:

WARNING: unmet direct dependencies detected for MUX_MMIO
  Depends on [n]: MULTIPLEXER [=m] && OF [=n]
  Selected by [m]:
  - PHY_AM654_SERDES [=m] && (OF [=n] && ARCH_K3 || COMPILE_TEST [=y]) && COMMON_CLK [=y]

Fixes: 71e2f5c5c224 ("phy: ti: Add a new SERDES driver for TI's AM654x SoC")
Fixes: 091876cc355d ("phy: ti: j721e-wiz: Add support for WIZ module present in TI J721E SoC")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org
Cc: Arnd Bergmann <arnd@arndb.de>
Link: https://lore.kernel.org/r/20230110062529.22668-1-rdunlap@infradead.org
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/ti/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
index 15a3bcf32308..b905902d5750 100644
--- a/drivers/phy/ti/Kconfig
+++ b/drivers/phy/ti/Kconfig
@@ -23,7 +23,7 @@ config PHY_DM816X_USB
 
 config PHY_AM654_SERDES
 	tristate "TI AM654 SERDES support"
-	depends on OF && ARCH_K3 || COMPILE_TEST
+	depends on OF && (ARCH_K3 || COMPILE_TEST)
 	depends on COMMON_CLK
 	select GENERIC_PHY
 	select MULTIPLEXER
@@ -35,7 +35,7 @@ config PHY_AM654_SERDES
 
 config PHY_J721E_WIZ
 	tristate "TI J721E WIZ (SERDES Wrapper) support"
-	depends on OF && ARCH_K3 || COMPILE_TEST
+	depends on OF && (ARCH_K3 || COMPILE_TEST)
 	depends on HAS_IOMEM && OF_ADDRESS
 	depends on COMMON_CLK
 	select GENERIC_PHY
-- 
2.39.0




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
