Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7927FA3742
	for <linux-phy@archiver.kernel.org>; Thu, 27 Oct 2022 13:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hSlxm/btLLD1H4+D2f4dbzU7IbZc12SIqKwXUkvxhmo=; b=2h3V+HPKSPpj5L
	st/5z0AmCuHZTH4NjmaeElqq7dzceb9Fjuo+ANZFFPj/7rK3P/1BHc0RgI8Za/4WOb+eb3R1RWHgW
	yxIVGGg8W3O1iduQx/PkZIyyL7hV5V0uy+/J+GagVPbKRkilMXtMXJCD5P6hobWwxntc+/Dftn4CN
	fuBTpg4f9e4rEMkjgRUlFPGn7e+rjmxQ4OfRvgpc4+KXaPZAZKlAVmXRFlU7hRAuCDEXhLClBL/Sa
	zco3NatscvWWs3eRJnVDZNFsNse2KUDsXgoTGsNJip98JuDM1LUwdYKYlwuavBCLeCb825jQ8zGeD
	NWEZev/a1HMNCwOIsK+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo35F-00Dach-U0; Thu, 27 Oct 2022 13:38:09 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oo2wj-00DWjI-SP
	for linux-phy@lists.infradead.org; Thu, 27 Oct 2022 13:29:24 +0000
X-IronPort-AV: E=Sophos;i="5.95,217,1661785200"; 
   d="scan'208";a="138150706"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 27 Oct 2022 22:29:17 +0900
Received: from localhost.localdomain (unknown [10.166.15.32])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 4BF8840071E9;
	Thu, 27 Oct 2022 22:29:17 +0900 (JST)
From: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH v3 0/2] phy: renesas: Add Renesas Ethernet SERDES driver for R-Car S4-8
Date: Thu, 27 Oct 2022 22:29:05 +0900
Message-Id: <20221027132907.2342830-1-yoshihiro.shimoda.uh@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_062922_062237_837D5AE8 
X-CRM114-Status: UNSURE (   9.03  )
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

This patch series is based on next-20221027.
Add support for R-Car S4-8 Etherent SERDES as a Generic PHY.

Changes from v2:
https://lore.kernel.org/all/20221019083449.933005-1-yoshihiro.shimoda.uh@renesas.com/
 - Rebased on next-20221027.
 - Fix examples on the dt-bindings doc.
 - Remove unneeded variable in r8a779f0_eth_serdes_probe().

Changes from v1:
https://lore.kernel.org/all/20220922051645.3442321-1-yoshihiro.shimoda.uh@renesas.com/
 - Rebased on next-20221017.
 - Rename the dt-binding file.
 - Fix the node name of examples.
 - Fix Makefile.
 - Modify the initialized procedure for all channels.
 - Add commit description about the initialization.

Yoshihiro Shimoda (2):
  dt-bindings: phy: renesas: Document Renesas Ethernet SERDES
  phy: renesas: Add Renesas Ethernet SERDES driver for R-Car S4-8

 .../phy/renesas,r8a779f0-ether-serdes.yaml    |  54 +++
 drivers/phy/renesas/Kconfig                   |   7 +
 drivers/phy/renesas/Makefile                  |   1 +
 drivers/phy/renesas/r8a779f0-ether-serdes.c   | 416 ++++++++++++++++++
 4 files changed, 478 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
 create mode 100644 drivers/phy/renesas/r8a779f0-ether-serdes.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
