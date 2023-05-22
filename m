Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD03DC77B73
	for <linux-phy@archiver.kernel.org>; Mon, 22 May 2023 09:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:From:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vJrELI3zXgRfH1NGzYj6yyX3NzB9vezeuhjkbD7p5NY=; b=eT9inD5z2zM9ovtjF+O3fVTwZr
	Yg1xKpVi8+Pb6lS7V9zQST87HHT2JBJ4Q4pPrnF+y3N9IfxVUuRdBoUwZnOHZbJPSkaFM2UJJU/32
	WD3bWtjlm2bO4TGVUfk/SxAAUTfFwahJBeIigeL9iUUApwearUD/UVLmBkhAgg6z6YkbwmThWpBQr
	5YK0ID1bKgrcJuiUERhypcSQzQkA0MgctzaXuxtWuROlwOYsdXfy+3syHCSJLPhTAA+oYa3Khkzq3
	uAVRnAopSAO1VO9zr8m5xKYSDUVJ780PnE49Pvy1DNILLybUDd5wLDst97PeKBJtrlY/GDbxhEL1w
	q9j8gPDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q11RX-005pDc-1V;
	Mon, 22 May 2023 09:03:03 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q11RU-005p8F-2M
	for linux-phy@lists.infradead.org;
	Mon, 22 May 2023 09:03:02 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-2532c2c419dso4023791a91.0
        for <linux-phy@lists.infradead.org>; Mon, 22 May 2023 02:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684746177; x=1687338177;
        h=content-transfer-encoding:in-reply-to:references:subject:to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fzleLO7MSIVONgXOoe/u8Y3w3EspUsfYYjCprTB4k/g=;
        b=l/RP/dtBIq81CyGgnIfU19Pv7C8KScdcSHZBdG2deAKCuuDWIENO/nF+eYpwZwZTe+
         Nuf6JvkaYmhJYmuavURM0fUPaXaiYqN9BDhz4ph/0w4wKnPdfgnQLTRykIZxxainkFJ8
         CCPs/PdcKjUP/QfPqVCNI2taUHVtdmQZbRm2soKIJ+VObSCOsfXR9uAgY/ZSK5zJriyq
         rZmYw9n1DwmRNm91bk4A3hi02FiwbmFLf6aePT0hgOcyDOS0de8pMe+vNdIGa5IZS0+3
         amv+/V14ue8wVdj/IoyIbCDq4+VSh8UxN+XPvyhG4BGLer1lxxvNMT7YbN6+m/ymb9a6
         Uwng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684746177; x=1687338177;
        h=content-transfer-encoding:in-reply-to:references:subject:to:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fzleLO7MSIVONgXOoe/u8Y3w3EspUsfYYjCprTB4k/g=;
        b=UZSh9n6rczABX0Uen71SoxQbFWvMybC+Ad7tMFtuwg3nzpVBS4p9xWa+P34WcthB8V
         ZcYeCT5+TZaILl/BrK1HOcqej/BP+t9C1WwJKbGvEcRLzu/96xH7XW4prL+iT3yE4lOl
         I7cFAehpjQtbtnb4h50CaJ5pR35laM0REUL9pt/lXvd1DEj43nsToXxLOQ92ignjhBJB
         oV87R0wSD4LDIcJX/ObJ3UgEqr15FUoFuR5x5GzBdQTB8Sh8nUsRFMSQolVdmLoUxiRX
         pBPtNbYisGMgRVspS1swgV0eul+FMOBgnSnMVB+AEH8aUDwoA3nweOy7urdAYsAtsVUL
         0sCQ==
X-Gm-Message-State: AC+VfDz0qz3FEWetPHIXor8SUU1y2awxoxUp0/ZFS27T6Gn8+rEbUCbx
	rlYknb8zYn1MIHJe1eSKKsPlOw==
X-Google-Smtp-Source: ACHHUZ5hmzgd3uQouu5IJy5vUgDsLRB/aYSGM8TclXQmiUfNzep8YlZ/mhBBIoAQR5KM0bwbVrU+ng==
X-Received: by 2002:a17:902:c407:b0:1ac:451d:34b with SMTP id k7-20020a170902c40700b001ac451d034bmr14623045plk.9.1684746177237;
        Mon, 22 May 2023 02:02:57 -0700 (PDT)
Received: from ?IPV6:2401:4900:1c60:d309:883d:817e:8e91:be39? ([2401:4900:1c60:d309:883d:817e:8e91:be39])
        by smtp.gmail.com with ESMTPSA id y19-20020a170902ed5300b001a9873495f2sm4310279plb.233.2023.05.22.02.02.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 02:02:56 -0700 (PDT)
Message-ID: <535de61e-b6bd-b15b-87e7-f36ea1a37a86@linaro.org>
Date: Mon, 22 May 2023 14:32:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: bhupesh.sharma@linaro.org
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,qmp-usb: fix bindings error
References: <20230521195200.11967-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230521195200.11967-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_020300_772974_428ED320 
X-CRM114-Status: GOOD (  12.51  )
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



On 5/22/23 1:22 AM, Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
> Merge two allOf clauses, which sneaked in in two different patches.
> 
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with value "[]" (original value: "[]")
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: [error] duplication of key "allOf" in mapping (key-duplicates)
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with value "[]" (original value: "[]")
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml: ignoring, error parsing file
> 
> Fixes: 2daece5eb51e ("dt-bindings: phy: qcom,qmp-usb: Drop legacy bindings and move to newer one (SM6115 & QCM2290)")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 28 ++++---------------
>   1 file changed, 5 insertions(+), 23 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index 2c3e2ede6671..f99fbbcd68fb 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -84,29 +84,6 @@ allOf:
>               - const: cfg_ahb
>               - const: pipe
>   
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,sa8775p-qmp-usb3-uni-phy
> -              - qcom,sc8280xp-qmp-usb3-uni-phy
> -    then:
> -      properties:
> -        clocks:
> -          maxItems: 4
> -        clock-names:
> -          items:
> -            - const: aux
> -            - const: ref
> -            - const: com_aux
> -            - const: pipe
> -      required:
> -        - power-domains
> -
> -additionalProperties: false
> -
> -allOf:
>     - if:
>         properties:
>           compatible:
> @@ -130,6 +107,7 @@ allOf:
>           compatible:
>             contains:
>               enum:
> +              - qcom,sa8775p-qmp-usb3-uni-phy
>                 - qcom,sc8280xp-qmp-usb3-uni-phy
>       then:
>         properties:
> @@ -141,6 +119,10 @@ allOf:
>               - const: ref
>               - const: com_aux
>               - const: pipe
> +      required:
> +        - power-domains
> +
> +additionalProperties: false
>   
>   examples:
>     - |

Reviewed-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Thanks.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
