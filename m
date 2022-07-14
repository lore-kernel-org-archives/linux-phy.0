Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA874C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXCguFswULl92d+ygVfb8ZlNSk+Y44uFqtij1dF/tgY=; b=EHE9Bg+lVLwaOn
	Cm0dcDANyXaQ7RWdugcvlXwtSER3IOibGmwyfL/e2O5krWujlU7F3ogY9zCEKL5W7LcvGuFPh8xA6
	FMB81mvyxN0wwn4ToxZGWbWHi4j0GmeGKtYzEGqJps91VXBgl6U7rgv5VKjWE2y7c/SZWPZXs0qWK
	EfsaI+CHbc2RHf/z/G2WvcNP0GbPI68npiQjZkE2BZRGych+fjHGY/LhFsaFZLpEMmBnREiVnudXx
	SURLyZQt0/g6lur0bbaMSmaF8YTKG1S+y9Qm2CX3cC6sXPPXu+a/lsIrBBNwOJiMFlveaJJM2Lllv
	OaYWUkXQ/FIaizyVvLJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvDH-00Ct30-3Z; Thu, 14 Jul 2022 09:32:51 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvA7-00CqlV-E4
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:29:38 +0000
Received: by mail-lf1-x12a.google.com with SMTP id o7so1816004lfq.9
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=9aRuDO2xu3uEUhtB2rstHvLVmhOqmSOwO7/lZnxmiVA=;
        b=Vmf9eyIWaxYLzmHExTCdwdyIYyFIlfShBDODMddmLuANgF04h9TU7NZYXrILhVNByo
         jaAyOsAbSl/A1Uranca3SwVNh4Q2iVVX7jk3nw7RX7j/Osi1v05UBj/KbDCEMx8DeRmk
         UxXKdCV7iIzqV4MuTyLLNPUqnF0uD5YjdyYK/35sAkyxk3OIFLy2CSreZjqsTOBnPm+A
         zGPwpo9r+l8ZVu40Ni+1V5tKzSpwAkuLt7fSG2KWw++FXO8h5+oWxIGcYa29M8OExfcm
         J/4SsVs0t98V5TfyrbXCHOcin5aYXpsUP5PZdaVgh99icABEYlCX2ckCdwN/AGaTjmXw
         1ACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=9aRuDO2xu3uEUhtB2rstHvLVmhOqmSOwO7/lZnxmiVA=;
        b=hRMXvPWEyIeOP+ZramVbyiPXixVJtbnw5cRRNUhwvAHtpDZH2t86ayW2+0sG9BaWVw
         BFIru21kdW1vXkqZp1yokfog+z6t2Hl/GxIXxG3PVMxnEZJISWwVi9LMW51SC1oNZE3b
         Dzj3eR7av/0e/k094lv30Crg7Yao4o4slyQ2c6Qj4atlVJqAOirYctq+7m035mZt/Mn7
         ssluluM0fZ3SX0w39SQkZrsfmOgjiunkhhLPZW7IvA3InJB8GH4NwUkDS90mDsU9s2Vx
         JWekaRGlmLqLB6oOmN/LXufFb9urIURN8Pueqgkb7JuVDLsNlFRZnjktxslAAu/SZLX+
         RDiw==
X-Gm-Message-State: AJIora95zke4rB9IlCcD3c7EeiFM/zGILZCovAXjcudtxwEB59CWPmq/
	g0e61rOyJc9TjTKzia1JYxNylg==
X-Google-Smtp-Source: AGRyM1sfQu/wZaBqHV3s/t7/E7EL2TZdxlYu2+iw7eKvNtwNVGZhnaHGY1iVLXilX3JsOcRp7SAA3g==
X-Received: by 2002:a05:6512:c07:b0:489:fe21:3a22 with SMTP id z7-20020a0565120c0700b00489fe213a22mr4886632lfu.482.1657790973673;
        Thu, 14 Jul 2022 02:29:33 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id g6-20020a0565123b8600b00489e7550cc9sm259998lfv.98.2022.07.14.02.29.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:29:32 -0700 (PDT)
Message-ID: <e4fedc46-85f3-ee76-343d-d0236b64ec5c@linaro.org>
Date: Thu, 14 Jul 2022 11:29:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 27/30] phy: qcom-qmp-combo: drop pipe clock lane suffix
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
 <20220707134725.3512-28-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-28-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022935_555709_A0AAFE6E 
X-CRM114-Status: GOOD (  11.33  )
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
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 +---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
