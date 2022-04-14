Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1A04C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Apr 2022 20:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeYcWoYCT/WIRYsuOH2pPkRrOi5IyQcOAfR9r2B1I2U=; b=Rk5TPRNhGAMmqn
	23KUS5wQy7FuLUmGIcCbjZxexNGo0UpWDwiRo32dKvDzRHynjeJk47CWNgrFKQqfrh5IKpIqJdNIp
	p97nK9KO46h3pMjt6xeG7a8vpKvjNH13ynZcGniwM7vrNoSOcVmuCZtz5Kc10HpgB2SCCozWOpnnp
	kP3ajxWVlOOTHrd0H9iSIQZZ8NE5oeOQiYl2cNWMwJpLPSTGAowYjMG+5o7oGlfXZ7iW1fUAC/tEz
	ReqStPbMU4X24NQi/czloae3midQDHPojbydxWsiq8K2jbKODLEqBIf5QoPlpkckOKBgRmt8Mxa5/
	cj21MTKuu2Somorl0ygA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nf6OC-007Frs-Db; Thu, 14 Apr 2022 20:48:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nf6O9-007FrC-LU
 for linux-phy@lists.infradead.org; Thu, 14 Apr 2022 20:48:27 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nf6O1-000642-Ee; Thu, 14 Apr 2022 22:48:17 +0200
Message-ID: <837af8d131bd0674d7466d89c3df74da08c8c435.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/7] reset: imx7: Add the iMX8MP PCIe PHY PERST support
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, p.zabel@pengutronix.de, 
 bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
 shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Thu, 14 Apr 2022 22:48:15 +0200
In-Reply-To: <1646644054-24421-2-git-send-email-hongxing.zhu@nxp.com>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
 <1646644054-24421-2-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_134825_750665_CAE64092 
X-CRM114-Status: GOOD (  12.89  )
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

Am Montag, dem 07.03.2022 um 17:07 +0800 schrieb Richard Zhu:
> Add the i.MX8MP PCIe PHY PERST support.

As Philipp said: please add some more description on why this is
necessary. As far as I can see the reset is already present on 8MQ, and
is low-active, like this patch claims. We just didn't handle this reset
at all on other SoCs as the power on de-asserted state was okay to get
things working.

Regards,
Lucas

> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  drivers/reset/reset-imx7.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/reset/reset-imx7.c b/drivers/reset/reset-imx7.c
> index 185a333df66c..d2408725eb2c 100644
> --- a/drivers/reset/reset-imx7.c
> +++ b/drivers/reset/reset-imx7.c
> @@ -329,6 +329,7 @@ static int imx8mp_reset_set(struct reset_controller_dev *rcdev,
>  		break;
>  
>  	case IMX8MP_RESET_PCIE_CTRL_APPS_EN:
> +	case IMX8MP_RESET_PCIEPHY_PERST:
>  		value = assert ? 0 : bit;
>  		break;
>  	}



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
