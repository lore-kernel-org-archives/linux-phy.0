Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CDD2C10F05
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 16:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOnXzifxAiqiLBRQMxz34q5cJVVcG9I6rVq1z/cXhCw=; b=bjg6EKd5L9yFc+
	xRATq0fQGm5qOVRfAzvXyamXSpKAXhDvEJBlsSHKQwoaRUwfvKse8lQoJ2DN1mvM0KqLZMlU5cUjz
	RxyQX+MBa5zo2TrLlvyNKh/vKPxKH6khUbNDohWp7xb3+/QBL59b7Og+756vDwmpnnFKh1MfRlTTL
	6Usevoq1pswSJddYcbNu17+n+uQoMS++xXeTQWJgKsSlWk8NhPB7uTr5F4D4DGuuydr3E6oYyO1Pt
	l0033ARjwBHO40ZBvZ2pBkgB2eLHXrvcj66akRmde/vjNWv7ewao9bQ4bz6rbBqKjY55hclrQNMME
	tRuq+T7BlNot/qMtNknQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBHbK-00DSHg-26;
	Thu, 07 Dec 2023 16:51:50 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBHbI-00DSGB-0j
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 16:51:49 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3334a701cbbso1191054f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 08:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701967903; x=1702572703; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MTJKbj0b933pVvA0SKD+8CJvREMrR15XXO2SwQySs+M=;
        b=iAJBT0P6jlwlDyGb9TWbxfbOPm1nv8RjpErxtR14phM0ajyshieAm3GgrY0dtxcPIC
         hnHZ+WyNt2Ff0Lu2btZ7izYWr8JQUBuV1QWG6tLQJXXbLWcVfP4ng+GTttu9a7bSbfqD
         C2k2mF8Q3Dg5711SwpK0bC3guUQ8UdghEwCBxDbWuDt6gPOHrZNnkw15wN5tK+CC+Fzk
         r+cIJ9PzVS8GH2Tg+KoVTSMN6ybI2c6GKWRDoLPk5J1oGC5x3zlNQxjezqvQMVKYEWuz
         Aqqlw/P3VmSjGyZYv8bPxUDF5hWYadnt+Wwm4SGzLMXrUqZ+MqvGp/LGIVUbpQe1xtpr
         jkqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701967903; x=1702572703;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MTJKbj0b933pVvA0SKD+8CJvREMrR15XXO2SwQySs+M=;
        b=qVZ7Cw0ZnTOCXAlaiq/Wa7C4PTXl8DacKe7VYWbruaR7MUzwBBVPne3yUi8WzTNzOO
         dxgvYcWbu6lE27MEopmWuvW5qYJAVGgfQxP4cNSCthmz6DuT74VuYQM+Opo1qOFAba52
         o4EEUVMdC51zz/9dbnA9wJ5bGeLNjVoNGujM41R9OfIRz5VtuwvsvqmIdbDjRzGS50av
         qAJAIcsmZb3IVsTl8foQ9c/UgUNNvg7mLugZGkrJyYGnwc6MNz6kseN6G+Avo4ehQyFj
         7OLOTURxwGOraEcA9mEPSW/T9zs6jtB1Sx0MsV/J9cxoGJBvrU5g6JTOrRnVOZ5Rh2Z4
         VqvQ==
X-Gm-Message-State: AOJu0Yw5W9Hm9D9lAML71wUF5FruucfCqJxeHe86nJa9NZAId6fhMn/0
	LFmaWYEtqwgrJ1Kff0SVfMPXUw==
X-Google-Smtp-Source: AGHT+IEju5TiMO1C6IG9nW568NAPPyf2/ktL9H/BSo36Ki6bFlS84C+847X2dr30/xi4VDZ0qNgjiQ==
X-Received: by 2002:adf:ce0e:0:b0:333:1449:cce0 with SMTP id p14-20020adfce0e000000b003331449cce0mr1561119wrn.20.1701967903167;
        Thu, 07 Dec 2023 08:51:43 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id a16-20020adffad0000000b003333b8eb84fsm55270wrs.113.2023.12.07.08.51.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Dec 2023 08:51:42 -0800 (PST)
Message-ID: <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org>
Date: Thu, 7 Dec 2023 17:51:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Johan Hovold <johan@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_085148_269337_A3912194 
X-CRM114-Status: GOOD (  12.88  )
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

On 07/12/2023 11:52, Abel Vesa wrote:
> The Qualcomm X1E80100 platform has multiple PHYs that can work in both
> eDP or DP mode, add compatibles for these. New platforms can use the
> phy-type property to specify which mode the PHY should be configured in.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index 6566353f1a02..3341283577ce 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -21,6 +21,7 @@ properties:
>        - qcom,sc8180x-edp-phy
>        - qcom,sc8280xp-dp-phy
>        - qcom,sc8280xp-edp-phy
> +      - qcom,x1e80100-dp-phy
>  
>    reg:
>      items:
> @@ -59,6 +60,20 @@ required:
>  
>  additionalProperties: false

Please put it after allOf: block (IOW, allOf: before additonalProperties:)

>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,x1e80100-dp-phy
> +    then:
> +      properties:
> +        phy-type:
> +          description: DP (default) or eDP type

Properties must be defined in top-level "properties:" block. In
allOf:if:then you only disallow them for other variants.

> +          enum: [ 6, 13 ]
> +          default: 6

Anyway, I was thinking this should be rather argument to phy-cells.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
