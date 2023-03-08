Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D953AC678D5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 10:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdH3+kQStCUL62+ZQM7EbduTvE6oADVzr1g6Hi6tmJ4=; b=zcyTRccjWxYdTg
	4Gwut9MASW0K+8Id1VyYkWnQ0n9Jg/lhpbrvDWNArBOU00+LfHu1rT1Q4oRRpCM08bnK6BdCU/oeq
	Ge4Vy1H6HvUi6T3IgZ5GK1WrptoOmdSLH2b0NMHvfKYC2pv4IGF1MJmk9G/STuOA2uuqgUHqj8CY5
	cxfj9Zfe/f6WQpUM8yQmtBEXzDHZsIKqfPsAHGGTS0aScCn1uVzXrQKITWzaDjeRkBAeWuFWScBH+
	DtkKu8A+oiCTNi3wlHjwB/ZI9LGFtNGfrnnw2iggfrS/bQ6PAikJewgMaowJzcmMNftK+oMkjbZeN
	dqiAByC9l9z4Vbo6KQlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZqkC-004Lix-Af; Wed, 08 Mar 2023 10:10:00 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZqk9-004Lgc-LP
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 10:09:59 +0000
Received: by mail-lf1-x135.google.com with SMTP id j11so20563121lfg.13
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 02:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678270191;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=48aNbwgEHUhRck6RQPE3THIY0DWr0lbu5a/+Lgdggd4=;
        b=ZpIS/ppyxfpXVtWdulOE8xfF9Trl8FC1LTCOGkEGgcYDHAzfMZ0atkilaKPxpJvAWN
         8/r5IBkuBVTlKiuk/0IvmuJAe/0NNMQYwsfpqBSj/aON3fvWkOMzOyYK+HPszgxKdE8O
         WLY8W94YzAgaMh+USZUe+iWyNB5gTgdpKEs5GIqQoPXHWoze4mRx0MVGcnXcu2/LVKv0
         vJaRoJcdxIvGFklGv398ovf9T0BKN+aEFVYbpLH1xzZV3oUIFlzD9m0AAWBOP5G09DxY
         sMmb9q7McAkQUVwwtQ/fJfjkAFsllWEGOgB+ey8DZ6yJB62xIjqCpKEBBQ7FNgx1+nRn
         ldTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678270191;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=48aNbwgEHUhRck6RQPE3THIY0DWr0lbu5a/+Lgdggd4=;
        b=zzm8cuO8DBFJrXaD3nBCMbP5if5UYkxcc1KL5DtIZQA8NC3IcGJhKIpyVgu0h7CF47
         B5LIMFsjSSoUMSA/ZEJnhMs4smV51NZEgeQLw7ZfW7kX5zgEMqGm11A5uoNW2FyyDPOS
         bpcOMw9UqAKgFrF/FeLhoROuysxK9ebCPaBmzZwLkgnsG/eqP8e2JGcAg+6nwJQS3X5V
         3hAbcZh2AAWgUI4vQ5GrxKG+Wp95iE+/hvFDHgXKheqq5RGhCv59ZyMhjTVL4NZHde/T
         IsxtopDbt2iZOW+Zd0vZq4OkUNstqOtOdVFNX/Fnodtl5dRLEtWoAtd9O8OgsAKMY5Oj
         Sifg==
X-Gm-Message-State: AO0yUKXajwfteuUweFHbOk0OX/WNyATnARjeeMias48fZiXZx2Ek6Wwi
	ybOsRDtzjmJ4A4rQDfMMPTUcXQ==
X-Google-Smtp-Source: AK7set/s4WTptWdpKAuGcr/1Ufve3MJkvhM6ta3Z9PV0H8GqEWXsPUHjTWDVZBqRuABACPYawiXzmA==
X-Received: by 2002:ac2:558e:0:b0:4dc:852d:9b88 with SMTP id v14-20020ac2558e000000b004dc852d9b88mr4906462lfg.45.1678270190690;
        Wed, 08 Mar 2023 02:09:50 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id d21-20020ac25455000000b004dc7fe3a2d3sm2283801lfn.135.2023.03.08.02.09.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 02:09:50 -0800 (PST)
Message-ID: <25c17af5-8f6b-a2c3-dab3-f9bc69711db7@linaro.org>
Date: Wed, 8 Mar 2023 11:09:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v7 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
Content-Language: en-US
To: Lux Aliaga <they@mint.lgbt>, agross@kernel.org, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
 bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
 gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
 martin.botka@somainline.org, marijn.suijten@somainline.org
References: <20230306170817.3806-1-they@mint.lgbt>
 <20230306170817.3806-4-they@mint.lgbt>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230306170817.3806-4-they@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_020957_744836_8CA05705 
X-CRM114-Status: GOOD (  15.76  )
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



On 6.03.2023 18:08, Lux Aliaga wrote:
> The SM6125 UFS PHY is compatible with the one from SM6115. Add a
> compatible for it and modify the config from SM6115 to make them
> compatible with the SC8280XP binding
> 
> Signed-off-by: Lux Aliaga <they@mint.lgbt>
> Reviewed-by: Martin Botka <martin.botka@somainline.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 318eea35b972..44c29fdfc551 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -620,6 +620,13 @@ static const char * const qmp_phy_vreg_l[] = {
>  	"vdda-phy", "vdda-pll",
>  };
>  
> +static const struct qmp_ufs_offsets qmp_ufs_offsets_v3_660 = {
> +	.serdes		= 0,
> +	.pcs		= 0xc00,
> +	.tx		= 0x400,
> +	.rx		= 0x600,
> +};
> +
>  static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
>  	.serdes		= 0,
>  	.pcs		= 0xc00,
> @@ -693,6 +700,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
>  static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
>  	.lanes			= 1,
>  
> +	.offsets		= &qmp_ufs_offsets_v3_660,
Will this not trigger OOB r/w for the users of qcom,sm6115-smp-ufs-phy
which specify the regions separately (old binding style)?

Konrad
> +
>  	.serdes_tbl		= sm6115_ufsphy_serdes_tbl,
>  	.serdes_tbl_num		= ARRAY_SIZE(sm6115_ufsphy_serdes_tbl),
>  	.tx_tbl			= sm6115_ufsphy_tx_tbl,
> @@ -1172,6 +1181,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,sm6115-qmp-ufs-phy",
>  		.data = &sm6115_ufsphy_cfg,
> +	}, {
> +		.compatible = "qcom,sm6125-qmp-ufs-phy",
> +		.data = &sm6115_ufsphy_cfg,
>  	}, {
>  		.compatible = "qcom,sm6350-qmp-ufs-phy",
>  		.data = &sdm845_ufsphy_cfg,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
