Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 389B9C77B73
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 18:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySOuA1fkvbwhzVpdNSQyre10tDb64a42wRi+KnpAXLY=; b=TkM6lJyWDKnZ4V
	a4SmWCNUWiAY4xixgfCPK0Ep4FLQ44JlNdtwyVEpEOet2RAOhSqqzdnxwhD1+vhcaE7/LHqcUC85a
	yrd1NLY+RdZdZ222yIHKk0LfdN+o6Bqir8ljsUAr41mEgABG0dZ1NF5RyvOn7LN5c2HxsGLFKzhf5
	B0o6jkV7ID/qEC+GMGbi13DIA6JQgR4IZ1fUWBNN05P/5CbT3JVRZP6sncZ8h1Uk4arwnWojbftTu
	w6Ikma2f/gcDZMQdI096PYNxpoLoZt5Nw52Q1z5kDd4XLW2/txDuqB6yqPkrWOhY9cZlGVdfmRlIw
	A3VxX9BjPrHt8T2yM3yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prNXs-001xYt-2M;
	Tue, 25 Apr 2023 18:37:44 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prNXp-001xYM-1v
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 18:37:42 +0000
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6a5f9c1200eso2419907a34.1
        for <linux-phy@lists.infradead.org>; Tue, 25 Apr 2023 11:37:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682447860; x=1685039860;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iRaUadFCSKE/QoppZMed0RxSBw/AjnCOvErTwInNFFk=;
        b=MtSLYCwFpAgvp+x4awfv3q5bdHNaGTjXUSsdKjF1sk/KDDTV8oplbitVzlJM9l8g2X
         lSZdAwDhjE2NQJe6fXrFeo+Acco5rnxsQMywT7yDEJ14ivunVTz+Pt/inzz3WPoPVxEu
         xtZMEoawVC3mllSCVyN8uTwr5bkMkCySdNak5CX1IdExQNqapMFF8lcbxmLY5ax0PFHC
         hGfHJuBNMVxx7neyJK8sohyq17WGxPaerXu2sCLILRH2tTHaGCyXrADosEwXiO7xwgOv
         j+BZ4xvzGKuNd+4tdBzqcZGZ0assiBbvv+4bi5bCGXVgJyOv6EffmPnlryh0oaypIDK8
         Kmzg==
X-Gm-Message-State: AAQBX9feEcHNkCZ18vvtU5hB226WOxRwLxSa/twWB2pk/3Y2EWm7pCwH
	qrJQVAAvYIPW4Q+f5uYpzg==
X-Google-Smtp-Source: AKy350Zkmeo+/KqUAL8RCuMQa36bWUyJkm9hsLv/I+bgaWDPIGEFpGOsdVC2hJi0uLO21uhFBLH8IQ==
X-Received: by 2002:a05:6830:3a93:b0:6a4:4286:e7da with SMTP id dj19-20020a0568303a9300b006a44286e7damr8808493otb.37.1682447860386;
        Tue, 25 Apr 2023 11:37:40 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id d2-20020a0568301b6200b0069f0794861asm5964175ote.63.2023.04.25.11.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Apr 2023 11:37:40 -0700 (PDT)
Received: (nullmailer pid 2060265 invoked by uid 1000);
	Tue, 25 Apr 2023 18:37:39 -0000
Date: Tue, 25 Apr 2023 13:37:39 -0500
From: Rob Herring <robh@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v9 2/8] dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3
 PHY
Message-ID: <20230425183739.GA2032053-robh@kernel.org>
References: <cover.1682092324.git.quic_varada@quicinc.com>
 <b00042df41420ac337703ca99ac7876c46552946.1682092324.git.quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b00042df41420ac337703ca99ac7876c46552946.1682092324.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_113741_631286_BA4F568F 
X-CRM114-Status: GOOD (  16.62  )
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

On Fri, Apr 21, 2023 at 09:24:44PM +0530, Varadarajan Narayanan wrote:
> * Add dt-bindings for USB3 PHY found on Qualcomm IPQ9574
> 
> * Making power-domains as optional since IPQ9574 doesn't have GDSCs
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> 
> ---
>  Changes in v9:
> 	- Move 'allOf' to the correct position
> 
>  Changes in v8:
> 	- Update clock names for ipq9574
> 
>  Changes in v6:
> 	- Made power-domains optional
> 
> Note: In the earlier patch sets, had used the (legacy)
> specification available in qcom,msm8996-qmp-usb3-phy.yaml. Moved
> to newer specification in qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> ---
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 43 +++++++++++++++++++---
>  1 file changed, 37 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index 16fce10..b9dcda2 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -16,6 +16,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,ipq9574-qmp-usb3-phy
>        - qcom,sc8280xp-qmp-usb3-uni-phy
>  
>    reg:
> @@ -25,11 +26,7 @@ properties:
>      maxItems: 4
>  
>    clock-names:
> -    items:
> -      - const: aux
> -      - const: ref
> -      - const: com_aux
> -      - const: pipe
> +    maxItems: 4
>  
>    power-domains:
>      maxItems: 1
> @@ -60,7 +57,6 @@ required:
>    - reg
>    - clocks
>    - clock-names
> -  - power-domains
>    - resets
>    - reset-names
>    - vdda-phy-supply
> @@ -69,6 +65,41 @@ required:
>    - clock-output-names
>    - "#phy-cells"
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,ipq9574-qmp-usb3-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 4

Doesn't the top-level already say this?

> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: cfg_ahb
> +            - const: pipe
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sc8280xp-qmp-usb3-uni-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: com_aux
> +            - const: pipe
> +
>  additionalProperties: false
>  
>  examples:
> -- 
> 2.7.4
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
