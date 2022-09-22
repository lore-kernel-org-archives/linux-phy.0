Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09BE7ECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JqBsGqlWYWIPiHn4VHotGuzWNGzFujEcKd7ucuR+mMU=; b=4jV9UECFW9wNga
	hhi86uOFim1Lp2W47hvuJgcPaeoeLRlRVZi2A7LjqLydR6g/UJ5U3JVOTOzOzNMDdNoGH4weZNdbt
	R6FHvOV7mK3SK3WwpE3RTbEQfL5J6nzVxjs3TBOCFDonDB0FLsbpd4Lt25FD3JNl6LZmD8PnLhdV/
	X8PFfxTxTrY/Cf+TplMvgFbWo+4kUu6UqcnDfgqFxbENqbGsN5xjJ8EqjQ4HJQOLZkCYy0Pt7zzVW
	sMm2WIzl20HxOKyN8xocNqx/mPrf5DQagIqabPlLHIbl6l4V8bwsGboaq0wx/liocq+iBavWnj08P
	atfWoKJyD+7c07amgaZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQWn-00HCt5-BL; Thu, 22 Sep 2022 18:02:25 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQWk-00HCrG-Dq
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:02:23 +0000
Received: by mail-lj1-x22e.google.com with SMTP id x29so11958301ljq.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=2ykei3W9LQd1RzBfuNAPmmjbg1pi4i2oQK8s3yOPURE=;
        b=Fyk3AqDThJ8EGj7FSaldRI6IowkrpiZevbhXo2BiH5oMLJQdzO9NAyGGNtgkrO/h+8
         hbfhotTECYP/YlelL8KHDjVFerOtlXEAmLM0j4L48U0Ngd9DLHegkGkbg37tmR4oKmii
         NRgkJx7jVHZkThHncpYJptaWog1wnuJW8FAxwthqxfnkhhz9C4qybKPVDyyI5Eqx2bzb
         6j5x2jfvZw+4WLEvEKX2rMBLEOIE18D1G+NxPGgaaLBN4AfKKTZ2wAht4/a23+nHyqzs
         B5P71dc72QlmVXC8eAlgNn+y0pYq9TMgbhBXy+s5R4DRrdiarMKL5kBF2rDSyzF6DpiN
         ey5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=2ykei3W9LQd1RzBfuNAPmmjbg1pi4i2oQK8s3yOPURE=;
        b=uDW+BHCW9GqlUDyffA5ytamDy/51YO6U+mQ51QLVHoYkRcHCUtAR0lVQr2iM+XsZYO
         GDTCzqxYohwHj6AuanZ/O1zuNBj9o8Gy6u1Zt5G05gYXt5NL9yjrlyX8JPVytcV0NuEc
         vuB7sjOtV4Sj1EVJihnYILLHkB9crP7wx8OYJTY2kKGM0LbPYpA7BBsImbDPozSmbKHV
         1zTbD1/hI3klchxcr+ek5e1B8qCf2R+SdFDwQjtuT82JtpirTXbJkD1TsDEg9chxoAeD
         wA5wNwwOMQt/mE29tPKc8Ng3R4Bfi2KUkvaf2dgZILcCvI5tZJYmxACdYNnC3lL45LLT
         YAkg==
X-Gm-Message-State: ACrzQf1ena830JLSY9+uG6h8+zYxzPOgeTtwYyYEu50hH3Gz42BkgI8I
	WNstQCE9HCx3JH2QcwVqwWrukA==
X-Google-Smtp-Source: AMsMyM5FLpAMmuNQHjmlmpFYMpp5Q2Pd37Fauoc4Ihu1kvKrSaKiLWQowiY27QVdhozOHJdQ7i033g==
X-Received: by 2002:a05:651c:a04:b0:26c:50df:75ad with SMTP id k4-20020a05651c0a0400b0026c50df75admr1519340ljq.416.1663869741075;
        Thu, 22 Sep 2022 11:02:21 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e2-20020a05651236c200b00494791fbd80sm1029715lfs.307.2022.09.22.11.02.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:02:20 -0700 (PDT)
Message-ID: <8a0beaad-2eb8-b5d5-28af-f44285644ff5@linaro.org>
Date: Thu, 22 Sep 2022 21:02:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 16/17] phy: qcom-qmp-usb: consolidate lane config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-17-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-17-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110222_494074_BCF00E8F 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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

On 20/09/2022 10:38, Johan Hovold wrote:
> For legacy reasons, there are two configuration parameters that appear
> to describe the number of lanes a PHY has, even if "nlanes" was actually
> used for a different purpose.
> 
> Replace them both with a new field simply named "lanes".
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 52 ++++++++++---------------
>   1 file changed, 20 insertions(+), 32 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
