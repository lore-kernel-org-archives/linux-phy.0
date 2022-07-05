Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D69AC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RBgPBcfk6Ipl3FA2ym55ESAmSRh/iQNJ0JNYpX7kqIc=; b=eUUUWpnRecQY+c
	2QKTP1quRTATxmBhm0tPy2R65rjFUhhwJFLfCsmtXqJZpsudb325oU4VGeUFj7NXizcljSiqjO3xc
	PKqnm/pNsQvY51R8GpQQ4MPAydy2ia57Y7L2RL+XPKyeq1PFFiIMBWluzZNHGi2vwvYU70b5JqCwo
	nuww7wWn7VEH8x7CJk7/8zZz4236adTrotzIAg2bLQTJynxibtZTPDaEK3LDivJRbIleqFJPfOYI4
	uTe7KmfTGQKIvP7nXPvqWLeSWYkH/oQt1NUXCB7CB6axiVAO1pB9tRNpUoktutmd2NBNS8O9Ub2+R
	ibutLaNSoqLCZ4kxEZ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gRk-00HLbM-Pn; Tue, 05 Jul 2022 11:10:24 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gRh-00HLZL-Sz
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 11:10:23 +0000
Received: by mail-lf1-x133.google.com with SMTP id j21so20005115lfe.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 04:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=h1uZCYMbVcgEzBoqjPQ3Nkg77lCa4IHbIPp6s5QUAxk=;
        b=Ehh/BzJe5exPVrWgyNZskrC1eqkCv+7MKwFdA6F57xtVvQhzKheZ2+EXnI+jfuBJLf
         G3fFfBdy2CP2fCNGDEPsJHYMbJTf/SGV/pRm5cXtFnTCT7eDNoS75QqgrWc0g46BDWyn
         k7evhXKds25YoXws1D06tIVAdEP7WTeSGdLr1RYAEU3Oiv1tQ44TNvbeW4lkgDL3kvtm
         Q9ZnfSxBriT8pamQ0z9HqJzkkeqvGTsOKLshlSHlNbWYlNYjfbbo6XQH8H9QaLr/tA7R
         4CIsV4QqFag4ZOrDh6PSII+OeVeUV553z7K9GEVjOwRM2Q8XboEzWGPU6Ch9MmRy8KH5
         rmDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=h1uZCYMbVcgEzBoqjPQ3Nkg77lCa4IHbIPp6s5QUAxk=;
        b=km4UCkTK0lS4BeuTzdQs1CskTaJ2GJZZ1v7OM9dyTH5J4hVGDEuU1KfwDgLNs6G9r7
         VB6UEAXw4UWJALFgQ8tKhQKnqJWQH+sr7ESgYeooIoSWOLqXpcmaCY6Hw72Dp09HeDcF
         uSEtgx4jBbQ5SAnI3hYA6IzMpu2YSLn12mGtfIq7lTNmIgcxu1cVorTHr1yDzwg5jih7
         ZO2VAcmhNdrBBfbQ3tbph9ieJrPv+Yax6rViKTYKGaEHTNnrM33IxiMVGyzesXgYwYoP
         1ATGVGsdenREMLia1O8ZRwEVdEIEQ+rqGYjm/a/u64DQIKA2GoZVvECZOvEfkccdi7Zy
         KdOQ==
X-Gm-Message-State: AJIora/RFrubeUAqP0vlsqw+zmcUhdh9Ky5UzFoELRCxJm5uRZ0306NH
	NwDv0WF+DKlR+r5IGcVnMvQmiw==
X-Google-Smtp-Source: AGRyM1vw/iQwvB+STxZCqb5GdkD8jTbNQfRMcjsuwyFqc1HexlQHKnSb4VMNtAeZR48M1e+DDe8iEg==
X-Received: by 2002:a05:6512:1028:b0:47f:a07e:6e85 with SMTP id r8-20020a056512102800b0047fa07e6e85mr21982127lfr.294.1657019420284;
        Tue, 05 Jul 2022 04:10:20 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i16-20020a2ea370000000b0025d0fbe3e46sm2030251ljn.13.2022.07.05.04.10.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 04:10:19 -0700 (PDT)
Message-ID: <6fb59f00-6c01-f0c3-9e2a-b088b97ae3da@linaro.org>
Date: Tue, 5 Jul 2022 14:10:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 39/43] phy: qcom-qmp-combo: drop unused lane reset
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-40-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220705094239.17174-40-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_041021_976618_F5B52A88 
X-CRM114-Status: UNSURE (   8.52  )
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

On 05/07/2022 12:42, Johan Hovold wrote:
> Drop the unused lane reset pointer which isn't used by any combo PHY.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
>   1 file changed, 2 deletions(-)


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
