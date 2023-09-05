Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E823BC83F2C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Sep 2023 06:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvEtkKKshWVsTQjfOCy1O2ZaV2xypUaNl2moX5c2yxk=; b=K3qrpISTdssnYt
	Xr+1jzgcu2oBeZvexmFXTp7JC+r+2lciP+xkq2NSHaHABIPQVwjy77HiKrlYChZI0xuvaLOWkUV2J
	T26oeq0vjPPuKuWipQnhlthYmMb93mB4DWYdN+F0Lftyks09EOnS7XR3Pat+LowSAS7nLdJbjx+s8
	SKlo6dlOEl9Hw1Y3pd77074fBvZIEQ7NQzWxfAjduIa5HXpHwDpGjS4GQe1bbw37jJPp0t4SPqR7x
	xuIp7B04caPez6SlYoCGjQwQTLDhbuNoa+jnT8tW2gaXFrSl4rtO0FxlnXyCHD6VNPC3azha4cevW
	Lxpc5R2XqqZ0mwIs6evA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPwZ-005Mi8-28;
	Tue, 05 Sep 2023 06:53:47 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdPwX-005Mh7-2R
	for linux-phy@lists.infradead.org;
	Tue, 05 Sep 2023 06:53:46 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2ba1e9b1fa9so34616121fa.3
        for <linux-phy@lists.infradead.org>; Mon, 04 Sep 2023 23:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693896823; x=1694501623; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Izf9D/2+QCxj63n+3E1FgS/vF5uxnLmMdD6owrWKaTI=;
        b=SKXFgqC4DHrqNwumKWJDntoTwZBhmqK+JbfmjrrghdD7sGsQjaXU9ydzvC9cEmMWoU
         h0PhxxfZQy3KTM9visRH1uaLnzOkzr4Go7EqtGzs39lKzcbjoXpin/5HPwesWIEgT/25
         C7IUe/FhEi8Q2OoB7sli3d1E0ENFajrimIwtNK6jd7N/CpCeLIzr6PGr8/467/nujoKO
         G6OwHoMAQPp9BJlCLgLuBWhI1cvpAvvxtrWwsR/jta1J8jHhVD+hPy5zYqFoKTJj8teD
         ioKdmxMfNH5pZLqlKRTNQiPtHs4qLZaXOrckOW5r2s6ohBoYc5uD44QCK1pcLq3Cmw34
         2dkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693896823; x=1694501623;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Izf9D/2+QCxj63n+3E1FgS/vF5uxnLmMdD6owrWKaTI=;
        b=iFTNfRaqTKDH75KRG6kXD/5PJJyDvzRrzcAh54kV7Zm+FrCmK4KFNbv/L7cF6dAzPy
         j6XC1gBi5aIfx8WFebrbVvrni1uPrDh+SZPUuJu3t/c7If/kdmjGTfBJktY4pVo/YZov
         2wknL6DtVb+5zaOAIYtFqo3oQW3kcVe9OFM+R2xg+avCh8xRxHqU4dGZ98qnfOVh1Qrs
         BZeu9y0rne5WoqgLFZrTNK/cM9WhzeTxg86mCyslJwbx3piCdM13xsqLflCbA641iXyk
         DfK+g0Z0+/mWTFCRTTlkyHew1871mXERQkpNl6+tHK9mKxttwBz/B1Tv5Tug5jnnTdWQ
         ez5w==
X-Gm-Message-State: AOJu0YxRdkBqu/jIcseYwTeqvtj1znrmKMVcgE0dy1rA+BKyO035/sdi
	1sD5fOKjEG0HzSMJmFCCsRP1gA==
X-Google-Smtp-Source: AGHT+IFpYW2gPZ9YVcWIrdDgHaIlEODhpL1a8LmUe3Zf9ieJIDPP1nIiNG/9Jz9wjz5FFSW2ODeJJQ==
X-Received: by 2002:a05:6512:b8c:b0:500:8725:1351 with SMTP id b12-20020a0565120b8c00b0050087251351mr10635688lfv.47.1693896822729;
        Mon, 04 Sep 2023 23:53:42 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id w26-20020a50fa9a000000b0052a401d8ef6sm6759359edr.71.2023.09.04.23.53.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Sep 2023 23:53:42 -0700 (PDT)
Message-ID: <f49b9075-93b7-6f4a-ef80-543bd5b497e2@linaro.org>
Date: Tue, 5 Sep 2023 08:53:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 5/5] phy: qcom-qmp-usb: Add Qualcomm SDX75 USB3 PHY
 support
Content-Language: en-US
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, abel.vesa@linaro.org,
 quic_wcheng@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel@quicinc.com
References: <1693889028-6485-1-git-send-email-quic_rohiagar@quicinc.com>
 <1693889028-6485-6-git-send-email-quic_rohiagar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1693889028-6485-6-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_235345_791679_3F6DE243 
X-CRM114-Status: GOOD (  10.70  )
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

On 05/09/2023 06:43, Rohit Agarwal wrote:
> Add support for USB3 QMP PHY found in SDX75 platform.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---



>  
> +static const struct qmp_phy_cfg sdx75_usb3_uniphy_cfg = {
> +	.lanes			= 1,
> +	.offsets		= &qmp_usb_offsets_v5,
> +
> +	.serdes_tbl		= sdx75_usb3_uniphy_serdes_tbl,
> +	.serdes_tbl_num		= ARRAY_SIZE(sdx75_usb3_uniphy_serdes_tbl),
> +	.tx_tbl			= sdx75_usb3_uniphy_tx_tbl,
> +	.tx_tbl_num		= ARRAY_SIZE(sdx75_usb3_uniphy_tx_tbl),
> +	.rx_tbl			= sdx75_usb3_uniphy_rx_tbl,
> +	.rx_tbl_num		= ARRAY_SIZE(sdx75_usb3_uniphy_rx_tbl),
> +	.pcs_tbl		= sdx75_usb3_uniphy_pcs_tbl,
> +	.pcs_tbl_num		= ARRAY_SIZE(sdx75_usb3_uniphy_pcs_tbl),
> +	.pcs_usb_tbl		= sdx75_usb3_uniphy_pcs_usb_tbl,
> +	.pcs_usb_tbl_num	= ARRAY_SIZE(sdx75_usb3_uniphy_pcs_usb_tbl),
> +	.clk_list		= qmp_v4_sdx55_usbphy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= qmp_v5_usb3phy_regs_layout,
> +	.pcs_usb_offset		= 0x1000,
> +
> +	.has_pwrdn_delay	= true,
> +

Stray blank line

> +};
> +
>  static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
>  	.lanes			= 2,
>  
> @@ -1985,6 +2141,7 @@ static int qmp_usb_init(struct phy *phy)
>  	void __iomem *dp_com = qmp->dp_com;
>  	int ret;
>  
> +

No need for this.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
