Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2904FCCA480
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 10:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UYMPaZUFfeuXb/CFnlLS/0eATb5Ps+wloYhqhPcQBos=; b=w3J3ib7zr76zvE
	GSFol1DTG0apJl6PK1p7IEp0sQVkaWfXN6LKomXsu0aPtjqbjejdvsMapm4fxaEFDyGo8JgfZX6Tr
	Gln5oyiV6KuiYPq/SYax4A90pYdZlFT6Ggg1qssCfpNJvVq3NcmC4aKwp+5wOre3dm2Cm2GXJqTdE
	h93HYV7HcO+5rbyt42Jyw8OYTn1Mzx7kMke8yA2i7Kk3AxR4FqD6eGP4Gdkzcs5TRBrGqvjRxzdvZ
	N9NAi9CNiIagWiy1OIP8vwDeBE5RONVE7kne4lO4ttUcxGjZF0fOQwW39Ffx2uldF/2tqDM3IP5Wv
	aYV9GHyyQsa4U7BWIPIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBwJH-00DRUh-Ji; Thu, 14 Jul 2022 10:43:07 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBwJF-00DRRd-7x
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 10:43:06 +0000
Received: by mail-lj1-x231.google.com with SMTP id w17so1676764ljh.6
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 03:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HpklPWRSZF3VkeOLjuA+CekBCR2uS6eub9kaGTBZ0ks=;
        b=sqpJzEmb7JlJuOfQinW0SnLvkKVBnWVIfPCdSCyy7xvWa6/uLT189ZackdPfY5VJgF
         j+XFLw4ug9D2LBPq0Y+b8tCg3VJ6gD/RTj2KNg72LExi4yKsJrw5MPUTZo1uMoozUVzH
         8Jf4FnjXwXWjR3b7uijeW/uW+MAQE89q2OgxXWzd4InWc3UcI1V2RbF8kv6p+hDZ0db5
         IfZoGdJq2GC8gpW6oBUVY2q6GO0G5OySPUCBFuFy+PwAJjUir7axJapZSBUHJPcosTae
         2gJ/OxxiSjYM+FyYiedjAnbJRk5onkCEUZENaPKZ8ch1ePwhOcFHbSv7/JVoiUwyBYOO
         DjLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HpklPWRSZF3VkeOLjuA+CekBCR2uS6eub9kaGTBZ0ks=;
        b=oSzG2tAkIPjsxyqJ5IMa/ezZj5xj0erBzzq+HwBwKQ7YOCSHIBPE+czqQISK74iJeZ
         feQKDeXH9t48wsmlz10yx6B/McWUVaiomOhJ8O9x2XLGyGnNWDzzuLLo7v+SsmqgzezH
         AeZAdCrdczI9+xm6U9c1+XVNIT8EROij3be8h7lIQZPD4g8schnB40KlpVWHbbdlr9S+
         vcHhqLmK+7i9xfLKQo84t+6CSAJEzUYv6e2wAoGAMnvOFNvGGclteza3bPS5D3x+zAvv
         Tc3n3+L7b/qQFyF6vti4B82CafE/Hrn7N1yvGPp9Qf65DL9dke76t9pEe8WW712yAWTx
         PJ9A==
X-Gm-Message-State: AJIora96hEVTS+xPqNz9iD/i9nhUF2J6y75h8AdtQGdmj1osrHdWrSvW
	NT5YRlMX4EE73EAnT1Cax344Ng==
X-Google-Smtp-Source: AGRyM1uGHxh2vo0vrwrvXBu+cxylQzoIdS3mBxPptW69sUUfI3XzwVKLxiAxzIxdTR+TpotSyu2gng==
X-Received: by 2002:a2e:b0d3:0:b0:25d:6888:7c70 with SMTP id g19-20020a2eb0d3000000b0025d68887c70mr4184434ljl.244.1657795381851;
        Thu, 14 Jul 2022 03:43:01 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id o11-20020ac2494b000000b00489c5db8bb6sm290241lfi.176.2022.07.14.03.43.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 03:43:01 -0700 (PDT)
Message-ID: <c84de7ac-5e4f-ce04-bfca-0341f4d6bc1f@linaro.org>
Date: Thu, 14 Jul 2022 12:42:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 16/30] dt-bindings: phy: qcom,qmp-ufs: add missing
 SM8450 clock
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-17-johan+linaro@kernel.org>
 <e8046961-9555-07b7-721c-eeb278cb2ec7@linaro.org>
 <Ys/q1crMhS3Ou+qu@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Ys/q1crMhS3Ou+qu@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_034305_316380_DFE152A6 
X-CRM114-Status: GOOD (  12.28  )
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

On 14/07/2022 12:07, Johan Hovold wrote:
> On Thu, Jul 14, 2022 at 11:21:52AM +0200, Krzysztof Kozlowski wrote:
>> On 07/07/2022 15:47, Johan Hovold wrote:
>>> Add the missing "qref" clock used by the SM8450 UFS QMP PHY to the
>>> binding.
>>>
>>> Fixes: e04121ba1b08 ("dt-bindings: phy: qcom,qmp: Add SM8450 UFS phy compatible")
>>> Fixes: 07fa917a335e ("arm64: dts: qcom: sm8450: add ufs nodes")
>>
>> The second fixes seems not appropriate here, because you are not fixing
>> a DTS. A fix for DTS would be a fix for that one.
> 
> I wanted to highlight the fact the binding wasn't amended when the DTS
> started using the new clock, which it should have. But sure, that would
> have gone in a separate patch. I can replace the second Fixes with a
> Link to the dts submission as a reference instead.

Yes, that or mentioning as "commit xxx ..." in msg would be better.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
