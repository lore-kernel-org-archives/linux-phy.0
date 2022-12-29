Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA865C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 10:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TrbN/3+MXP1RPTMwBVLDSYAYqXh7374hCH4I126/Bc=; b=xONEkapCo8YIVB
	9XKQwOGnGrA7KLfThmG++o3DjPA2rBTzLRYjVHOgPRcs/pnA+ja4tjSX7ooqTqIOV8RQcg0yG65qi
	YvgZMYMzbZmUtTqYxX8CHs0DnbZpj1SKF9rJKL5mliBTt0IQpIQwLbIia3hY6DtWh8mfKkcEoituN
	wSyFjMf1xJHGJwuOAUnUQ0T0JBnvraryVjLsw2B0p2GAvGVLuRMAulOILcwb2TqltQXq4vxiO8z/F
	9UgNKkCDOFYWegGp7Ejvvrpf1D2tQrvlylMh1XA65ZoRroDRH6lVS0gANxueFIWphqBO3VJYmnn31
	Z7sMerPOb8SjPrbJC9Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAqBn-00Ehxw-UJ; Thu, 29 Dec 2022 10:31:07 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAqBb-00Ehst-L9
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 10:30:57 +0000
Received: by mail-lf1-x130.google.com with SMTP id j17so17461763lfr.3
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 02:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iAox9jZdEvifzmLQL+c6tUgFpF++A9pWe7sG2ptRj0I=;
        b=vW6WcxQf2oA57xpF12GrMN5nxO7C+GTBWRcwy6OFCaQ1xipbnG2BJ3uqema3wdK+df
         2x/+KN367tqENjlU619vns3XOhuW+19APzRsdN7o6SX2WrIRHAYFAoPKlXMbJH+ME1Gd
         eC2mihlLh2q+JUxZvFvcTE0wIk7Ye7MbIZ3H4Z4h/kL3FMUJJdY0uu9D5DdYs2xB7ebR
         wDsFP6ownoJPAxDyIlGLDQK2qFhcKuHZ7Ydv+hhzGyj+/w4WvEYdiwAtCDn/mayPKvya
         plVvgsNoqiJC/agaS3LXF+CQQdl9yngkvMS9NzbUftg+6EBOP45InBgxPS+p9SnA8qHo
         iiBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iAox9jZdEvifzmLQL+c6tUgFpF++A9pWe7sG2ptRj0I=;
        b=CXV1XO/8mIEdUPVwz2roRn5gNTe5IBx6xLXfv5/Ii7r0o5uaj3Bmk7kkaKr2+mKMPL
         xhlXoUJWYUG83lsiR2nfeH551kGTTEgPiZ/FYXnahNvLESpee/7TcaDL0N6OG7IEf/O/
         IECXHUFolh6E10XNjIZLLWxSaji2JzTRMglVm8OkKUsnRXJas1f7KK2CnDF0JmZ1iXRo
         1wWdlKRFnJ9FEwfYjqmUQ4eKAWTv0Ywy2D+Oz7LaQ3lq3EHlyLhyqm54Jsmyy+6192zu
         1tHHIXrJeANQVp6xX5LfKOrjbiOlegwkKY/fOSiijNZAND1WJE45BbJmnP4XP49qlDWS
         ISyA==
X-Gm-Message-State: AFqh2kr8/oT9bQ5QvRpvqGKRqOpWMaQT0FUCFhMSWmt/kMoyo7oCjPQ1
	g0X5e84WHCdC3FTdXdgrJ/a8+Q==
X-Google-Smtp-Source: AMrXdXsUMVEakLd8I9Ld+9cvNnWvLibPZXo9wxW/3r/FhHxjIMmijyS3NwrUfhTgMxmGNghGO4E02Q==
X-Received: by 2002:a19:f70b:0:b0:4ca:cb4a:1875 with SMTP id z11-20020a19f70b000000b004cacb4a1875mr7178275lfe.45.1672309852903;
        Thu, 29 Dec 2022 02:30:52 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bu16-20020a056512169000b004b5ab5e904esm3027993lfb.306.2022.12.29.02.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 02:30:52 -0800 (PST)
Message-ID: <a606f91c-1a68-09c7-2081-03484fd0d513@linaro.org>
Date: Thu, 29 Dec 2022 11:30:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip: convert
 rockchip-dp-phy.txt to yaml
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org
References: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_023055_747453_2E9C567C 
X-CRM114-Status: UNSURE (   6.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 29/12/2022 10:44, Johan Jonker wrote:
> Convert rockchip-dp-phy.txt to yaml.
> 
> Changed:
>   rename file name
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
