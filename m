Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D5ABC77B73
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 11:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhEtcEYhuDNefFXTHeQDJ6IPGjrtoHHJG//WCijSnuY=; b=3l5ebQhP7R0eVC
	USJC7VGmxE5owEYi5EMjSBSQuPxVie1ZDWjth2KV8HrSykBoDG3I4OZ09VvMlT6mWiSX5OsfsGOlH
	j1xT48BA+4VYD2qmbEgVWd7VxLJdWQLPQriS+wWe1Dy/wOBD3oDBibXqfNLGM5Ip5xSGVTE6u8aUH
	Oqw+fmA1ncE/sAT8bO/JXvWMfMsrj2qY0ss3eZgsYFAMlQeZm73FTHwK2BN7+gw4XERzEYRAsLeZv
	z/nOu5cx65sPXgjDqelfDEZwHzZxivuLIUZ8FFgjpGqEDTx6aGIlAJIbSjvHOc5HnhfclAmnzoOAr
	ak3u3/Qo47y2t895GFxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4K6h-00HFUW-0V;
	Wed, 31 May 2023 11:35:11 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4K6e-00HFSn-2E
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 11:35:09 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f505aace48so3512260e87.0
        for <linux-phy@lists.infradead.org>; Wed, 31 May 2023 04:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685532905; x=1688124905;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QPRDeF0p6jjgy8Cpp4ceEkzLB7scPmbiIq5qjOGIjjo=;
        b=VYCmJDBRYFEOj56gIq2jrRiT4F3B4rzZkLlwDmSJ9ByaZt8r0VR+vao0bUjsgPzJiu
         sYVAN6nMXsaXlyomkUwqr9u1EmifqPFVpFlUOSMu6h2M+i9bNGa753BAZC4q/q6VntKf
         7tNf1kh8nt2VYF7HDfX8SOIDjsoLuXMa7cdflsuwN8wDss4z5tsMIteaVTjpnDHDfLRn
         Ha7TAzhMI3ur3u8Qclwz4JMsJKyaKJAbWExR7GItTfnX05tG5d44CpyAy+jZsUNJK/Eo
         MvqsCk4CJZ7qBEEHf/bRs4QmWMO+Q1clGkSK6lpaVRLsf6UuLzQqL2TJzuoRGU0bZP0T
         Bw/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685532905; x=1688124905;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QPRDeF0p6jjgy8Cpp4ceEkzLB7scPmbiIq5qjOGIjjo=;
        b=KBKFTykPC6hlfvop2mlS7rgc2VVDP4+GFKfex/tGV04j5tPO+genxRBYcend1AA/Fz
         xChn8iN0aXEhmxy3aW8TLRA3RKzI2wZG7uzydaSTr2unTjh9Ga9EJ5VpraEMXuvggyhw
         mty7Oba2nFVMHeBdoqtmRLlaoDlB9zrA5qPuaMwjlkMsBpROplsK6HGxFo6jjO81HA11
         bVXdp8W79WsZP7dfmeN24jLHC82zoMvzVGh9e9+XhK/tw/0wxmkG8/VdK8P8nTNwPue/
         XS+kMbdixLnxPga2oy0/Ff0g6wYLtUVqLS+Op70I/rpbW0GIHiTRCGFuOUqsMOOoRnEK
         mmUg==
X-Gm-Message-State: AC+VfDzYIYzr3gcD43Tazw9PNBAZ2YhbKzOYUrWtlvnZ4LzOLTLLGh5t
	0OOfx/VqYtX5HBHkKvuBQs+fQg==
X-Google-Smtp-Source: ACHHUZ70sJc6ybTTIokCpbnGoWd1JdQvvd+Ap4+thRAo1gvRi4CCNyEyjdF4UkwlI1k6t4G2qvaDyA==
X-Received: by 2002:a19:ac45:0:b0:4f3:b1e6:4b46 with SMTP id r5-20020a19ac45000000b004f3b1e64b46mr2426890lfc.12.1685532904838;
        Wed, 31 May 2023 04:35:04 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id l9-20020ac24309000000b004f3b520e0adsm681777lfh.107.2023.05.31.04.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 04:35:04 -0700 (PDT)
Message-ID: <47e84a3c-b457-7aff-ad6a-809178c08b62@linaro.org>
Date: Wed, 31 May 2023 13:35:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] phy: qcom-qmp-combo: add support for the USB+DP
 PHY on SM8150 platform
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
 <20230531023415.1209301-3-dmitry.baryshkov@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230531023415.1209301-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_043508_749356_68779921 
X-CRM114-Status: GOOD (  15.40  )
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



On 31.05.2023 04:34, Dmitry Baryshkov wrote:
> SM8150 and SC8180X are close relatives. Reuse sc8180x data to support
> USB+DP combo PHY on SM8150 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
I'm not sure this is right. Downstream reuses SA8195 USB seq.

Konrad
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 33cc99d9c77d..2bff1bbb8610 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3614,6 +3614,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
>  		.compatible = "qcom,sm6350-qmp-usb3-dp-phy",
>  		.data = &sm6350_usb3dpphy_cfg,
>  	},
> +	{
> +		.compatible = "qcom,sm8150-qmp-usb3-dp-phy",
> +		.data = &sc8180x_usb3dpphy_cfg,
> +	},
>  	{
>  		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
>  		.data = &sm8250_usb3dpphy_cfg,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
