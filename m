Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38CC9C5CFC1
	for <linux-phy@archiver.kernel.org>; Sat, 15 Aug 2026 09:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGV4gL8oDLWYc/FzaerKxXSv0VQCDnw91Hd5A2lIwmg=; b=Jl9WLS+WCFgwyr
	KBKD4lDJypPeYvvwJo6mgcsGnMvBkwVyH7MoWf1yRQsEwIFoIuU6OFI52vylr7Qz6YZLhyjD6e8hj
	unOZ2qWrFCka9nJwlEtTxjafZg21HpR9zm/CIj3WOiNLnNbQIBBlhil+NZI9gdIGvSyvkreH3QRBy
	iwR3kEVR8lQiz6qcdeJUD4swW524yNE+F6g2+kRax1k7Epx0wIYDI7vF/44ZndHv3RYgzWpQdGA8N
	+ww7qXuNgq/nVqVsDtDjzH/ssAeEfKSfws4SJVrrHyP2wP/RZdzpYysCa7cdQp/c786yZTW02a2BA
	HmTrLCXup9Q6K2C9YZFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvAU4-00000003hQL-3l2i;
	Sat, 15 Aug 2026 09:15:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvAU2-00000003hPz-3fCb
	for linux-phy@bombadil.infradead.org;
	Sat, 15 Aug 2026 09:15:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fqjYy2xILnWjl2lkL90///QfR16Zq8dcQm4tSrO5zQY=; b=AgeAfjI7btY4qTHx8SDGTfSFsM
	7N6FxU2M5tMSIH9eEf1dJ3gI1J2eN9BjAJVCTGqne7BlA4Caxiae2Y3azRyC6T26cn9N0OljBWAph
	e4Qqfj9rjK4zBP7UMXb7advxKi+lOpbYLeISyMV+eRxsn/X0tgkW59MbN232U5FKF3b5GLEO2eu1A
	MCHqCQbZn3wsJ9tqCwvMguQZABluu2SQJ6rcJzKN6oXB1qAG0L+PWgX+hILuSrKiqariSyt/PYjdD
	wBW/HPfXcKID3qZGOqXYOPq0we69gIf0EKJAZg3lagLf+RAt9v9une6KC/Aci/fqCHiJwItE5bV9B
	9Ei5ivPQ==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wvATz-0000000HNYP-3OzE
	for linux-phy@lists.infradead.org;
	Sat, 15 Aug 2026 09:15:17 +0000
Received: from mail01.layka.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id DE980882DB;
	Sat, 15 Aug 2026 11:14:49 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 64-xFJu9MUjY; Sat, 15 Aug 2026 11:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1786785289; bh=dSApdouRs74AgqrQBX4yQQP2Zh1Ae09ZBK7ma9JanCg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=dFCKoU8DbL4a5Bprz4F1PUCe+ZteIm2NW0HGwhqoM6cRmR/chURAkp0/3oyBU1s3q
	 cm2mlmRYOF6Mz1NJHuipuQb7UyjlPkL6qc4cC6vZisJhm8uhw6XwVeqg5BDZGYWyWH
	 k3B2RjGdCK66P/lm0HyjoqXUColQtBrukbwezIteFHJtyy+tEEQGq8g+l1+0vZwdxC
	 MFQv1U9i3vhiiqmZmm1/uhRT5CXrkjxEMmSVyzFpb4GwEwRiq4x/3vSkzF8q5mSQAe
	 P8OUPz9CdlX+XWqId3O5IEdkPJ4Fl7rpJlmTzv0sTNdITiZuoOhSxp+llAv84UF2B6
	 36lqX4i93kH0w==
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
Cc: Rustam Adilov <adilov@disroot.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH v7 6/6] phy: realtek: Make configs available for MACH_REALTEK_RTL
Date: Sat, 15 Aug 2026 14:13:40 +0500
Message-ID: <20260815091340.26910-7-adilov@disroot.org>
In-Reply-To: <20260815091340.26910-1-adilov@disroot.org>
References: <20260815091340.26910-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_101516_128248_1362A73B 
X-CRM114-Status: UNSURE (   8.72  )
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
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
