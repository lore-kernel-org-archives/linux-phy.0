Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 771FBC6FD1C
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 09:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sZYNcuAMO90EWzpnk/11axZOJTZYFIV9hxQ5CBDXHwE=; b=336LsY6EnNdMDhd42wfu9LfKPi
	DOrafus2mu5AQLpSEOtyHo1J+ZGUbT/3egkEaID2miZRvmM66C/dQk0Xp4jzBYSsmf4W6GRsLFxeA
	mKCYdgGTiD4wojJcz+qKOwGRJzEq1PmPSaDS/rVnUigi5okZj0w2iNgUkGSJ1vxHezzduBRggtvq2
	6lEasl1s0dkcmuuJrFbT6iybN/FEI/WOZBLJfIez2qOmjPgO1PUG7oQyP8jbqSL3rfNVaGHoSEPUQ
	ra9+QD5Xm9r+EkvDTo1LjkjXlRSLfB6IiPWg/PtFx+cAWL1mBBaS+E6nWNYFyOtNJEgV9CKHc8plK
	r0Z7m7Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfH0D-001OE8-0L;
	Thu, 23 Mar 2023 09:12:57 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfH09-001OB1-1N
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 09:12:55 +0000
Received: by mail-wm1-x32a.google.com with SMTP id u1so593677wmn.5
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 02:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679562771;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=pcJdmtSJI8n1Nq4yaF0gcqHdFoOGhaeQhrSp6datg7Q=;
        b=tezoRFywjrJYM2cPo82G+050C9EqrtNYasjj5H1ILpRj5RBay2nsOggrjKWGe4qLj8
         lIgP+6tc/tjRto2YBQA7h0jgpS45PvUqdAwymVi+STSGo4kXR6KH9yc7ksik6lxNsHh6
         tCLHi+TcF4zPCwUv6nabo08VTbBxbc5ZFx62ZnnJ2ywW5X4LAClQVPutjWPNXZw45KPi
         Cqb8PJYuZULxR7ybkuPi63oRqbNubnOZ18U8agVCoNDsO8gcG2Ffq2tFtTzLXM0SYgfU
         MfI+rqF7pUpmdyczAq8YmFBKAsP1w7y+IjM1qUu/zPxSe6o84oAgyRpOwjTL4aTHDoHI
         yt/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679562771;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pcJdmtSJI8n1Nq4yaF0gcqHdFoOGhaeQhrSp6datg7Q=;
        b=B9mzBgm6MOYDmkS9NBoaT+w+yxHBjYgJNChyCRcW1Dp3oh+wyX2llYmiITlFWeXtef
         0KmwWEmd35j3l4rqxdRATn5uDlnkFMjY+BH99jL/rSmGsGhlUMpou/OkbTpsjCbejJeG
         tVrX0ASTB7G4M81DNEL/KMJnXasFklNvZKx1u75ivEHhe+ZxJJcLiQcBp4R6EFxEdmWo
         4AiAOOFhI6AcbrSwHir8OT16idENSCEvKrt9O6QS+RxZqOg8AxWDFck3OADoK/4UH+/e
         KdNUPNHnSlxdI4LyQbMy99PNMLavuisCsxnOBjBzJcv0e1sVyB+o3i9LBcO8JZt8xn9R
         wpgw==
X-Gm-Message-State: AO0yUKVjytJksQNDOj9nLW5Yr7VPpngGaTdYbSYiCM7cRWqmWPmc+g1v
	SDMw5NUnVB0KZrBZyRzqjW12p3ehapLL96jAgeJzxQ==
X-Google-Smtp-Source: AK7set+qyjI4dIR56davAs0GyezEM9aqtToFTFnrHhfYp3ZawBnpARGrcbNhyJtgjLQ9swrPeOYQ9A==
X-Received: by 2002:a7b:c4d1:0:b0:3e2:662:ade6 with SMTP id g17-20020a7bc4d1000000b003e20662ade6mr1757659wmk.26.1679562771430;
        Thu, 23 Mar 2023 02:12:51 -0700 (PDT)
Received: from [192.168.7.188] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id t8-20020a05600c198800b003ede03e4369sm1264366wmq.33.2023.03.23.02.12.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 02:12:51 -0700 (PDT)
Message-ID: <f4a85c43-a4d3-c1b4-de12-76e7781d8d76@linaro.org>
Date: Thu, 23 Mar 2023 10:12:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From: neil.armstrong@linaro.org
Subject: Re: [PATCH -next] phy: dphy: Use devm_platform_ioremap_resource()
Content-Language: en-US
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: khilman@baylibre.com, vkoul@kernel.org, kishon@kernel.org,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230323073534.75037-1-yang.lee@linux.alibaba.com>
Organization: Linaro Developer Services
In-Reply-To: <20230323073534.75037-1-yang.lee@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_021253_460361_0EF11B51 
X-CRM114-Status: GOOD (  16.15  )
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

On 23/03/2023 08:35, Yang Li wrote:
> According to commit 7945f929f1a7 ("drivers: provide
> devm_platform_ioremap_resource()"), convert platform_get_resource(),
> devm_ioremap_resource() to a single call to use
> devm_platform_ioremap_resource(), as this is exactly what this function
> does.
> 
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>   drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c b/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
> index 32d1ff09befb..6e9af79e152c 100644
> --- a/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
> +++ b/drivers/phy/amlogic/phy-meson-axg-mipi-dphy.c
> @@ -335,7 +335,6 @@ static int phy_meson_axg_mipi_dphy_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
>   	struct phy_provider *phy_provider;
> -	struct resource *res;
>   	struct phy_meson_axg_mipi_dphy_priv *priv;
>   	struct phy *phy;
>   	void __iomem *base;
> @@ -348,8 +347,7 @@ static int phy_meson_axg_mipi_dphy_probe(struct platform_device *pdev)
>   	priv->dev = dev;
>   	platform_set_drvdata(pdev, priv);
>   
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	base = devm_ioremap_resource(dev, res);
> +	base = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(base))
>   		return PTR_ERR(base);
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
