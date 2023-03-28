Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB50C77B60
	for <linux-phy@archiver.kernel.org>; Tue, 28 Mar 2023 07:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXQRvJQZbxDZ4v5xwS3g7/tDDaZ6PZ3ajVJQE/Zx5F0=; b=FQD2Gfr+UjSjKn
	icNLeXTsS08YG8AeVl3yXHjRPO+eEQyhTpoeBrQ5+tk8YUWWBM51XZOlh39f8EbQbG6SBVI/BuElZ
	ASRpYEJgPzRxlydEOppM2rhF2UKyBO1YSuAz/+qkc7gk8XAiUJEztw4PIiDOeMLpNveCudLSvWLkR
	L9Ej093TNFtQ7U2YmykFudAtYjidMK/NwQL2wg3+qFlQhsEQYJQCKAAVcbg0zkb+X6Od8lD8609x7
	hwJEkEXs7jfI/a+O5ESaSHH3HhWFqYmXqp/uSKFpRHYJKoIletF++UnqT1xWoKmcuWnZlxR7OPmmZ
	xQWNVVUJ4iDZnJYLfKZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3QJ-00DOA9-22;
	Tue, 28 Mar 2023 07:07:15 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph3QH-00DO9H-14
	for linux-phy@lists.infradead.org;
	Tue, 28 Mar 2023 07:07:14 +0000
Received: by mail-ed1-x529.google.com with SMTP id eg48so45442153edb.13
        for <linux-phy@lists.infradead.org>; Tue, 28 Mar 2023 00:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679987229;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w4ch23DrQsWHOR9SnPpFPwEYN9EwYbqlOi9orjMDJe4=;
        b=Tny7Ck2ytQInZa88ltoENG417Ja1fscKtnD1GDs58pdSZJ/IVSj8/UsWVhNeSneUz/
         8YvgGJJ3lFeVdUuBAzBRD2Xfp17sBlzFfs8EAVLZTNvHohM3QBxlEeE6Xn/v+yU3cko1
         iqcF4ptefuOZmgRjRQRRo2iXBt3qxSgpGvfV99avSulHtgtTRLJkPR0I0F55i3u2MQeu
         ycRfn9Am0945hrqeNyx7mzanityt6clb2X+F2BG9N9Ru1iIdebD6F/Ofsl8ADVqpA+9/
         uoSABKgpQ8mEl+OkxRZ278vABaKXzskqEJtx3QxNF4U623FECciajm6w9Ey8wNStjRg6
         KyyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679987229;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w4ch23DrQsWHOR9SnPpFPwEYN9EwYbqlOi9orjMDJe4=;
        b=R5kBTNsnnZHnvXoLwaQQd0FqLbnCI/Vgrw6ZssJ252dGVyT+tT1mMzJniPL9HJobnK
         2Xh/TE/R//YjPJ84nzdfBAxk30SFQBHaZzLrezWqZo1IgI6MepOEBFhvatpwsWsShBrL
         r7QXWRq6/NuVgTPZv4say4f/5B9oAhvOIrZprF5ghlawurp/zLTEXl7IVlUVNc5EhNsV
         jqkAVcY4QkBA+Gqzjh1SVtgxRrwFhiDZsVaWGakII3oniQBaVyuGNSOM9V1i+Ggdfjnm
         afDgMDaSvH/XJKiO7tqOLb6bRMRRBI1sl2Nuix7RGcPFoV1paFaWYoG1xBO3pWpYJu88
         FDVg==
X-Gm-Message-State: AAQBX9fR80nDwFOpYnHSEmJlSgjE5SeRDXe3/QEzjfc6x27npq4qduIU
	Zvem1NpSeADRT5yKhD3vsnGCVQ==
X-Google-Smtp-Source: AKy350bKhgmasZr9CpVxheey/53sUglV0Ce7vW/cC0O8O0yoA3cHNgz9FAmIy78efquiDIKZIIzJng==
X-Received: by 2002:a17:906:448e:b0:933:3cd8:a16f with SMTP id y14-20020a170906448e00b009333cd8a16fmr16877907ejo.75.1679987229556;
        Tue, 28 Mar 2023 00:07:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id q7-20020a170906b28700b00931c887372dsm14794198ejz.107.2023.03.28.00.07.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 00:07:09 -0700 (PDT)
Message-ID: <39356c59-7723-40df-08ba-cd563a7e066c@linaro.org>
Date: Tue, 28 Mar 2023 09:07:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1679909245.git.quic_varada@quicinc.com>
 <4a21defe3320eb11d0e43bc7f02b3168ecefd458.1679909245.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4a21defe3320eb11d0e43bc7f02b3168ecefd458.1679909245.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_000713_369106_B09C6333 
X-CRM114-Status: GOOD (  14.34  )
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

On 27/03/2023 11:30, Varadarajan Narayanan wrote:
> Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v4:
> 	- Remove constraints not applicable to IPQ9574
>  Changes in v3:
> 	- Update other mandatory fields to accomodate IPQ9574
>  Changes in v2:
> 	- Updated sections missed in previous patch
> ---
>  .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    | 25 ++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> index e81a382..aa5b58c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> @@ -21,6 +21,7 @@ properties:
>      enum:
>        - qcom,ipq6018-qmp-usb3-phy
>        - qcom,ipq8074-qmp-usb3-phy
> +      - qcom,ipq9574-qmp-usb3-phy
>        - qcom,msm8996-qmp-usb3-phy
>        - qcom,msm8998-qmp-usb3-phy
>        - qcom,qcm2290-qmp-usb3-phy
> @@ -122,8 +123,6 @@ required:
>    - clock-names
>    - resets
>    - reset-names
> -  - vdda-phy-supply
> -  - vdda-pll-supply
>  
>  additionalProperties: false
>  
> @@ -204,6 +203,28 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,ipq9574-qmp-usb3-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: cfg_ahb
> +            - const: pipe

Isn't pipe the clock for child node?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
