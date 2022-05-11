Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA464C43217
	for <linux-phy@archiver.kernel.org>; Wed, 11 May 2022 18:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSHz1CUTe2NFOsWHCQ2H0KT66jx6pBw89CtPHD8raSs=; b=wOq+wGi8662diN
	EsRo5jHXg4wh6nFteXSYVK3QXlYkgRvvY7MngdoomYw0Gv28c6qPokCWvSRJqB+zXlTi5GjVqXzNm
	B+Jcc15qFfg6BE87o4fG7DsT0gXRfLzh5EbHP1Bfpb1aaCHrHjsi9RJqM2Lrp5Ei9u2z4EoJo/z04
	vCbTNw/E0fSx4vTtk8RwHhfVPNrwtvyo2YBkAesIQO97ccafzHVAfYUOKfCsKf5dpS+jP2akKKNUg
	rLeXHW4SMapNhmAmDmMIIKge3C2zvKhwia3GpUZtNpSQxTKXRMEVQ0XZ08VxcrogQcWqQhAKvSLJi
	nb+d5PV3ETwb0Naz9p6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noqwE-00866Z-3c; Wed, 11 May 2022 18:19:54 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noqwA-00865r-Kp
 for linux-phy@lists.infradead.org; Wed, 11 May 2022 18:19:52 +0000
Received: by mail-ej1-x631.google.com with SMTP id bv19so5707863ejb.6
 for <linux-phy@lists.infradead.org>; Wed, 11 May 2022 11:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=bGPi3sym2sxZNuq8XM44v+EhEVtJACn3fgf26OWgsSM=;
 b=xIyjh3l1EuCFk77BXzR8OmHseKLWjA3L+QFx7Esfu1gCdNNOljH4U8pzyTmTAfeUPl
 R1xQUxezEvy+2+R+WygC1u2eMVN10z2qzL9fm+aycu03bP7hbHKUCGl7b9pRwgDhevkE
 TmVH35KEAxXFUG4Z3TsTQZ2Zmm8zcl3aQZeJG/JQxZym8rsuDJQZN+8/AdTJEoCfOGb0
 e3g3pickNN5IzL8ph/3ZgmYaBRwlUY+N17yFU6NPUAWiMkTZ0T0W7yNGtX5lrdvFtQ2e
 7DXMB8yVaylPGxPzidZzahyxjDf3+funYGQx83vBwa7p0FMRVtXHj9FS+yaGBirFt04g
 21qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=bGPi3sym2sxZNuq8XM44v+EhEVtJACn3fgf26OWgsSM=;
 b=y43X85NeuI+pHntmAtjVVf38Bx/SMGbB+jwxgUb+cyHz7GCWrwiIxythyfnRUzN8An
 4x9OzdXQPCacCcqHwyGUwHfLkyg6H3vy95DgBLz4R3naYHDzL8D14fTjNwIWjwQsDc/X
 rwYsPE4szyjxnjynJn8IOAYXO5cBfKQEbbfuxYKXdd7sTxZznLmlENtTr6UfO0V/jgtv
 gPZJgkO1hathWqJjRWIsm2prAfrickivGkI/jok98pFXmq5V/FxfF7H0Qigoju48HOK3
 evyDf2xCWvNiLCu2QBe6I1qFsL8P9Ha6AlHUvAkTDPYtwBFyP22Rpm+81KpQt+nsi6dU
 6u3A==
X-Gm-Message-State: AOAM532LDifLyTUWJLEQ/bHcA7cg3CdhXn2+9vWlkmh/OnQRbaC5RQo6
 3Pl0BtBhpJjdeaJGKUBnroH3PQ==
X-Google-Smtp-Source: ABdhPJw66c9o+JFuSuktSAYjNSClBUHjxcCrVhgRBUlsQkLLo9gay5LhgxMMS79bGlogG5dtbdtSXw==
X-Received: by 2002:a17:907:72ce:b0:6f4:d139:c2b1 with SMTP id
 du14-20020a17090772ce00b006f4d139c2b1mr26220333ejc.563.1652293188527; 
 Wed, 11 May 2022 11:19:48 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-176-92.adslplus.ch.
 [188.155.176.92]) by smtp.gmail.com with ESMTPSA id
 a11-20020a17090682cb00b006f3ef214db4sm1223826ejy.26.2022.05.11.11.19.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 May 2022 11:19:47 -0700 (PDT)
Message-ID: <d296720d-ccbe-27f0-8ba1-9653af25dd52@linaro.org>
Date: Wed, 11 May 2022 20:19:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [v4 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng
 <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
 <1652282793-5580-2-git-send-email-quic_kriskura@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1652282793-5580-2-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_111950_740700_499E8BCD 
X-CRM114-Status: GOOD (  19.79  )
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

On 11/05/2022 17:26, Krishna Kurapati wrote:
> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> 
> Add device tree bindings for SNPS phy tuning parameters.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 87 ++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 1ce251d..70efffe 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -53,6 +53,93 @@ properties:
>    vdda33-supply:
>      description: phandle to the regulator 3.3V supply node.
>  
> +  qcom,hs-disconnect-bps:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect a disconnect event at the host. Possible values are.
> +      The values defined are in multiples of basis points (1bp = 0.01%).

This means there is some minimum and maximum (100%)?

> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +
> +  qcom,squelch-detector-bps:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect valid high-speed data.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +
> +  qcom,hs-amplitude-bps:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the high-speed DC level voltage.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +
> +  qcom,pre-emphasis-duration-bps:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This signal controls the duration for which the
> +      HS pre-emphasis current is sourced onto DP<#> or DM<#>.
> +      The HS Transmitter pre-emphasis duration is defined in terms of
> +      unit amounts. One unit of pre-emphasis duration is approximately
> +      650 ps and is defined as 1X pre-emphasis duration.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +
> +  qcom,pre-emphasis-amplitude-bps:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This signal controls the amount of current sourced to
> +      DP<#> and DM<#> after a J-to-K or K-to-J transition.
> +      The HS Transmitter pre-emphasis current is defined in terms of unit
> +      amounts. One unit amount is approximately 2 mA and is defined as
> +      1X pre-emphasis current.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +
> +  qcom,hs-rise-fall-time-bps:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the rise/fall times of the high-speed waveform.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +
> +  qcom,hs-crossover-voltage-mv:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the voltage at which the DP<#> and DM<#>
> +      signals cross while transmitting in HS mode.
> +      The values defined are in milli volts. The hardware accepts only
> +      discrete values. The value closest to the provided input will be
> +      chosen as the override value for this param.
> +
> +  qcom,hs-output-impedance-mohm:
> +    $ref: /schemas/types.yaml#/definitions/int32

Here and in other places, please use standard units. See
dtschema/schemas/property-units.yaml in dtschema repo.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
