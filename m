Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1887CC76195
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IConBDP66JtiDIkDcweNFzt9Xl6+V4lhFt+rCseM6G4=; b=A12EYxLbZHtQxO
	dMGYCFcpn+uLZnU7H3eZQlh7ORA6/AQWCaQSB5Csz2bOheNPxR2Sjgvyz9m9S12kfeO6Hhll7YBTl
	2UjecDBqDBvUNl+FieyocCBOfFmEhitx61PJK7iArJKDScVbB2pO/EXmKv67/oyqTc8O0lz4eFGdo
	A9Nx8VV0l+2k+8P9/8iNmadurelpWXFIVr6e4a8QLW+Cq8ln5bU1zb7O3jJXyvg9nXAM54h6L5iWT
	R9f3joArhNdiLTH0wWq7u6QR76Grh/sLYFOHsjkOifmpNk/QNYVovddwBbQniHCbjiZkEGSGU/mK1
	o0wCwvK6CxZU6/xKd0DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghsb-00AAYX-1v;
	Mon, 27 Mar 2023 08:07:01 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghsZ-00AAX7-1C
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:07:00 +0000
Received: by mail-wr1-x435.google.com with SMTP id t4so2458699wra.7
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 01:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904415;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LCJcvP+Z4ipSD+J7U51SrtRIHsD/1ZhEytJGf8KjspM=;
        b=y/y6Aip6tlP3sH1PyS+K4slVCHdZZFJVn9ifd9b6Te8PiwQWs2cCKdk5CWdYVZoMlc
         nj/yJA+uzsIfrQwWhSoOwdRbRTkLo/VimDsvrqJTi3uycajujMKXKM4MZlCk84Pc/Zde
         5eQXgVEUSRdjcNZzuAymM7obApkM+QD31Fr664EwHXoJ3ZoZ7OpW4X68S6KHvc39CEOr
         iaNmVrJYeFVqYkabXeON4amUtktTavn3ZV0B8Ra9mAHuo4G4mo3t/i2smH2Skh2QNrJH
         1dDpZNsNQUtYCBu7EyBPWhsoBQCRyFGg+kzm9hdBZun5uNerAPf1MgWRLQ0aB50rriwl
         m8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904415;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCJcvP+Z4ipSD+J7U51SrtRIHsD/1ZhEytJGf8KjspM=;
        b=BaKXb8ILykwbVOmFMRTJzk+ACvf/jmhuQxvNwKpFSANDu72LVfxKiK9N0nhrJLp0uD
         qeS7/zFw/UdStY3dB1MEaFfjZxmoasYodmEf2JyD2MM5l7v9bqGpxapMLnYzytZEI/zr
         pPgAFKAHIOim7o+J9Rx4o4xYzn2g/h2dluN5SD1lz6Ba2Xc2sFFeHo/yQXof3SIyxhJr
         ntcMmDiqprp2oMbjV7/thlusQYLGCVYMquifsAuiu5m3ms9WTCvP+uexEirtIuhfo2u9
         lLG0ipLY9hAvTiGtAHVSMWST8x19ouK5eHwKeqTBd7YS+1MjTz8GsfYZixhuQCbES3SL
         rmKg==
X-Gm-Message-State: AAQBX9eCbSjHjUByxOadqkTquINx4qTO+MDMLjL+Adhr0iGtf3ms8kFS
	i1tmMObm8AmbY/VibVlinODQXQ==
X-Google-Smtp-Source: AKy350Z7dkpIBV7tNUgIFdtosN7C1SLklf4nt4lOUZl6M28PqUTxlh6WahG6AT5SqI3fTizZj2xlQQ==
X-Received: by 2002:adf:dc47:0:b0:2c5:5d21:7d4c with SMTP id m7-20020adfdc47000000b002c55d217d4cmr8222977wrj.43.1679904415395;
        Mon, 27 Mar 2023 01:06:55 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id o39-20020a05600c512700b003edddae1068sm7971591wms.9.2023.03.27.01.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:06:55 -0700 (PDT)
Message-ID: <812947ee-4b43-4abf-2b1f-2aa4dc5418db@linaro.org>
Date: Mon, 27 Mar 2023 10:06:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 3/9] phy: qcom-qmp-combo: populate offsets for all
 combo PHYs
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-4-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326005733.2166354-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_010659_407476_A6F14F87 
X-CRM114-Status: GOOD (  12.97  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 26/03/2023 01:57, Dmitry Baryshkov wrote:
> In order to support newer style bindings for combo PHYs, populate
> offsets for all Combo QMP PHY configurations.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index d35d80f2a4f4..5ce68d211998 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1407,6 +1407,8 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
>   };
>   
>   static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v3,
> +
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
>   	.tx_tbl			= qmp_v3_usb3_tx_tbl,
> @@ -1450,6 +1452,8 @@ static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v3,
> +
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
>   	.tx_tbl			= qmp_v3_usb3_tx_tbl,
> @@ -1493,6 +1497,8 @@ static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v3,
> +
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
>   	.tx_tbl			= sm8150_usb3_tx_tbl,
> @@ -1625,6 +1631,8 @@ static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v3,
> +
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
>   	.tx_tbl			= sm8250_usb3_tx_tbl,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
