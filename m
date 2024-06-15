Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C70CCC27C77
	for <linux-phy@archiver.kernel.org>; Sat, 15 Jun 2024 09:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dZJCDdo5UR9B6XOnTbpvYJFDfA44csh1UeCwiX07Kxs=; b=w/qIUuzRIR/lq+
	/VXYMtyt72dIPgQwMevpIxmfDpzMxCIWGnvSIhSDQN0VshMp36p094eu5ONk58y/j6zXA4/VBRGd2
	6OmQXERROrcKeK8rpcoUzabd2s3XFXr4szb8HOMpylS00WHQUiXKazCsYboGIaxW0wpGUPAAMYo/8
	icrZmip584EYtxp5D9x6TwTpx6NepQrMjDAaEqQh4jwRSXOJasO6WOXPb+8ZJ0f5AhrmWuJMP8naT
	uPe1GZstcyEPokEIMEcPJpeY5uOaCoRBHxjrNFtXMna15Jc1a25FJOjnM2JzxWA/mx9Ugna7Wqv1b
	Cjzw+ebMMjpCVYCih8fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIPo9-000000058GP-1x2K;
	Sat, 15 Jun 2024 09:34:49 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIPo5-000000058F1-3Mja;
	Sat, 15 Jun 2024 09:34:47 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 45F9YboC115316;
	Sat, 15 Jun 2024 04:34:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1718444077;
	bh=RZFwA9XAUeyIABlfIlwpHFHwEKviKNrV/iZJejrEtv4=;
	h=From:To:CC:Subject:Date;
	b=gz6wyzFy6MLJRW9byjyHG1oLPTndFbWT3lVsYH6SrbiBGKiw6hvKq6bBY5IxGMx7z
	 V0ItV82uSwxL1MZw+sbASS9RbU5nctaHHgr6pUurrq/Jbsuwsu8TnzgV+yBBg/9OyL
	 K0QtkmqMuecOjTJC4rQOWpQifoMJrcWLo5V5O2WU=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 45F9YbtS107256
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 15 Jun 2024 04:34:37 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sat, 15
 Jun 2024 04:34:37 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sat, 15 Jun 2024 04:34:37 -0500
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 45F9YXZ4083099;
	Sat, 15 Jun 2024 04:34:34 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <sjakhade@cadence.com>,
        <rogerq@kernel.org>, <thomas.richard@bootlin.com>, <robh@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 0/2] Enable PCIe Multilink and USB support in Cadence Torrent SERDES driver
Date: Sat, 15 Jun 2024 15:04:31 +0530
Message-ID: <20240615093433.3659829-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_023446_129055_C2681111 
X-CRM114-Status: UNSURE (   5.82  )
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

Hello,

This series adds support for standalone PCIe Multilink configuration
along with the support for PCIe Multilink + USB configuration in the
Torrent SERDES driver.

Series is based on linux-next tagged next-20240613.

Regards,
Siddharth.

Swapnil Jakhade (2):
  phy: cadence-torrent: Add PCIe multilink configuration for 100MHz
    refclk
  phy: cadence-torrent: Add PCIe multilink + USB with same SSC register
    config for 100 MHz refclk

 drivers/phy/cadence/phy-cadence-torrent.c | 276 ++++++++++++++++++++--
 1 file changed, 257 insertions(+), 19 deletions(-)

-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
