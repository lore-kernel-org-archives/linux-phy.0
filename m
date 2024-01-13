Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A1EAC4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 12:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoIYHJf8TajSnWNry0oHgPjUEnZJzHawaYK2P8ZImDQ=; b=gg6lHmTXua5Zl7
	D1/qYcTDJnWxjuV+eS6LITOhXETVq4zUbJKDQOE2GZgohakV/AwBhKsBH75VcSG4/yGJtWFWMfWkB
	1NrK54fD+lOAfq5KPNbJ160vkZUKfMfrwmBuPNJSuSL4YG8SvGtfPvUi/7VTRPRq8E8ztWgFnDZ6S
	Uk5diebcx/xfNPSkpygveN2cpjZljxfIIhgIUtDhWpwujEg9LKyM27qGg0f+df+TnjJpYDDg81xE4
	5C8hV9tSjbTaCSgprWDRyX0bZWjfJMhOoatZY7tzfrJGv3v4qVTjGyZkcNfJUTdLLAKMffd21qwCs
	RthR81fBi1EDmndgLESQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOcpj-0057F0-2x;
	Sat, 13 Jan 2024 12:09:51 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOcpf-0057EU-0F
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 12:09:50 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-336990fb8fbso5762732f8f.1
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 04:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705147782; x=1705752582; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IG/55Cf3qu6wUWnb9WGIqVzCFMPu9zDS54WirLALgRs=;
        b=NQXGZuBcGAn6atNcO1saWW4SZ7X0M/Ae5dIBIazY2YoqR/ukRwcCHkOTYp3FdRAFFq
         XPDh0rTw0lyLElARxsx2F7vrrxsWAV/mUBG0tME2kw7bZJjQGlieQaUwsN0qqp5IYj9o
         lz/0T/WZtXL9JBY560WlyqDWmZB2hCHGvrZQYK4GH+LMeUnf1vYgo5RaaW3tI7e4a3im
         hnwZXpYouxrUYTAaOU6hHMzwT6laob9NgniEKShEJTqTsD6v362aJvXSVMH4HHqtiNwP
         I1PQpvpR5UQLZwC3DBDjrooiNKkbXMYL+pe/o7k2v5nnN3KPfmXyLMcaAukZ7MTozjO/
         A1ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705147782; x=1705752582;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IG/55Cf3qu6wUWnb9WGIqVzCFMPu9zDS54WirLALgRs=;
        b=WrriUWdvEKpjrYKRZ9iUdKEi2FcPT8l36MTphiOlPlIL6Dw/7XgBHab4rG0IRxuoo5
         rIcneD5NKOtY8LUlL2SeW6OVBxMn1ci19/2AC8+Uczw2tNYoslovwBHTqNTYNAldemxD
         RwJDkq5tCdfhES+9/eiKPCQxPBQUWV5n60iKUwBWbKn1oHvNgMJMBC1qczOWOSgBksmi
         2LfniJwmUqCqBwE9mdFR7YRi6tmgiD/k43zsFGvU0jupu2cNVD0d7Vk5gwzuCdZL2kFF
         k8/q/9Kr8fY1AxUcW1qnXeZizCd1SxzU/NJHD2HpGznFzVpI9xl90i0MbL7NaUqVH6Si
         AwJQ==
X-Gm-Message-State: AOJu0YwqXD8mWCUihkCNViDwVwi1mhG+9SNwAqMlnq2ogey6EduLvHqS
	Y7es9uQu+HQl2eyre4XGb81oeMRWIdICWw==
X-Google-Smtp-Source: AGHT+IFOjVkMUDiX/JF6Ci8fa9sYuwV217p/+QK4r8dNQDD1tbjte+LtvE/BHdAp+VjJKXZ6gVnNHg==
X-Received: by 2002:a5d:484d:0:b0:337:2aa3:ac85 with SMTP id n13-20020a5d484d000000b003372aa3ac85mr1372470wrs.117.1705147782263;
        Sat, 13 Jan 2024 04:09:42 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id z5-20020a5d4c85000000b003367ff4aadasm6606483wrs.31.2024.01.13.04.09.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 04:09:41 -0800 (PST)
Message-ID: <cb2e06cb-2139-4846-8f7e-9102d952a7a2@linaro.org>
Date: Sat, 13 Jan 2024 12:09:40 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/13] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy:
 support USB-C data
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-4-de7dfd459353@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-4-de7dfd459353@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_040949_535146_764EF7ED 
X-CRM114-Status: GOOD (  13.07  )
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

On 13/01/2024 05:42, Dmitry Baryshkov wrote:
> Extend the Qualcomm USB-C QMP PHY schema with the USB-C related entry
> points: orientation-switch property and USB-C connection graph.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   .../bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml    | 39 ++++++++++++++++++++++
>   1 file changed, 39 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
> index 868fabd44d72..da5d4cbca24c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
> @@ -50,6 +50,22 @@ properties:
>     "#phy-cells":
>       const: 0
>   
> +  orientation-switch:
> +    description:
> +      Flag the PHY as possible handler of USB Type-C orientation switching
> +    type: boolean
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output endpoint of the PHY
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the USB controller
> +
>   required:
>     - compatible
>     - reg
> @@ -129,4 +145,27 @@ examples:
>   
>         vdda-phy-supply = <&vreg_l1a_0p875>;
>         vdda-pll-supply = <&vreg_l2a_1p2>;
> +
> +      orientation-switch;
> +
> +      ports {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        port@0 {
> +          reg = <0>;
> +
> +          endpoint {
> +            remote-endpoint = <&pmic_typec_mux_in>;
> +          };
> +        };
> +
> +        port@1 {
> +          reg = <1>;
> +
> +          endpoint {
> +            remote-endpoint = <&usb_dwc3_ss>;
> +          };
> +        };
> +      };
>       };
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
