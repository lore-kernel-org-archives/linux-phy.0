Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 599CDC83F14
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 08:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lRFBtDCT8bu8EKYXz8l7Myq4gIyqyTi5gY+AgitUyho=; b=oKAr7FPAl4t796
	FAc+Wdy3Hc5RisoTX8CCbva26zInFE5LrkmmujTjLpi/DPJxNqTnKM0cb46CEUoYC82qjtAQNYECu
	GFnO9TKk88yArJMgsqX8UtOZsc3VTuGx26Eex66O9wbsVPTrYPgf/Q0sp73BGnaupq7uLl0AX5glH
	8NRGTFuqPjKXtUNbfQzP6X2XELr2BcprVImktoE5WExzB+r2F+Y5nlkCva0CZMKqM+CtuOaaYDorG
	mmLxC9u0vEg3CRb7ao6/MZv6WoZlY43QeejCE92nz7ND/VswM2Kw4KRUw2ncBm1QT1yx/exsYMsPI
	DGoYHv4/bnB5xvWGqOIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qau7K-00B2FZ-0H;
	Tue, 29 Aug 2023 08:30:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qat2U-00AvXY-1W;
	Tue, 29 Aug 2023 07:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=9VbVqNq6R/wwMmRA8UQzoSTzkG3KxQxTNTE8V0qwr1g=; b=EUyDEgM4Y+/yF7igUpEYGC/6By
	CrPFg9xXUQZ9LTfLa6jUY6hcB2W2kKo31iSZAcoKeDhcjdjU2q8Is8H0z0N/Tc/OaMFW3JZN9ZLBV
	gav5GcS/0+eXJKdm/V0S4ZrjciOPecwnZICA6ngEQ7EP8E8pyjA2tWH4CgSb14f9Vd52FpYr1ODhv
	wvtuV+KPWcOby3MssorAtUmHISxtFNw/kXaLa5jko8FONeFNBV1URWSOJdQ2Jc3317RAzbCneebgN
	O2S7cxnKhTXqPERjxKrSRuit4aqHOX+UCujvuQJ5LD6K5zIijnOXxbZBTtDsY79Qxi1f8Smk7bc/N
	aDOFjd1w==;
Received: from inva021.nxp.com ([92.121.34.21])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qat2P-00BNdg-2R;
	Tue, 29 Aug 2023 07:21:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 78AEC200924;
	Tue, 29 Aug 2023 09:21:13 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 06D9C20028B;
	Tue, 29 Aug 2023 09:21:13 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 0973518002A2;
	Tue, 29 Aug 2023 15:21:10 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	l.stach@pengutronix.de,
	a.fatoum@pengutronix.de,
	u.kleine-koenig@pengutronix.de
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [PATCH v1 0/3] Add i.MX8Q PCIe PHY driver
Date: Tue, 29 Aug 2023 14:45:31 +0800
Message-Id: <1693291534-32092-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_082121_934323_C53C84C1 
X-CRM114-Status: UNSURE (   7.24  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

i.MX8QM HSIO(High Speed IO) module has three instances of single lane
SERDES PHYs, an instance of two lanes PCIe GEN3 controller, an
instance of single lane PCIe GEN3 controller, as well as an instance
of SATA 3.0 controller.

The HSIO module can be configured as the following different usecases.
1 - A two lanes PCIea and a single lane SATA.
2 - A single lane PCIea, a single lane PCIeb and a single lane SATA.
3 - A two lanes PCIea, a single lane PCIeb.

Add i.MX8Q PCIe PHY driver to support these different usecases, and had
been verified on i.MX8QM and i.MX8QXP MEK boards.

[PATCH v1 1/3] dt-bindings: phy: Add i.MX8QM PCIe PHY binding
[PATCH v1 2/3] dt-bindings: phy: phy-imx8-pcie: Add binding for
[PATCH v1 3/3] phy: freescale: imx8q-pcie: Add i.MX8Q PCIe PHY driver

Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  70 ++++++++++-
drivers/phy/freescale/Kconfig                                |   8 ++
drivers/phy/freescale/Makefile                               |   1 +
drivers/phy/freescale/phy-fsl-imx8q-pcie.c                   | 562 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
include/dt-bindings/phy/phy-imx8-pcie.h                      |   7 ++
5 files changed, 645 insertions(+), 3 deletions(-)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
