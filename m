Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0BB5CA6007
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 11:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0PQsQe5baWbIG7NRHLEJKlFfDQSrBg/bBvwX/FmUvD8=; b=lfrOOb9tkL6UtQ
	fhdevVjSsO/dbf1lHgfDcHfhvWr3z1p7h8mWVWr+V79ybnZP21k54eQcs0xB9BlmW3DSB/sIY7N7f
	yPg4T4gkE30lB1hplLezSEXRhXC3dzSOsJEgYZtH96QtM+b6udZ9MEfzvE+3m6TVy+mX9jEMYZrT1
	EosqoyWfOjoEqembDoAuUF615JdoN0Ah4C7schXU7PZ7JmzsjK1uuS1UJ/hEabR7cIjYVQfjf6XE4
	g3XJCJIEoCMqFJNthxeKjZ88/kmWFcHBop2FxHd96bBSabzPK4Bzwn4L2GQXqvEXjrZOZPRhJFVlB
	RAAPQ4aoWRsXTZI6vZPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEmIk-00000004Ezd-1SC6;
	Thu, 08 Oct 2026 11:28:42 +0000
Received: from mail.aspeedtech.com ([211.20.114.72] helo=twmbx01.aspeedtech.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEmIh-00000004Eyu-0xi3;
	Thu, 08 Oct 2026 11:28:40 +0000
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Thu, 8 Oct
 2026 19:28:28 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Thu, 8 Oct 2026 19:28:28 +0800
From: Jacky Chou <jacky_chou@aspeedtech.com>
Subject: [PATCH 0/3] phy: aspeed: Add ASPEED PCIe PHY support
Date: Thu, 8 Oct 2026 19:28:18 +0800
Message-ID: <20261008-aspeed_pcie_phy-v1-0-96764937aef0@aspeedtech.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFJ+x2oC/x3MSwqAIBRG4a3EHSf4CIm2EiGmf3UnJQpRRHtPG
 n6Dcx4qyIxCQ/NQxsmFj71CtQ2Fze8rBMdq0lJbaY0UviQguhQYLm23MJ2yapamtwZUq5Sx8PU
 fx+l9P07DBk1hAAAA
X-Change-ID: 20260630-aspeed_pcie_phy-34161b03863e
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, Manivannan Sadhasivam
	<mani@kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>, Billy Tsai
	<billy_tsai@aspeedtech.com>
CC: <linux-aspeed@lists.ozlabs.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Jacky Chou <jacky_chou@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791458908; l=1483;
 i=jacky_chou@aspeedtech.com; s=20251031; h=from:subject:message-id;
 bh=iu4Zl2XLhk1c2sygQvsZ6Yp6z//xHF44lf3a3D+enh0=;
 b=WEva4gZIureOwV8wbKrsmtAfd2JtufHc6mn7kCstj8/nqIh8PqvVumxtDKzG2pskx3VXMDz6L
 iHViDNsxYxrADPJ3jP7f1HmbExdLIosqCQl8al7SFuRz5mUjoDKKNM/
X-Developer-Key: i=jacky_chou@aspeedtech.com; a=ed25519;
 pk=8XBx7KFM1drEsfCXTH9QC2lbMlGU4XwJTA6Jt9Mabdo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_042839_273545_D1F2CE6A 
X-CRM114-Status: UNSURE (   9.70  )
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

Add the ASPEED PCIe PHY binding and driver for AST2600 and AST2700
SoCs. The PHY provides the physical layer used by the PCIe controller
when it is configured to run in root complex mode.

The driver registers an ASPEED PCIe PHY provider through the generic PHY
framework and programs the SoC-specific PEHR registers from set_mode().
For AST2600 this selects the root complex port type. For AST2700 this
also configures the posted/completion credit values, local scaling,
device type, internal reset selection, and downstream port setting
needed by the controller.

This series also adds the devicetree binding for the PHY provider and a
MAINTAINERS entry for the ASPEED PCIe PHY driver.

Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
---
Jacky Chou (3):
      dt-bindings: phy: aspeed: Add ASPEED PCIe PHY
      phy: aspeed: Add ASPEED PCIe PHY driver
      MAINTAINERS: Add ASPEED PCIe PHY driver

 .../bindings/phy/aspeed,ast2600-pcie-phy.yaml      |  49 +++++
 MAINTAINERS                                        |   8 +
 drivers/phy/aspeed/Kconfig                         |  12 +-
 drivers/phy/aspeed/Makefile                        |   1 +
 drivers/phy/aspeed/phy-aspeed-pcie.c               | 237 +++++++++++++++++++++
 5 files changed, 306 insertions(+), 1 deletion(-)
---
base-commit: ea01f446f0682a5e7bd7a275889a890b7e0c6e02
change-id: 20260630-aspeed_pcie_phy-34161b03863e

Best regards,
-- 
Jacky Chou <jacky_chou@aspeedtech.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
