Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5FD3C6FD1B
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 08:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJL674WeAb7i0cg3TRkHc3QB+xgybmiLE8mhm09sEPQ=; b=yETXliowgMP751
	DLQsiJwWTXEFvTBJcibFN+qMgm2BJTFy9/ZEDqpniJW+rD8ypMUUugAri4kiKSSDp+l6H4gUeOO9o
	XKHpz3ObBgM3hCOZv2efiidz3q8LDITE8aPqbfd3+LrRRBXB85iQ02rtgrkdIlSTZgmTvOViuF/YQ
	MSeCKDuPMxTHs8Mac0k2N8MisodV7S5xM2C40/Sr585PAvr6htqHBxIspnL1tXXzKMT6SRGwXupJI
	ABhfjB8RruD25BWBWOjZfogPbgGnrimaOc60XduMZUCsS8qYdiNYtaE2CmXBjy5aucY7MZFhnmY3x
	OwqZdq/WjSOskph+G+KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZSuF-00GmGq-Ay; Tue, 07 Mar 2023 08:42:47 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZSu4-00GmEN-Ra
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 08:42:38 +0000
Received: by mail-ed1-x534.google.com with SMTP id ec29so18379268edb.6
        for <linux-phy@lists.infradead.org>; Tue, 07 Mar 2023 00:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678178555;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=unqTYip/nZX7WkFVVubRKmL0WM29EpJsVS8P0OsOpaE=;
        b=Eusd+XKKTE+5SuOXFhD4Jk4H8VMkJJ50GMAWk0gBxQei4r0OxVLwrd1mTkzNzFUiz2
         1wRs9FOXpNIKdrkWQ9ERJnKiotHtLrwu3n36DYL0+5ZEar49+NINtEXWHqwwPn4xNR5Y
         NWljxAdz10RbCv0R1G1rinKUjT/kKAIOf5kcs1qSA2HLqZOvfrvwYmskUjaxcuvWxnCb
         zUJc9Vg627t75Taw73EldUXKGTig9uECMUp/+1TqHVlAbwxt/hVAtt+0sJLByiKzYXlk
         2wdDyyfHBsKcrLjieYpPG1bgTCGHX706/B2Yj2HQG34z5CtkFsHDt0eU1lxIyKGotnaD
         uaCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678178555;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=unqTYip/nZX7WkFVVubRKmL0WM29EpJsVS8P0OsOpaE=;
        b=OUrCz/bBVfQAeaGHWFkm9jXkot29cXJhmWlrmWyPr56tARINdhifnSbcZEAreUFe9m
         2YMC1UAwJdJ6TRxP/Xv8HfTCdHAqQ0sMcjUePqfltUuo9P5Ld6/lCPrITq7HddPOU+Dr
         lBBmoVHNbWbJK+3+bT/MjAnemZJUP2NAMJVryXEaNzt+jK+5S00edpIAO3mbNFDxYAl0
         m3CS53IHZcFeHKMfev+ovhSUadX2+uKp+IEPWXN46creUk0zaXymBCpSNPYunrp4Y0JO
         WyJpacfvXae9vfo7JCFO6spQjx5BpCPz5hSeE5VKutvJt1tfuS42nH1Ac2pRJvNqU1J3
         T5dg==
X-Gm-Message-State: AO0yUKWlnpIFmwKcIVGrQgqAbkon55mtUMarF+7uFfKF52742vTCTOrU
	OzUwPMEZIjDGsOPz4ypN7vsOxQ==
X-Google-Smtp-Source: AK7set8Rs3NbWr/+syYwZkWacBKqzhW8dHm3qaImZJYpVxvN4EL2d7wEi9d0aVvqf+tbGrSHBr3kZA==
X-Received: by 2002:a17:907:7f09:b0:8b1:7e21:f0e9 with SMTP id qf9-20020a1709077f0900b008b17e21f0e9mr16867174ejc.18.1678178554921;
        Tue, 07 Mar 2023 00:42:34 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:5310:35c7:6f9e:2cd3? ([2a02:810d:15c0:828:5310:35c7:6f9e:2cd3])
        by smtp.gmail.com with ESMTPSA id r17-20020a50aad1000000b004bfa4f747d2sm6301772edc.54.2023.03.07.00.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 00:42:34 -0800 (PST)
Message-ID: <4c039e53-e3ca-29d7-e5ea-f24e385d28b0@linaro.org>
Date: Tue, 7 Mar 2023 09:42:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org
Cc: Madalin Bucur <madalin.bucur@nxp.com>, linuxppc-dev@lists.ozlabs.org,
 devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, =?UTF-8?Q?Fern=c3=a1ndez_Rojas?=
 <noltari@gmail.com>, Jonas Gorski <jonas.gorski@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-4-sean.anderson@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230306191535.1917656-4-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_004236_940402_48DD824F 
X-CRM114-Status: GOOD (  13.51  )
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

On 06/03/2023 20:15, Sean Anderson wrote:
> This is a generic binding for simple MMIO GPIO controllers. Although we
> have a single driver for these controllers, they were previously spread
> over several files. Consolidate them. The register descriptions are
> adapted from the comments in the source. There is no set order for the
> registers, so I have not specified one.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> Changes in v10:
> - New
> 
>  .../bindings/gpio/brcm,bcm6345-gpio.yaml      |  16 +--
>  .../devicetree/bindings/gpio/gpio-mmio.yaml   | 136 ++++++++++++++++++
>  .../bindings/gpio/ni,169445-nand-gpio.txt     |  38 -----
>  .../devicetree/bindings/gpio/wd,mbl-gpio.txt  |  38 -----
>  4 files changed, 137 insertions(+), 91 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.txt
>  delete mode 100644 Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt

https://lore.kernel.org/all/20230126-gpio-mmio-fix-v2-1-38397aace340@ncr.com/

https://lore.kernel.org/all/9bc9349d6e13d81c6200b0cd8fa20c76263043f6.1462543458.git.chunkeey@googlemail.com/



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
