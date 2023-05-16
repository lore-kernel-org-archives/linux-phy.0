Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A82C4C7EE25
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 16:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ONrCdDjaowbLuAzhL8Pu6p7d2yQISYcA/jFfKHHEHrs=; b=ocdZIOVffKZJNR
	AE/+YKDyUJ9trGwLoMObjosyo4KXeilX0Z0ogP60tLJ+TVuaq3EdIgu4pSM7yU+0rgw7tqjYz7Ee6
	MAOkEBj12H4+pS75Lzof5afZ7zNeeloDNcSoEuIea3s64/4EfnKeTPg+i0sf6vcCRoZSWSXfjmTO+
	g3a9O/Zavzpgw28B/toO1PWPE3AAnCUbv8rtx3qKiyfwZTkIvx8tbovNBPSsAC+6obdd/Wd2Px1cO
	nWXAQmX6dKTmd4E/0hJmEP66SHnPMBC5lV9/M8pEB1BvH1JMKaJBUVvxfrHqdRR671/2QMhB2+2Rs
	KgyA//VCP8UfwtjKU4Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxPz-006Rbf-0Y;
	Tue, 16 May 2023 16:20:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxPw-006RZx-1p
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 16:20:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pyxPd-0002nq-A6; Tue, 16 May 2023 18:20:33 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pyxPc-000eDt-Gp; Tue, 16 May 2023 18:20:32 +0200
Received: from localhost ([::1] helo=dude03.red.stw.pengutronix.de)
	by dude03.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pyxPb-00DODy-NQ; Tue, 16 May 2023 18:20:31 +0200
From: Johannes Zink <j.zink@pengutronix.de>
Subject: [PATCH v2 0/2] Add phy tuning support for imx8mq-usb
Date: Tue, 16 May 2023 18:20:18 +0200
Message-Id: <20230516-lustige-usb-phy-dinge-v2-0-3383a0de34ac@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEOtY2QC/x2NQQoCMQxFrzJkbWHsUBGvIi6aNLWBUofGijLM3
 Y0u3+M//gbKXVjhMm3Q+SUqj2bgDxNQie3OTpIx+NkvczieXB36FNND0a3l45L8RvmcMhEuASm
 AtRiVHfbYqFjdRq0m185Z3v+z623fvywF6SR8AAAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Li Jun <jun.li@nxp.com>
Cc: patchwork-jzi@pengutronix.de, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Johannes Zink <j.zink@pengutronix.de>, 
 Haibo Chen <haibo.chen@nxp.com>
X-Mailer: b4 0.12.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_092052_622192_A26E144A 
X-CRM114-Status: GOOD (  12.43  )
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

This series adds support for USB phy tuning parameters, which are
required for meeting USB certification and EMI qualification.

Patch 1/2 adds the required properties to the fsl,imx8mq-usb-phy
devicetree binding.

Patch 2/2 adds the phy tuning parameters to the phy-fsl-imx8mp driver.
This patch is ported and cleaned up from the downstream Freescale vendor
tree.

Best regards,
Johannes

Johannes Zink (1):
  dt-bindings: phy: imx8mq-usb: add phy tuning properties

Li Jun (1):
  phy: fsl-imx8mp-usb: add support for phy tuning

---

Changelog:

  v1 -> v2: worked in review from Krzysztof and Rob, thanks for your
  review:
   - extract more useful descriptions of the properties from the
     datasheet
   - use unit postfixes for the device tree properties to facilitate
     porting in the future
   - add more information about some of the properties (thanks to Li Jun
     for clarification)
   - adjust parsing of the devicetree properties in the driver to scale
     to the proper register values

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>

---
Johannes Zink (1):
      dt-bindings: phy: imx8mq-usb: add phy tuning properties

Li Jun (1):
      phy: fsl-imx8mp-usb: add support for phy tuning

 .../bindings/phy/fsl,imx8mq-usb-phy.yaml           |  47 +++++
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c         | 218 +++++++++++++++++++++
 2 files changed, 265 insertions(+)
---
base-commit: 7a503071e06db4409b7066b8ecca9f3da03dd3b1
change-id: 20230516-lustige-usb-phy-dinge-f8dfccb35bc5

Best regards,
-- 
Johannes Zink <j.zink@pengutronix.de>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
