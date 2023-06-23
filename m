Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72C4EEB64D7
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jun 2023 08:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eoOScsmY0cu6ZImWrwNOyOTcxljz33jnBoYHA+S5+/Q=; b=K8S8H7lVnRhqZy
	RLdHAIbM9axxgHkAX0FusKg4aNXXcbogmkroYnvGK7/TGwcqCluYeru9K9LsS1rZxvuNR1FwgIj3L
	EoaYW6jsUCpvSUFpvh3kGjNdIZz2T6RxzeskKuMakFt6dVRyF1QHtVbFqFNcW+rLFJH7XeFaTEakC
	F8E2oS2h7vT0UEqfujdUMAXUDbKvJF8x63EWPSfzyPieCzViahwZIHzlVEcU6Wg5eKbK4FTqtNtpU
	obeL9S3jCVWsrPMD+YfHS+aJ9cjtrmysms7L7/bQKsqxqCa1xeGnGfNxJbMJz79ADDLHRl+Gb0tIo
	98RyiOZVsLg3v93PyK3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCbr1-002sHv-0J;
	Fri, 23 Jun 2023 08:09:15 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCbqy-002sDp-33
	for linux-phy@lists.infradead.org;
	Fri, 23 Jun 2023 08:09:14 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-988a076a7d3so36612766b.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Jun 2023 01:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687507737; x=1690099737;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=61hnG3yUipEfgXuHCHhviz9DgCyYNvHGYoGPWJLkt/M=;
        b=erVJdjwtwrJVStyE4E6L/LQ7dXXdbhaZpYTLFOPE5MP/FrFoqWsvDKNv1ZaVYZhBeY
         8F0Ado+HM0ImBANx1Ix83OyqMUQUgfUILLke5lZaFPsZ0K+7ioCg1HIP9nyoTNqxHB3U
         cbeHHcS0xow0A27FGCoHnzj0DthAj8z3Yt5hV8TOMgLTJ1bUWo2J1tyRE0BjeQJn8eLK
         MziKEInTKThFdGKGiM81SC+3jYev2Dpg25Hn68yMzJZcrFtU0hwMCLyO/IHMgtE3Shb0
         nMwho1uUPNvP6bdcWwHdQKUk/noVTXSwrlZyFogs0KXtyF+3G+16fCv2y9xvXhxUEpMd
         Nrfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687507737; x=1690099737;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=61hnG3yUipEfgXuHCHhviz9DgCyYNvHGYoGPWJLkt/M=;
        b=O4bC15RXvUnzygtU0gTcpCvNZKNHxzzZfG8nzJFRCvHXNSCYbk2d6NavDS41sta2zb
         /OCW/NvibrFU/UMv5DRdUx8XEURroqFDRYVFxa0fztqtnb6TcMbsrQzWtmLIxLVhbajW
         UG/2tYXWUgRcsbaiqDAuuv6AMobFGEefb2jHyVptWPGX//bguod7zhEHdjXhdDgZFtUi
         kjP/+1Fn3CpSD/7tCLcYItfJSmE2d7A+z/TPgyMMWluQPWb6dFpifcH8EhiIW6kJq3rA
         C9ip8GB374c+JBZEr9meHpXcs0WU+ug+uQyCQNCb7U7mM9s+OCBiXHzfS7CRfCl1lrMX
         Xzlw==
X-Gm-Message-State: AC+VfDxgLR5g2WhCcvWZ20TNw1sw1NyGvqUQ4InaPSbVoukkUskDTQ5j
	WkdaHOuPVJx9eX4wkSTHjsLR6g==
X-Google-Smtp-Source: ACHHUZ5fEluowmDvQcOv9Mfk479MA+dnDrPOx6btNBBr0J7FqLU5b9fcKOilyObJt2z9EU0JqRmjfg==
X-Received: by 2002:a17:906:da84:b0:988:f307:aea7 with SMTP id xh4-20020a170906da8400b00988f307aea7mr11442363ejb.7.1687507736928;
        Fri, 23 Jun 2023 01:08:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id d1-20020a1709064c4100b0096f7cf96525sm5747617ejw.146.2023.06.23.01.08.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jun 2023 01:08:56 -0700 (PDT)
Message-ID: <dd12208c-baec-8628-163f-828575bf10b1@linaro.org>
Date: Fri, 23 Jun 2023 10:08:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
 geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com,
 broonie@kernel.org, rafal@milecki.pl, quic_srichara@quicinc.com,
 quic_varada@quicinc.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1687414716.git.quic_varada@quicinc.com>
 <4f4136a91b24d3ad35fa12bd19fe14b83da9affe.1687414716.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4f4136a91b24d3ad35fa12bd19fe14b83da9affe.1687414716.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_010912_985329_349216B8 
X-CRM114-Status: UNSURE (   6.39  )
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

On 22/06/2023 08:22, Varadarajan Narayanan wrote:
> Document the M31 USB2 phy present in IPQ5332.
> 

> +description:
> +  USB M31 PHY found in Qualcomm IPQ5018, IPQ5332 SoCs.
> +
> +properties:
> +  compatible:
> +    items:

Also drop items.

> +      - enum:
> +          - qcom,ipq5332-usb-hsphy
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
