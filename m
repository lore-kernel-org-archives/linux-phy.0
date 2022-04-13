Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B553EC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 07:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWS3JVqt2yVIK3nh7ggmKpfF9rXduLmmAlUr5E7zp3E=; b=WrBwzo0TomKUsg
	PBUDOquWx4KV3KPPyoubcT30BtLwpxssiqUZrdGQnTCVKYQL84FuwuRo8Bm9WKznzLrOoUQkcgZ1K
	4HR+zeCKMq1PNWh4zsf4fRErMt0RVApPyHd+SATx7S8J4Ye4SEZpLdJtbzCrJ+LI2MvcufyGEPF9N
	wUogaHL5ehNLSBOW5Mx2jh3QWNHqoCwyVeh35UmXNGCDfMzZ30r7l+jObs9t0SAaQXMwEujisR/57
	dTLpyMszWVf8YxkT2drf/v0CzuaIUA9qayz78j0oCT0DGnoD3uqAVkQQU6a23+3D8z5yfoQ5MyW6p
	6e8iNPG9LYhyC6WuOXFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neXRd-00HPMx-5J; Wed, 13 Apr 2022 07:29:41 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neXRb-00HPLM-6H
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 07:29:40 +0000
Received: by mail-lf1-x132.google.com with SMTP id bu29so2028611lfb.0
 for <linux-phy@lists.infradead.org>; Wed, 13 Apr 2022 00:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=rY7vyMdlEpNIsttCtPLzQ1mgAimhBwJO1tKyaimvoG4=;
 b=ZWc5DRzC+yYGA1khhGAvv1AqdIyxTwikHCFAXQM4OxtxDTY2v3BeAhwwpvImOk9ezA
 EctsSxENGFGFFkZkrZpcoGTkmulLyh3rWeFn62oqrKKF2H+NyzGhKX/r91YF+1/BF6m2
 vFcc4LtRO7sKJdj6lSbM+ZTycfN5B9+dX6+jTsoIvYcfHSO/qqNa8+3jhWrXMmYX1oxD
 bZnx6bEd8kVaJFEaYO3+WR//lF+gjNomOzHAsFaXrGLlIJXwoCO8aU3mqq3vhxwn5Vzv
 mOrtDqrmLOA+Gt+nyz/GP2LGtK52C1H26npq3xk+otWIXph+hmF8yZtC+rj2ghfKm5Ql
 z6Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=rY7vyMdlEpNIsttCtPLzQ1mgAimhBwJO1tKyaimvoG4=;
 b=FvSi1I5WDvq0cwhtzei6R0cQnezLln4BBLGpXIeG3MkkYutu3nw2UnEirL3l09aOGs
 AtRcbxiuov5l4QCsvmmFNeD1TgfvKWrtxOFPPqdJhctGjWmsIVf+EfBbtBAyvMWzHc4d
 bNpA5T0MIuP4j4NJux5JP12vXupZSjYyR0GvuSso9iUCxWiOpXOdc7byR0FgZOhoiOtF
 Rd2+pF+iNcvWYPHFNgvcvIHNGWtR9FQ2E9BIIC9Wf6x33ydxEil7czAoaFZLanA8WpTZ
 ztIFzhiDPAE5q8BCUusXgUA/DzCw/dlar0zzxHj3jsyOpLFZ5NvSyquhSN0/x89+RjSG
 tSyA==
X-Gm-Message-State: AOAM53339r9gC6CHxeYE3o+7xpVllblub9W9Wifi/60FFXSxeG/+y/v8
 tbpqIinetCmBGcJ8E8NhUC3m7g==
X-Google-Smtp-Source: ABdhPJxbpXxaRtGS8rUTdc137nOix+yIIq1RTO6cjqs8ic6+IBNmp3CSmSmUgUfzcJu8+ky5RX0Pyg==
X-Received: by 2002:a05:6512:308d:b0:464:f074:68cb with SMTP id
 z13-20020a056512308d00b00464f07468cbmr21784787lfd.482.1649834973445; 
 Wed, 13 Apr 2022 00:29:33 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 p21-20020a056512139500b00447c9b87945sm4012100lfa.172.2022.04.13.00.29.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 00:29:32 -0700 (PDT)
Message-ID: <fc3214b7-8bc2-3c9f-7ea6-231c4c57a8e4@linaro.org>
Date: Wed, 13 Apr 2022 10:29:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom,qmp: Add SM8150 PCIe PHY
 bindings
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-phy@lists.infradead.org
Cc: bhupesh.linux@gmail.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, bjorn.andersson@linaro.org,
 Rob Herring <robh@kernel.org>
References: <20220325222130.1783242-1-bhupesh.sharma@linaro.org>
 <20220325222130.1783242-2-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220325222130.1783242-2-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_002939_267560_7D41D3F7 
X-CRM114-Status: GOOD (  13.16  )
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

On 26/03/2022 01:21, Bhupesh Sharma wrote:
> Add the following two PCIe PHYs found on SM8150, to the QMP binding:
> 
> QMP GEN3x1 PHY - 1 lane
> QMP GEN3x2 PHY - 2 lanes
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>   Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index e20d9b087bb8..1e08acb8a59a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -39,6 +39,8 @@ properties:
>         - qcom,sdm845-qmp-usb3-phy
>         - qcom,sdm845-qmp-usb3-uni-phy
>         - qcom,sm6115-qmp-ufs-phy
> +      - qcom,sm8150-qmp-gen3x1-pcie-phy
> +      - qcom,sm8150-qmp-gen3x2-pcie-phy
>         - qcom,sm8150-qmp-ufs-phy
>         - qcom,sm8150-qmp-usb3-phy
>         - qcom,sm8150-qmp-usb3-uni-phy
> @@ -336,6 +338,8 @@ allOf:
>                 - qcom,sdm845-qhp-pcie-phy
>                 - qcom,sdm845-qmp-pcie-phy
>                 - qcom,sdx55-qmp-pcie-phy
> +              - qcom,sm8150-qmp-gen3x1-pcie-phy
> +              - qcom,sm8150-qmp-gen3x2-pcie-phy

If you add your compatible strings to this block, it means that the dtsi 
will provide 4 clocks (aux, cfg_ahb, ref and refgen). However judging 
from the patch 2 it looks like you don't want to provide ref clock?

>                 - qcom,sm8250-qmp-gen3x1-pcie-phy
>                 - qcom,sm8250-qmp-gen3x2-pcie-phy
>                 - qcom,sm8250-qmp-modem-pcie-phy


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
