Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEA1EC54EED
	for <linux-phy@archiver.kernel.org>; Mon, 30 Jan 2023 14:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOYeTeI2PkbvlGv7qRLy9TM/hk04OphGT0ZustFNsuQ=; b=RbFqc6oU/q4LSE
	ZEavlgy4+QAt7r4RB//5sjQjFS1arvw2T6Fm8koseayWjQ0dpKT/YQQdMRY88qFRoFFYWhXt5+Cjt
	45QDIlcGkzYZivOZb0NHfrwRfK6j3ttmNadY0JN6q4Nj/6uB+CzMjszi83iOQnWoEifwgyDxXMTwR
	CRpDdycNCQlhrVyzOkwrqHvCMb5zda8aAu00GfXVYsPsWjx7QEMT0dxWjkk0X7A3sD1okwG8X4795
	bjNIUJGLE33p9BbjLmU0x5cGKJ22NEA+ZlgGrIuhLTgpZvdbw2YsUNWolen2oltPZa8zbNPsbCMHq
	HJQiSG5h96xLIcjDhGpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMUlf-003npY-TL; Mon, 30 Jan 2023 14:04:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMUl0-003neF-4B
	for linux-phy@lists.infradead.org; Mon, 30 Jan 2023 14:03:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D0688B81151;
	Mon, 30 Jan 2023 13:56:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F6EAC433D2;
	Mon, 30 Jan 2023 13:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1675086973;
	bh=UeGqHrvCWKj5EAXMF8Sn6n5DCLBy4MFpPvC5d4V2EpE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HGU6jLjkgx5I3tPU8yki/ASbFDFWTpdSD0iqzkIR30xqBAy/ruF8pCpyZoa8Mo3NA
	 +3iqqOYN+/296FBqZztQPbloVDBQ9KWxtscCCOkb1DUeVOhrEtLW9/MK3YFu50IsDU
	 DBM/oEKRhZfvb6VhYJtqO8iyGe7V7aLoyR9aChM4=
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
Subject: [PATCH 6.1 057/313] phy: ti: fix Kconfig warning and operator precedence
Date: Mon, 30 Jan 2023 14:48:12 +0100
Message-Id: <20230130134339.344522391@linuxfoundation.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130134336.532886729@linuxfoundation.org>
References: <20230130134336.532886729@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_060338_309724_42B1A303 
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
