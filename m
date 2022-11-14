Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C093C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 15:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgqZT5yyj4xRugYf4bqg7NGayRwJyMxcgJSWF4SX2qk=; b=b3cqZkQ+wvQjAc
	H8moe0JJAcxTlTQ5B0iZ5g92ik2mYIBogzP8oPNpV1udicG1PI9TteAkb8dfIImEjKfImTt8MPT3w
	aZYqIUiVPqe3c/xyfbOwDTZk45pDdLs3vX/26bX1VNeeYW0wEW7VeiHOGkUeUK6fQEdeKyzwCmM1Q
	gslqCMIID4ae7vW4o0+2SIvDFwm3elshhFL6Imo0Q3rL6pgux5tYHvu7VINUI45c4p+9cpIi1sHuE
	5AFPCwZJuu2tNiImVIRo7DIXyGZulC2e8+FeIE2bxEGeMgam6tRbntunnrhTXApmwjZIK2+BiyfuU
	0micdFuHzsIYLrR9usJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oub3e-0026eY-Mb; Mon, 14 Nov 2022 15:07:34 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oub3c-0026dc-JM
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 15:07:33 +0000
Received: by mail-lf1-x129.google.com with SMTP id s8so2616888lfc.8
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 07:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ULzF3p3L8oeTaQhvXffg+8XN5ZeIieb8W7hDny3blHE=;
        b=EIYzol6rNEK4IblHJWChN1Zv9nIa45kXVtlbW7+frCM/IHuRXbM5rBBThXv689sbHz
         EsfkoilCGeYJhJj8M+94v2mp2MpR/oxGu0fs3jVF8dNG8hODo2Gf9Y52Eb65e3bDy+eH
         KtlW/9wd0f90k0tuX7Gxd9GOEFavhZOCGBOa0TV0OufauJOERiffrWYiPGmHzJwXBakj
         FEkBhrsQZFuJHj9GBH8Ht6P8bzzMW3wx5IbtMm4cl86uJ1mJQvurtDTzlNNC4M+TVMFE
         4boicbnmAW7xD47h6lZfQLpXyR4F0/goHIRtrsV0MhDZhOX1/gA9N31itM0D46SW1kgs
         fCcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ULzF3p3L8oeTaQhvXffg+8XN5ZeIieb8W7hDny3blHE=;
        b=pJckgYAroLaL60QKBdG8caVYr3hkNTHDGAP5TdXJdfT/B21oMZaE51OM7RmNY7SX/X
         oIca7bjsM9LHzlUA5TBvW6l5BYAI3zdu23Uq6JrE1hQHuSIFzAmEqw2noEGU4LzHyCQd
         +q8NrP2VfroP2qr4p353NyQOb0P+dPsmGGe9PYJ2DRUwdfiwCak7Z8wr54GYeVZWdFna
         jM4XxSHKypK+YExCceNrOmWqoqYaPT7nFx2O2SD0SZgHURw8JURN4ouMTQ/Y5R/GIU/7
         fYE7kRLstjRriOuZiFD/6KoQXvfwNC01hvACSmcIWIvB4EA2LLfCmv/dUf/q8s3LHO62
         /udw==
X-Gm-Message-State: ANoB5pkVMCljfD1RQTD6KLLwewwk/xuEyHTle/7X9m9ED2qmJmTv1LOh
	5JgnhR8y5eVOjnPMRRKn867ikA==
X-Google-Smtp-Source: AA0mqf5XBicCBoB4vSCpkSphHF/48SBezZ1w3GLHz+YbYHdSbavWvaHmS8Y8p5y2gVmokZ9rb+T/uA==
X-Received: by 2002:a05:6512:32a6:b0:4b1:4933:d0de with SMTP id q6-20020a05651232a600b004b14933d0demr3974642lfe.10.1668438450553;
        Mon, 14 Nov 2022 07:07:30 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b6-20020a196706000000b004a4754c5db5sm1841388lfc.244.2022.11.14.07.07.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 07:07:30 -0800 (PST)
Message-ID: <44973b9e-d1d2-b7e1-74aa-0b72505f2552@linaro.org>
Date: Mon, 14 Nov 2022 18:07:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 17/22] phy: qcom-qmp-combo: drop lanes config parameter
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221114110621.4639-1-johan+linaro@kernel.org>
 <20221114110621.4639-18-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221114110621.4639-18-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_070732_681024_3F04D201 
X-CRM114-Status: UNSURE (   9.37  )
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

On 14/11/2022 14:06, Johan Hovold wrote:
> Since the QMP driver split there is really no need for the 'lanes'
> configuration parameter as all of these USB-C PHYs support dual-lane
> SuperSpeed USB and quad-lane (uni-directional) DP (even if the driver
> still only supports CC1 orientation using lanes 2 and 3).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 62 ++++++++---------------
>   1 file changed, 20 insertions(+), 42 deletions(-)
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
