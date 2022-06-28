Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D84A0CCA479
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 14:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2nI5tQCLKXoVU2IBc3ple1VhfGj9XMvWF9gHvpm0yw=; b=jR5qJAJ6mtd+Iy
	iYlpgnfrPEmmA5xEHoUTgCEjdr94r9icXzQ0Li0nRO5KhXfSfNp5YUXs24mlAoz5yY8+NNL0Cltef
	zyP1C7x7exFJi9TN7ACg6ySQMyxe7Vcjoq4ULRy6X8IW1XMeU0OaXX1GKObFDBc6CiTgcjdWt882R
	6yW43bsj7oniaDsSAcmdIgu2GZPnxWSyvUrvFogxQCKYEURJRronF+pTlxhtUcK+dSILZIibW5Vnz
	YZ8rlniUkkEvlvfj8hQ43IXDwwBftdavktCG+8Abo7OyBGLAfNx/+afaYQBYKOVsNcsFRtcmZuYYc
	bovLx76ztlh2vmiQ2vQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6CIq-006jdj-5L; Tue, 28 Jun 2022 14:34:56 +0000
Received: from mail-il1-f177.google.com ([209.85.166.177])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6CIn-006jbL-GM; Tue, 28 Jun 2022 14:34:54 +0000
Received: by mail-il1-f177.google.com with SMTP id p9so7996992ilj.7;
        Tue, 28 Jun 2022 07:34:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dPoxK7UkWIzbnloX5xnrgOb8urdj87dNhnlew5jmd0o=;
        b=oldfzv4UdMlH9ESY55neqqROusumk4G9JdbVC+qS2RdZgSwoAsjbBEEyVsPTXPdSAf
         Tutf1QkQofe8ENmp7xdA6k4F7yB72Iuzak/yY8GEDIAfBIhbw0i5BoJN8jpGa9rbZb46
         l8owKCD/yo9v5TVVoXj7NhQadlXNLgI0kqkdinCd1OheAY3MujfZfMpfKuIDoftV2Iks
         qHdCgc5rco9DOfh2hlZN5JjUnDa7CVdG5MEURQsJPLLWEy5HeRbK4w3WWojkU5nOdFpG
         +nzxGxLQeKsOe88V5J5KjnxET/TsWSwD7x5f/MrcF2SDCpj9r0+XnyaOzbe3gLIoOz1v
         4Chw==
X-Gm-Message-State: AJIora+paorcfli+j1rYLP0153c6ydBvtXz9OG2i5bNrHbZ5APSv+4tc
	vEQPsFKtsJ/U68m0iEZwI5sMa+z0Yw==
X-Google-Smtp-Source: AGRyM1sqlSTD29iR+cokrJ7VsHr7ygnsPazCCSJ7aALbsqgWguXFu7/DtM1Nu49DwQM/Xg4WbV1UTQ==
X-Received: by 2002:a05:6e02:1525:b0:2da:b0b2:61c6 with SMTP id i5-20020a056e02152500b002dab0b261c6mr1831621ilu.198.1656426889998;
        Tue, 28 Jun 2022 07:34:49 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id g9-20020a028509000000b00339de094a02sm6135879jai.172.2022.06.28.07.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 07:34:49 -0700 (PDT)
Received: (nullmailer pid 421663 invoked by uid 1000);
	Tue, 28 Jun 2022 14:34:47 -0000
Date: Tue, 28 Jun 2022 08:34:47 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Joakim Zhang <qiangqing.zhang@nxp.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, netdev@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Dong Aisheng <aisheng.dong@nxp.com>
Subject: Re: [PATCH v9 11/12] dt-bindings: arm: freescale: scu-ocotp: Add
 i.MX8DXL compatible string
Message-ID: <20220628143447.GA417671-robh@kernel.org>
References: <20220607111625.1845393-1-abel.vesa@nxp.com>
 <20220607111625.1845393-12-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220607111625.1845393-12-abel.vesa@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_073453_564914_8DA51039 
X-CRM114-Status: GOOD (  15.21  )
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

On Tue, Jun 07, 2022 at 02:16:24PM +0300, Abel Vesa wrote:
> Add i.MX8DXL compatible string to the scu-ocotp bindings.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu-ocotp.yaml        | 2 ++
>  1 file changed, 2 insertions(+)

Why are you adding this patch which adds a dependency on v9 of your 
series?

> 
> diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu-ocotp.yaml b/Documentation/devicetree/bindings/arm/freescale/fsl,scu-ocotp.yaml
> index 1c2d2486f366..73c9bd16ec35 100644
> --- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu-ocotp.yaml
> +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu-ocotp.yaml
> @@ -20,7 +20,9 @@ properties:
>            - enum:
>                - fsl,imx8qm-scu-ocotp
>                - fsl,imx8qxp-scu-ocotp
> +              - fsl,imx8dxl-scu-ocotp
>        - items:
> +          - const: fsl,imx8dxl-scu-ocotp
>            - const: fsl,imx8qxp-scu-ocotp

This doesn't make sense. Either you have a fallback or you don't.

>  
>    '#address-cells':
> -- 
> 2.34.3
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
