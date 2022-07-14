Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB26C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PF/2Jt4i4rl+RunMvnqONg6+ShhpRGsTGge7+48TGv0=; b=a7wv4uG0MXlyo9
	AeuJGjQXqVmKiHzDqHbV/jy92nl+XfXTlcTQT9x6cx54BKZjgOqz5k5rikOQbvmhTx/isfPv5vIaB
	eAaiq/CLzkwdrz38GVN63Ava2dnJSoMZ6hZb+6XsN+GzBUgVyTaYlUfHWVpiwPnKgPySVotCVVgl7
	6hdhSEbqP/irdxRcdGehR6FbvXE9p5XJivwUkfSj3s6teDg8VHkGHg8h4h3JJ9pXQmygYQbNEL6UA
	StWFcPe14U04xWzjPU30w5Rlg2B10GFrV+W6CcrmGiA7k8EbfS14LgNdhGWJMhlKOAXcvthKMNt05
	tQi/nqKa853EwEcXtk7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBurz-00CfZd-Dc; Thu, 14 Jul 2022 09:10:51 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBurj-00CfOJ-3M
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:10:36 +0000
Received: by mail-lf1-x12e.google.com with SMTP id n18so1790584lfq.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=T5OfZ3+PK9xXcnfzvOc+1s4iD7Hhfzcgc3sJb8baShU=;
        b=qAz4zkT3+B2hVfgd6m9jYDRM0x285oOBdYO36ZemeNLxHWLRBilmSLmZ1dTv5XGVni
         Wk2WCj6nr2JiSKcxXIiCrbUt9rY3RjLOW1+LhAj2w8vSyy8/6+zDI45Do4nZEcNbo6Ig
         d99Ki/INtDCdnWKoYry3+LtMgdWKTv4LmqyncFonUvehn2TghuvxQ/0sMkT/wqRxRnIN
         VCbV3sz/5SzK/jLTkr/r+sKNDdlZT+69pFzrV6iIz/wFCoB2aysGQ24qgBwpUnNLq26P
         0swiYm3jU+Ty6B93nXusVfXPoAkvajR9uUFEvh8YWvhde3MM3/Sk8MeRKGEGkGxfQ/rp
         gKYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=T5OfZ3+PK9xXcnfzvOc+1s4iD7Hhfzcgc3sJb8baShU=;
        b=AXGuHpnpM8uLUNAFP6XClP/1qZX9ergN9qDBmPASW5sNowkkShxV8xTbU1VetJELI7
         Itnne8OhoxIoEeffZitbTz8lsn1G7zPufacibXjp/7S3nBUtmGE5NG1zaDku+9ImvOef
         cgP/kp1EO9kSdGu1/gUdd8Lkm++Gf8TK1C83+MGj5lkY3rt1ws5DbJwrafVNBwhySPtK
         2YwqWgcgyV0flpdtNPJPaTupFK8N59YGqHeI6XA6gII67uLLf8rcPCgHOgalM6LL3ema
         h5HRUgklr3tNCEl8v3IiVDrMQ3ybD4RQV128R68ICIIV8Fst9I8S7tnVAJVRZg8AoEk7
         DFUg==
X-Gm-Message-State: AJIora9Ejh5HC5RmQ/ApG5P46L+5wQuNO2h92MNkenbiEUjm8yU15syc
	iybwOyJCgPnu7di+bJrnlNEmmQ==
X-Google-Smtp-Source: AGRyM1s8EmgOtkxZ0CcEKsdSJlgZWiaDLGQME86g+5SP1B6+Og/s3pUx+W+IypC1jLkq/Y5eV12IiQ==
X-Received: by 2002:a05:6512:3103:b0:489:cdd7:b360 with SMTP id n3-20020a056512310300b00489cdd7b360mr4700025lfb.111.1657789833411;
        Thu, 14 Jul 2022 02:10:33 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f5-20020a05651c03c500b0025a724f2935sm174964ljp.137.2022.07.14.02.10.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:10:32 -0700 (PDT)
Message-ID: <1b13f115-381d-9d50-d3da-590cebf68ca4@linaro.org>
Date: Thu, 14 Jul 2022 11:10:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 09/30] dt-bindings: phy: qcom,msm8996-qmp-pcie: add
 missing child node schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-10-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-10-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_021035_176567_33016A43 
X-CRM114-Status: UNSURE (   8.56  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> Add the missing the description of the PHY-provider child nodes which
> were ignored when converting to DT schema.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")

To ease the backport all of fixes should either be independent
(preferred by some maintainers) or go to the beginning of the patchset.
I am fine with both.

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
