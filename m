Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02CD9C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 19:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNGyVGR9Sb+baAdMzARM4gO8PXlB2elRqJpcVm+Ol5k=; b=TvxcY9rYTqGvNn
	qKtUYpBqQCQwqsjSokw7mjxOQCALcPOz2FkcrN9WP76xh5h/M+dAcWnefg0U1jxE+4Rt07qf82jEK
	VHWNDE5bfwCTOlrCos/Ou0UDHVVQ6bm1RvCsymXcW+ChkWNn/bKbmCijiNRoyEKbhSvxA5Wa1fIfk
	emXTlEut3rv1N99t37AL6OXrrZJEf5jz1HEaszC+4eL30sCHWKkLMnXxFQEKBbNaFlueoulhHvhW2
	nYFpOQ2RLEjlIJt5r5mieHK409hcbAhbH9fLqvG1P6VVmcp/cIt2MnzVsERM0UCANb/Qy472czKc4
	Hw0N9LNfXIBLdMxuTIzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK3v4-004Rcq-FU; Tue, 15 Feb 2022 19:55:26 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK3v1-004RQa-Vn
 for linux-phy@lists.infradead.org; Tue, 15 Feb 2022 19:55:25 +0000
Received: by mail-lf1-x12d.google.com with SMTP id e5so9200173lfr.9
 for <linux-phy@lists.infradead.org>; Tue, 15 Feb 2022 11:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=od9Fv9jtSpr7wJ186PxRq7ulSmKEgnYjdZXcjAfazIo=;
 b=PH2AVilT2kpsLFO1HEukZSVhRun9ilfkrnq6W59AVR3hwgb1gm7pTqe1KNp033S5Km
 Y3V+U0IWpcw7iA0RxRPVr86sUFYAz/4PUgCe4eriG6I45tOuwDzdT+cuHXhkkjtkHkq/
 naCB45uKFm8OTA6iET/Jz8tKqsIZZmlMw0IJwtsU2HKpnAuv/++IXmP/A+UCA3Oucb80
 9HLzHxlNkyOrQzwYASpnNEqEXBYkIBYvhA2pLtQ3Iur4LdQ6JhHiP6RaCGq5nNi5cC2J
 7sIXklkRJZIHRJ5NGBtkAcotBL/f8HRjaKpoB9swrc469lUL+5Rjsu3KZ9R4tWaBybET
 L7OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=od9Fv9jtSpr7wJ186PxRq7ulSmKEgnYjdZXcjAfazIo=;
 b=i6eFDBZw27RnNI/zq6YIM6wmI0RH1iC6ZtoKAiCZ8fcTeOBIlwCdwe2Ki8UNFLEcbT
 7DicLbGUODrju8EU48jMfKAOK0EUR7GkCLc71JJR5rA1qKaaIgtyP7VfCpukmjHc9gIr
 z/cDs+ckvVHPiRQ/8yjFLalCTUy0TtsnglO6bLQ7+D6jZbsLVW4nI0ODlFagVrxqR8Sp
 I7jKArKnpsCBCRQ7JgkI8D5Dn+nOsYV+a9hc35yEofGRZYkX3G+q+RXKme8LlwST4XxK
 nKa3dqg+U7baIvu55wiegTwnKvak4VvFSVrB18x+jhJ4+fcvTR6ZyNm/mNAiepCxklV+
 uJxQ==
X-Gm-Message-State: AOAM531tBq//eLIiZjunYcEkWnfOUYu31jFw6gjujfzBIYB/JPT0zm7W
 4mfNOgCR17lHZQAP4NEPj2LH7Q==
X-Google-Smtp-Source: ABdhPJzECnJd9c606qBv0fz/un9p5bu6tPClqHkkq6PByN5AK0Qwwk2/z0dziQr2abuBnJ5sUk9K3g==
X-Received: by 2002:a05:6512:c10:: with SMTP id
 z16mr493947lfu.387.1644954921579; 
 Tue, 15 Feb 2022 11:55:21 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id b9sm4602308lfb.222.2022.02.15.11.55.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Feb 2022 11:55:20 -0800 (PST)
Message-ID: <f1b4b389-12f9-7c21-b117-f2fe6df58a89@linaro.org>
Date: Tue, 15 Feb 2022 22:55:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-GB
To: Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Wesley Cheng <wcheng@codeaurora.org>, Stephen Boyd <swboyd@chromium.org>,
 Doug Anderson <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>
Cc: evicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com
References: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
 <1644952755-15527-2-git-send-email-quic_c_sanm@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1644952755-15527-2-git-send-email-quic_c_sanm@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_115524_073656_A89E4EFC 
X-CRM114-Status: GOOD (  15.71  )
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

On 15/02/2022 22:19, Sandeep Maheswaram wrote:
> Add support for overriding SNPS phy tuning parameters in device tree
> bindings.

This does not really benefit the users and does not help developers.
Could you please change the dt bindings to specify values for 
thresholds, durations, impedance, etc. The values should be represented 
in the human units (e.g. us, Ohms, mV), not in the internal register 
'bits' representation.

> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> ---
>   .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml  | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 0dfe691..44cf3bf 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -50,6 +50,22 @@ properties:
>     vdda33-supply:
>       description: phandle to the regulator 3.3V supply node.
>   
> +  qcom,override_x0:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Override value for hs disconnect and squelch detector threshold.
> +
> +  qcom,override_x1:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Override value for hs amplitude, pre-emphasis duration and amplitude.
> +
> +  qcom,override_x2:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Override value for hs rise/fall time, cross over voltage, output impedance.
> +
> +  qcom,override_x3:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Override value for ls/fs output impedance.
> +
>   required:
>     - compatible
>     - reg


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
