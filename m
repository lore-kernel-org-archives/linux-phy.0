Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3E03C28B2B
	for <linux-phy@archiver.kernel.org>; Thu, 18 Aug 2022 08:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4odgP/j+YRK7vKpQrFQv6RErxN4GkNQBNgAF1RPJd58=; b=JuhcBMDj0KeyE1
	wZHFgo4AIoTrI8WLuCSXnuhV1s79LrLv9z3MDKdJQrzsvkilb+GIVGfV0sNckWdKAJSEzMmjvhbl0
	ckexbBn8n2SC4OxVPEE1dxoWHDxG2xxrdlP6ZJ0BQioQlga667AFauC9l3BjDsDmmG2rt3VRu5qyY
	0SQaSXPO/HiHfHjMC3qGKfkb+S2D26+PHWbKuDHmjEiqwYuB3zS+EU/u8dxIlSnCApghLrjS+2Zmk
	vQWObLz8aP4lT//wyavoieM9JUtYCVgBKhgDmrXTWY9cHdi5TsP163mib0zUBx5rLAlErsXTrG1gq
	jwzmmsbRpCFFYR3hhyRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oObF8-0018dC-BE; Thu, 18 Aug 2022 08:51:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oObF5-0018aS-1x
	for linux-phy@lists.infradead.org; Thu, 18 Aug 2022 08:51:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1oObEu-0000wW-8J; Thu, 18 Aug 2022 10:50:56 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1oObEs-000Teu-1b; Thu, 18 Aug 2022 10:50:54 +0200
Received: from pza by lupine with local (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1oObEr-0002qn-Co; Thu, 18 Aug 2022 10:50:53 +0200
Message-ID: <ddbcd90419e9bb4ce7c5b7b3055ee3227c179321.camel@pengutronix.de>
Subject: Re: [PATCH v3 1/6] reset: imx7: Add the iMX8MP PCIe PHY PERST
 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, l.stach@pengutronix.de, 
	bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
	shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com, 
	marex@denx.de
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Thu, 18 Aug 2022 10:50:53 +0200
In-Reply-To: <1660806153-29001-2-git-send-email-hongxing.zhu@nxp.com>
References: <1660806153-29001-1-git-send-email-hongxing.zhu@nxp.com>
	 <1660806153-29001-2-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_015107_842316_5E0C0988 
X-CRM114-Status: GOOD (  10.15  )
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

Hi Richard,

On Do, 2022-08-18 at 15:02 +0800, Richard Zhu wrote:
> On i.MX7/iMX8MM/iMX8MQ, the initialized default value of PERST bit(BIT3)
> of SRC_PCIEPHY_RCR is 1b'1.
> But i.MX8MP has one inversed default value 1b'0 of PERST bit.
> 
> And the PERST bit should be kept 1b'1 after power and clocks are stable.
> So add the i.MX8MP PCIe PHY PERST support here.

the description is good now. It would be nice if this could also be
mentioned in the Reference Manual.

Please replace "add" with "fix" in the subject, as I requested earlier:
"reset: imx7: Fix i.MX8MP PCIe PHY PERST support".

And add a fixes line:

Fixes: e08672c03981 ("reset: imx7: Add support for i.MX8MP SoC")

With those two changes,
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
