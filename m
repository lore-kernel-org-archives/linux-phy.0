Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79457C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 22 Nov 2021 13:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x6wv70caBquPk9JpVeQKIGhsxvq4RYeCsmnnEQqRSAQ=; b=Ha2XIAh5YXgK0ifn+Plg5o3M+U
	G23ps9365VQZEpbTTAjyJfU5RjvnSrk5M8fynYExoeJPl+DoSRlIpNT4maUVeqk2lRdWV/yXpCABi
	wrCj7uDDF7o7q3PDuu+0CPZy4HKG1cBFMqjcalaXAOvXlFMW5tKBoLt3wPLykit3rzVF8ghXPaKhf
	EEiGna2gDi5h2xaEW7IKuSnfXAJKZKQwWZA4vhhVsXLKgq2o4CakpPKsXhm1GX16kWyQ94DP7Rb+0
	9Z1Rpl24C+20iKVFyuwxwBRQwpoFGpviHsOXFl8iGmFpeOM0O6LOi/9c7WOIEOCGl0zxUWMdVdAfP
	DL3SXVmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp9cp-00Ghy1-TR; Mon, 22 Nov 2021 13:44:51 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp9cm-00Ghvm-TY
 for linux-phy@lists.infradead.org; Mon, 22 Nov 2021 13:44:50 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AMDifip101911;
 Mon, 22 Nov 2021 07:44:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637588681;
 bh=4aEDuUEwwhUks1YMR682x5k41bzpSbH1JYgjk2P31Dw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=WYnW3qAUdQPcffmBypxU+4/ypn5NPYrEzdwzzecNs75Ba6t4a8+9bYPlcFFgnhtIn
 g0zwwaNJx5dU8HIfPnJzXJ/h+4p0Np4/KDetfuf1f5Z+Kg2HZOlRidBi9gX5ffBOGi
 VW4FF41anIgnK6+kLeRATj4u0yh+AbT5dcgQGN1A=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AMDifb3053455
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Nov 2021 07:44:41 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 22
 Nov 2021 07:44:41 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 22 Nov 2021 07:44:41 -0600
Received: from [10.250.233.118] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AMDibMa029183;
 Mon, 22 Nov 2021 07:44:37 -0600
Subject: Re: [PATCH RFC v2 4/4] phy: phy-can-transceiver: Add support for
 setting mux
To: Aswath Govindraju <a-govindraju@ti.com>
CC: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Peter
 Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>, Wolfgang
 Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20211122125624.6431-1-a-govindraju@ti.com>
 <20211122125624.6431-5-a-govindraju@ti.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <cc28796e-2ebc-4aad-ffc2-4fe570b269db@ti.com>
Date: Mon, 22 Nov 2021 19:14:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20211122125624.6431-5-a-govindraju@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_054449_083109_D520A6DE 
X-CRM114-Status: GOOD (  23.50  )
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

Hi Aswath,

On 22/11/21 6:26 pm, Aswath Govindraju wrote:
> On some boards, for routing CAN signals from controller to transceiver,
> muxes might need to be set. Therefore, add support for setting the mux by
> reading the mux-controls property from the device tree node.
> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  drivers/phy/phy-can-transceiver.c | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
> index 6f3fe37dee0e..15056b9d68ba 100644
> --- a/drivers/phy/phy-can-transceiver.c
> +++ b/drivers/phy/phy-can-transceiver.c
> @@ -10,6 +10,7 @@
>  #include<linux/module.h>
>  #include<linux/gpio.h>
>  #include<linux/gpio/consumer.h>
> +#include <linux/mux/consumer.h>
>  
>  struct can_transceiver_data {
>  	u32 flags;
> @@ -21,13 +22,23 @@ struct can_transceiver_phy {
>  	struct phy *generic_phy;
>  	struct gpio_desc *standby_gpio;
>  	struct gpio_desc *enable_gpio;
> +	struct mux_control *mux_ctrl;
>  };
>  
>  /* Power on function */
>  static int can_transceiver_phy_power_on(struct phy *phy)
>  {
> +	int ret;
>  	struct can_transceiver_phy *can_transceiver_phy = phy_get_drvdata(phy);
>  
> +	if (can_transceiver_phy->mux_ctrl) {
> +		ret = mux_control_select(can_transceiver_phy->mux_ctrl,
> +					 mux_control_enable_state(can_transceiver_phy->mux_ctrl));

Would need 'select MULTIPLEXER' in Kconfig.

Thanks,
Kishon
> +		if (ret) {
> +			dev_err(&phy->dev, "Failed to select CAN mux: %d\n", ret);
> +			return ret;
> +		}
> +	}
>  	if (can_transceiver_phy->standby_gpio)
>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
>  	if (can_transceiver_phy->enable_gpio)
> @@ -45,6 +56,8 @@ static int can_transceiver_phy_power_off(struct phy *phy)
>  		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 1);
>  	if (can_transceiver_phy->enable_gpio)
>  		gpiod_set_value_cansleep(can_transceiver_phy->enable_gpio, 0);
> +	if (can_transceiver_phy->mux_ctrl)
> +		mux_control_deselect(can_transceiver_phy->mux_ctrl);
>  
>  	return 0;
>  }
> @@ -95,6 +108,19 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
>  	drvdata = match->data;
>  
> +	if (of_property_read_bool(dev->of_node, "mux-controls")) {
> +		struct mux_control *control;
> +		int ret;
> +
> +		control = devm_mux_control_get(dev, NULL);
> +		if (IS_ERR(control)) {
> +			ret = PTR_ERR(control);
> +			dev_err_probe(&pdev->dev, ret, "failed to get mux\n");
> +			return PTR_ERR(control);
> +		}
> +		can_transceiver_phy->mux_ctrl = control;
> +	}
> +
>  	phy = devm_phy_create(dev, dev->of_node,
>  			      &can_transceiver_phy_ops);
>  	if (IS_ERR(phy)) {
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
