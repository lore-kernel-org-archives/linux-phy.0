Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1524C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 16:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zs3uFv2X8VVt6ceMtxc1Ik1z+m4PBoic+hX32n6DFLM=; b=nyViyv8qkKoHAu
	wFV3djm05Iyi6+Sxw5OFrasml/GW0Ui947IU/W2+0zSMyL+DIW7APb75Q/nD36R4HvMmW/v63x8PL
	g5M4DpHk7dqFFevBHAdczR+MchUvav/CZCZLjakvOFhA5GamkavqjlYeQ4uIeExGeKz5c+/9vBoa1
	4RM6xBrEWhOi2wEUdFWdY0CBn9bLIAt5VqlB6InHZDXKQdz0psxIU17E7mFpvzTux1VyfG8W80Enb
	T59Ojt2fhVpU3lUYeJ5yeEH9gM3Lr5PLTJuVCh/B7OqaHjIAwkZC7vVwDFnQgIEY4IvvlXUoezQHm
	0aNWOfB15GwAa3oYG9ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxdq-006UEE-1l;
	Tue, 16 May 2023 16:35:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxdn-006UCo-0r;
	Tue, 16 May 2023 16:35:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 991A563C45;
	Tue, 16 May 2023 16:35:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 744D3C433EF;
	Tue, 16 May 2023 16:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684254910;
	bh=xiAeS/BTnfeGpVs3pyu1705ZSwTqAkahLxezIeK6zis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qsuxJHITpfMVLrlBAGajT14BlALyhbj1ocEXmV7V+0Cu1B5BhXO/+4jpKzVBS4lXJ
	 5DasD3Ct/NvzcFmyGd7ryLbNt35wzFMF6bsMjMaMZBeRTHbqI1yUeQpexLv3dFgHT8
	 iL0TG2pTxSnaCWQmSrdt9Y4DpCBqQeB4sEcetCzNyD1YQ9GO+hRTZj32a4fmGS2XYL
	 52ULYgJLjeLCx1K6xsPjuNQNT22Y5mVlpsZXzarG+0xw4mnNf631D0Z1ly3+xTpbgR
	 edrh9EeqZHeplPYxn7dOiRRG8AIdM4F4qnweWM3404bMADu2f3IV/5DEQXuwY9xEon
	 aQDNsEnW59rGQ==
Date: Tue, 16 May 2023 22:05:06 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org, fushi.peng@nxp.com, imx@lists.linux.dev,
	kernel@pengutronix.de, kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, robh+dt@kernel.org,
	s.hauer@pengutronix.de, shawnguo@kernel.org
Subject: Re: [PATCH v4 4/6] phy: cadence: salvo: add .set_mode API
Message-ID: <ZGOwukxGLdRHNL0l@matsya>
References: <20230516154329.3155031-1-Frank.Li@nxp.com>
 <20230516154329.3155031-5-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516154329.3155031-5-Frank.Li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_093511_388278_095E9100 
X-CRM114-Status: GOOD (  23.91  )
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

On 16-05-23, 11:43, Frank Li wrote:
> From: Peter Chen <peter.chen@nxp.com>
> 
> For NXP platform design, the PHY can't know VBUS well, it causes the FSM
> in controller seeing the disconnection at L1 use case. With .set_mode API
> introduced, the controller driver could force PHY seeing B Session VALID
> when it is at the device mode (VBUS is there), and keep FSM working well.
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/phy/cadence/phy-cadence-salvo.c | 29 +++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-salvo.c b/drivers/phy/cadence/phy-cadence-salvo.c
> index b9866dc146ce..41616f786321 100644
> --- a/drivers/phy/cadence/phy-cadence-salvo.c
> +++ b/drivers/phy/cadence/phy-cadence-salvo.c
> @@ -92,6 +92,7 @@
>  /* USB2 PHY register definition */
>  #define UTMI_REG15				0xaf
>  #define UTMI_AFE_RX_REG5			0x12
> +#define UTMI_AFE_BC_REG4			0x29
>  
>  /* TB_ADDR_TX_RCVDETSC_CTRL */
>  #define RXDET_IN_P3_32KHZ			BIT(0)
> @@ -105,6 +106,9 @@
>  /* 0us, txvalid is ready just after HS/FS transmitters have powered up */
>  #define TXVALID_GATE_THRESHOLD_HS_0US		(BIT(4) | BIT(5))
>  
> +#define SET_B_SESSION_VALID			(BIT(6) | BIT(5))
> +#define CLR_B_SESSION_VALID			(BIT(6))
> +
>  struct cdns_reg_pairs {
>  	u16 val;
>  	u32 off;
> @@ -124,6 +128,13 @@ struct cdns_salvo_phy {
>  };
>  
>  static const struct of_device_id cdns_salvo_phy_of_match[];
> +static const struct cdns_salvo_data cdns_nxp_salvo_data;
> +
> +static bool cdns_is_nxp_phy(struct cdns_salvo_phy *salvo_phy)
> +{
> +	return salvo_phy->data == &cdns_nxp_salvo_data;
> +}
> +
>  static u16 cdns_salvo_read(struct cdns_salvo_phy *salvo_phy, u32 offset, u32 reg)
>  {
>  	return (u16)readl(salvo_phy->base + offset +
> @@ -273,11 +284,29 @@ static int cdns_salvo_phy_power_off(struct phy *phy)
>  	return 0;
>  }
>  
> +static int cdns_salvo_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +	struct cdns_salvo_phy *salvo_phy = phy_get_drvdata(phy);
> +
> +	if (!cdns_is_nxp_phy(salvo_phy))
> +		return 0;
> +
> +	if (mode == PHY_MODE_INVALID)
> +		cdns_salvo_write(salvo_phy, USB2_PHY_OFFSET, UTMI_AFE_BC_REG4,
> +			 CLR_B_SESSION_VALID);
> +	else if (mode == PHY_MODE_USB_DEVICE)
> +		cdns_salvo_write(salvo_phy, USB2_PHY_OFFSET, UTMI_AFE_BC_REG4,
> +			 SET_B_SESSION_VALID);

no else?

> +
> +	return 0;

return success even when mode is not handled?

> +}
> +
>  static const struct phy_ops cdns_salvo_phy_ops = {
>  	.init		= cdns_salvo_phy_init,
>  	.power_on	= cdns_salvo_phy_power_on,
>  	.power_off	= cdns_salvo_phy_power_off,
>  	.owner		= THIS_MODULE,
> +	.set_mode	= cdns_salvo_set_mode,
>  };
>  
>  static int cdns_salvo_phy_probe(struct platform_device *pdev)
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
