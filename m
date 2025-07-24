Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E76C87FD2
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laN2cPs3rcaa2UflYtmdNAKn03ycYzSS1lsGBimYKBo=; b=U9uS/eDnr9j+3j
	BQlZAl8Sj1+6nr8Uzkign4xWQpBXpopVUMVrIBBejVij2EKXdDEI0HpqyTziHZkWtThLYLtgkFA5/
	rSohyxb1y8LMheidpPxJV9qUkdxzQzWJvsDiz+dRs5U9Lern37W0MA2FWOVaWxiMCZoqK+X0oh5NN
	/zG+GPdP21HaBzKGNQ6dVP89wlZow5gB3BgT1ybQlfzhHCPyUxx30p7XD4PUXzyPsxvP6O+S6iedB
	PyYXlCUpVM4mCjzkV/MtM72dtMdXZiQyGQ9A17TW/W8L2b+chQiCxwj77EgAola2TaI06kWY6Hh1P
	y/68SMxy8VrTqOydVC7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lg-00000008Csw-3Drk;
	Thu, 24 Jul 2025 18:34:12 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBZ-00000007vCX-3diq
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3901BA562FD;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9C64C4CEF8;
	Thu, 24 Jul 2025 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372124;
	bh=MqIH2WftlenJEkZ7aVZ4T+tqBDomTp3GL6m592tTZXA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JLlxFYS9KffpIHCeFtPrikomy2NVw2jM52pMA7wEbxF51HxO/c0KrShpZ6xJG/+0t
	 z89Jw5vZxJTb16DGB5YsvxYv5LD2niZkDMbzAUTjPTL5jQiyvdDJp5UBbk+prIqQiu
	 CuZkEXsgyWNqSlKEwQJ6a4lhhAGFwBt0poZ6+FUlVdqqkf3lUDriYuw5+cKq8k8lp+
	 +DtnGjSmxI1EhDuXU+DYa6UcGn8P7liYspCi1gBZGciVZba2+obJtadHQyy9x11iEW
	 O1sP9leOKXBMqkSMrk20hlWWDw5+En7+KnsOsJ932R/Ejt4+VMAdOvLTUlddITGE5Y
	 NENG1BQqHqJpA==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBU-000000004B3-2JWp;
	Thu, 24 Jul 2025 17:48:40 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 04/11] phy: hisilicon: hi6220-usb: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:16 +0200
Message-ID: <20250724154823.15998-5-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084846_017994_5646861E 
X-CRM114-Status: UNSURE (   7.81  )
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

The driver has never supported anything but OF probe so drop the unused
platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/hisilicon/phy-hi6220-usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/hisilicon/phy-hi6220-usb.c b/drivers/phy/hisilicon/phy-hi6220-usb.c
index 97bd363dfe87..22d8d8a8dabe 100644
--- a/drivers/phy/hisilicon/phy-hi6220-usb.c
+++ b/drivers/phy/hisilicon/phy-hi6220-usb.c
@@ -161,5 +161,4 @@ static struct platform_driver hi6220_phy_driver = {
 module_platform_driver(hi6220_phy_driver);
 
 MODULE_DESCRIPTION("HISILICON HI6220 USB PHY driver");
-MODULE_ALIAS("platform:hi6220-usb-phy");
 MODULE_LICENSE("GPL");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
