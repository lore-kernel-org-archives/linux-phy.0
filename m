Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3163C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 08:28:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7136460F94
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 08:28:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7136460F94
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIMv/SB8StkMpw6ZPQt75eh7o/XUR+5MoMiIVXm91YQ=; b=sODnoDKISBEa/c
	vntUxZzQ70aJRMDIjYDabjkNAs/IUX5EfcuRlpCmev8Jvvtwzq7wTGd4jASYMYipxBjBSmxnVpbWQ
	WiCBwtzxg63aWEO9KAYl9fm/rSuE2u9mA/sqnp1ouzVCCdT7X3nwHhXwoVXfUno4fUsEecWfxiTsB
	2aD1/XhGkn1R9p9Mqm/c8VeJHvV1VtARMGeh4ulZk1aDAiOa27ERXlf5s3mA0lVTMManFKHU90Fn5
	ZgzhYWk3bX+4arG9JrO9SVbpA+I//Zrq5Cp4/SCimaVRJSb/idy824sV3EW2QI2kS7FeK+cMzlVKJ
	hZrSH/tmBdtsBZRSnVAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUm07-0021Hk-F3; Mon, 27 Sep 2021 08:28:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUlyt-0020cb-9v
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 08:27:25 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1mUlyj-0004CN-SC; Mon, 27 Sep 2021 10:27:13 +0200
Message-ID: <c653181970092c27fc98fbb5dcebe21ebf29d887.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for
 the pad modes of imx8 pcie phy
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, kishon@ti.com, vkoul@kernel.org, 
 robh@kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, linux-imx@nxp.com
Date: Mon, 27 Sep 2021 10:27:10 +0200
In-Reply-To: <1632641983-1455-2-git-send-email-hongxing.zhu@nxp.com>
References: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
 <1632641983-1455-2-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_012723_381843_F38A179D 
X-CRM114-Status: GOOD (  16.02  )
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

Am Sonntag, dem 26.09.2021 um 15:39 +0800 schrieb Richard Zhu:
> Add binding for reference clock PAD modes of the i.MX8 PCIe PHY.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  include/dt-bindings/phy/phy-imx8-pcie.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/phy/phy-imx8-pcie.h
> 
> diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
> new file mode 100644
> index 000000000000..59ed322f8d6c
> --- /dev/null
> +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */

This should be (GPL-2.0+ OR MIT) to be compatible with the license of
the DTSI file it is included in.

> +/*
> + * This header provides constants for i.MX8 PCIe.
> + */
> +
> +#ifndef _DT_BINDINGS_IMX8_PCIE_H
> +#define _DT_BINDINGS_IMX8_PCIE_H
> +
> +/* Reference clock PAD mode */
> +#define IMX8_PCIE_REFCLK_PAD_NO_USED	0

I think _UNUSED would be the more idiomatic way to call this.

> +#define IMX8_PCIE_REFCLK_PAD_INPUT	1
> +#define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
> +
> +#endif /* _DT_BINDINGS_IMX8_PCIE_H */



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
