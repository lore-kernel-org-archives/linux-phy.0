Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2586CECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 10:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUiGjJgGZoi56QpNen+0mOB/qqzli85pOqckx+tOuxY=; b=EtXPDNxEdSuk5r
	kLd//WHSrzNrox7dC9R4amqoliRAaN7rPPnRxUT3Z9SsykvXJypWFV3utZzusYiZ5toekc2JtIF88
	8zJVcO2kBh5SDfAn3Y8Ttwo0Uj7SkvrBLOjqF8f1Ztmy55OE8gUyjkDiCbEc8inQpwpjYTYOL09gA
	/tonB2t5QVRTqWPJJiAFlgarK2TgkbTLtfWkXF0MEFomzWpQQkEfAKaNqZFJ33wZqjliCMhvyxLO8
	GByEXEnpV98weZyfUw+DtX76XlZ3usCql+e6I4D8nKueJZ90m9sIOWTlsJgCxm+Kjw/SOJ3Ma1U5U
	hPt3eAkCmxXv4pX/tIWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooMX9-00GdwH-JM; Fri, 28 Oct 2022 10:24:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooMWx-00Gdr9-66; Fri, 28 Oct 2022 10:24:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 50F376275E;
	Fri, 28 Oct 2022 10:24:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05631C433D6;
	Fri, 28 Oct 2022 10:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666952640;
	bh=1JtXCOpRqptIdX0DQSUwY7YoNsgQauDmJBdHmsHsiK8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=NdWGUQAo9OIMDnZhf8sSknwkusIA80E3ral84mYmh5p2WsibhWqBuyxClsD2IlDhP
	 Bh8xuqaq2Fs/CkKRiVbge/J+K+RvyUOSD8kbcNj6Qk+P9Ok5uAn2mogFCTqN843F4y
	 sh4PBJdpwkyf1zLfEsY8btNN5cKkThMLoLVFkOwO/cu+y72rZtoSvsgVOTnpjzeDwn
	 z8c9B1iIJQi2bp2UMQxkQ7g6cYJRlEa27+zERDJnC7uzDMR4tusfm0yuvjUEAuA9pw
	 AwqShO4Omo3T4qcymts8cUe/gGOSloZ96DGHd9QKDPVwTyspTQxdwQF6tVamVu68in
	 euburMr6Sgceg==
Message-ID: <b0246184-8cb5-20b5-67ec-368917227562@kernel.org>
Date: Fri, 28 Oct 2022 13:23:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v3 3/3] phy: ti: gmii-sel: Add support for CPSW9G GMII SEL
 in J721e
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, robh+dt@kernel.org,
 lee@kernel.org, krzysztof.kozlowski@linaro.org,
 krzysztof.kozlowski+dt@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 dan.carpenter@oracle.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20221026074532.109220-1-s-vadapalli@ti.com>
 <20221026074532.109220-4-s-vadapalli@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20221026074532.109220-4-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_032403_311874_990A5A6C 
X-CRM114-Status: GOOD (  17.57  )
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



On 26/10/2022 10:45, Siddharth Vadapalli wrote:
> Each of the CPSW9G ports in J721e support additional modes like QSGMII.
> Add a new compatible for J721e to support the additional modes.
> 
> In TI's J721e, each of the CPSW9G ethernet interfaces can act as a
> QSGMII main or QSGMII-SUB port. The QSGMII main interface is responsible
> for performing auto-negotiation between the MAC and the PHY while the rest
> of the interfaces are designated as QSGMII-SUB interfaces, indicating that
> they will not be taking part in the auto-negotiation process.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

> ---
>  drivers/phy/ti/phy-gmii-sel.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index c8f30d2e1f46..8c667819c39a 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -218,6 +218,15 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw5g_soc_j7200 = {
>  	.num_qsgmii_main_ports = 1,
>  };
>  
> +static const
> +struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
> +	.use_of_data = true,
> +	.regfields = phy_gmii_sel_fields_am654,
> +	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
> +	.num_ports = 8,
> +	.num_qsgmii_main_ports = 2,
> +};
> +
>  static const struct of_device_id phy_gmii_sel_id_table[] = {
>  	{
>  		.compatible	= "ti,am3352-phy-gmii-sel",
> @@ -243,6 +252,10 @@ static const struct of_device_id phy_gmii_sel_id_table[] = {
>  		.compatible	= "ti,j7200-cpsw5g-phy-gmii-sel",
>  		.data		= &phy_gmii_sel_cpsw5g_soc_j7200,
>  	},
> +	{
> +		.compatible	= "ti,j721e-cpsw9g-phy-gmii-sel",
> +		.data		= &phy_gmii_sel_cpsw9g_soc_j721e,
> +	},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, phy_gmii_sel_id_table);

cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
