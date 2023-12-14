Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8CC1C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 07:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8tCo/emiuUZElonk7cR23E50jMblu0ULgtWOeg4vwM=; b=iG71QZpT/drvX8
	1ntNOk05y3bIydOVldfN1xRh2V4/67WNeFumN7BolM/BofrKGcAxcuzq986cZEQl0SOLw5GDGGtkr
	2z7iMpZLESnZVQJxP2NCYgMetmXZe0bBFDoHmI4WrQTFILW7PxmjHfuPQU/rclHuoppGSGju2KaoY
	NWgeuJcwNPKOHfPGB0z8kKT6mcArhripNu8CZan0zFLSGGSL2raOEmtgnzbE99UBH5ShQxXfS4g9L
	RQB2ch6eM8yIA2ea2Ft3bTEJ7GEsnzUh8Q9XZzx4ek36WtmqOrucY44tGrndGE9y095dJ2HJeojw2
	wFHJMMEkrvkHpnGrcCEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfwu-00H4Xf-1j;
	Thu, 14 Dec 2023 07:16:00 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfwr-00H4XH-34
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 07:15:59 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5d7a47d06eeso78057007b3.1
        for <linux-phy@lists.infradead.org>; Wed, 13 Dec 2023 23:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702538156; x=1703142956; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Hyuj6L4AEIo77b1y5Vbh5MTrD0n68EvFYvH7xGhCjqA=;
        b=lUeIjgEUxengEi1REW+dyBJLVLYDlF5WBm+VqSgiUAu0AJ/pNI/QzYLaHgrZL4oPBl
         gosH0ea0HkkYGHwljvFjBt9+ov3lWLH/wueTF5cFMrFhrl8iGz0+oE0J6ZcvRlTypuAH
         FiYH9D8WdHNVGcFc41JpAtqpLsCTj56waW0mkR4PT5bTaUp30ViFOs6VSP9MIYz3CmK+
         zrhmjeuPti4Pu/6T+L/icUbp87XURGiGihFeB+b0PcoFuwaFJoNuxT+TujjPhgHfGa8U
         EBpObvKDf//E+bphYr/dtUmPaNMqsWcLkAuakVVrNlD9gTnRMLNputXLIaenEZAtlwJH
         2P3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702538156; x=1703142956;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hyuj6L4AEIo77b1y5Vbh5MTrD0n68EvFYvH7xGhCjqA=;
        b=jIgoyIptzt9UEdOdA9hUwcj5qJowpYqGXXMvFEwO/PAO3fzKSfM0nAU6fmC48d19c3
         tA/Tw0/xImA/I3RjM/JKkLUam6IgUNVdYnGWPA3ZthOyZ/o9sHSlFilwzuyTe4vMw9Cu
         b95n9SRnrkyxXNlfnEVL1bXMQC4uDQu0da1Pi7SOKp+WTs2D4ax7KxNTM7WVClxMbQeE
         aW+A1ND4D1iSTFNvnMJiBPHWcp8b2RJthOeC+Jao9Z4FYv3UTMoFCDoGCjPmdjn0cuCA
         OKbanwpLAxzyAVSSXsCMFyMBJExPc3aNK9WrnT+acSUDVA9peVI5eglKXUSD9OoOEslt
         TvLg==
X-Gm-Message-State: AOJu0Yyyd0ADwZuufABcfnJQKqO/UCDAzyXIWq3YGDMT3RCA10b2Mlf2
	t7w2Eok+rfScvYY30FKU2DgmWk1WOOy6z46ycJfZGQ==
X-Google-Smtp-Source: AGHT+IH3+Sw3exQcLiS7Au2pmyJWOiOy946o670EL9T8G4UD/WLVLtSaMDRzk5R+ja2Q0rT5BFDKfRPi9nleUY6Lf3Q=
X-Received: by 2002:a81:c30e:0:b0:5e3:9b5f:e3f with SMTP id
 r14-20020a81c30e000000b005e39b5f0e3fmr358653ywk.59.1702538156139; Wed, 13 Dec
 2023 23:15:56 -0800 (PST)
MIME-Version: 1.0
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com> <20231214062847.2215542-8-quic_ipkumar@quicinc.com>
In-Reply-To: <20231214062847.2215542-8-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Dec 2023 09:15:45 +0200
Message-ID: <CAA8EJppyd5-TQmvzRB3rBhRQtMLdu=6u5aQd5rWHitRuaJXzpA@mail.gmail.com>
Subject: Re: [PATCH 07/10] dt-bindings: PCI: qcom: Add IPQ5332 SoC
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, bhelgaas@google.com, 
	lpieralisi@kernel.org, kw@linux.com, vkoul@kernel.org, kishon@kernel.org, 
	mani@kernel.org, quic_nsekar@quicinc.com, quic_srichara@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_varada@quicinc.com, quic_devipriy@quicinc.com, quic_kathirav@quicinc.com, 
	quic_anusha@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_231558_022931_D48AFA3D 
X-CRM114-Status: GOOD (  13.96  )
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

On Thu, 14 Dec 2023 at 08:30, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> Add support for the PCIe controller on the Qualcomm
> IPQ5332 SoC to the bindings.
>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index eadba38171e1..af5e67d2a984 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -21,6 +21,7 @@ properties:
>            - qcom,pcie-apq8064
>            - qcom,pcie-apq8084
>            - qcom,pcie-ipq4019
> +          - qcom,pcie-ipq5332
>            - qcom,pcie-ipq6018
>            - qcom,pcie-ipq8064
>            - qcom,pcie-ipq8064-v2
> @@ -170,6 +171,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,pcie-ipq5332
>                - qcom,pcie-ipq6018
>                - qcom,pcie-ipq8074-gen3
>      then:
> @@ -332,6 +334,39 @@ allOf:
>              - const: ahb # AHB reset
>              - const: phy_ahb # PHY AHB reset
>
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,pcie-ipq5332

As you seem to be depending on the ipq9574, could you please reuse the
DT entry too?

> +    then:
> +      properties:
> +        clocks:
> +          minItems: 6
> +          maxItems: 6
> +        clock-names:
> +          items:
> +            - const: ahb # AHB clock
> +            - const: aux # Auxiliary clock
> +            - const: axi_m # AXI Master clock
> +            - const: axi_s # AXI Slave clock
> +            - const: axi_bridge # AXI bridge clock
> +            - const: rchng
> +        resets:
> +          minItems: 8
> +          maxItems: 8
> +        reset-names:
> +          items:
> +            - const: pipe # PIPE reset
> +            - const: sticky # Core sticky reset
> +            - const: axi_m_sticky # AXI master sticky reset
> +            - const: axi_m # AXI master reset
> +            - const: axi_s_sticky # AXI slave sticky reset
> +            - const: axi_s # AXI slave reset
> +            - const: ahb # AHB reset
> +            - const: aux # AUX reset
> +
>    - if:
>        properties:
>          compatible:
> @@ -790,6 +825,7 @@ allOf:
>                enum:
>                  - qcom,pcie-apq8064
>                  - qcom,pcie-ipq4019
> +                - qcom,pcie-ipq5332
>                  - qcom,pcie-ipq8064
>                  - qcom,pcie-ipq8064v2
>                  - qcom,pcie-ipq8074
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
