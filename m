Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13872C6FA90
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuvJQMRJGp5ZTe3w5LxS3RhyjB7kmYRkX4M2f9rZMRM=; b=1D5AfQvQo2lI+H
	N6hYi7iSC0NoV53y5pmd+BWHFrhoXyBP4056mnEXX+IMprQFD1WwD9kpYDq0dyELfBfnZSHQ7QEs4
	Sv+soaCCRzv4nkZlI4ZCacPzq2CzOePoaMXRhzChisRZd2c650GIPy+5UzpakSbQhHUSj5zAn6YlS
	FcabgjVaODMIF/eNczdEMSd2+KDTP09z/Be8G/HetbvT0Sx+zluIlWEGokCd+hRL23TDUsiMIXxlT
	P1izQ5He/Ys+CUBSmxYAPfU2Ru9EnFxePm861Bd6ThjzTnTjt7uomLy8wUFxzxI/sqxXfmwb4KK1X
	jW441MQjQGtJWhHQt8wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadee-004FYc-F8; Tue, 20 Sep 2022 13:51:16 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadea-004FTl-C4
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:51:13 +0000
Received: by mail-wr1-x42e.google.com with SMTP id y5so4439327wrh.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=LrxrlfgogzKxFXnVwSOeSnz3Pf0bksNj/SZqFupjFPg=;
        b=zM8VfJhUiAkb1Qb+niEHKxiCFjouT0+7xy1OYBskmZYdfToN54rUGdj2svNO06uhzu
         SST0CYwtqofGShJL0qZCk42fkute5DP+8kGlNO+mIJSSw6h8lR+k+Gc704NwPHJTcxbK
         F2QP62z4x6oJ3obznrc3PgncVkRG+ePRMTe/74Q6WeigxrzlINqmAqO09GUp5mju5m6w
         UM/5k1uQy244MscHq2RN9bZTKKnBEBCIND8yqnh9yFBjmOWIwWXuA7SznJu2xzQ/N4MK
         WqhYdd9otxZYMb+YvpwhgGawW3rhsoJjxu6KZG3VhN7LA6RRHfPEITP/5T0GdZBAhpjJ
         DW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=LrxrlfgogzKxFXnVwSOeSnz3Pf0bksNj/SZqFupjFPg=;
        b=ge4OoHOKEaUGdTiG0lNy56ZzRo+sxV4PSkcYoW4eFTVQj3suoBMJEyrW3SMTJOHjv5
         959wNp+pa5FW+vRQrJWg5O4CYimrz9Lr/KnrHC85/wL4Hlih9+jcnMYAxgzf/pWpXBFv
         qqUlIi2mxLLCucQHxyF7NIOwxgjRE55Y4SsnnzhloOBcwdmAwc5Sd1EZL0KZwBKTgWCP
         qLHTP7dm6EOMYE0K9bUkhs2PchXL6i30EFeIfgMxltqRgMTjoxjL/FyFOMPZf1+gFoO/
         fNiztJvhxzIbjWjC7ZDwZSS2+ZhZnWsn+bocFqctYLVnzYujYRzYB/xEZEby5mX7Xa7J
         0Wvg==
X-Gm-Message-State: ACrzQf0+vpJ1F2Cx9UQcXPz5PAYOaPm3mIxwe9ePM5hwP8vGmoF+G/XU
	SKmlPtmFjTZaoE8Bip+Q6Ww02g==
X-Google-Smtp-Source: AMsMyM5W/9aDbYyp8ScDfKrY39kx2CCpPiVocGA8eRuESI6Qhka1HvMz8tW8DDl6Nw/zeHL2noYkew==
X-Received: by 2002:adf:e609:0:b0:22a:a6fd:cfe1 with SMTP id p9-20020adfe609000000b0022aa6fdcfe1mr14599637wrm.0.1663681868927;
        Tue, 20 Sep 2022 06:51:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id bg7-20020a05600c3c8700b003b47b913901sm394307wmb.1.2022.09.20.06.51.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:51:07 -0700 (PDT)
Message-ID: <112a306f-0687-36c7-bba2-7cdddbb14530@linaro.org>
Date: Tue, 20 Sep 2022 15:51:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 03/17] phy: qcom-qmp-ufs: drop unused type from config
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-4-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065112_449527_C8779032 
X-CRM114-Status: GOOD (  16.61  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 20/09/2022 09:38, Johan Hovold wrote:
> The configuration PHY type is no longer used since the QMP driver split
> so drop it from the configuration.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 --------
>   1 file changed, 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 7b335b50b4a1..e5c8d3a4fdaa 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -535,8 +535,6 @@ struct qmp_phy;
>   
>   /* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
> -	/* phy-type - PCIE/UFS/USB */
> -	unsigned int type;
>   	/* number of lanes provided by phy */
>   	int nlanes;
>   
> @@ -668,7 +666,6 @@ static const char * const qmp_phy_vreg_l[] = {
>   };
>   
>   static const struct qmp_phy_cfg msm8996_ufs_cfg = {
> -	.type			= PHY_TYPE_UFS,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= msm8996_ufs_serdes_tbl,
> @@ -694,7 +691,6 @@ static const struct qmp_phy_cfg msm8996_ufs_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
> -	.type			= PHY_TYPE_UFS,
>   	.nlanes			= 2,
>   
>   	.serdes_tbl		= sdm845_ufsphy_serdes_tbl,
> @@ -720,7 +716,6 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
> -	.type			= PHY_TYPE_UFS,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
> @@ -744,7 +739,6 @@ static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
> -	.type			= PHY_TYPE_UFS,
>   	.nlanes			= 2,
>   
>   	.serdes_tbl		= sm8150_ufsphy_serdes_tbl,
> @@ -769,7 +763,6 @@ static const struct qmp_phy_cfg sm8150_ufsphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
> -	.type			= PHY_TYPE_UFS,
>   	.nlanes			= 2,
>   
>   	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
> @@ -794,7 +787,6 @@ static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
> -	.type			= PHY_TYPE_UFS,
>   	.nlanes			= 2,
>   
>   	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
