Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5949EECAAD1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 16:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QoYKyXpD9TOKmbv9BSTdHST6MIgK359uVy1P3/aZcas=; b=Zd97COYtT9hFz4
	NtS8rHU0HVIYr0FbfpOJ53MuUd+EoHjDHBolG4QqFI3zo+14oBjwmCeXngP+RsB3r5YHqupP7gX1K
	xazMg5jYi3uDhyCudSkucWE/qB38WJ/rtr9uRt9GhtfWKqXMWJduXOQb/gMBVIFeW6+432ulEn8+g
	oOTXVNcDfaPdiZb7cylFZh1sy4Dh+aY2xx6sUW9gjAnYyM/VyRFmlBQZJVB7jBZqic7tmAPokzEnA
	gauzk8qudALUNhSiLGgKX7wpBJ4Bfj37pf/Z5nabaGGL+v6g5G/49cW+bztkL/+R/RSIHMPzmGYSJ
	rmgV6Ff0Q+2qjfUbQMXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT4Nw-000c36-Ph; Tue, 30 Aug 2022 16:46:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT4Nu-000c16-EI
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 16:46:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1oT4Nf-0002qT-EK; Tue, 30 Aug 2022 18:46:27 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1oT4Nd-002uAy-VN; Tue, 30 Aug 2022 18:46:25 +0200
Received: from pza by lupine with local (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1oT4Nd-000CJM-4G; Tue, 30 Aug 2022 18:46:25 +0200
Message-ID: <569a5d63af850d4180546c2c25220cbb988846eb.camel@pengutronix.de>
Subject: Re: [PATCH v5 4/7] reset: imx7: Fix the iMX8MP PCIe PHY PERST
 support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, l.stach@pengutronix.de, 
	bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
	shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com, 
	marex@denx.de, richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Tue, 30 Aug 2022 18:46:25 +0200
In-Reply-To: <1661845564-11373-5-git-send-email-hongxing.zhu@nxp.com>
References: <1661845564-11373-1-git-send-email-hongxing.zhu@nxp.com>
	 <1661845564-11373-5-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_094642_481766_BBCD7567 
X-CRM114-Status: UNSURE (   9.44  )
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

Hi,

On Di, 2022-08-30 at 15:46 +0800, Richard Zhu wrote:
> On i.MX7/iMX8MM/iMX8MQ, the initialized default value of PERST bit(BIT3)
> of SRC_PCIEPHY_RCR is 1b'1.
> But i.MX8MP has one inversed default value 1b'0 of PERST bit.
> 
> And the PERST bit should be kept 1b'1 after power and clocks are stable.
> So fix the i.MX8MP PCIe PHY PERST support here.
> 
> Fixes: e08672c03981 ("reset: imx7: Add support for i.MX8MP SoC")
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

I've applied this patch to the reset/fixes branch.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
