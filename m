Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C95EEB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jun 2023 17:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtIZs5w7IxRjpnNxDYbQB6+6aHkSWRDSkZ+sC1P93rM=; b=dLm2jdwN4Eytqd
	udcz/jjmdOj7ZnEu8IzZSIKlbJwyu1cffu0O7bFySIOZ4GstyS69UzJlLvX4GoG2S0iRVJ1j+dxwS
	G+O21xEfdJt50L4nIQMAVL/rX8S8vkgox6pkq4n/+TBmTaTuV47codKLuQ+weo0+99hWg/DhoAgci
	vRN3cIGap2PTPbNkvhq+okFS7/SmwiwwbdbXey4xuqtJWor2kUh1y7Uo0tVFpLntDa7IFoxOf1bfk
	spNcWi6jRjSxx/pEf1KDIzQBu8/rnXstXNca9f+yi+CQNuQr3SoY2OGNN3EM3+weRS2z62aw5rCQz
	rtVzktYYAilqMlr1SQRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9U8O-00CK8M-30;
	Wed, 14 Jun 2023 17:18:16 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9U8L-00CK6x-2h
	for linux-phy@lists.infradead.org;
	Wed, 14 Jun 2023 17:18:15 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9828a7a39d1so51969166b.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Jun 2023 10:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686763091; x=1689355091;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8E7alXFnYsjNnpR3eeRhfbBudzEGWslVHCnpWP7s+Ps=;
        b=KCw9rCdMRs4kJjHk8mRBUZdS42UXu+0EDm58vQmdK8+4FSUI7VIPjUh5+p721T9S0c
         wYy1GIWwJXJ+kJTz4JfBR4iSBmWH+Jcc0cJsYS3Xwx9LOynHq8yIyHr9klHtl8F+4ASo
         zURXuMf5IvpRb1njMo1OFhjf9yWyUz75QLQga5iRH1Ow78VjlBXu0y0fAm2XA800KUVF
         m71MHUlFOCaR+hZW3Y6H/4g761u6643fjYN7Z+vFVpH8k7HTIBNAC2jgUaNIzHdZDs5S
         npKpR4a0K4yksS18cbcPampxntv8dpt/xBTD0UwZwOp+OfNx/pHfLURf5U6ECrkgN5xf
         SgGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686763091; x=1689355091;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8E7alXFnYsjNnpR3eeRhfbBudzEGWslVHCnpWP7s+Ps=;
        b=UdUdsvQocHuZvg5qCY3P1dfNMbuiDuND1AmVlXoPqT0yD7ZLol1MFPTdLtn+65k30E
         kumXo53xvihpEgUTaKdBSPKVLpCAkeDcNf9B+xZxXQjfX0tB6Mc4BqguKeHrx39XCoRd
         dADY6prVcWkXoqvitDNtqcf9Oou3o/hMiaNRcShsPpqhAv1X0M3EgsyqvFXtx5Ew27pu
         HCQrJkVInrJ72iXrZaut01/5vRc+Ym1RZekfWCaW7NQojMDwSdndpYVN6JCbv5krwL83
         Fbf1SQ/pUbwOCauOjtq5q8q+VPOCNEEdGqRPTsr7FiODpdGRmHRGtno+RYlAncTqILNI
         ljVA==
X-Gm-Message-State: AC+VfDwND8rK8uekoRG9Qj02MIPJH3bPRe2668U7HruisNHyXytQ62mO
	YHwKa4PZI0bCPA+T6JT6v6+/qA==
X-Google-Smtp-Source: ACHHUZ75e4yY8YF/k+wmJTVdekC0yLpMAEC0vuUyrJXPr0t0Ni9R0Ob8GwayNhixL4qkK6ErxbLDAg==
X-Received: by 2002:a17:907:94ca:b0:96a:52e:5379 with SMTP id dn10-20020a17090794ca00b0096a052e5379mr14942952ejc.63.1686763091507;
        Wed, 14 Jun 2023 10:18:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id r2-20020a170906548200b0096f5b48fe43sm8149752ejo.47.2023.06.14.10.18.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 10:18:11 -0700 (PDT)
Message-ID: <8fdcd38e-7b4b-6016-2014-5d5de05c2267@linaro.org>
Date: Wed, 14 Jun 2023 19:18:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/2] usb: phy: mxs: add DT bindings to hold data line
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, jun.li@nxp.com
Cc: Frank.Li@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org
References: <20230614111548.1815146-1-xu.yang_2@nxp.com>
 <20230614111548.1815146-2-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230614111548.1815146-2-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_101813_871009_3DE8E4E6 
X-CRM114-Status: GOOD (  18.12  )
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

On 14/06/2023 13:15, Xu Yang wrote:
> Whether the data line is disconnected when vbus is not present is related
> to whether the platform data set MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS
> flag. This will provide a override from dts node if the user want to hold
> the data line when vbus is not present.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> ---
>  drivers/usb/phy/phy-mxs-usb.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> index e1a2b2ea098b..036bb58a3a71 100644
> --- a/drivers/usb/phy/phy-mxs-usb.c
> +++ b/drivers/usb/phy/phy-mxs-usb.c
> @@ -199,7 +199,7 @@ MODULE_DEVICE_TABLE(of, mxs_phy_dt_ids);
>  struct mxs_phy {
>  	struct usb_phy phy;
>  	struct clk *clk;
> -	const struct mxs_phy_data *data;
> +	struct mxs_phy_data *data;
>  	struct regmap *regmap_anatop;
>  	int port_id;
>  	u32 tx_reg_set;
> @@ -774,6 +774,11 @@ static int mxs_phy_probe(struct platform_device *pdev)
>  		mxs_phy->tx_reg_set  |= GM_USBPHY_TX_D_CAL(val);
>  	}
>  
> +	mxs_phy->data = (struct mxs_phy_data *)of_device_get_match_data(&pdev->dev);
> +
> +	if (of_property_present(np, "fsl,hold-line-without-vbus"))
> +		mxs_phy->data->flags &= ~MXS_PHY_DISCONNECT_LINE_WITHOUT_VBUS;

How did you test it? What type of memory are you modifying?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
