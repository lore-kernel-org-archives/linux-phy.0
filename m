Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14190C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 12:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4nGXX7DivYlmwgcbVxajIENmnNd4tBYXqBFhhjamHI=; b=NCf7cBaPwqoi1y
	Db3iDsZj808tn4VgPvzGfS0sHds5XRTIAxrrhe2Lp1rwhPKpGtEU1+iqGw5zOR0LxQCt5G9B+/k/5
	bEKpNSAIaF46gtqmzOOuWUyeSHY1jND/1f0OTm5lHFdth8+dOJnv9lDZ3Nq0uxd8OChggaFQNgYzO
	XqkTw6p6ZRaXqT9EH4jYck6AyFC3B6fEC6ZKOA0K7MwMzSdoXCqsInXX8yR2ZWqDmk6qHfvqFjowk
	G/SJWjD5yoxPhHYY8PPidgEjsXu9Ex9yThsl/eXoYocZzlAjiCj8sUQfXJa1pXIU8jeYk3yJyKf2c
	PsI34mqdyVkv3nHYFT/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Nx-001ZSX-D8; Wed, 19 Oct 2022 12:41:25 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol8Ns-001ZLe-B3
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 12:41:23 +0000
Received: by mail-qk1-x736.google.com with SMTP id a5so10553418qkl.6
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 05:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=APY6XkBoiH+8MYx94R2gCE5tsyBBjocoJUqhpNcG1uo=;
        b=t0jva4wVew3s5XSwsmG9/vKT92stEy73Mz1sWf3wiZStx2UYRLlL+2Ue1tYnQID5Qm
         FB272FCC/NGWhCI7C4XfeKTRYdFEaVGCI7MtWoYoacYNprbMXX0MTZNpbzEAn2j2Nha0
         jCz+tqfS6oNV1e1ELhtj/YUlwJ03+DjRsJakr2AirJJHw93lXnKErJh0nQodWQwP0kB9
         gVH4UJsXrMmeAVaX89fRORuta/K3zrt+niaVSaDqY7KOl9wH9CJADKSNSU78yNRzsk9t
         sg9gG2NNMfC4oCxff1qbWIGj1imxFQf129rR5HfMwuhlb3wBihKWdrIGbDSa6d++OrvO
         c/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=APY6XkBoiH+8MYx94R2gCE5tsyBBjocoJUqhpNcG1uo=;
        b=ASrttp2/QwNXbfDRjho1BGt8xH5axphpVxOOlqFtt8clMxc3zCVhzWf+nS4kmLkOt/
         T/2LMupYRKRAIp4AC5TwYvUiWuGZpqmQYlCTllnqmX0I7216fjpbdZicEKPdNGpeKTeF
         XDSblkWYXo6dNtcG/9FePThKvbi8OMjfFLpbbrhbM6ylmB13pIYgBJiuHo1cKjSIqsX4
         PCHIcLJIzNRMbVIvmqPcrID2L6AyxKS70niyr16fAEiTN5T589Ynq3gQCkvz9F3/UypH
         9tmkiEQx2B6w1ZtmIKar9MaB5SMAnZpmZVs5MZzc7v0A9HXJJSWmOdgmsLwKT1jf88aE
         ZbJw==
X-Gm-Message-State: ACrzQf1PMYun8nde8+mYr+vGINi23YtA8yWYnqYeciTDWZ4aoFCm1ZF7
	qUGFA2YsXLuR4n824u+eYdZ4Uw==
X-Google-Smtp-Source: AMsMyM4mg+k/dzvcqomBH9qc5f5xm21maADpMizbJY1M4DfSbN0jD6paa3IvF7n7dlHO8kOeeH6YfA==
X-Received: by 2002:a05:620a:2809:b0:6bc:5e0d:d7b1 with SMTP id f9-20020a05620a280900b006bc5e0dd7b1mr5230359qkp.545.1666183277044;
        Wed, 19 Oct 2022 05:41:17 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id y2-20020a05620a0e0200b006ee8874f5d8sm4708919qkm.28.2022.10.19.05.41.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 05:41:16 -0700 (PDT)
Message-ID: <1847fa0b-7b1b-13f2-6667-0b9003ae58ac@linaro.org>
Date: Wed, 19 Oct 2022 08:41:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 10/15] dt-bindings: phy: qcom,qmp-pcie: add sc8280xp
 bindings
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-11-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221019113552.22353-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_054120_462086_5E95F4D9 
X-CRM114-Status: GOOD (  10.68  )
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

On 19/10/2022 07:35, Johan Hovold wrote:
> Add bindings for the PCIe QMP PHYs found on SC8280XP.
> 
> The PCIe2 and PCIe3 controllers and PHYs on SC8280XP can be used in
> 4-lane mode or as separate controllers and PHYs in 2-lane mode (e.g. as
> PCIe2A and PCIe2B).
> 
> The configuration for a specific system can be read from a TCSR register.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

But please wait with applying this patch for Rob's bot:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20221019113552.22353-11-johan+linaro@kernel.org/

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
