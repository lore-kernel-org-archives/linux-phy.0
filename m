Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31DA2C54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 16:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZHgeqw1vXNZtMoyFGBv2N+7c4FLFz9tRoNx7qYbxEY=; b=mM0VU4hRzqUq74
	WtfQgiAPjwuTkY7m0l1zVj3rD+gt1h2SnbhBp1jIV/F0mQKxjVYY/pN8pBYk13U9d8NrkIhpE4FJH
	PzfDZ7et5qvAOQdp8drjAAUg4xdb4Z83yUj5rqWpeDYdhe6YpVzLCXJeZyAxpuA/dpUnwvdA4j39r
	pscbX0VB9vqp7iPKee2LMj085omYG1Mc0WX8v4pSux333WhnSTiD3u8V00G6oEX/0alxXoITc+f39
	z22nAm4caSL8N0f81qxaQ6WbydqtfGB5SIiZEyG3N6V3YKZd/DQP8q+l8dQO1giW20YU6BwlccMR1
	buI+5bNaDsRQgaZNoxew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRO1-00FcRY-I3; Fri, 27 Jan 2023 16:15:33 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLRNy-00FcQH-0n
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 16:15:31 +0000
Received: by mail-wm1-x329.google.com with SMTP id q10-20020a1cf30a000000b003db0edfdb74so5705503wmq.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 08:15:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pgZz+6PWFo4uW0VORVf3OBAL6wZ6DYjbjKUyaSSYmLM=;
        b=Ort+m9TbQelr2tInwYyQ8i8qHQ9blNIDw8TmQjGTYoR4bUs7fMU1NnbQrZhKPmY7OY
         bnGaPQLEplLrNuPt25RBJHdyb55D63iCHX2SOipQ5m2HVMHZFV1vsn+vdQxU3ZFuFOjv
         3ggvXdOihf0ZvuO7ZituWSGczgLzkhUcp4AdTYssg9RFpXJZg6WqnkyaHR7GzfOzDO6Z
         uZtGy2pVmhKEFQnUtBTDX8Rja8TwXTShtIEIWgM21CKC1YsVaY9gPdQ6wKAZFqgeiMoj
         pADxQ3X+LeP1plXK4RroYiQbxr473gHm9Q3suLR68ArUmJN5R61LknbGQP1KSdt6dNqo
         O8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pgZz+6PWFo4uW0VORVf3OBAL6wZ6DYjbjKUyaSSYmLM=;
        b=vaZjKy6hXDQDMnsYTdXsvkjTf2rpAVn/1iZJO2N34Jrukt1N0+T72V6zGOUg62zrHi
         +Yo4nfCZkB/19h0EPDmdKXxFy6r/FXujfyMhbkkOBbBTL9orkOeHjuFbmbbTruqexyZQ
         OyfjS/M0zr8wuNEIMU/uJ1DLx3I5cRAr/s9ugKab+FFN2ZA27uTi5yCCF1vKcQdn9Anq
         2NOi6giR7i9PiwYTi/XEzwdPGmxpiUxtszADNjPfH/CdTX+7omDrJTW1ehmnN2kVguWv
         n6KpFaKykswSxL/IXkv5Xl9FAhOQtBNGmgRdzYhXvd0b9n8ghLOtHgUHhJGuRNDWVlb6
         jsNg==
X-Gm-Message-State: AO0yUKUrPFw6Fy459jL9HYvBtsmdd25HJ1ofQgxUTQVrepmMufUnqkWC
	VHPrrUIu49ywGWcDRviWQo+ApKtlNh6K4qx9
X-Google-Smtp-Source: AK7set8XGssyTqlV8J4exzGzcFmE8vvc7miQvlQUvYrj/PoNPn4D2LcsEEXmO53TfG7v3RdzI+/L8Q==
X-Received: by 2002:a05:600c:4f4a:b0:3dc:16d4:a99f with SMTP id m10-20020a05600c4f4a00b003dc16d4a99fmr13556737wmq.8.1674836127152;
        Fri, 27 Jan 2023 08:15:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id ip7-20020a05600ca68700b003dc433bb5e1sm427854wmb.9.2023.01.27.08.15.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jan 2023 08:15:26 -0800 (PST)
Message-ID: <a3c3603f-7401-aeb2-4b58-86c3ca778c6c@linaro.org>
Date: Fri, 27 Jan 2023 17:15:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v9 07/10] arm64: dts: ls1046ardb: Add serdes bindings
Content-Language: en-US
To: Sean Anderson <sean.anderson@seco.com>, Shawn Guo <shawnguo@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Bagas Sanjaya <bagasdotme@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Li Yang <leoyang.li@nxp.com>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-8-sean.anderson@seco.com>
 <20230125234335.GC20713@T480> <8074f0be-8a70-a937-49f2-123e0bfc6218@seco.com>
 <20230127075248.GL20713@T480> <20a9070f-9673-2f51-97df-68e78c37d894@seco.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20a9070f-9673-2f51-97df-68e78c37d894@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_081530_120063_A092D014 
X-CRM114-Status: GOOD (  12.11  )
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

On 27/01/2023 17:11, Sean Anderson wrote:
>>>>>
>>>>>  .../boot/dts/freescale/fsl-ls1046a-rdb.dts    | 112 ++++++++++++++++++
>>>>>  drivers/phy/freescale/Kconfig                 |   1 +
>>>>
>>>> The phy driver Kconfig change shouldn't be part of this patch.
>>>
>>> I put it here for bisectability, since this is the point where we need
>>> to enable it. But I can do this in a separate patch if you want.
>>
>> From DT ABI perspective, it's already broken anyway if you need to change
>> kernel and DT atomically.
> 
> AIUI new kernels must work with old device trees, but new device trees need not
> work with old kernels. So a change like this is fine, since the kernel won't
> touch the serdes if it isn't supplied.

You used the argument "bisectability". If the patchset is not
bisectable, the ABI is broken.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
