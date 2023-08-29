Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7381EC83F1B
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oK4QomTFYK9d828UjCO4SkcVs4W+Y+2ATzH/5FEb/AI=; b=FbzmSIrcqEj2sP
	tQ2OUTnTZpS1V/jQEdUq6cpyXAjh9YWY3QA05Jl7gIgvzxd9q5bY1fehPzsOk9wUY6e99k4VUcW/3
	XAEFGV4d8slAwsHt5EYJ62ocOjHU8TeugeHROUM1vC5GjwjPsGLKFNxcBoizpjpbBsUR72d+so0SP
	HvixX/0Hal6QqAB68lEvyGh+6mMy0T5BFbzwLgVlp9/ZIZqeM81Ns0CSEsUXHwSkq+0c8W+ZfPoTO
	NRxC3XFUoMVaI5f3HBgvEBHWHHdt9vOd+tSWKEUD9ElIL62Y40itc3T6uqGXhdIdf+qykAbYladUB
	5gXL3kD6fw53wAl0rLRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb27J-00BttF-0V;
	Tue, 29 Aug 2023 17:03:01 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb27F-00Btry-2e
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:02:59 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99bf3f59905so602503566b.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328574; x=1693933374;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bldnbmVybBud45ZJz7mQ560SdzkuWgXUw7+WaPmzy2M=;
        b=GNyD1v/mEPcl/zk66goLL/Q+M2OgwzdgDqvu9qw30W3tfUdMS9j3eQhqmYwBIjbnJ8
         OfAS2nldcpoQCk0rovTP1wfjB53b3uOBf7VX1BsQvC0BXWEtpPfUrehgaQ7er02r6n4I
         pGsoa0C75NuMY6fMSEuIcapZKE8HkHtajUJkFPdqm7Yrp+PeQgscNcIewTKkeGhD55y0
         9i8dDPsxC11FQIVTIVeYPu1nOZ6tNev7HhWSyFh/VRHHk1dDGUdyX009svPeqqnh17uz
         E9TjcgYV4VqQD6Rr/GJkPH4UDFRsa6OMi5/f5JxEKhnajclWlMwwAsMRRFSXfMozrUB3
         R/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328574; x=1693933374;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bldnbmVybBud45ZJz7mQ560SdzkuWgXUw7+WaPmzy2M=;
        b=kQOyZTGrUl7UGnQqTFtlshuRSWrfFO1nsltcjeJYPniYUY8f5EUvmbN0A/IacXG//Y
         8cTLGL1QX4l+GNE6IGcB3+5yyNFJzNUGLJbSuGZz17qMgawp5R91JhmFyOu0TIKHqcZK
         cYzshDciK7n4HnhAoKV3EPGTZpZMDb6c08jhHqnhDtY/yI6myJQAcChXuE5IFtRyv8tK
         1ewMdf+gmHGhhYUHrvq2PIka/rnrSBT3lu3GbtURKWCXhddvg2CZ2WEBquUMDaog+cxJ
         RPkAJVmXkmOkrGCP+Wze9NZXont7DvNWl+sT05e8PW8MIxsO9CrVpkoCW4gi8m4NCcR7
         YIcQ==
X-Gm-Message-State: AOJu0YzG2OLBQAbM7VMehM5HtB7kAhY49YHmmPEo71tAiHWoDB1Pid+T
	RnfNhuLwbH7DzUd1oA4Br6wp/w==
X-Google-Smtp-Source: AGHT+IGdvUShBa7B23B4k7U+l3LbZfQpW/c+8tVN/ml3RRu8aWbxm+RtW0v787C778RKVi+bfpmhzQ==
X-Received: by 2002:a17:906:cc10:b0:9a3:b0c9:8203 with SMTP id ml16-20020a170906cc1000b009a3b0c98203mr10207132ejb.35.1693328573945;
        Tue, 29 Aug 2023 10:02:53 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id s11-20020a170906354b00b00999bb1e01dfsm6130049eja.52.2023.08.29.10.02.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:02:53 -0700 (PDT)
Message-ID: <1384c4a4-2abc-4534-9dba-5c0da9605b05@linaro.org>
Date: Tue, 29 Aug 2023 19:02:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 6/9] arm64: dts: qcom: ipq5332: Add USB3 related nodes
Content-Language: en-US
To: Praveenkumar I <quic_ipkumar@quicinc.com>, robert.marko@sartura.hr,
 luka.perkov@sartura.hr, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_varada@quicinc.com
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-7-quic_ipkumar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829135818.2219438-7-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_100257_865444_82D2AA74 
X-CRM114-Status: GOOD (  14.87  )
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

On 29/08/2023 15:58, Praveenkumar I wrote:
> Add SS UNIPHY and update controller node for USB3.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
> This patch depends on the below series which adds support for USB2 in
> IPQ5332
> https://lore.kernel.org/all/cover.1692699472.git.quic_varada@quicinc.com/
> 
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi | 39 ++++++++++++++++++++++-----
>  1 file changed, 32 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> index e6baf694488c..7fbe6c9f4784 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
> @@ -158,6 +158,27 @@ usbphy0: phy@7b000 {
>  			status = "disabled";
>  		};
>  
> +		ssuniphy0: ssuniphy@4b0000 {

From where did you get such pattern of node naming? Downstream, right?
Please, do not work on downstream but upstream.

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
