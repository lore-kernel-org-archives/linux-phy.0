Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE8BBC761A6
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 11:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=odvvi8+uleOYhgz147Mdbm3R5wXhs4F6l8EqorozfBk=; b=qLLF5b08pHQbor
	9Oxvaq7esMqPzDxJ3VDaBwFliv/n4f2qq+JzQ1AURSjqFZbdnFekUu2jMeL+m5mUCnY0hBotBqn0X
	Up3v092OXr7maRzxXuDH0MJmcHnkuTBUEeTlqLaRJGxUXCCbwC2UI5xAQMLmHcOvY1iBWmrMXpXVv
	8Vx15UDrgMNjWfiymOGc/OKTqFOo251QYR8wzfSkM5RhIvBxAfZip+ZsIdpnxdpceBacG8qPEKWBd
	/CRRiMrVdT7dVRt0uHHYEDbgAU7aEDs/x0C99ydhe0aGnHB7ObglBvJH4uMRzWQZnbRUPwvDyFcdL
	TNymgKyhtpKNR9NUguqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1D5-004FaO-1L;
	Wed, 05 Apr 2023 11:21:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk1D2-004FYf-2M
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 11:21:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1pk1Ce-0004S3-05; Wed, 05 Apr 2023 13:21:24 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1pk1Cc-0098SM-52; Wed, 05 Apr 2023 13:21:22 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1pk1Cb-005Gtk-9W; Wed, 05 Apr 2023 13:21:21 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	jun.li@nxp.com,
	haibo.chen@nxp.com,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: j.zink@pengutronix.de
Subject: [PATCH 0/2] Add phy tuning support for imx8mq-usb
Date: Wed,  5 Apr 2023 13:21:16 +0200
Message-Id: <20230405112118.1256151-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: jzi@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_042148_768339_46B0C0F4 
X-CRM114-Status: UNSURE (   8.14  )
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

 .../bindings/phy/fsl,imx8mq-usb-phy.yaml      |  40 ++++++
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c    | 124 ++++++++++++++++++
 2 files changed, 164 insertions(+)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
