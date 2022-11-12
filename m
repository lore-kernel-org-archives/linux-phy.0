Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4672BC43217
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8VgXGOeVxSO17hk8EyUSI+Zl4wpcBG4TwDUnfhM6Xw=; b=k/K3eWhWUQtTPc
	bt4jVJK39vPV8TLIeWb1ZhzLAk+/ZXD4Eu3+k9EeXt4Bqbgy0L7d7A9vW5i5DJIYH7Xjx3n6Typ2Y
	D0ShNaTMVZZa/c3/SwkyvWT2M8wYCSK7c3fhAsi/A/v8RbPai96zorIG8ww/AERFul7jrnmLMCNdb
	f+FyZ8GMK5LHb4g/3f3rC9ZgHZkeyoQf4fT8dn8qtyCFTyvWa6U9rv5JzBT2ZsNBCKsD+GMxWy4YT
	CeE2+IST0Tc1lmV7KD9/gXG3wqJnajm1dbjj3C2dYh4o464pGjUyBX4GnrsVwzDq2tOpma3w/GAJM
	GmqIa1MAW+up5i9J42iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjqs-003eM1-MJ; Sat, 12 Nov 2022 06:18:50 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjqq-003eKF-6r
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:18:49 +0000
Received: by mail-lf1-x12d.google.com with SMTP id j4so11348812lfk.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ogXWCN0t521Ij0otOt/tVRnA4R2z6ldRz1ScJkRGGsQ=;
        b=pFT3u4kkDpRU+DOFPlY00vYx7zDAsAf5Hz69EDbHIamIMwyYw9sO8Gn42amkS9xP8h
         MJXAUwpo1Gv3rj/ukO6Kl+8HG88SXxSyQh5uJcAa6MbFCV4+Xd1XaFqqRa3NdS2iEc1E
         UfCu4pgYBDWshP/2At0ZSkuewtJe2TA9yZGIGRv9nkNJB5loK4Y4B4d2MorT8U699+aX
         A9UusTIt8MW9gpmnDxG2LCrzxDM2/9yM5mtomR9+jbioqQd1I+AP2+gYbowWGK8cSKNI
         OZU79cZBGs0tcek97oUhm+WDpcT6X6i6G35Mu/WJ9jqQdZWnKjkIMcfz0YUgi1PQPb8r
         dzAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ogXWCN0t521Ij0otOt/tVRnA4R2z6ldRz1ScJkRGGsQ=;
        b=BzoU+lgDQkoE7Xh8giORUmrn2Sl0SZT9VTzsxy23WxdcCuG/y5W+YF7eOQ9PnB7QVJ
         0a0ns+F4Dh5bn7vG3pwE0ANsZCAHXj5TW7Gd49qJDiDH80SAQbwUNIMxQGUdNU0OrPhS
         znRnfqQgJUTYv/Lvaqggnsh5YONyEtezTV7de9AtJBEHlpaBbeUSIsw3kJyqnPGkS8JE
         uXq+tWDlEuGkRSU9gbush7s7+s/2mQNqsJNucrvJHTDmh7dD5eulg/tTPXqfGhPYe81T
         KMyyoKkBoyAQiOc+ULkdbx35jCVy24Awh+gdjP8Cslub4Nd8iC3yGYEnP0wLfRpjvQV0
         Zq0Q==
X-Gm-Message-State: ANoB5plNcfaIrmgOszRv51EuNJ/tCyY7HEKSiK4wH7ELyKrtY5hoebtJ
	1Ol+ahGCdZNSVyTV9KqTqXcvGA==
X-Google-Smtp-Source: AA0mqf5iqNcTbJWktJtWcItFCGC6wMLmJGYOBeuUpXoRTiDNhdQZXobUNi1w+oeH59dOfm4TzNztZg==
X-Received: by 2002:a05:6512:20c8:b0:4ab:6c73:28cb with SMTP id u8-20020a05651220c800b004ab6c7328cbmr1575082lfr.504.1668233924236;
        Fri, 11 Nov 2022 22:18:44 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e10-20020a05651236ca00b00497ab34bf5asm716043lfs.20.2022.11.11.22.18.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:18:43 -0800 (PST)
Message-ID: <3e28efa7-3629-740a-4901-57d5e5c298f5@linaro.org>
Date: Sat, 12 Nov 2022 09:18:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 01/22] phy: qcom-qmp-combo: sort device-id table
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221848_277526_C702E3DE 
X-CRM114-Status: UNSURE (   7.87  )
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

On 11/11/2022 11:56, Johan Hovold wrote:
> Sort the device-id table by compatible string to make it easier to find
> and add new entries.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
