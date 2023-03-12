Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4B5CC74A4B
	for <linux-phy@archiver.kernel.org>; Sun, 12 Mar 2023 11:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRPVkBNA+kPk+nbhfLYsomSvXtgKGYYvzlo90MJfhWw=; b=hksyjnlFLNAbBV
	TPJ7fP+OT4pOSbIZDfWtLUmMpLNv14Q97dk7GJLN6ZjI+wRb5pauqv7f6xahdtdumdk/n/poWMbNG
	ZHa8mJ3wxOCc2Kp3j9PwMvJHeiFEViwn7cvcc0IcFgxZSvCtrCPK8Vmtgu8/f6ArsmQRkocN0xuEk
	9moGKaV8S8x9ZG3MmQAOhhlf/GhlpcvuWyoT4rCvwjyK30kIRD1mccqG1yspZHTeaX8S7/Euk2s8e
	I5sqI/8qCRrnMlFGlx8KdUOYjMXzOlhn+gGZCmz/k3EmUNAlpWc+sLVso1l1duE3EMGzRCF91y46M
	Bp1XONKyOGuv4/WHWAwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbJiO-0028wv-Ow
	for linux-phy@archiver.kernel.org; Sun, 12 Mar 2023 11:18:12 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbJiL-0028wS-0K
	for linux-phy@lists.infradead.org; Sun, 12 Mar 2023 11:18:10 +0000
Received: by mail-ed1-x52c.google.com with SMTP id j11so37926474edq.4
        for <linux-phy@lists.infradead.org>; Sun, 12 Mar 2023 04:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678619884;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G853ILuu+sQv9a+0BB1tR04csQhtS3EQP3WsfLsCtaM=;
        b=r6+3H18NaXCoJwmD1kOtzMr1pR5aWEHs8IGXEWpspHhQONeRwM2EbmME0NynGLzXWV
         k5bOVKy64/Id15Ff1jOwjS4BfWxTip4OOoZ6sQ9FS+ahXLuBWDMRtHbeMN8CgHxbcelN
         sD0IecGS+/Og3LLSXKbch/wsDwrxWXxNiq+FUDQG9+YuvRI2O/RWpkPcghK/sfNdrXrj
         8wlOC/Ofscfjyi91VtMo4z/5Dc6f7B+f4Kp+ChqtVqisx0uij7/8D9u/JOySBQoyueW9
         9SV0PXX1WgTr/XHwKhFc3+l7memXUrV8p5nVoORoWFDQL23If0uoN11xDxSdUwVq+jEZ
         YtTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678619884;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G853ILuu+sQv9a+0BB1tR04csQhtS3EQP3WsfLsCtaM=;
        b=it6PcFVVtPErz4gSAKlgPAb6w3xcIJWa3eQR2Q4M8rEd2/O/UiGmTDrJCRHDspbjUd
         Fmmx1CUIpRtibqixCi+GpMJppCgJ06rYpfPgR8wXd5MvWVcIhyJZZvLEdC0s+iFgvAvX
         Kf5NylCbjqdRkOve5Zs381OiaRyj+vtr8Yu8U0VtQTg4L15rlg1zmtYgFDFZwHx+htD6
         MZPO0WUddPoiKoZA/5XVMUtfKSy8zur7ZROfKvK9+BY0+Fkz9pLs0wsmEJU2PnvcSr7Y
         Iq81ljppjl4UehzEH9OnW6aQsJFWRocloOPLF7dstEvR8aj4N7d5RdiMiP+If5tnI1WN
         AdsA==
X-Gm-Message-State: AO0yUKXuxhRCEn4UdwBcjHLUCJ7f+8YdQaW2rZPz1ZyH56KmNYfvuVRQ
	b5X05Iy+gRUcZaMuWr9hEAypqg==
X-Google-Smtp-Source: AK7set8V5euDVs9uhpdcYEjJ1CaThkXS/gSQkFc3mYuSUaaEMAByufxtLmQWsUvS2DZz/7M4EwaPHw==
X-Received: by 2002:a17:907:2beb:b0:921:5cce:6599 with SMTP id gv43-20020a1709072beb00b009215cce6599mr3483259ejc.41.1678619884602;
        Sun, 12 Mar 2023 04:18:04 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id g2-20020a1709062da200b008cf377e8795sm2106315eji.199.2023.03.12.04.18.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 04:18:04 -0700 (PDT)
Message-ID: <85921a58-59f1-ab35-d3bf-3a6174e6121a@linaro.org>
Date: Sun, 12 Mar 2023 12:18:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for
 SM7150
Content-Language: en-US
To: Danila Tikhonov <danila@jiaxyga.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: dmitry.baryshkov@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, davidwronek@gmail.com
References: <20230311231733.141806-1-danila@jiaxyga.com>
 <20230311231733.141806-2-danila@jiaxyga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230311231733.141806-2-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_041809_082851_D065360B 
X-CRM114-Status: UNSURE (   7.34  )
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

On 12/03/2023 00:17, Danila Tikhonov wrote:
> From: David Wronek <davidwronek@gmail.com>
> 
> Document the QMP UFS PHY compatible for SM7150.
> 
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
