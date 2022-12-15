Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A3E0C46467
	for <linux-phy@archiver.kernel.org>; Thu, 15 Dec 2022 16:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/b6Wi9AldHITfUPP8vpvcDshyoWFPE1SBRQ5AnmHDFs=; b=txVM/epiTVFw3v
	AWzXwijxcwTmymQBjYPP0mB4KccShXzES/y4MwtMywChpeii8OwcydnadHIjxvrqqAYmnuv0U7lXF
	lfNVr+yxgBs77SmGGnW5qDWdkz0BkmRnF2SgsLZDprJX5Po0ER45P3p0EwaaNrTMemEke3wHXDDA8
	4ez7uNPY2fSCxITRlDLksRlmNhwW8z1VudW16M5dta6psaUGE+0epeZSHR+O4OndOj/SUyWKNWy1b
	4i2CJEE9jhSRIv+Ku91K/X0SMetURSp8C4jSibEXJoVqus3Q0uTddfRsPSLOp4Ri3gSuw8RFIK5cH
	WMGOO3qi3uhwu6fhB55w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5rJi-00ANDN-O6; Thu, 15 Dec 2022 16:42:42 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5rJg-00ANBm-Eh
	for linux-phy@lists.infradead.org; Thu, 15 Dec 2022 16:42:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2107BB81C0E;
	Thu, 15 Dec 2022 16:42:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C8AEC433D2;
	Thu, 15 Dec 2022 16:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671122557;
	bh=k+D2QBSlKI6hPk7Hqyn2WSrMF81848vCoxcbS8XEPPE=;
	h=From:To:Cc:Subject:Date:From;
	b=Omragm4ED0mXgPuLWTB7oX4v7uNQnvi8sD0kYVaSTArFG0Tot+MCTElzjZkztyWvm
	 2ofzVnOmtou6KNuJULR7HJ0Xc7L/Rb+AYy5mJeBj0nu834YzonWEosaKLaRXq/7IZT
	 Np0gaq06Z3rhMnwmY2JvoOEvIAko+yyOQ+QzzqozfqJ+f0LPL/PrAUuGJBOjaakDYS
	 /1gTUq7Z71hRXT8RYdR0/ngmPYyh4wpba/t/VIhlcfB8pI6WeYbZWWShp2zGT6WtVV
	 pzxCJwxkRHKoMydVCZUPgR7LjVl/hdUnLhkEKIz73dvMhg+IN3p4lRCWCyPF1AcXPH
	 lRBqBQ4UesOaA==
From: Arnd Bergmann <arnd@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: AM654: fix serdes dependencies
Date: Thu, 15 Dec 2022 17:42:27 +0100
Message-Id: <20221215164233.890351-1-arnd@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_084240_662771_90507135 
X-CRM114-Status: GOOD (  11.74  )
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

From: Arnd Bergmann <arnd@arndb.de>

Building without CONFIG_OF leads to a harmless Kconfig warning:

WARNING: unmet direct dependencies detected for MUX_MMIO
  Depends on [n]: MULTIPLEXER [=y] && OF [=n]
  Selected by [y]:
  - PHY_AM654_SERDES [=y] && (OF [=n] && ARCH_K3 || COMPILE_TEST [=y]) && COMMON_CLK [=y]

Change the dependency to limit compile testing to OF-enabled
builds.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/phy/ti/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
index 15a3bcf32308..381bc499053e 100644
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
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
