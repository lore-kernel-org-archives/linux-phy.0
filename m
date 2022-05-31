Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D93D1C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xwq0Pdp72ICTjpXsbeUtf2jiNiF576EMUzMwc6VgBo=; b=ge3F5yv8MoC6FI
	380SAmS9KYSmm5uyfQOrPh17gxrAJNwQDmtwaNXWgqOGMFvXV05KhOJN8nZayftxVQszqpDoL1643
	F7GZMy32pkPunM77Upb2IhOdAFj+S142HXF7Jw7FT0xBO/pCG85y8guGNexEfFb7dsnGvsssGIBls
	sURkXQj7ovsTkDCoezP0xDy7OOy1sJq0N9CwlUSSsslIX4uF3/qbyfxPNGi+ohkCRzmEjVO2pV/o0
	P8bCeReyDgkKghrEVQhjYeNfJyvSwYMrbWRyjE5XnTz1krBFSel29VhTOxbWeM6XhdFMhet6wAFnT
	C71JIv5RzNNQST09RShA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvybx-00A6Am-9c; Tue, 31 May 2022 09:56:25 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvybu-00A6A3-RL
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 09:56:24 +0000
Received: by mail-ej1-x62a.google.com with SMTP id y13so25587829eje.2
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 02:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IjUcMygO4GTAkhw44QoQ4UMULc/veIYWgYx1C+Vi5DI=;
        b=DrO53+KoaAbpjvnulJ4LTgaRPx/eeEbBZXLaOoN2g5+l9BDpVsZsXr/R2ddAmikqpp
         l2GtpHPLgkG7swp63Ht0PeK5wwPj2mg+o+W5LKEizccre+g6h9zzkscRUqJa8hNuWZVJ
         U+GBvers5NHvax767zsSt1O1Vacx7rkQ7znGZXrjB3vuTPa4h5A9VvKkb25f/SvxlklE
         LoQtSII7rAllU0bWi66hlmw+xYOqF1WJRS5pbC/f7/qyGx10Mi4CSKaRUxco5qaZ8r6p
         /F20RUaKv2ZafTD57+WfBP3EA3felTPvkpHjczoHvPNL3HdFAXzm549kjdpUm8cfye9S
         pBzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IjUcMygO4GTAkhw44QoQ4UMULc/veIYWgYx1C+Vi5DI=;
        b=JgaOgFDYPk4ZDInTYdrZXDxjBcFYAmZvNBgaF3xkNUbMhEAVwgwqojacdQLtnd3cpj
         sbbwxKs9XX/vd3Gw3S9B2rRIQrtXpBmcdLXqD5h18aoqgifiV9eFagG9FkjTpDH0owN7
         7PWudIuMF9hViQsCGIGWc5KxbWPXMxaxLpKypmST1BxsgWsgOfG8jIoipUxmudAB5dOT
         gKdsrboBkWfAx8AoKyH1SBFIJ7x45frlhO0P8cpt4PREUAYVvvzS3Jnbyo6Tg2C2zA6K
         tCShlRCnJJJks4n06GOH8BgIFgVrlnrSSx4i+p9UKqA+WWV79vF87Ugz221mzOmw65+V
         Ixug==
X-Gm-Message-State: AOAM531ZwoXtSbaqPsy+cucsigW+01+32nL+PudlET3cKuHkH4BZaTYq
	LPQlAhqDeN9AF9Dk6BLJKUGjWQ==
X-Google-Smtp-Source: ABdhPJwByf9S4EVKSk87YILqPFVu3WlNurAiBi0GrfnAmMVvKxUAQqaXetU6Xqd1cWv6fejDbS9ddA==
X-Received: by 2002:a17:906:6bd3:b0:6fe:8c20:f218 with SMTP id t19-20020a1709066bd300b006fe8c20f218mr52262411ejs.32.1653990981278;
        Tue, 31 May 2022 02:56:21 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ay21-20020a170906d29500b006feba4ef020sm4728945ejb.180.2022.05.31.02.56.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 02:56:20 -0700 (PDT)
Message-ID: <e92618c0-056c-5854-9bb3-5fba90a82d96@linaro.org>
Date: Tue, 31 May 2022 11:56:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/6] phy: samsung-ufs: move cdr offset to drvdata
Content-Language: en-US
To: Alim Akhtar <alim.akhtar@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
 bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
 pankaj.dubey@samsung.com, linux-fsd@tesla.com,
 Bharat Uppal <bharat.uppal@samsung.com>
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
 <CGME20220531012341epcas5p19b15b4916b210687ab6b46d6da0b2273@epcas5p1.samsung.com>
 <20220531012220.80563-3-alim.akhtar@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-3-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_025622_974891_B6EE8EA1 
X-CRM114-Status: GOOD (  14.21  )
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

On 31/05/2022 03:22, Alim Akhtar wrote:
> Move CDR lock offset to drv data so that it can
> be extended for other SoCs which are having CDR
> lock at different register offset.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/phy/samsung/phy-exynos7-ufs.c      | 3 +++
>  drivers/phy/samsung/phy-exynosautov9-ufs.c | 2 ++
>  drivers/phy/samsung/phy-samsung-ufs.c      | 3 ++-
>  drivers/phy/samsung/phy-samsung-ufs.h      | 2 +-
>  4 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/samsung/phy-exynos7-ufs.c b/drivers/phy/samsung/phy-exynos7-ufs.c
> index 7c9008e163db..d1a37273cb1f 100644
> --- a/drivers/phy/samsung/phy-exynos7-ufs.c
> +++ b/drivers/phy/samsung/phy-exynos7-ufs.c
> @@ -11,6 +11,8 @@
>  #define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
>  #define EXYNOS7_EMBEDDED_COMBO_PHY_CTRL_EN	BIT(0)
>  
> +#define PHY_CDR_LOCK_STATUS    0x5e

This should be now renamed to match other defines here, so
EXYNOS7_EMBEDDED_COMBO_PHY_CDR_LOCK_STATUS


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
