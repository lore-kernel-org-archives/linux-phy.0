Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D1FC43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LyYLoNkGcK99W1sR5bNJwIgukgM1i6W+cqTzqTvJSw=; b=0gE7rnsUdPVeVi
	5AB2fUe/YKB6EKhoJffRdYTqEnetEM0LxLmsBJjlAbv79/xbmopyFuVYXXfJYtN9naJ//fHQrNUe8
	khe8W5s5Fbs7IF5QBX+Dww0dy6l671fRjhRZnWm4pSJHoQrHiT0Xka9qMRK89HRVfeA/py+nxYVm/
	qNwC6LGrhKV9uyUdSMKPXeXN8HNW0M4rytNEStzdYfabhJdZNl/2+863cTTk0iUH4SqK1hM2M3NL9
	G0WIiQpQfWt5PPrTbO8jTn58T8nUHy9dJIkJq6RC1M9a+HpOrGK3iW3rsAGbyB/R4s3irJrXbsHp/
	bP3JsEmLYG555tiyBOIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fYf-00H6En-1J; Tue, 05 Jul 2022 10:13:29 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fYa-00H6Da-R0
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:13:27 +0000
Received: by mail-lf1-x136.google.com with SMTP id z25so2156189lfr.2
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/c35IP8fT9ZTu8bx278sy5MOBFHS+lNYsk/NFdibXS0=;
        b=VRUEgCC90iVnU85xU+RHG/DIde70XjpkA5/TrUXjl6G+LF/BF93AqwJbYN4UTsmiSg
         ZKwoSSubuK5psSk9PwQEwu/gvwmuvxD4JKv+MrMPwkclKYTWK+4bQ4twHvLdU0s+LUi+
         498PUU+gugxVzUdLER/Ft60zv9ChROOE+IOV2YgMlp8eiB/w/69X6kzRdmvPoXp3hdmN
         OUCurpOtcG6tVLGmHEQ1VWlPBoKmVSieQs/kYBeyzy9tbsP9x5Fp6QlcK7CgCUbez243
         plmfL1oa1YytHlkMkW+sOaQGI9XqymTbN9b/JXR4kBz4b7XEU+kvCsLvPXtSaJF0hHJ7
         nuoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/c35IP8fT9ZTu8bx278sy5MOBFHS+lNYsk/NFdibXS0=;
        b=d6OvtCdPx2BLQP2pOwRZQNdQanhPzIDc653n6DXUwAToAq9hhXwATJ9BrILc1nj4j+
         KxUy6vG7E/BYSCoRZDI0okxp7dYuKN1vVQUiWk1SZJVj37UrCRfgw65Ue4UVsTdCubDZ
         xsxeoWEK+Y8O1xR80yZhuuasFO2wzumWWjMOm4f8Lbl24x53X6u3ZwFpeBo5nIqsnMbr
         nk3AR2cl8VnP2ZSnnKz+xHII3cf/SS5gRe0vBh6kuW283Z3flusropRlAAS15t9qWJdu
         bKxvKApDDP76fl6RGoX5KqWyiPV1+K6QbCaToq29UhqT9vt39Q4qbN3CngKrD3ZejEsd
         F1cQ==
X-Gm-Message-State: AJIora9TLNVHqmySTgxDDMb7htAC9/iLlLfCOL8Tc6a1SdWgvk8qj/53
	Evkfo8n/VRwDYtZqEobzdKXoLA==
X-Google-Smtp-Source: AGRyM1vnKC4Ilv2ZbR68+xe7F6V4OEip7c6vXCKFCLuc1QNyaaJeIbUmjLXrzEe384x81w08hJ181g==
X-Received: by 2002:a05:6512:2622:b0:481:5b17:58e7 with SMTP id bt34-20020a056512262200b004815b1758e7mr14581404lfb.600.1657016003330;
        Tue, 05 Jul 2022 03:13:23 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id f13-20020a2eb5ad000000b0025aa51b069esm5341723ljn.5.2022.07.05.03.13.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:13:22 -0700 (PDT)
Message-ID: <69207215-f53d-c5b9-9cc9-214e2e3723f4@linaro.org>
Date: Tue, 5 Jul 2022 12:13:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 12/43] dt-bindings: phy: qcom,qmp: split out PCIe PHY
 binding
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-13-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031324_937756_7FB4E1DE 
X-CRM114-Status: GOOD (  14.46  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> The QMP PHY DT schema is getting unwieldy. Break out the PCIe PHY
> binding in a separate file.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 188 ++++++++++++++++++
>  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  75 -------
>  2 files changed, 188 insertions(+), 75 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> new file mode 100644
> index 000000000000..d1d4a468acc3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> @@ -0,0 +1,188 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +

No new line.

> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/qcom,qmp-pcie-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"

Drop quotes.

> +
> +title: Qualcomm QMP PHY controller (PCIe)
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  QMP PHY controller supports physical layer functionality for a number of
> +  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq6018-qmp-pcie-phy
> +      - qcom,ipq8074-qmp-pcie-phy
> +      - qcom,msm8998-qmp-pcie-phy
> +      - qcom,sc8180x-qmp-pcie-phy
> +      - qcom,sdm845-qhp-pcie-phy
> +      - qcom,sdm845-qmp-pcie-phy
> +      - qcom,sdx55-qmp-pcie-phy
> +      - qcom,sm8250-qmp-gen3x1-pcie-phy
> +      - qcom,sm8250-qmp-gen3x2-pcie-phy
> +      - qcom,sm8250-qmp-modem-pcie-phy
> +      - qcom,sm8450-qmp-gen3x1-pcie-phy
> +      - qcom,sm8450-qmp-gen4x2-pcie-phy
> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description: Address and length of PHY's common serdes block.
> +      - description: Address and length of PHY's DP_COM control block.

All my msm8996-qmp-pcie comments apply.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
