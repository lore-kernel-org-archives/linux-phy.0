Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C861ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYqvIKdYQdgFoV86hzJr1JL13LyBtupdrdMgeEBJ5yQ=; b=BrrpEQIntmktF/
	V/0Yv4Gre01aTWJ9I1eKZKuIww8mmS6/aAxOm7tCDrKGhfMq95u7Ja5Am4Vfundipg1wslWLkYkOM
	DDvq6y6LReymS7DzXGgcQwoq/McoH9BUhDfNpL7Ix7d9dVUgkQuuTod6IinmQDD3LLI2bpUYKYmtt
	f95C5tRVlvroaceUkzowli+1wcTgAZWFUVfsWvGQS5nkPVWOi74yk/bHMgDHU+0A893CYbSIgIMVG
	hwOPFFEh87VOpZcArU/uJbRLed/ZIgzQ2Geo8swJQWQiplezp3PK8G7R1xKvrMoqihobibmpLazsY
	SwU01j0rniva2jyNcMrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaa5-00F8Vj-EG; Fri, 09 Sep 2022 09:45:49 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaa3-00F8UA-3p
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:45:48 +0000
Received: by mail-lf1-x129.google.com with SMTP id a8so1723666lff.13
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Z11oNrAMyfwkdQgEo2IKDmAHGDHQObgXCjX2GBbA6qE=;
        b=ppz5LPOoVAmzg0sY6VW3WjXkDjCmiLqRG4ZXdoHSQScqin1sZ66GIM7yEOo3Yi+ajy
         pJMNWLlhfNVC1OTp7I9rBSqjXhJ771dnb5vPngiTeRnh1meLCjP7tkA8W60I+zYIKAys
         7q3iVNd5eZlplPO1WAF9NyYMs2VO/rL4SBUKq9swl6Sp7rkWN1tbjj9F+C4Y9uvTjDxl
         PO3+Vr+6WV0wRTLFXAVD9nYGTU8LU+7iM/RJHRh9HuBFjlW25CJEBIFIQqTaOg/bERXZ
         ZQbOglmRs3GlVVWYUzrwiVKjzx2ki+O4FAt28otMTF3yuVIMKJrob71db5VbT02U+Jlv
         k7bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Z11oNrAMyfwkdQgEo2IKDmAHGDHQObgXCjX2GBbA6qE=;
        b=BwACUG4fHb48N9qQ8tVQkxBn6vaXk3Nmf6rwnPCxEsZDopOH9xoi+ICJsJCdGspoO9
         bOSCxgc1SAn6nDCbCL9asyr0DiEISVU7hBmwFFYTKaIw6vAxMcHa/3vpuCqavKJYTnGJ
         sp+9c55RYV+RGD1oI5wNJXuQ1nc78hv0dcWdashlHFEA9HCbrEWm1jB69w1Rlr+G3kGa
         dzz6JbZ2UmFzl8IWRHVSi4RHrOLle2j6+ZSBUCtGbsDBUrXiQkKFz1fY5LSofcLI981c
         lajJz6wOxEcaPx5+XB6CCUkTbXypTWmbmOu+3FMCFKYqx8uvkNtCUVUTd+ivLDo4uBwm
         ys6w==
X-Gm-Message-State: ACgBeo28cpuY4ASvbeHsw7QL6W5EHFlslndfO1WvxQVgsjjbpSHwCJy9
	LvALThxn5bgPOfHqjDCIry5+1EELA/eWKg==
X-Google-Smtp-Source: AA6agR5Xl4LdiqD9+wRA2Q5p3CphYbxz7NQLx99BzCBC4UOdxyvS0cZ7IXkQkv96RqFN8oLfORv27w==
X-Received: by 2002:a05:6512:3502:b0:496:272:6258 with SMTP id h2-20020a056512350200b0049602726258mr3789933lfs.429.1662716744900;
        Fri, 09 Sep 2022 02:45:44 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f28-20020a2eb5bc000000b00264b292232asm7757ljn.63.2022.09.09.02.45.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:45:44 -0700 (PDT)
Message-ID: <1e502a39-6ba4-079c-576f-10fff260d131@linaro.org>
Date: Fri, 9 Sep 2022 12:45:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 09/16] phy: qcom-qmp-usb: disable runtime PM on unbind
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-10-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_024547_275397_B213726E 
X-CRM114-Status: UNSURE (   9.48  )
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

On 07/09/2022 14:07, Johan Hovold wrote:
> Make sure to disable runtime PM also on driver unbind.
> 
> Fixes: ac0d239936bd ("phy: qcom-qmp: Add support for runtime PM").
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Nit from the patch 01 applies too.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
