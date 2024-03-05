Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F22EC54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 19:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5RRt5yOda4XDbdKl0jEchmujQbN7fnzocCxWzIhzYg=; b=ga+zaDHYAS3vMU
	hY/aJQPc6udIxruncL2SsyjyEK6JqMe6XQe7NBYfQ0vY804LdtvVVQ4Xh7trpIME+cfpFpeAbotKL
	sQwOtoMcT74WxIWFew3TJ6moxzg1S1T96NtXW81Bk5mt9/LZvpjMKLjAQp1DdZAkWFZAZQBGLQGBT
	Yq9lc+1BopQnUk7K2AWKBMFriG9bqD5UEcD2DAUx4XryQStRtRAMa83lOb+NSvpLzjeKPu5CBUUaf
	H/9XPJ1x2bx7oDcxooU2v2teCbW5r9/5U/qG9yDDYQQ35iTjn/Um0w1BPHS4EdW2BJwEzgay4wvJo
	22tDZAyMPylPc9vGxHww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rha4z-0000000ExQh-4B0S;
	Tue, 05 Mar 2024 19:03:58 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rha4w-0000000ExPg-2BgU
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 19:03:56 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-6096ab005c0so56113717b3.1
        for <linux-phy@lists.infradead.org>; Tue, 05 Mar 2024 11:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709665428; x=1710270228; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tj9v4Vuf7/2y1AftgKzFRQDegcxDIOospQ+FfL86Eno=;
        b=a3SiHz+ePNqkucdRSTDZnZ/BS15pPNQWksodLlmP4nL00gQ1yn1KgAv/wH/1hNboiL
         G9r0gXyxw+VguPjcCnCVaoPVA4Ml9Uovm2wVwgkL/Z/jhZu1VOAIT/VF773BHaJas9Um
         zu74Hmib3I+2lLc+kzW9kmaHe1bJqV+vCESTtfL1dZRpaaABtXM9R6z+uTzniah9Aj/H
         DDhoKqXytnw/niu6ihw2O4zK+Ugf7Y330UEEdxw+5mG5n35JWC/dqqOlDqmYeK0obTr7
         Rvlktfinaimh4rBpbIB4k+ICYbyhSqiuIkFjbi5KQOOXNDbzikpNOvAlCKCmgNPXkJll
         vuvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709665428; x=1710270228;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tj9v4Vuf7/2y1AftgKzFRQDegcxDIOospQ+FfL86Eno=;
        b=pgygeBUXoBeWT8ieB5CN/dUG9CuD9cf3OJD3JZogKCovZTqRpyHtFVRTLWCBHEgeA7
         Jd+yMaCZ+NeBh6zZPSb3yGl4UN3YsZYuouzke2FbZeGND+UGf04+EBlK59rgB52ulsKy
         uZLnD4f/Q60gfgYGnjNdjpIWZ1vimGD5SCZf7C+820A1bm7QTLcTKwn7xU+0gbDRyx6p
         Ie8As88NftZvxKwD6krZ7S4g2Wy5KoKGz5m/3G7pHZpIrkyQSzfeRsN8mXDDddwOLq7K
         AHVk0PTgAEFUEh+QUcOjLYn3khodrbKLZ8dizjx3yyoT0ga+igrA7byZTRXLMDYp9OC4
         wnXg==
X-Forwarded-Encrypted: i=1; AJvYcCWzorwSHoqPD1G+JuM0m+JtEsBrznc/kPv43mOGJEnYVW2mYmEudJMH9stUq7Mqvyx+IzOnwI/OT9jovurCm3CNpLuA4bbjqI8tLPGfXg==
X-Gm-Message-State: AOJu0YwJfxodzGCi7szgip19ayfZDlzFHmGXDVYb6L6cycvPRBosrsG5
	X3tOAKh7iwvWdI2v133ovb0uiFayIXAkudi5gFSXBzJciw/E/V4h+SgldInFUtDg/ocY4BoMTKX
	jOJ/51VA+xbHnATCL8mBs65ieu82YcP6aQbTBKQ==
X-Google-Smtp-Source: AGHT+IGKTqAbWKDABfsvILiDuIbYZg+R6nM3PamcUphV0IunTEH42BYl3u2kfBq9aXyR4Rztu5fz84oLGcZHxGyJ0GY=
X-Received: by 2002:a0d:e24c:0:b0:607:6ad3:8746 with SMTP id
 l73-20020a0de24c000000b006076ad38746mr12668467ywe.46.1709665427665; Tue, 05
 Mar 2024 11:03:47 -0800 (PST)
MIME-Version: 1.0
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com> <1709657858-8563-2-git-send-email-quic_sriramd@quicinc.com>
In-Reply-To: <1709657858-8563-2-git-send-email-quic_sriramd@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 5 Mar 2024 21:03:36 +0200
Message-ID: <CAA8EJpph+R2oJjABvNQYwp=pZLxQPzzs41Hhw4feOdQ3eU-6UA@mail.gmail.com>
Subject: Re: [RFC 1/3] dt-bindings: usb: qcom,dwc3: Add support for multiple power-domains
To: Sriram Dash <quic_sriramd@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, quic_wcheng@quicinc.com, 
	Thinh.Nguyen@synopsys.com, p.zabel@pengutronix.de, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, quic_psodagud@quicinc.com, quic_nkela@quicinc.com, 
	manivannan.sadhasivam@linaro.org, ulf.hansson@linaro.org, 
	sudeep.holla@arm.com, quic_shazhuss@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_110354_737751_A61D2335 
X-CRM114-Status: GOOD (  20.09  )
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

On Tue, 5 Mar 2024 at 18:58, Sriram Dash <quic_sriramd@quicinc.com> wrote:
>
> Some target systems allow multiple resources to be managed by firmware.
> On these targets, tasks related to clocks, regulators, resets, and
> interconnects can be delegated to the firmware, while the remaining
> responsibilities are handled by Linux.
>
> To support the management of partial resources in Linux and leave the rest
> to firmware, multiple power domains are introduced. Each power domain can
> manage one or more resources, depending on the specific use case.
>
> These power domains handle SCMI calls to the firmware, enabling the
> activation and deactivation of firmware-managed resources.
>
> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 74 ++++++++++++++++------
>  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 49 ++++++++++++--
>  .../devicetree/bindings/usb/qcom,dwc3.yaml         | 37 ++++++++++-
>  3 files changed, 130 insertions(+), 30 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index 1e2d4dd..53b9ba9 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -44,7 +44,32 @@ properties:
>      maxItems: 5
>
>    power-domains:
> -    maxItems: 1
> +    description: specifies a phandle to PM domain provider node
> +    minItems: 1
> +    maxItems: 2
> +
> +  power-domain-names:
> +    description:
> +      A list of power domain name strings sorted in the same order as the
> +      power-domains property.
> +
> +      For platforms where some resource are firmware managed, the name
> +      corresponding to the index of an SCMI domain provider can be
> +      "usb_core" or "usb_transfer".
> +    items:
> +      - const: usb_core
> +      - const: usb_transfer
> +
> +  qmp,fw-managed:
> +    description:
> +      Some targets allow multiple resources to be managed by firmware.
> +      On these targets, tasks related to clocks, regulators, resets, and
> +      interconnects can be delegated to the firmware, while the remaining
> +      responsibilities are handled by Linux.
> +
> +      Decide if the target resources will be managed by firmware or High level
> +      OS.
> +    type: boolean
>
>    resets:
>      maxItems: 2
> @@ -70,14 +95,6 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - clocks
> -  - clock-names
> -  - resets
> -  - reset-names
> -  - vdda-phy-supply
> -  - vdda-pll-supply
> -  - "#clock-cells"
> -  - clock-output-names
>    - "#phy-cells"
>
>  allOf:
> @@ -86,6 +103,33 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,sa8775p-qmp-usb3-uni-phy
> +              - qcom,sc8280xp-qmp-usb3-uni-phy
> +              - qcom,x1e80100-qmp-usb3-uni-phy
> +    then:
> +      required:
> +        - power-domains
> +
> +  - if:
> +      not:
> +        required:
> +          - qmp,fw-managed
> +    then:
> +      required:
> +        - clocks
> +        - clock-names
> +        - resets
> +        - reset-names
> +        - vdda-phy-supply
> +        - vdda-pll-supply
> +        - clock-output-names
> +        - "#clock-cells"
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
>                - qcom,ipq6018-qmp-usb3-phy
>                - qcom,ipq8074-qmp-usb3-phy
>                - qcom,ipq9574-qmp-usb3-phy
> @@ -144,18 +188,6 @@ allOf:
>              - const: com_aux
>              - const: pipe
>
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,sa8775p-qmp-usb3-uni-phy
> -              - qcom,sc8280xp-qmp-usb3-uni-phy
> -              - qcom,x1e80100-qmp-usb3-uni-phy
> -    then:
> -      required:
> -        - power-domains
> -
>  additionalProperties: false
>
>  examples:
> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> index 0f200e3..ad2f08f 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> @@ -49,6 +49,34 @@ properties:
>      items:
>        - const: ref
>
> +  power-domains:
> +    description: specifies a phandle to PM domain provider node
> +    minItems: 1
> +    maxItems: 2
> +
> +  power-domain-names:
> +    description:
> +      A list of power domain name strings sorted in the same order as the
> +      power-domains property.
> +
> +      For platforms where some resource are firmware managed, the name
> +      corresponding to the index of an SCMI domain provider can be
> +      "usb_core" or "usb_transfer".
> +    items:
> +      - const: usb_core
> +      - const: usb_transfer
> +
> +  hsphy,fw-managed:
> +    description:
> +      Some targets allow multiple resources to be managed by firmware.
> +      On these targets, tasks related to clocks, regulators, resets, and
> +      interconnects can be delegated to the firmware, while the remaining
> +      responsibilities are handled by Linux.
> +
> +      Decide if the target resources will be managed by firmware or High level
> +      OS.
> +    type: boolean
> +
>    resets:
>      items:
>        - description: PHY core reset
> @@ -154,12 +182,21 @@ required:
>    - compatible
>    - reg
>    - "#phy-cells"
> -  - clocks
> -  - clock-names
> -  - resets
> -  - vdda-pll-supply
> -  - vdda18-supply
> -  - vdda33-supply
> +
> +
> +allOf:
> +  - if:
> +      not:
> +        required:
> +          - hsphy,fw-managed
> +    then:
> +      required:
> +        - clocks
> +        - clock-names
> +        - resets
> +        - vdda-pll-supply
> +        - vdda18-supply
> +        - vdda33-supply
>
>  additionalProperties: false
>
> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> index 63d150b..5bf3a29 100644
> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> @@ -64,7 +64,31 @@ properties:
>
>    power-domains:
>      description: specifies a phandle to PM domain provider node
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  power-domain-names:
> +    description:
> +      A list of power domain name strings sorted in the same order as the
> +      power-domains property.
> +
> +      For platforms where some resource are firmware managed, the name
> +      corresponding to the index of an SCMI domain provider can be
> +      "usb_core" or "usb_transfer".
> +    items:
> +      - const: usb_core
> +      - const: usb_transfer
> +
> +  qcom,fw-managed:
> +    description:
> +      Some targets allow multiple resources to be managed by firmware.
> +      On these targets, tasks related to clocks, regulators, resets, and
> +      interconnects can be delegated to the firmware, while the remaining
> +      responsibilities are handled by Linux.
> +
> +      Decide if the target resources will be managed by firmware or High level
> +      OS.
> +    type: boolean

I think this is an overkill. You know that SA8775 is going to use
SCMI-based clocks / PD management. Thus I'd suggest adding new
bindings file targeting qcom,sa8775-dwc3. Also you can drop the
qcom,fw-managed property at all, let the driver decide basing on the
compat string.


>
>    required-opps:
>      maxItems: 1
> @@ -148,13 +172,20 @@ required:
>    - "#address-cells"
>    - "#size-cells"
>    - ranges
> -  - clocks
> -  - clock-names
>    - interrupts
>    - interrupt-names
>
>  allOf:
>    - if:
> +      not:
> +        required:
> +          - qcom,fw-managed
> +    then:
> +      required:
> +        - clocks
> +        - clock-names
> +
> +  - if:
>        properties:
>          compatible:
>            contains:
> --
> 2.7.4
>
>


--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
