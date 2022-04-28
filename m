Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B98B0C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 28 Apr 2022 06:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHkTDbuYe8BKskvEtWRrrdtc4q+iS7C1Uifp5N6nvQw=; b=YVDAUk4bdTejwx
	FFoNUdMhGd9ZW6G9W8Zi472SskTMg49AKyqd6ZqLWR4uva28cVZ6BCFMJD4oG/S5pquUQX3THDsv2
	9S0S/MKiW++uB28CbDnBfrxGJiCBfvN54XqYVncccKfMQmP0zxzmuIMtbEt6VeQmM9c7btbA03BDC
	dl/xXjJu9npWJCe23REDVgZRbTDKCfFvTccH1XGS+4hwZygnH78g9+siu0JeMa7Z5SruWDyAQH3M4
	uPhOyXr66/E83O5e+yVgr6uTbptY7L3ZVtmDgsALfXfnAF2h+m1hCoZnYyQXvmz8b21jYFmDjEAuE
	dGpNFFJA7vU5/+K5PPkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njxik-004v55-4e; Thu, 28 Apr 2022 06:33:46 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njxiU-004uyA-Kc
 for linux-phy@lists.infradead.org; Thu, 28 Apr 2022 06:33:32 +0000
Received: by mail-ej1-x62a.google.com with SMTP id bv19so7532865ejb.6
 for <linux-phy@lists.infradead.org>; Wed, 27 Apr 2022 23:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=rozerKyB/C5qipfTZh/u0vAMNYveH4wCpbPpnEpmk5I=;
 b=jID8SkbjZdvNaCihTEHL+AMMFHP8eC2RUy+QYH0Cg2l71tQhaM/iWrNs7C5o3qDqxn
 bTv0i80aWbxxhIhvo6sNhYWidErZNyr0Bl/0H3H3TrZU28SyaXVryV8u/yrRMoz2f1iU
 O+WdtZPfP1+TyhT74jiQXnp8JZ1SQiklm9FxMG4QOoFPLPYoDBWtJ72jj9V+PormGVKK
 22OZ/GCpaIrPvsQFU6ORR2C5qmbnmsDRkTPfYDmdhXKnzVpx30c+TMcFv8mxeNvQ6xqe
 FGR9qcp8WNEBl9yAS7LyYOGBXZoQVziny4iH/LB/EpP0ut8Z+PNGfSYBVmUhSAcctIri
 SYPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=rozerKyB/C5qipfTZh/u0vAMNYveH4wCpbPpnEpmk5I=;
 b=kmEb9JjV4BMS4IrYkwecD7pAeSeUB9osyLwRjSvKD12//aCZ3IjjgmMZW+0IFed22y
 4vFZRFpdTZs26zcuHzKjkHLGk4wbU3hcaxPmU2VH8vWfyj85EXyPNVhOcxRbr4GJ6kA/
 bmtf/Nmfej+Rk8FzcaCT2MaY9nLHcL+AUV2KV4KH6SsP3e4W4CmIjvnNuCgV7te1TmN7
 xf2giSKUsy02F7euTfze27JH5P0pHdOgIWAXS6D2R4tpNmOnAL4MwyCd0ZIwutXiLk2M
 fDWxX5rx8hmV+Lspa3sU7Rv6KjVDO91Rk+MJrFpCY7x9VV1DQRuZmKgVRTVMMbvu/1hv
 y9cg==
X-Gm-Message-State: AOAM530S3gVx5tTA8G7fB8Gcp0aXqEFD6JLq7AdZ4OPHzFyKVdaH6Rb9
 1G+0BCepK9qB1R9WyS64owoA5A==
X-Google-Smtp-Source: ABdhPJx80NdRMCudydCbEj21NDTT0qWVklkeluJPZzk7stNXaL45hh7VHzsiVKCWV2mZ3JL3lXSYaA==
X-Received: by 2002:a17:907:6d83:b0:6f3:adf4:9817 with SMTP id
 sb3-20020a1709076d8300b006f3adf49817mr12821838ejc.491.1651127607580; 
 Wed, 27 Apr 2022 23:33:27 -0700 (PDT)
Received: from [192.168.0.159] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 s8-20020aa7cb08000000b0042617ba638csm966354edt.22.2022.04.27.23.33.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 Apr 2022 23:33:26 -0700 (PDT)
Message-ID: <fc26c920-2eb1-3324-227d-d347304002d2@linaro.org>
Date: Thu, 28 Apr 2022 08:33:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC/RFT v2 02/11] dt-bindings: soc: grf: add
 pcie30-{phy,pipe}-grf
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?=
 <kw@linux.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-3-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220426132139.26761-3-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_233330_733690_98E886A4 
X-CRM114-Status: GOOD (  13.36  )
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

On 26/04/2022 15:21, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add compatibles for PCIe v3 General Register Files.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> 
> ---
> changes in v2:
> - add soc-part to pcie3-phy-grf
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 3be3cfd52f7b..4564ff0bfd7a 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -14,6 +14,9 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - rockchip,rk3568-pcie3-phy-grf
> +              - rockchip,rk3588-pcie3-phy-grf
> +              - rockchip,rk3588-pcie3-pipe-grf

Order is now messed up.

>                - rockchip,rk3288-sgrf
>                - rockchip,rk3566-pipe-grf
>                - rockchip,rk3568-usb2phy-grf


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
