Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91B07C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 17 May 2022 06:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rBrKBlGy56g8Jc/8ED8ZIpevJTPLW+uOOlrBoJk/oE=; b=vZm5A0Ubx4mQkQ
	a/w4rj8ZL0hSp3+biAV+BjsPGqfGFGMY/1hXtA5pmDbvfkRjwK/wF68jMwSb4oE9+tsY1NubYnflc
	0QswGYTRlp3YoLLaRc7Jm98BMqNTP08Y6VE7N0m1SgTwvR5OZvv79/weHeWL9b80FaIo3ZeIU6oX5
	93p/42n43NR91h1wFGiKoCXsUmdbS7yACkWw8A47CQsAY1VJvd9HpmecSeIaqPtndPgVuqQ54H943
	+oepQrZgXah0rD0N1G1uD8p9c6tgmy+RyU3+a8BgKEEU/ct9PoHwlz35RyYFOVQKK1uuSkdYeae3C
	7VzrKYJM5tPNUQyD6xfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqqbu-00BnIF-Vl; Tue, 17 May 2022 06:23:11 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqqbs-00BnGy-EJ
 for linux-phy@lists.infradead.org; Tue, 17 May 2022 06:23:10 +0000
Received: by mail-ej1-x635.google.com with SMTP id g6so32694018ejw.1
 for <linux-phy@lists.infradead.org>; Mon, 16 May 2022 23:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=c4ENXCjOLk1+dgXS0L44HTmpqaPYATePjr2C7PlRSnY=;
 b=X54KsWPB0NVyyxAopjnRgU4ZOBrGbvlQ4FaNzE7BKYrtEqYlqOMCstiCOL//lQ8Dxw
 8rkRpqoCADABAM8/OuegxD/25O7f/nJPZoaLKTmjnmcO5e/rG65jTmm9ahJBsk4RyVNC
 Vtyp//l1Ok5j+8NwCWJlc+n3TbV44X5yO22wosq8xZ3qMCEdUvredEedxwk4R+boPRiu
 Y/1FTQlZj740YLjErI3CrutAOuImvAvRxoE+x8k9T/MFztuJvet3PY16TBgTKaNMVbhE
 zFw2Fsf+IcZ/qt9hwH4PXj1GSzulCd1cyTs95kQF8d8BeoEy/+RzVvtiuP/D6WKh/1XG
 bjRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=c4ENXCjOLk1+dgXS0L44HTmpqaPYATePjr2C7PlRSnY=;
 b=F1DgRaplGRVRGMEOxJ7AYlxbdCTxOY6E5yVpH/v8ArqlH1Qjd+4Jbgoc8nePWMn3qn
 PBI2IWWSN39pJDaGkBlIjHRrQF0drNtrarwtUO/+dRIMGQE6E8qqCDWOQHYTxD16rQt/
 i35YetwR9mzqxKLfWX5d3EUBK4kEkrYNyrcFeTlHyCcMOZ/FKE8/VM8l4crCTsuoUpkH
 uTt8Cs/L01tdorwmEGWPbdfzDDwFJ7SgbzoZtkqQduynNuO2cHqFm+YU6dKSAndvlpN1
 NNTW1K6drtpb/YfR3XRcCj0JkXOby45eFfDZMhylfCZ5QPLslqETOJZqhF5CEJrOL9v1
 MrmQ==
X-Gm-Message-State: AOAM531/GaWKVA/PVDikGHxD+IhrX201+C7s48qPgyxBKK9IAaPTjAPz
 MZoFLKxX67ofsnI+7MfyExii8g==
X-Google-Smtp-Source: ABdhPJwEc9IVtajjmC4AchKGNCO1Lk9VipryyhfwItsHVzbgcFpffhGt50uBwsKK0NreDqXTje0i+g==
X-Received: by 2002:a17:906:656:b0:6f4:ebc2:da81 with SMTP id
 t22-20020a170906065600b006f4ebc2da81mr18501914ejb.757.1652768583817; 
 Mon, 16 May 2022 23:23:03 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl.
 [78.11.189.27]) by smtp.gmail.com with ESMTPSA id
 es16-20020a056402381000b0042a96c77e9esm4448347edb.91.2022.05.16.23.23.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 May 2022 23:23:03 -0700 (PDT)
Message-ID: <f042abfc-25c8-2684-3fec-fea17bab8087@linaro.org>
Date: Tue, 17 May 2022 08:23:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [v5 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com,
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>
References: <1652723410-1630-1-git-send-email-quic_kriskura@quicinc.com>
 <1652723410-1630-2-git-send-email-quic_kriskura@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1652723410-1630-2-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_232308_544988_52792107 
X-CRM114-Status: GOOD (  19.96  )
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

On 16/05/2022 19:50, Krishna Kurapati wrote:
> From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> 
> Add device tree bindings for SNPS phy tuning parameters.
> 
> Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 105 +++++++++++++++++++++
>  1 file changed, 105 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 1ce251d..0a78db7 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -53,6 +53,111 @@ properties:
>    vdda33-supply:
>      description: phandle to the regulator 3.3V supply node.
>  
> +  qcom,hs-disconnect-bp:
> +    $ref: /schemas/types.yaml#/definitions/int32

No need for ref for standard units.

> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect a disconnect event at the host. Possible values are.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: -272
> +    maximum: 2156
> +
> +  qcom,squelch-detector-bp:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the voltage level for the threshold used to
> +      detect valid high-speed data.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: -2090
> +    maximum: 1590
> +
> +  qcom,hs-amplitude-bp:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the high-speed DC level voltage.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimum: -660
> +    maximum: 2670
> +
> +  qcom,pre-emphasis-duration-bp:
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
> +    minimum: 10000
> +    maximum: 20000
> +
> +  qcom,pre-emphasis-amplitude-bp:
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
> +    minimum: 10000
> +    maximum: 40000
> +
> +  qcom,hs-rise-fall-time-bp:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the rise/fall times of the high-speed waveform.
> +      The values defined are in multiples of basis points (1bp = 0.01%).
> +      The hardware accepts only discrete values. The value closest to the
> +      provided input will be chosen as the override value for this param.
> +    minimim: -4100
> +    maximum: 5430
> +
> +  qcom,hs-crossover-voltage-microvolt:
> +    $ref: /schemas/types.yaml#/definitions/int32
> +    description:
> +      This adjusts the voltage at which the DP<#> and DM<#>
> +      signals cross while transmitting in HS mode.
> +      The values defined are in milli volts. The hardware accepts only
> +      discrete values. The value closest to the provided input will be
> +      chosen as the override value for this param.
> +    minimum: -31000
> +    maximum: 28000
> +
> +  qcom,hs-output-impedance-micro-ohm:

Please use standard unit suffixes, so micro-ohms.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
