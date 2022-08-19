Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A6C0C25B0E
	for <linux-phy@archiver.kernel.org>; Fri, 19 Aug 2022 06:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1KjkdLVfpPN9Y+3nO9+G6JI8FQ2/kOUjLcm7V8D1lI=; b=j+Lj4vvPDBA1eX
	lYwKLO6x8Elw+WNaaaq+iGzPBCkVf2gvuIzcCObyC4Ul11REG06Yp3Yp+euHp17xnWQW4SDchLxHR
	SVZl2H/xcuBYCWSeO64cNXYEUqrpB7Q44bNnFDTgpWp2bQGTWZIDgUd71Nx4MC1hrJksyqOQ/jm4N
	RLagvXGfxpgn7zMHcs5bnKkyHuMgzCtY4mld5I/n5DCdIxBQ7JQq8rtPBe4A6s1Gwx86RML4XN8C1
	yOdUMyDEbmbxUEKfXr/Vnh7c7IOslHlUqlUxZV+vxWUDPWj6eCWUEZQoE/ISaKHfsThPdEVUTExFj
	Tsk0a4LPzYsqeC/FDfyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOvCm-002CFI-Q7; Fri, 19 Aug 2022 06:10:04 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOvBl-002Ag9-3e
	for linux-phy@lists.infradead.org; Fri, 19 Aug 2022 06:09:02 +0000
Received: by mail-lf1-x134.google.com with SMTP id u9so4828660lfg.11
        for <linux-phy@lists.infradead.org>; Thu, 18 Aug 2022 23:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=Xp2c5pFCOLrl7+po3ij5+B4vFWZhRzSXs1VLLppjgg4=;
        b=qg0XIBi/5efpkZ/OAXqtzgC4qVpxlU0UbGn+Radq4W+kZ8xPOc9GpZXVy+Dg/MR+Ai
         6uPFIGjq3Ii0ob7pE65JDVB97lvL31mt/y2i21vzxjjxbH1J7FcbHclPRryafxIGLLPX
         UYl/RnB6Unc/TzDO5hYhdzIs9vCpfR3h1X1lq5hyisAPVztS0UgIoPkVTzOM92fxCmKa
         M8InKN4SE7HpArmBAUtJXWvoWSaFomcGyGgknkqscnNZ8a/b3k6GddVCGEjVzhvE/e2R
         KNNfNyw7e7BpxeVGTFN7o/FlfKmQNM61gv0fPno+saxA+dAlSQ1iOBovMq1mi+SkvA9P
         Pj9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=Xp2c5pFCOLrl7+po3ij5+B4vFWZhRzSXs1VLLppjgg4=;
        b=NH5vuxQL0D9iOfk7toNi5uMy8LiGKpAX7ziF0P8NaYefBoVgmUvVYEMIbTAGMcpxf9
         ln1MFFEYv0wrslc1Lt65AqrWCKVYlS89XmHSYoDDoB/FJCPdmzUt4DYGYAwChG6lCf1L
         Ea+wa1pryuvhQRdIRcE8jJUh9HNydN53TCC94fEQ3q3PPV7cgCDXfa6k1QSprSRyolx/
         xkTGLijIWeeQ7uPlC4lsel3IF1SF0Ay0SZSZgUyMxCV46F2+zaGD6N/s5GNu2a5GNgFh
         SClYQloRaWEQMF+Ta+sSBT9L1i0QaS+wAvvDio1jOE68kYZvr1XPwk7p0AeYkA3QJ8tb
         e8HA==
X-Gm-Message-State: ACgBeo3CO6bTzpmpjLgA0QeadBoh3//QpAkIADDZUSIU3WWatFiFgmwW
	ftvXh4xxZFYfxs9NbcFXzxINJQ==
X-Google-Smtp-Source: AA6agR7UzgH5UTsBnwxbvuRzyJKCTfID4WLnQkd9FvwR0hWwoOUk4cYrfd9owT7O3xzArFodV093uA==
X-Received: by 2002:ac2:4466:0:b0:492:ca0f:d5f2 with SMTP id y6-20020ac24466000000b00492ca0fd5f2mr520740lfl.155.1660889338499;
        Thu, 18 Aug 2022 23:08:58 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5? (d1xw6v77xrs23np8r6z-4.rev.dnainternet.fi. [2001:14bb:ac:e5a8:ef73:73ed:75b3:8ed5])
        by smtp.gmail.com with ESMTPSA id f27-20020a05651c03db00b00261b6faab6dsm342618ljp.115.2022.08.18.23.08.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Aug 2022 23:08:58 -0700 (PDT)
Message-ID: <228e6194-b7e9-5f15-1815-6d1299190852@linaro.org>
Date: Fri, 19 Aug 2022 09:08:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2] dt-bindings: phy: Update Pratyush Yadav's email
Content-Language: en-US
To: Pratyush Yadav <pratyush@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>
References: <20220816132131.75591-1-krzysztof.kozlowski@linaro.org>
 <20220818194409.zicuzhcg36qw5her@yadavpratyush.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220818194409.zicuzhcg36qw5her@yadavpratyush.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_230901_227970_3CDD0FCC 
X-CRM114-Status: GOOD (  11.04  )
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

On 18/08/2022 22:44, Pratyush Yadav wrote:
> Hi,
> 
> On 16/08/22 04:21PM, Krzysztof Kozlowski wrote:
>> Emails to Pratyush Yadav bounce ("550 Invalid recipient"), so update to
>> match one in commit 92714596cdbe ("MAINTAINERS: Use my kernel.org
>> email").
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Acked-by: Rob Herring <robh@kernel.org>
> 
> I am not yet sure if I will have the bandwidth to review the patches for 
> these. But anyway
> 
> Acked-by: Pratyush Yadav <pratyush@kernel.org>

Then maybe it should be someone from TI? My v1 was changing the
maintainer to Kishon Vijay Abraham I.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
