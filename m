Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67538C27C53
	for <linux-phy@archiver.kernel.org>; Sun, 16 Jun 2024 10:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e0uBoK2q459bNe1YNlfBKnLCLww0YS83u41krLgegTY=; b=lQXYZWoHK5Z4+D
	EojmGRxm6CENtz9EUU8mhKCHkCUj652FM3EHBsm2viwUaCNvVWO14YvjGkiu/46K+JRP3Zf/WwXb1
	46ZovufV+7FK+LikfziGphoEUuA/ybYMsAcKok0WlM3FKtkEDReEdNYuxOQTWFF4ay8p9fzOYwu1J
	7nIHeZTYGxofiwCWjyUJ4aBrBgA0aLdMsuoGNzgPwwejh0G11pF6N9tspl0dkiXOl1IfJIgC9KET6
	1PUmvFWhrlqusWGOfcCfMCs+1y0ssKGxBUJcQZ6IMQ33X29Wb0wNbszthqIRGEPqYo/0JpoXq+MXs
	pd9aEmp4r/V3Dm9D2rvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sInWi-00000007Mbe-1kW2;
	Sun, 16 Jun 2024 10:54:25 +0000
Received: from relmlor2.renesas.com ([210.160.252.172] helo=relmlie6.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sInWb-00000007MZw-2f0D
	for linux-phy@lists.infradead.org;
	Sun, 16 Jun 2024 10:54:19 +0000
X-IronPort-AV: E=Sophos;i="6.08,242,1712588400"; 
   d="scan'208";a="212062378"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 16 Jun 2024 19:54:09 +0900
Received: from localhost.localdomain (unknown [10.226.92.60])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id E1D9241FEF44;
	Sun, 16 Jun 2024 19:54:04 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v4 0/6] Add USB VBUS regulator for RZ/G2L
Date: Sun, 16 Jun 2024 11:53:52 +0100
Message-ID: <20240616105402.45211-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_035418_014979_32D946F1 
X-CRM114-Status: GOOD (  11.58  )
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

As per RZ/G2L HW manual, VBUS enable can be controlled by the VBOUT bit of
the VBUS Control Register(VBENCTL) register in the USBPHY Control. But
this IP is in the Reset block.

Reset driver exposes this register as regmap and instantiate the USB VBUS
regulator device. Consumers(phy device) can use regulator APIs to control
VBUS as controlling is done in the atomic context.

We need to have merge strategy which subsytem will apply this patches
as it involves multiple subsystems Reset, Regulator, PHY, DT and Renesas
SoC??

v3->v4:
 * Fixed example indentation to 4 char spaces in patch#1
 * Dropped regulator-{min,max}-microvolt from example.
 * Updated commit header and description in patch#3
 * Replaced regulator_set_hardware_enable_register()->regulator_hardware_enable()
 * Updated documentation to "must use of regulator_get_exclusive() for consumers"
 * Enforced exclusive access in regulator_hardware_enable().
 * Added generic support regulator_hardware_enable().
 * Added check for of_get_child_by_name().
 * Released the resource by of_node_put()
 * Updated commit description with regulator_hardware_enable()
 * Used devm_regulator_get_exclusive() to get regulator handle.
 * Dropped regulator-{min,max}-microvolt.
v2->v3:
 * Documented regulator-vbus in the binding file.
 * Updated commit description and header for patch#2
 * Moved regulator device creation and instantiation at the end of probe().
 * Introduced new API regulator_set_hardware_enable_register() to enable/disable
   regulator in atomic context.
 * Dropped vbus_voltages table from patch#4
 * Added support for enabling/disabling regulator through regmap API's
 * Updated rzg2l_usb_vbus_rdesc with enable_{reg,mask}, fixed_uV and
   n_voltages
 * Updated of_node with child node of the parent device.
 * Replaced regulator's regmap API with newly introduced
   regulator_set_hardware_enable_register to enable/disable regulator
   in interrupt context in patch#5
 * Dropped using "usb_vbus-supply" in patch#5.
 * Upated vbus regulator label name in dts file.
 * Updated node and regulator name that matches with the binding documentation.
v1->v2:
 * Introduced a regulator driver to control VBUS

Biju Das (6):
  dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document USB VBUS
    regulator
  reset: renesas: Add USB VBUS regulator device as child
  regulator: core: Add helper for allow HW access to enable/disable
    regulator
  regulator: Add Renesas RZ/G2L USB VBUS regulator driver
  phy: renesas: phy-rcar-gen3-usb2: Control VBUS for RZ/G2L SoCs
  arm64: dts: renesas: rz-smarc: Replace fixed regulator for USB VBUS

 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 10 +++
 Documentation/power/regulator/consumer.rst    |  6 ++
 .../boot/dts/renesas/rz-smarc-common.dtsi     | 11 +--
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  8 +-
 drivers/regulator/Kconfig                     |  9 +++
 drivers/regulator/Makefile                    |  1 +
 drivers/regulator/core.c                      | 28 +++++++
 .../regulator/renesas-usb-vbus-regulator.c    | 74 +++++++++++++++++++
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       | 37 ++++++++++
 include/linux/regulator/consumer.h            |  7 ++
 10 files changed, 182 insertions(+), 9 deletions(-)
 create mode 100644 drivers/regulator/renesas-usb-vbus-regulator.c

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
