Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9401410AB80C
	for <linux-phy@archiver.kernel.org>; Thu, 26 Mar 2026 19:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dtJs8Yx9ORrwj5aK2Kk2nmqqtpF4IBNkWlrTXLw4+1U=; b=3vxcXZl4tu8CVx
	llCRIM8ulvfgIVeUG5DktsnTu+mr2pIUvdPjM20+dAfpe31Ltvsb+ENyV73FWZldITR68LUtOdSAO
	vv03leEMl2trzuHp2pwT8gvVCckFzh1W/msZZBRr5O1RblDy2fTepdWWKInb7r+3QAxzL4NM0YVuU
	3ZFVz05g92uGXZTn/bjco3FWLhdZ9nRb9iyIiYyfc2n0MejOVB0Sc7mLlNg4tF53FvI7+lD3hud/B
	V4/Dy86H5zpea7h1bIYM4gBcfF3Na4JaIyuS41AoGR94CbFVyDiyUD7PjJTdJYs0BUpqH7mHSWfSh
	CBIokCmcvSNL3Cc/43WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qTw-000000067QT-0PHO;
	Thu, 26 Mar 2026 19:35:04 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qTs-000000067PR-2n9t
	for linux-phy@lists.infradead.org;
	Thu, 26 Mar 2026 19:35:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 93DCB269C2;
	Thu, 26 Mar 2026 20:34:54 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UaiAd6agqRC4; Thu, 26 Mar 2026 20:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1774553693; bh=em8UZf/f+4PxDG3BVyhlRjFiAr/cgm2WnglEmMQ6Pbs=;
	h=From:To:Cc:Subject:Date;
	b=hwE8Y/MreRJqy40rH0Nl9HWQtmkgL24NpDSBuqkuuIZMptmsRTeyII1UgsDDpGFe2
	 byWof2wyjAjDIcwe0y/XP+L0LNUrb7SLuuo/KTV4U819O6F6LGpIhlSLgJQKE/a2ZD
	 X2kiAQoypp+mffsxNdsOdWVT0qNdoQPZco7mGzzP/ui2i6/Z2egx7/CKgkikewBejW
	 jQT16yBLVQMhfjjSZv9zFEQzIX9S4ngeB5eMXM4LR0su7MJne4ln0zEy/goVi7R1/R
	 hC8J8SNUybzp56UkpLLbObVYIAYtSnOhrtQyExSdQBt1SvA44DER9J2IRPcktuBdrG
	 qSBRrSeU3MVWg==
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
Subject: [PATCH 0/6]  phy: realtek: usb2: support for RTL9607C USB2 PHY
Date: Fri, 27 Mar 2026 00:34:13 +0500
Message-ID: <20260326193419.48419-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_123501_130820_E88B59A6 
X-CRM114-Status: UNSURE (   8.51  )
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

This patch series for Realtek USB2 PHY driver adds support for RTL9607C
USB2 PHY.

RTL9607C is a big endian MIPS CPU which is quite far from RTD series SoCs
supported by realtek usb2 phy driver, but the phy initilization is found
to be very indentical in most areas.

Most of the code was based on the Realtek's usb driver from the GPL tarball
in [1] and adjusted to fit into the realtek usb2 phy driver code format.

The patch series was split into smaller patches that add/change something
in the driver that are not exactly related to RTL9607C and that also
helps for easier review. That also means, patch 5 depends on all the prior
patches that come before it.

USB2 PHY on RTL9607C is primarly used for its internal OHCI/EHCI controllers.

[1] - https://github.com/jameywine/GPL-for-GP3000/blob/main/linux-5.10.x/arch/mips/rtl9607c/usb.c

Rustam Adilov (6):
  phy: realtek: usb2: introduce vstatus/new_reg_req variables to driver
    data
  phy: realtek: usb2: introduce read and write functions to driver data
  dt-bindings: phy: realtek,usb2phy.yaml: extend for resets and RTL9607C
    support
  phy: realtek: usb2: introduce reset controller struct
  phy: realtek: usb2: add support for RTL9607C USB2 PHY
  phy: realtek: usb2: Make configs available for MACH_REALTEK_RTL

 .../bindings/phy/realtek,usb2phy.yaml         |  23 ++-
 drivers/phy/realtek/Kconfig                   |   2 +-
 drivers/phy/realtek/phy-rtk-usb2.c            | 189 ++++++++++++++++--
 3 files changed, 194 insertions(+), 20 deletions(-)

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
