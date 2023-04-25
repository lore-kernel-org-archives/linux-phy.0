Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C651DC77B61
	for <linux-phy@archiver.kernel.org>; Tue, 25 Apr 2023 18:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AacZuROq/0fg+yFpWPwM/+PMFSqZPTozsy6VVOXEAL8=; b=XoyAx2V6ZpWLRZ
	amIa6VtgiVJPCrip0rogVwulJrp4YlFOSBQxUGfI5c/eOJBT75IEdRiXO/uCWyMzmanKqOkUr/a/j
	dZOfzzKjIT48oas52fCGvuCPl3FAOWlHFE6D7JBzrckm2RN7SqOLOlH+0Qv8Egv+BaanKieIW6Q3F
	Zpw8EH234KH2qF7tdm5S5PtUhf0U42YLIH7zqsH8ouyi1T0ry9R062wJvHbJpWs89D7ahOP2FSsXp
	42H69YWxhj6SfXqd9wVMbwwYy5f28vx79dAXTn37fQl/BxxFpLmmEpj0IJvXdq1GZc9FUDYluaaY0
	nvjRAoNdhns2JNUv7FYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prNs9-0020BA-1V;
	Tue, 25 Apr 2023 18:58:41 +0000
Received: from mail-oa1-f46.google.com ([209.85.160.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prNs7-0020Ah-11
	for linux-phy@lists.infradead.org;
	Tue, 25 Apr 2023 18:58:40 +0000
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-18ecdb1f2aaso6623309fac.1
        for <linux-phy@lists.infradead.org>; Tue, 25 Apr 2023 11:58:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682449118; x=1685041118;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UCPUjU42PRIffLcz9TbBJOAbKvwZwWa3dQczE6gwtwg=;
        b=VnBN4LJi0oSO2cRVKl1HbB2RbF/1OXcG2xxhIrOyAiH2Qbveux2b1zd6i6FgSYNhMA
         UPG6vcjGs1I/3tHtVRKswdRbKyEr8Hf0SAqvCX9eL9QYL3LPBk9RYwjNzXBp//nFs3IU
         uavp4dDOVicT+zSrWhk5b3hC7sV0ZRGO4omiuZwIOBjJIDouN1IEXRFQHMRZVLeDvgyO
         EkS3w70gdTokEDrIWwgxoopr9DRzrDnE4/I5Nms+bGAQ1ptR1/NmM1ZO4eP700KjO0u1
         gIxxf75Wp7BNPFaiNT8R25Ju7MUb/wF3+qmZMgn3waH8aI0HZbt/nGUZVBP8yzEBK3AX
         ywPg==
X-Gm-Message-State: AAQBX9dYdR7obRTUobErEMjv0tx+Fq7APolBmOT0s6VlH2Ig7ZVVJzP4
	sPWaqspS77ex3ca91ivTZA==
X-Google-Smtp-Source: AKy350bVDkDMdeLblHdVNzD9BQfck4ZUsL4yNpzgQj1n/n4pupILFLzx+5zjoco+7TdvhHSqedp9LA==
X-Received: by 2002:a05:6870:e416:b0:187:fc1c:c1a9 with SMTP id n22-20020a056870e41600b00187fc1cc1a9mr9584459oag.6.1682449117979;
        Tue, 25 Apr 2023 11:58:37 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i4-20020a056870864400b0018e996a507esm2629684oal.31.2023.04.25.11.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Apr 2023 11:58:37 -0700 (PDT)
Received: (nullmailer pid 2083974 invoked by uid 1000);
	Tue, 25 Apr 2023 18:58:36 -0000
Date: Tue, 25 Apr 2023 13:58:36 -0500
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Johan Hovold <johan@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 ports and orientation-switch
Message-ID: <20230425185836.GA2081377-robh@kernel.org>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-2-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230425034010.3789376-2-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_115839_351460_B4C1AC64 
X-CRM114-Status: GOOD (  17.70  )
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

On Mon, Apr 24, 2023 at 08:40:04PM -0700, Bjorn Andersson wrote:
> The QMP combo phy can be connected to a TCPM, a USB controller and a
> DisplayPort controller for handling USB Type-C orientation switching
> and propagating HPD signals.
> 
> Extend the binding to allow these connections to be described.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 3cd5fc3e8fab..c037ac90ce7f 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -60,6 +60,26 @@ properties:
>      description:
>        See include/dt-bindings/dt-bindings/phy/phy-qcom-qmp.h
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
> +        $ref: /schemas/graph.yaml#/$defs/port-base

'port-base' means you have extra properties to add. Where are they? It 
also needs 'unevaluatedProperties: false'.

> +        description: Incoming endpoint from the USB controller
> +
> +      port@2:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        description: Incoming endpoint from the DisplayPort controller
> +
>  required:
>    - compatible
>    - reg
> @@ -98,6 +118,37 @@ examples:
>        vdda-phy-supply = <&vreg_l9d>;
>        vdda-pll-supply = <&vreg_l4d>;
>  
> +      orientation-switch;
> +
>        #clock-cells = <1>;
>        #phy-cells = <1>;
> +
> +      ports {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          port@0 {
> +              reg = <0>;
> +
> +              endpoint {
> +                  remote-endpoint = <&typec_connector_ss>;
> +              };
> +          };
> +
> +          port@1 {
> +              reg = <1>;
> +
> +              endpoint {
> +                  remote-endpoint = <&dwc3_ss_out>;
> +              };
> +          };
> +
> +          port@2 {
> +              reg = <2>;
> +
> +              endpoint {
> +                  remote-endpoint = <&mdss_dp_out>;
> +              };
> +          };
> +      };
>      };
> -- 
> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
