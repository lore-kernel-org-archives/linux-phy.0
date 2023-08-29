Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55900C71153
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 16:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3N9IE9+kd5crFSJejfME6gv7qIyKSJzKX3/3gwr6a8c=; b=yjqQ4LbTCBrl0x
	6Y//v4DFEXxxkJia0xlQnwhMSHI7cDtu8dc2uXED86ESe6YqjnCs9Ld6uNQGKHcCGPNgFPYqkcC/s
	/CsbcCEIi6Z9uyFjByrN0SqhRQJc7wKGUaZWcGFsnofcJIvjLtZHWFYcmCkfzisAS76ZPDTHm/fvI
	Eu4g590BkttYgjlI3O5e2wde5lxQakI7Qj3l1oTY+iP6BEcj6ZJCI25D0qv7rEE1BlXndsKGge83L
	z2Ser0dZr97q3US2x3UovNbDsPmu05Q4O0+cjV+st699+Sgu/l0zXBcDJgDrc1OTie3RI5FZEkojK
	Vn5AR7/ij+PreFyqZ4Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb1zv-00Bt6F-2z;
	Tue, 29 Aug 2023 16:55:23 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb1zs-00Bt5N-2S
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 16:55:22 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-529fb04a234so6140615a12.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 09:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328119; x=1693932919;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3BpJgivS3dlGuz7t1+9iCEke02uZzCJ683AvwGIuOoo=;
        b=tmGtO8ZTCn9K5zClsMbwhH/hKL3nvRuCXYjKmcjwde5Wwp78tv7UrrrXnc81b4MW21
         pURng7CBFFmptMmXxVGEalJfHtBIzDcPgRXVL+e/Myfsu095i34PWzY+BhIKQDDz7aax
         lTCspFt/UKeML95+kyrbtwqlGOFsEc6z2WlbMNlreIy4nNJCqxzC6bnkr1IXaVqtMc5e
         tawyC/68XUzeyaYUbRtp2oT7uq8z31mfckmw39E4NV5mnfwbLlBUP18DlzKS5gcKs+G+
         ApGPLCnqGczjxCqDmL+wGJEmPxL6kzAbPCJ1zxvgZRXMTdOdz5p5peSp9A2WkA4ciCQu
         ShFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328119; x=1693932919;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3BpJgivS3dlGuz7t1+9iCEke02uZzCJ683AvwGIuOoo=;
        b=L/r7Lrpv20OwDBSCdnlllFy/HUD78ukcCDCpOVXA0USzJGhdF1W/SR6vjhvECH7zGW
         cmSDhU8o9ObfzKMSwrzZRcYTIdsqLXJkFy9sv5ItHq6gYHVL2ueo8LaZ3AkQrQHhiDEl
         o+QAwyq93xsK3PKm/MC7Qa5eqGJbDBrwxKtvWDFw3OlVp/wV5yVcATb6n6TrJvDePEpq
         GOyF37K7g+seKRgQeC+JWo9RIsl7YOi8237cBRerQ99Rjn2eniF91Djudo+w3md8SrMm
         r+FZHV5Gge6bSQQZdzO1Xrd3Ta+pu7YiIoHFPN1CNX1tvYtGMj+EQwjb2rHFjGfwbr6t
         Fbug==
X-Gm-Message-State: AOJu0Yx2T7NtMD8vs5eDTJ1yY9NnEyqNR59dzzfag1JE+MxJ7IhKOtaa
	t/Im+T/pjHesIyM3S3shr8QJzA==
X-Google-Smtp-Source: AGHT+IF0hK7L2NbSch0GNoms7PJA7260zSeTpFfKq5naoZ4uA3lJ3h0h8FizIDcR0esq873qWjKw+g==
X-Received: by 2002:a50:ef0d:0:b0:52a:250e:a04a with SMTP id m13-20020a50ef0d000000b0052a250ea04amr15569445eds.7.1693328118928;
        Tue, 29 Aug 2023 09:55:18 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id r9-20020aa7da09000000b005236b47116asm5860050eds.70.2023.08.29.09.55.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 09:55:18 -0700 (PDT)
Message-ID: <d30742d6-7fe2-c5fe-ac42-86642acc076e@linaro.org>
Date: Tue, 29 Aug 2023 18:55:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/9] phy: qcom: uniphy: Rename ipq4019 USB phy driver to
 UNIPHY driver
Content-Language: en-US
To: Praveenkumar I <quic_ipkumar@quicinc.com>, robert.marko@sartura.hr,
 luka.perkov@sartura.hr, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_varada@quicinc.com
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-3-quic_ipkumar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829135818.2219438-3-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_095520_800470_5EF37786 
X-CRM114-Status: GOOD (  18.35  )
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

On 29/08/2023 15:58, Praveenkumar I wrote:
> UNIPHY / Combo PHY used on various qualcomm SoC's are very similar to
> ipq4019 PHY. Hence renaming this driver to uniphy driver and can be
> used for other SoC's which are having the similar UNIPHY.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>  MAINTAINERS                                                | 7 ++++---
>  drivers/phy/qualcomm/Kconfig                               | 7 ++++---
>  drivers/phy/qualcomm/Makefile                              | 2 +-
>  .../qualcomm/{phy-qcom-ipq4019-usb.c => phy-qcom-uniphy.c} | 0
>  4 files changed, 9 insertions(+), 7 deletions(-)
>  rename drivers/phy/qualcomm/{phy-qcom-ipq4019-usb.c => phy-qcom-uniphy.c} (100%)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ff1f273b4f36..7f4553c1a69a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17774,13 +17774,14 @@ F:	Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
>  F:	drivers/mailbox/qcom-ipcc.c
>  F:	include/dt-bindings/mailbox/qcom-ipcc.h
>  
> -QUALCOMM IPQ4019 USB PHY DRIVER
> +QUALCOMM UNIPHY DRIVER
>  M:	Robert Marko <robert.marko@sartura.hr>
>  M:	Luka Perkov <luka.perkov@sartura.hr>
> +M:	Praveenkumar I <quic_ipkumar@quicinc.com>
>  L:	linux-arm-msm@vger.kernel.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
> -F:	drivers/phy/qualcomm/phy-qcom-ipq4019-usb.c
> +F:	Documentation/devicetree/bindings/phy/qcom,uniphy.yaml

You broke the path in your previous commit, but anyway this will go away.

> +F:	drivers/phy/qualcomm/phy-qcom-uniphy.c
>  
>  QUALCOMM IPQ4019 VQMMC REGULATOR DRIVER
>  M:	Robert Marko <robert.marko@sartura.hr>
> diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
> index d891058b7c39..e6981bc212b3 100644
> --- a/drivers/phy/qualcomm/Kconfig
> +++ b/drivers/phy/qualcomm/Kconfig
> @@ -28,12 +28,13 @@ config PHY_QCOM_EDP
>  	  Enable this driver to support the Qualcomm eDP PHY found in various
>  	  Qualcomm chipsets.
>  
> -config PHY_QCOM_IPQ4019_USB
> -	tristate "Qualcomm IPQ4019 USB PHY driver"
> +config PHY_QCOM_UNIPHY
> +	tristate "Qualcomm UNIPHY driver"
>  	depends on OF && (ARCH_QCOM || COMPILE_TEST)
>  	select GENERIC_PHY
>  	help
> -	  Support for the USB PHY-s on Qualcomm IPQ40xx SoC-s.
> +	  Enable this driver to support the Qualcomm UNIPHY found in various
> +	  Qualcomm chipsets.

I don't quite get why this is renamed, either. Just because you re-use
it? Re-usage is not affected with old name...

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
