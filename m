Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED17AC43334
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 10:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZObN8hgrrW9KZzZLxXJrcRhmm2/eM4PrI9h2mOWWKWE=; b=Zv2DULBfeEwG9J
	+pKnY6pN6xwcMOz4G32HvM6pfliNQWdmBS756S7K7f0L9Bwje/UqmSp8xbNRYcQPvcQdS3uerO5K3
	eWtqCT7smJSquRJCXVQ6KWgAV7UsJd9FQ4A/YD30aCT6Wi2EkKOm2+XK4vHZN5/cI0DKrUKKZwLqS
	ttSeOQd67od5C5n41jNJld3u2TGEQglJsxTB2JRCIUowYeEZg9QRTF2iCpSrtnbpOoYtq4C14YNWG
	ypECDAyHgg3teWNh8lphO2F9vFKW3hp+ZyseVKl5+kmh+WhnngctzvQY7fQbBbLtJbAN3OZgOmpUT
	l67/FUjJ+yRLx1Avc/mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ2s-006T2e-C5; Fri, 15 Jul 2022 10:59:42 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCJ2q-006T0d-A6
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 10:59:41 +0000
Received: by mail-lf1-x131.google.com with SMTP id r9so7215556lfp.10
        for <linux-phy@lists.infradead.org>; Fri, 15 Jul 2022 03:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=GBmXbS4sCCl5rx50+uIDLqX6ff5PcqAcBWqbK1Ns69I=;
        b=LxD55eEwo/uIa552Wl2ttUkvkBFjB5gbufpNK0JiZzVzguDKGy4GV3KZODz8I1Oo4/
         wrzg7MvVJiJzO/piFcSOd44mOd02VfE9/Ocl3IWkp/zSEKtfc1u6LqSCaA79wS0EbDYK
         dPKKlhe5xCsUj/7B4s6z4BvUpvbCtEQa4ocD4Zf9iHusA1q7oNl86J4Va3ZK9uX/Qmyn
         GTsYNR6//O1YARbNTlQPSLPOSM/DYCBYxgp6OQruEwQ/JraE0yEfoHYv/0vOUjhSeSrv
         ttIPSDJPAgZC7yWM3GGRv2S5i3fs4GIXIONolLfye0JMlsbwdq//xI+DDOI4bSv6kKdn
         dLFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=GBmXbS4sCCl5rx50+uIDLqX6ff5PcqAcBWqbK1Ns69I=;
        b=1Dc4/tPD22Jz3EKp36QpeVT0LGT80ZdbFHYvV4crrjl0o9o83rVmlX4Glcg1eDFI6i
         z1qJCgwxaOVsUAFxIfFgYSW+LxMVDee+Zj/icf++7LIYepPL4D5aod3NymNKiNcfQfIB
         Q5/IhilDM1vMeH7iRnxN1qyHH9cL5lcrjsaG8Sp4wKoMYSB+AhBeXQ/fZMp5jkpGjQFr
         zjezPfX5Yllz2VJIKoF6BWvunuqEj2LZUjnpewi6WKTRzzSX6JWnVT4uGggfD6wRaQvO
         e/HzVAdYsUEctC0MLIyRToXZr9zPw1n2YZy7Ztu3GaTCVIBKvOprTFwwCc8GAcHXM4ix
         KF1Q==
X-Gm-Message-State: AJIora+2qhnRVvaSwk++HqDQvSwF7eQbQlkMW81yTXeLWGjaAX3/nqoc
	VGzDPSAQi2846ms8W6TgXw+x8g==
X-Google-Smtp-Source: AGRyM1vskZB2XS3F97xZuPCHS4RFNBtV0rM8xtVWvVtraR4XxVbfgQ3bkC35c5EWy9GsQVsfM4vwVg==
X-Received: by 2002:a05:6512:33c1:b0:486:1f96:505e with SMTP id d1-20020a05651233c100b004861f96505emr7685792lfg.690.1657882776411;
        Fri, 15 Jul 2022 03:59:36 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 5-20020a2eb945000000b0025a65ed7aa4sm721903ljs.51.2022.07.15.03.59.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 03:59:36 -0700 (PDT)
Message-ID: <98998938-9637-b602-be2a-0279ffc6e7ef@linaro.org>
Date: Fri, 15 Jul 2022 13:59:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 27/30] phy: qcom-qmp-combo: drop pipe clock lane suffix
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <20220714124333.27643-28-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220714124333.27643-28-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_035940_405645_93C25A8F 
X-CRM114-Status: GOOD (  12.93  )
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

On 14/07/2022 15:43, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
