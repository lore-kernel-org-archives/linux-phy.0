Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1579C54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FUmsEqeCtvJaHrYC9Y0tV9dzTzijzv6UzNkvGBNu3bs=; b=oNR0NNB5I3tpqXR9QTWdoEAaob
	jX26bW27iLNe1A2MRjh934vLMgSg6mCk8IoSpRjrfZ4yaUqfxQsY3JLN/8cehQJcjxuU7xdJL2bKq
	xg1Ab9AX/C81IRrw2qkGNI7WQH/eK26Fz8l2GvHgo2LJ/VV+PiMuymSx/N7dCUbUIrWEEriRPFaxp
	1gBSTZFpuLwA5+GzKU8WuPm29enjhlwUfw3g+XL+gFGAGBzNof3DNLloLA4QkdOuqetZUvWbH7n/v
	+WEvrn+sgEf4WjcGjuU7sqVpHEMeYA6b/xP3zD+HuMBdYPUCBLXbe9gLF0bCOZs6GWny1iJt8qVOP
	SAAE4fYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQXu-00HDIi-AM; Thu, 22 Sep 2022 18:03:34 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQXr-00HDHM-JL
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:03:32 +0000
Received: by mail-lf1-x136.google.com with SMTP id s6so15987809lfo.7
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=CBSm0+/j7g28NuQ+i5FWRy1En5Be0Ute8R2ym7b/IN8=;
        b=AC1ntdkyYfo6RGC0/KHA08P8CowP0Bl9RAurLJoVBF8jtuklA4hjPkrGiXZKvo2UX+
         FT9A9sgodrqR0MA1r5tGGIyp9TJAQ+zbbCNWJ6/97okVG8VGAnmcnz8AY8MZS4J/7Q+u
         ObjuP0Y6u7kMqcQGirqyAaVaKepioo4cyq2kIgxj38cRjI394QjvPrCCYtjMtOt5Du0x
         6iyCm1doAMZvyJmlJR/PejLGQrUFAa1rc/rtz9uv+0ea3AcdaLEZW/PzrSB8ofj2vmc5
         A32dM/y/BFe3ErVPlg23ezelspAHaBopY3ii0NhAnftuPRQL8UpjCfQk/ZKMQu8pkv+g
         Qt0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=CBSm0+/j7g28NuQ+i5FWRy1En5Be0Ute8R2ym7b/IN8=;
        b=pt5EMmOl46ywW5MK7kFmoSXZ5/BeXROcqlBtaILqYvEGziZHuVKnhhKQBKgR9XaYFZ
         uA/b8Y2FcfjXT1zBgTBkCpGeWtRoyq1ldeja2mdFNfdF9cydIXlFyCIW6QAXt3l79hbs
         mo+21YA+uK5DK1awEkk4L6zSD0yKAS54zta+28nt7irYrQSlsa+QHljeu/bWHrSrVIt7
         0qHmeRx8fW7km0rWJOEJ+aLB8uBmhLhxpvvNEy+XmITmeBS6hiDQtfnAYPzBjP1UjP1+
         WRL4GEjZdz3m82fBSlUjA/WGS648wjvYSTha67dQZ8oYUODHTkCHuvzi2yIcOAMbmLdZ
         F1Zw==
X-Gm-Message-State: ACrzQf1FE4dioXydXhV2k2RZXTVgRz96sS4pmvRBO33LzHB5/x+MmW+x
	/+2lkMIj1Rw0XupcDm4FkIr8Rw==
X-Google-Smtp-Source: AMsMyM7sJ/AwoeK2356DER1DmoHFMGNT+ERKsIdp5mqRCRkO/8aAtHtGacciWfNgsAbR4D6zIsryog==
X-Received: by 2002:a05:6512:3503:b0:496:517:5818 with SMTP id h3-20020a056512350300b0049605175818mr1651844lfs.186.1663869809950;
        Thu, 22 Sep 2022 11:03:29 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f8-20020a193808000000b0049473593f2csm1035030lfa.182.2022.09.22.11.03.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:03:29 -0700 (PDT)
Message-ID: <e99829fa-0dff-1304-c9a2-a93f8f62c43c@linaro.org>
Date: Thu, 22 Sep 2022 21:03:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 1/7] phy: qcom-qmp-combo: Use dev_err_probe() to simplify
 code
Content-Language: en-GB
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-2-yuancan@huawei.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220922111228.36355-2-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110331_669879_A55A5567 
X-CRM114-Status: UNSURE (   9.99  )
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

On 22/09/2022 14:12, Yuan Can wrote:
> In the probe path, dev_err() can be replaced with dev_err_probe()
> which will check if error code is -EPROBE_DEFER and prints the
> error name. It also sets the defer probe reason which can be
> checked later through debugfs.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 21 +++++++--------------
>   1 file changed, 7 insertions(+), 14 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
