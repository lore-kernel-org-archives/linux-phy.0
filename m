Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C7CBC5475B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Mar 2024 19:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMcvgTPwdaIVslemwxII6cj7OXZAQAcw+tu0FmhqcFY=; b=uCedwmcVzYSLcW
	gsnnh9vQ8g1F/nCZzTh9tnuAevbC+lEcL1BJtdyiOKnkwST/9LKx8JibId+vDMQY71M+Ms2kM9zMy
	yeg+06IO/dejFpfeEUT3yI2KySphVYr5kg0aurbE5ABNDRDyWIacxCVDw7M8i6s6ct7A9e3KCHFW/
	nHj1WkNAQhgUJhu9ExPHvpqWuGqpduB14t7GcnndCv37eSqv6w7zX5LgS6YLRxp8Aa/sINyZwIGhH
	IY8fIWK4dtJUqRmWoGKj6Q52AkLEQ944KUBGtkHl89pqvW3BdXYR/0PI9ogg3cU0jpjWV0ad5N6Cs
	qkulldJ6mgaSrJY8JAtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhxIv-00000001hIu-3rGL;
	Wed, 06 Mar 2024 19:51:53 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhxIs-00000001hG8-0DsJ
	for linux-phy@lists.infradead.org;
	Wed, 06 Mar 2024 19:51:51 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso175630276.0
        for <linux-phy@lists.infradead.org>; Wed, 06 Mar 2024 11:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709754708; x=1710359508; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=csEvl+YiH8Y/jo/itPX56IxrecdL7iIEtegQQM4ZWU0=;
        b=Kht4q79hD3R2pOVu26SYuuM9NUlLqzeQS5WXPDyLPsIqjj5ams1WclBQLWi/+U0SDO
         hoz+0n2oF6XGOxw83PK4VXuuUbLZKHC0Y23411t5bkjFB6sE7T26FYoWxeslQ7B8GA6D
         EpSuy36XV/5nxAc1GqRjMji4M61O94stwf3CxGJ2dxQuNxQYgUvVuBhy+0ytxyqk+5Yk
         Rcm7dFQuhQVo/HR/J1rwTvuRbGV+CyafwEy8bkCYnLFtoNkLI32UkQbXhyqRF3IzcgBJ
         9ovzrLQUJd3Y63UfJUs8R1jQ68Bk7z8ruaja403womB/BNWb1D64RxENRoKAPhg+LYG+
         pJ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709754708; x=1710359508;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=csEvl+YiH8Y/jo/itPX56IxrecdL7iIEtegQQM4ZWU0=;
        b=Yx4Wq+B0B9WG/K13ReeGsnXAVbHJWzif4pIsgOc7pZbrPzR9Nh+NeCJy/Cc0Ag5f+R
         m+DEvhuK5eQvCQ6eybmUVWW7kXBt0meG77l2e3H7iaAg0ig1AW5dcjv3xHJ5ATGRPXBs
         lGGOc0iXyRRCglVtQNlDur07YEhQAOMGJvfsNqKQHNFszHO8iWn/+6PTV4Rg+AXL2lW5
         oLh3weIjrxW70kE4LW+yVFgcA8yorOEas9HU72AaDYVlHpndeG1ctc1jY950uez7bcVe
         WB3lYh4UhJh7x/JAcG6BpKCLlmPKBh6NBeth3dPNh7sdMFrKEhNG9yBtu2/+4J4NHppl
         9kYA==
X-Forwarded-Encrypted: i=1; AJvYcCU1TSa8Fvvm6dYOAkZDMKMsevY+k5OdXAqJiES1HuIPMPpRfHDmeiKLVC4Q7NhXm1duzDTpBnEhnejlOcXXwqmbVcdHfOE5vjGVPu1UQA==
X-Gm-Message-State: AOJu0YyW+v2daINJcp5Hc9jIi7H0q8NYiUBXQDfCWOpQ7W26aC4iEI3o
	JDcpAqNcPOcVDlgp4UyZm3rQI+FczOcl6h4EUz+Fp7JEljzEIiX+EeLE4qLSqbQBnqDZGDK8GLn
	VbKwh9gQkoQwyXpYq2WhJhEOf2fE4G8uOfT7gHw==
X-Google-Smtp-Source: AGHT+IF/kGBb7idc3d2AEARbAxJnyUoIwtHxSDN0QDfLSSyf1XNAK8n+uv/CjDuD5p83nbhiV0hFcMEqsE4zIHZ8H1M=
X-Received: by 2002:a25:9b05:0:b0:dc7:4645:83ab with SMTP id
 y5-20020a259b05000000b00dc7464583abmr838347ybn.0.1709754708627; Wed, 06 Mar
 2024 11:51:48 -0800 (PST)
MIME-Version: 1.0
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
 <1709657858-8563-2-git-send-email-quic_sriramd@quicinc.com>
 <CAA8EJpph+R2oJjABvNQYwp=pZLxQPzzs41Hhw4feOdQ3eU-6UA@mail.gmail.com> <4f1e4e66-e728-472e-92f4-17c295548a14@quicinc.com>
In-Reply-To: <4f1e4e66-e728-472e-92f4-17c295548a14@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 21:51:37 +0200
Message-ID: <CAA8EJpoRToOH-SvOf=iMqsuXkcSO-J74HsVF9pWVDde-72oaHQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20240306_115150_130639_8C4D7BFA 
X-CRM114-Status: GOOD (  24.66  )
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

On Wed, 6 Mar 2024 at 17:52, Sriram Dash <quic_sriramd@quicinc.com> wrote:
>
> On 3/6/2024 12:33 AM, Dmitry Baryshkov wrote:
> > On Tue, 5 Mar 2024 at 18:58, Sriram Dash <quic_sriramd@quicinc.com> wrote:
> >>
> >> Some target systems allow multiple resources to be managed by firmware.
> >> On these targets, tasks related to clocks, regulators, resets, and
> >> interconnects can be delegated to the firmware, while the remaining
> >> responsibilities are handled by Linux.
> >>
> >> To support the management of partial resources in Linux and leave the rest
> >> to firmware, multiple power domains are introduced. Each power domain can
> >> manage one or more resources, depending on the specific use case.
> >>
> >> These power domains handle SCMI calls to the firmware, enabling the
> >> activation and deactivation of firmware-managed resources.
> >>
> >> Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
> >> ---
> >>   .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 74 ++++++++++++++++------
> >>   .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 49 ++++++++++++--
> >>   .../devicetree/bindings/usb/qcom,dwc3.yaml         | 37 ++++++++++-
> >>   3 files changed, 130 insertions(+), 30 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >> index 1e2d4dd..53b9ba9 100644
> >> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> >> @@ -44,7 +44,32 @@ properties:
> >>       maxItems: 5
> >>
> >>     power-domains:
> >> -    maxItems: 1
> >> +    description: specifies a phandle to PM domain provider node
> >> +    minItems: 1
> >> +    maxItems: 2
> >> +
> >> +  power-domain-names:
> >> +    description:
> >> +      A list of power domain name strings sorted in the same order as the
> >> +      power-domains property.
> >> +
> >> +      For platforms where some resource are firmware managed, the name
> >> +      corresponding to the index of an SCMI domain provider can be
> >> +      "usb_core" or "usb_transfer".
> >> +    items:
> >> +      - const: usb_core
> >> +      - const: usb_transfer
> >> +
> >> +  qmp,fw-managed:
> >> +    description:
> >> +      Some targets allow multiple resources to be managed by firmware.
> >> +      On these targets, tasks related to clocks, regulators, resets, and
> >> +      interconnects can be delegated to the firmware, while the remaining
> >> +      responsibilities are handled by Linux.
> >> +
> >> +      Decide if the target resources will be managed by firmware or High level
> >> +      OS.
> >> +    type: boolean
> >>
> >>     resets:
> >>       maxItems: 2
> >> @@ -70,14 +95,6 @@ properties:
> >>   required:
> >>     - compatible
> >>     - reg
> >> -  - clocks
> >> -  - clock-names
> >> -  - resets
> >> -  - reset-names
> >> -  - vdda-phy-supply
> >> -  - vdda-pll-supply
> >> -  - "#clock-cells"
> >> -  - clock-output-names
> >>     - "#phy-cells"
> >>
> >>   allOf:
> >> @@ -86,6 +103,33 @@ allOf:
> >>           compatible:
> >>             contains:
> >>               enum:
> >> +              - qcom,sa8775p-qmp-usb3-uni-phy
> >> +              - qcom,sc8280xp-qmp-usb3-uni-phy
> >> +              - qcom,x1e80100-qmp-usb3-uni-phy
> >> +    then:
> >> +      required:
> >> +        - power-domains
> >> +
> >> +  - if:
> >> +      not:
> >> +        required:
> >> +          - qmp,fw-managed
> >> +    then:
> >> +      required:
> >> +        - clocks
> >> +        - clock-names
> >> +        - resets
> >> +        - reset-names
> >> +        - vdda-phy-supply
> >> +        - vdda-pll-supply
> >> +        - clock-output-names
> >> +        - "#clock-cells"
> >> +
> >> +  - if:
> >> +      properties:
> >> +        compatible:
> >> +          contains:
> >> +            enum:
> >>                 - qcom,ipq6018-qmp-usb3-phy
> >>                 - qcom,ipq8074-qmp-usb3-phy
> >>                 - qcom,ipq9574-qmp-usb3-phy
> >> @@ -144,18 +188,6 @@ allOf:
> >>               - const: com_aux
> >>               - const: pipe
> >>
> >> -  - if:
> >> -      properties:
> >> -        compatible:
> >> -          contains:
> >> -            enum:
> >> -              - qcom,sa8775p-qmp-usb3-uni-phy
> >> -              - qcom,sc8280xp-qmp-usb3-uni-phy
> >> -              - qcom,x1e80100-qmp-usb3-uni-phy
> >> -    then:
> >> -      required:
> >> -        - power-domains
> >> -
> >>   additionalProperties: false
> >>
> >>   examples:
> >> diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> >> index 0f200e3..ad2f08f 100644
> >> --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> >> +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> >> @@ -49,6 +49,34 @@ properties:
> >>       items:
> >>         - const: ref
> >>
> >> +  power-domains:
> >> +    description: specifies a phandle to PM domain provider node
> >> +    minItems: 1
> >> +    maxItems: 2
> >> +
> >> +  power-domain-names:
> >> +    description:
> >> +      A list of power domain name strings sorted in the same order as the
> >> +      power-domains property.
> >> +
> >> +      For platforms where some resource are firmware managed, the name
> >> +      corresponding to the index of an SCMI domain provider can be
> >> +      "usb_core" or "usb_transfer".
> >> +    items:
> >> +      - const: usb_core
> >> +      - const: usb_transfer
> >> +
> >> +  hsphy,fw-managed:
> >> +    description:
> >> +      Some targets allow multiple resources to be managed by firmware.
> >> +      On these targets, tasks related to clocks, regulators, resets, and
> >> +      interconnects can be delegated to the firmware, while the remaining
> >> +      responsibilities are handled by Linux.
> >> +
> >> +      Decide if the target resources will be managed by firmware or High level
> >> +      OS.
> >> +    type: boolean
> >> +
> >>     resets:
> >>       items:
> >>         - description: PHY core reset
> >> @@ -154,12 +182,21 @@ required:
> >>     - compatible
> >>     - reg
> >>     - "#phy-cells"
> >> -  - clocks
> >> -  - clock-names
> >> -  - resets
> >> -  - vdda-pll-supply
> >> -  - vdda18-supply
> >> -  - vdda33-supply
> >> +
> >> +
> >> +allOf:
> >> +  - if:
> >> +      not:
> >> +        required:
> >> +          - hsphy,fw-managed
> >> +    then:
> >> +      required:
> >> +        - clocks
> >> +        - clock-names
> >> +        - resets
> >> +        - vdda-pll-supply
> >> +        - vdda18-supply
> >> +        - vdda33-supply
> >>
> >>   additionalProperties: false
> >>
> >> diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >> index 63d150b..5bf3a29 100644
> >> --- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >> +++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
> >> @@ -64,7 +64,31 @@ properties:
> >>
> >>     power-domains:
> >>       description: specifies a phandle to PM domain provider node
> >> -    maxItems: 1
> >> +    minItems: 1
> >> +    maxItems: 2
> >> +
> >> +  power-domain-names:
> >> +    description:
> >> +      A list of power domain name strings sorted in the same order as the
> >> +      power-domains property.
> >> +
> >> +      For platforms where some resource are firmware managed, the name
> >> +      corresponding to the index of an SCMI domain provider can be
> >> +      "usb_core" or "usb_transfer".
> >> +    items:
> >> +      - const: usb_core
> >> +      - const: usb_transfer
> >> +
> >> +  qcom,fw-managed:
> >> +    description:
> >> +      Some targets allow multiple resources to be managed by firmware.
> >> +      On these targets, tasks related to clocks, regulators, resets, and
> >> +      interconnects can be delegated to the firmware, while the remaining
> >> +      responsibilities are handled by Linux.
> >> +
> >> +      Decide if the target resources will be managed by firmware or High level
> >> +      OS.
> >> +    type: boolean
> >
> > I think this is an overkill. You know that SA8775 is going to use
> > SCMI-based clocks / PD management. Thus I'd suggest adding new
> > bindings file targeting qcom,sa8775-dwc3. Also you can drop the
> > qcom,fw-managed property at all, let the driver decide basing on the
> > compat string.
> >
> >
>
> Thank you for the suggestion Dmitry. I will include
> new compat string for SA8775 which will decide whether
> to use scmi based clock/ PD.

As a reminder:
- same hardware = same compatible string
- existing DT better to continue to work. Or ask for explicit
permission from Bjorn to break the ABI.

>
> >>
> >>     required-opps:
> >>       maxItems: 1
> >> @@ -148,13 +172,20 @@ required:
> >>     - "#address-cells"
> >>     - "#size-cells"
> >>     - ranges
> >> -  - clocks
> >> -  - clock-names
> >>     - interrupts
> >>     - interrupt-names
> >>
> >>   allOf:
> >>     - if:
> >> +      not:
> >> +        required:
> >> +          - qcom,fw-managed
> >> +    then:
> >> +      required:
> >> +        - clocks
> >> +        - clock-names
> >> +
> >> +  - if:
> >>         properties:
> >>           compatible:
> >>             contains:
> >> --
> >> 2.7.4
> >>
> >>
> >
> >
> > --
> > With best wishes
> > Dmitry



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
