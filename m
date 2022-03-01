Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28B9CC433FE
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnRzqivJWRibpPCpWPZ27J+oqzC06gTgpElhxYzXCts=; b=ZjGofmAtw3bdyc
	PTkuhG1gEPxRrBT3MBzoWu3DnnKDYl80lYLlah46AzjoM30xw3D9LRBzlBbnC1ATr6cre0AnGlYxr
	1EZAMEyjnhpo4zaaA2QU2AqHXfgPALDWrpd1lJXTG03BgriEfW18GgfLd8yx2t55vsVpfrGExdnEc
	orgournHF7/QZgsxjfjw2vMf669YI55RlxYIitBq1KHJ0nXzrRPnu52vrzv61xFAbqp2v7DHxisRR
	Yg71+FB8Ax0SvIlXkVSyvPnBRQhee/x6TFlXsbxtByiTZyKgLLItB/T5x1A4i0pFG+mRK5NGqlYO/
	L2659CCyMhplO7NFSWUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOtU4-00Eovh-FE; Tue, 01 Mar 2022 03:47:32 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOtU2-00EovK-2U
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 03:47:31 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id
 189-20020a4a03c6000000b003179d7b30d8so21208402ooi.2
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 19:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=h1OElnG4x1T4fzahm9wnw8ojuxCj+kiWdCPzk4ihLng=;
 b=Sr0WtitDvf1kgdrN3J7mYOmYSoRZODO+RwwQlzbpjJG9NTAMcd0z6yB89XhArvDoBm
 JyJ2cg+e8RoM7L2a52Kub3X3Ql0KESEsFq0Iq9N6fM2LNH3mYTPwJS8p7g+y+7hxKWee
 j4wkS/CkaYzYi2gQ0rMIVHhKNz8ePTsXftrwMHSmKFahxngludTQH0EsXLpFHPZRwL5r
 uKA82CddPdgi/xKHv/hLe7DhL1glgQMSWj9Rk2VZYmHGQrOHxFtincEyLntLow29+nBA
 e/ha/hwT9lQxUrK+qG8ZXYgRraBRoAHcIb4VAny5AqTzenjMewFmpJGxjvsf8H9AvLrV
 3eJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h1OElnG4x1T4fzahm9wnw8ojuxCj+kiWdCPzk4ihLng=;
 b=1Zcy4rQ9eavYWUO+y7RvM4vrKUW9scTEli4BAmV/2U3xSupS4qwjk5fE3qVyCdvIHO
 HvhaaaSq4iiAkYI+NOHFcHyURydegRkUabhT/byJ3cOElhMWGPA7qdO03jlx71QZqyiG
 odUOR7Lo001Atsb57p0WXn5kVByFDtm1aKC9V7kBTqydcRuyTc/ZxqqZt9MDYgTF2CAJ
 8Ihuqy1mvOGwN/qA3yi/2StWCgNzBHM7AyMjSGAwGsxEjU/jxEPg1t5nQg3ahFeo6lY0
 qxwCaD1O/tRaNvXg1OduOd3kYH/aEw1bFz9Lcj8zlDyV8gXZb85JybHk11RT8DuemPcP
 3vcw==
X-Gm-Message-State: AOAM531rX0ND2FYCHVadfbhK8udPjH6x9/9r4yqQyYGb1phE47ykwBa4
 T0l2zdOZDk0QYvFhyKBuWOswfieQtYOvbw==
X-Google-Smtp-Source: ABdhPJx3Ydjw1e6f0f/FFdKlvUURmly7eAqEkjrIIGr3Z7CHOyPLM5ZJHANihQJ8aOtZ6dqbah2OAA==
X-Received: by 2002:a05:6870:b4a7:b0:d7:3513:5e5a with SMTP id
 y39-20020a056870b4a700b000d735135e5amr3703381oap.38.1646106449102; 
 Mon, 28 Feb 2022 19:47:29 -0800 (PST)
Received: from yoga ([2600:1700:a0:3dc8:5c39:baff:fe03:898d])
 by smtp.gmail.com with ESMTPSA id
 i47-20020a9d172f000000b005aed7ea7b44sm5722198ota.73.2022.02.28.19.47.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 19:47:28 -0800 (PST)
Date: Mon, 28 Feb 2022 21:47:26 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, shawn.guo@linaro.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 8/8] dt-bindings: phy: qcom,qmp: Mark
 'vdda-pll-supply' & 'vdda-phy-supply' as optional
Message-ID: <Yh2XTjyBICVkn0Jy@yoga>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-9-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-9-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_194730_161812_E00E76B8 
X-CRM114-Status: GOOD (  16.10  )
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

On Mon 28 Feb 06:30 CST 2022, Bhupesh Sharma wrote:

> Fix the following 'make dtbs_check' warnings, by marking the
> 'vdda-pll-supply' & 'vdda-phy-supply' properties as 'optional' in
> 'qcom,qmp-phy' dt-binding:
> 
> arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
>  phy-wrapper@88e9000: 'vdda-phy-supply' is a required property
> 
> arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
>  phy-wrapper@88e9000: 'vdda-pll-supply' is a required property
> 

These two supplies denotes the power for the bus and the clock of the
UFS PHY. As such I think we can expect that if pdx215 has functional UFS
then it has these supplies, and the "bug" is in the dts.

It's probably safe to assume that the two regulators are the same as on
the MTP. So my suggestion is that you just wire them up in the same way
as the MTP; and please Cc Konrad.


PS. This change is unrelated to the rest of the series, please send such
changes alone, because it could have been merged independently of the
rest of the series...

Regards,
Bjorn

> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index f8a43acd229a..82b102b7d42c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -436,9 +436,6 @@ allOf:
>            items:
>              - const: phy
>              - const: common
> -      required:
> -        - vdda-phy-supply
> -        - vdda-pll-supply
>    - if:
>        properties:
>          compatible:
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
