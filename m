Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0163EC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 10:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KT5fysmpPLlqeqJVO6khieMFPSIECu7eSBx/BDVifw=; b=IBF2NBFFowacWs
	XVMmxd9rJEPg1k277lcI/Ge5Pm1FXtHhMML6quqwqGBGHNQjPPcA+UpkWPi1sI2wVQ8T5JDS48x4p
	8EDtYI09JqsuW14crpqb90E0Q4Ay+g8Oi6E5vwxjejvkjorkf9prXAgOwf+Yt2F2bLFpn0QuZkXvk
	haZLoagKlPxr1B6P3QooH33woJN11rDcSDLQsPBQafssNKLFcfgww2sLno/nkyiyifpZ+hJPrl41n
	epJ1zYXt4SDP7K7XKGejGt4zdfLGBN1sj5p7vGseycdKJ3SXqFXyh9vR/6ftBsaIEo/AzcDyukoZI
	7c8DSIkDirzBSzmunQ6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyhN-00A7j8-7u; Tue, 31 May 2022 10:02:01 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvyhK-00A7hA-Ho
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 10:01:59 +0000
Received: by mail-ed1-x52f.google.com with SMTP id c2so7265839edf.5
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 03:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=wuXuqEFMaOM45MAweImWEmPgcsz8M071Y/adgguAcHs=;
        b=pE/W3vubH45QB4U57YiIZcydvn/9U9CMn92Z1D/Gq1zkOJXzGPIq7YrHLaeY3x/pRX
         EyfXFSY8HGId2irBD0zfCjXRTj1WywrVqHOXehsKwksiuqz9bxYkIMXN0aZAzuxWMe4g
         9YYTfiX/P+QeITomdIxZ1yBwZVslL7eoM6yu54GOqRxVQ9ZMOb1nHc+47hmah39JurXA
         RIobPqn+/DMO8riJ1AlROJgxWncli0O8Z3UFWl3rG7k/jb+e72VkRGME1dzaNxCP6Zdy
         MLhDdvMiKgiGOmeG2pHkoNP46EOuokyvkmePdMMqZH7z3dwIzKgS/Qwygegg37MY3EIX
         Tqxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wuXuqEFMaOM45MAweImWEmPgcsz8M071Y/adgguAcHs=;
        b=bWGsNI8ugVT6GHIkKRknWvkFcWdCt+KJerAZvhLbKzaCVrj+FRDzcsMjvQ2X0lsXsu
         s2DdHqT604NB17F6gvbrvE1GXXPPDgVaVa+1+2IaYOqnhumgv4gr7y+VVdtVrzVUAdvJ
         ZrIFlu6k7Z9OoAW0zUX3VHZ32kzfWH08TQHohifgWWlxqxwOp+1jux/Lj5YZtdcylU8l
         QaI5xdMGqsSe4F7zslxgTJlPq0fcoPxKYwJjeuyKqJd02H8525LYGkJjCBm8vC7P4oQr
         uI1S93G4S3W3+Z7u7rqTJwDt2G2WNLSahuxyBvWU632VTd2XQJGrg2fDqrEJhc0XrHFQ
         0E6Q==
X-Gm-Message-State: AOAM53021etoHGOtepQWfcNa2QHTkaMZn/XI/r0bdsJ9VOY+Ay2xDwyo
	OQFMwAmydXx6qxrwFuJdkV0XAA==
X-Google-Smtp-Source: ABdhPJwoXiymXBWrih0F32y/6OJ6LLk92Bui9PxiMJmu0glMtCsZ8SrdrCpE3Ia01wSsM1GhPQeHig==
X-Received: by 2002:a05:6402:26d4:b0:42b:6bc4:ce4f with SMTP id x20-20020a05640226d400b0042b6bc4ce4fmr44431111edd.242.1653991316803;
        Tue, 31 May 2022 03:01:56 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v9-20020a50c409000000b0042bcf1e0060sm7928488edf.65.2022.05.31.03.01.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 03:01:56 -0700 (PDT)
Message-ID: <1d8ced63-a43d-08fa-8fa4-6bf521c56bea@linaro.org>
Date: Tue, 31 May 2022 12:01:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 5/6] ufs: host: ufs-exynos: add support for fsd ufs hci
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
 <CGME20220531012356epcas5p3cd6638d4d3eccb28a28d064c9f585a4f@epcas5p3.samsung.com>
 <20220531012220.80563-6-alim.akhtar@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531012220.80563-6-alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_030158_642854_413C8D90 
X-CRM114-Status: GOOD (  13.81  )
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
> Adds support of UFS HCI which is found in Tesla
> FSD SoC. FSD also have an addition bit for MPHY
> APB clock which was not there (was reserved) for
> previous exynos SoC.

Weird wrapping.

> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/ufs/host/ufs-exynos.c | 143 +++++++++++++++++++++++++++++++++-
>  1 file changed, 142 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> index a81d8cbd542f..b3efdc4caca2 100644
> --- a/drivers/ufs/host/ufs-exynos.c
> +++ b/drivers/ufs/host/ufs-exynos.c
> @@ -52,11 +52,12 @@
>  #define HCI_ERR_EN_DME_LAYER	0x88
>  #define HCI_CLKSTOP_CTRL	0xB0
>  #define REFCLKOUT_STOP		BIT(4)
> +#define MPHY_APBCLK_STOP        BIT(3)

Inconsistent indentation.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
