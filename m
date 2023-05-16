Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83E10C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 16:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltMZ0uqzD4HzURg0HPkfQgLf+LtKaVyXCyR1eRJEWvk=; b=dBdt/xNt7Dx3lT
	ZTtxIaqa//tTennctq5Rowwye6OnWqmWvQJGtCZymX2fT4EOI/jLvxiURI1aiyr2CYmR7/P/gYCiX
	5hqoQ5OfoiM+NOE0pNG/lvIHtFulmJEv1Qf/lXyxCS5XIXNsUpHVQqQ4hOHZFNlJDFxWu6W+bPQp/
	oNiTuMro4bmv+Gq3KAzDlhRCcuB2Fyaw+MfUfB/QUDTUiKVNPOQMImR0xmdshBDLFDIU6Xaoi/7jH
	LjBE2qL9WyVcosvv2tIQ2swGp1hPZkmHnYwp3eC4eAcMzo6rEsN4eAHHbVD3b+sMLDzMA7pi4ppxd
	BlHwwZeRi0OF/2Pdss0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxcq-006U4N-0e;
	Tue, 16 May 2023 16:34:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyxcn-006U3R-17;
	Tue, 16 May 2023 16:34:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DF40E6152D;
	Tue, 16 May 2023 16:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81033C433EF;
	Tue, 16 May 2023 16:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684254848;
	bh=a5gD6Sj2I5YN1JdKb6fmBN6fLXBHxziCoDX0JM00sqY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MLKshx667MZY3r80PjDOVG+7FWMX01YuYGt1yw90uoPbquW2BUeLngRKkIZDcOBxr
	 rlGZSjBHuZLG45fPyH8+0WXp/Pgz5latxrdbFPe6Ye9HO4T+wA7I1n818XGez3vpdd
	 j7ctedMTOLqRIL6ZdyY1avZBpPG7ZrxHvT1jSxuM3MCZJy/SoJ5UkqpWUttP6qLufS
	 /g6fkOLnum8xOd53DX2MXKL5hiEz2W+n8c+XpHG2ktB8arJJ3BHsrcmXjvOxs9oivy
	 pM9F/nmY4YOoUAQnpxQZoZTif7eKDipWLCudOTQmdJZsSFRvoqoeXDYfSQZE+IGn/y
	 qOps90klCQwoA==
Date: Tue, 16 May 2023 22:04:04 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org, fushi.peng@nxp.com, imx@lists.linux.dev,
	kernel@pengutronix.de, kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, robh+dt@kernel.org,
	s.hauer@pengutronix.de, shawnguo@kernel.org
Subject: Re: [PATCH v4 3/6] phy: cadence: salvo: add bist fix
Message-ID: <ZGOwfFlqWIrAXpHy@matsya>
References: <20230516154329.3155031-1-Frank.Li@nxp.com>
 <20230516154329.3155031-4-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516154329.3155031-4-Frank.Li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_093409_426773_26825A8A 
X-CRM114-Status: GOOD (  18.04  )
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
> Very limited parts may fail to work on full speed mode (both host and
> device modes) for USB3 port due to higher threshold in full speed receiver
> of USB2.0 PHY.
> 
> One example failure symptom is, the enumeration is failed when connecting
> full speed USB mouse to USB3 port, especially under high temperature.
> 
> The workaround is to configure threshold voltage value of single ended
> receiver by setting USB2.0 PHY register AFE_RX_REG5[2:0] to 3'b101.
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>

This needs senders S-o-b as well!

> ---
>  drivers/phy/cadence/phy-cadence-salvo.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-salvo.c b/drivers/phy/cadence/phy-cadence-salvo.c
> index 2e3d4d8fb8eb..b9866dc146ce 100644
> --- a/drivers/phy/cadence/phy-cadence-salvo.c
> +++ b/drivers/phy/cadence/phy-cadence-salvo.c
> @@ -91,6 +91,7 @@
>  
>  /* USB2 PHY register definition */
>  #define UTMI_REG15				0xaf
> +#define UTMI_AFE_RX_REG5			0x12
>  
>  /* TB_ADDR_TX_RCVDETSC_CTRL */
>  #define RXDET_IN_P3_32KHZ			BIT(0)
> @@ -247,6 +248,8 @@ static int cdns_salvo_phy_init(struct phy *phy)
>  	cdns_salvo_write(salvo_phy, USB2_PHY_OFFSET, UTMI_REG15,
>  			 value | TXVALID_GATE_THRESHOLD_HS_0US);
>  
> +	cdns_salvo_write(salvo_phy, USB2_PHY_OFFSET, UTMI_AFE_RX_REG5,
> +			 0x5);

single line reads better

>  	udelay(10);
>  
>  	clk_disable_unprepare(salvo_phy->clk);
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
