Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89139FA3741
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 21:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFFuforC9n8ybDxSr+GGJtsCxX7hVrXuJKg1pDDTY/E=; b=uF3HWpWK5LSTzP
	kyzJ75euyn2CzsOMP1EDn3zHlUS5RUaXw+xfs629FS/dsn/Jd8DZggGkaCchWDJkMe+Y+RG3AEn7E
	W9Lrm6qj2q+1EKN4iPo/ve97bgfg9jki22+mfwFDK9p85YhYdNqwr3nEUZ3yuk6r5FEEn5h4d8Hn4
	EGMzpGcRL7XCbUM+XXYfknsvY80twZPSvMgt9zomTnJiP8kv6CnmgYHwuA0vJmmDdyH4lLpWJR053
	u54QZpqGd4d+MaEX/oQvGwfqPhiwVt31z5BGS1jLnoCTl2sOfl7eiH09Y0GmuhVy5tRGjl+32SgO1
	hNVHE1AbZG4YKKXyXe0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opccr-00Fk8t-Le; Mon, 31 Oct 2022 21:47:21 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opcco-00Fk5z-Cg
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 21:47:20 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-3691e040abaso120356807b3.9
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 14:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xzOjqeyFvqhS705oPAWJ0GddjV0BZAQlCXe8zauSjnY=;
        b=WAbGR+86/wS/wQn7NrfO9yBuZ+LEYr45wjJW9kgI4iX5MZNea4xPjGtAJaGK3+cn3c
         SmSPMD8A0+vNkwDFroz0sXZ8z9omzzXaaxX2l4NT5hVlKiBficeb09H9Jnk2DIex2HFS
         WaZxiMcXacucddwHPOR5jnmrayrlc7eWEhvqaeh08KyqbPjj8Vr95h/idSDU6TWp82jX
         mDkoPTBCJi52hQ8d/6nKlbv3P2VMMm97OTg4oqQM7IfMvW8r/EeXnA9qR2WiD+N4j31g
         6506QrUb65Fg7gf+Nqu0r73/K3ho38WNv1Exws4/S2nQT98RpCFmQfI/fIugsGhobUzR
         mJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xzOjqeyFvqhS705oPAWJ0GddjV0BZAQlCXe8zauSjnY=;
        b=wWkGEUa5Wo0LlR2a/WSbRBGar9KC5NjZkIbQ/pb9istCRnT5fkKAkiBQbEs0QNB7xL
         7+Ov63fq+Py+JrqwuG5ruBHpa/r63W63hO7titbCwginsANrYuPY/CxHnZAR+QlZ7w7q
         mdfO7Y/v+ICyDMWHCLc/abygUHQ8WQ1MOf7D09mQezuhne0GtlnUP7pM5ppSNpNPL3Yr
         QakRrRWQH9PGqDBxlO57GX2Iz0P5rIZUAyBpxffsAbBsuYiFi+e0nw+z7fRoLkITkbxI
         J//duZDtRz1Jz4qKadx8OannZQpp7myAKDIncFzxq5KBaVPPKyw37+EKXhZ5x7dfIMvK
         VGXA==
X-Gm-Message-State: ACrzQf3wgZW4XGQU76EEGqfg9loZVYGhbnIu7UUqF9sEp0gBa2pC4F4r
	XqtO1kmiH+2HryzjMT4pesIkWgwzDUsZTRaLeiG4Gg==
X-Google-Smtp-Source: AMsMyM7WB8VP+s71qqDXHCNxNVqxxxMFfsqDw3nJpW8eHHM9Hbbq60q6Hu6nkcqqaQfIZF+eDstm2AASBcHNwD09E48=
X-Received: by 2002:a81:7804:0:b0:369:1074:e2b with SMTP id
 t4-20020a817804000000b0036910740e2bmr15334789ywc.127.1667252836424; Mon, 31
 Oct 2022 14:47:16 -0700 (PDT)
MIME-Version: 1.0
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
 <20221029211312.929862-2-dmitry.baryshkov@linaro.org> <20221031214055.GA3613285-robh@kernel.org>
In-Reply-To: <20221031214055.GA3613285-robh@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 1 Nov 2022 00:47:05 +0300
Message-ID: <CAA8EJpqt+UvWHwd90Cdm3iCi2sbxbwbC3ADY6PW053Tw8r94VA@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] dt-bindings: PCI: qcom: Add sm8350 to bindings
To: Rob Herring <robh@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jingoo Han <jingoohan1@gmail.com>, 
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_144718_524612_9E229493 
X-CRM114-Status: GOOD (  18.11  )
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

On Tue, 1 Nov 2022 at 00:40, Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Oct 30, 2022 at 12:13:06AM +0300, Dmitry Baryshkov wrote:
> > Add bindings for two PCIe hosts on SM8350 platform. The only difference
> > between them is in the aggre0 clock, which warrants the oneOf clause for
> > the clocks properties.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../devicetree/bindings/pci/qcom,pcie.yaml    | 54 +++++++++++++++++++
> >  1 file changed, 54 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > index 54f07852d279..55bf5958ef79 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > @@ -32,6 +32,7 @@ properties:
> >        - qcom,pcie-sdm845
> >        - qcom,pcie-sm8150
> >        - qcom,pcie-sm8250
> > +      - qcom,pcie-sm8350
> >        - qcom,pcie-sm8450-pcie0
> >        - qcom,pcie-sm8450-pcie1
> >        - qcom,pcie-ipq6018
> > @@ -185,6 +186,7 @@ allOf:
> >                - qcom,pcie-sc8180x
> >                - qcom,pcie-sc8280xp
> >                - qcom,pcie-sm8250
> > +              - qcom,pcie-sm8350
> >                - qcom,pcie-sm8450-pcie0
> >                - qcom,pcie-sm8450-pcie1
> >      then:
> > @@ -540,6 +542,57 @@ allOf:
> >            items:
> >              - const: pci # PCIe core reset
> >
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,pcie-sm8350
> > +    then:
> > +      oneOf:
> > +          # Unfortunately the "optional" ref clock is used in the middle of the list
> > +        - properties:
> > +            clocks:
> > +              maxItems: 13
> > +            clock-names:
> > +              items:
> > +                - const: pipe # PIPE clock
> > +                - const: pipe_mux # PIPE MUX
> > +                - const: phy_pipe # PIPE output clock
> > +                - const: ref # REFERENCE clock
> > +                - const: aux # Auxiliary clock
> > +                - const: cfg # Configuration clock
> > +                - const: bus_master # Master AXI clock
> > +                - const: bus_slave # Slave AXI clock
> > +                - const: slave_q2a # Slave Q2A clock
> > +                - const: tbu # PCIe TBU clock
> > +                - const: ddrss_sf_tbu # PCIe SF TBU clock
> > +                - const: aggre0 # Aggre NoC PCIe0 AXI clock
>
> 'enum: [ aggre0, aggre1 ]' and 'minItems: 12' would eliminate the 2nd
> case. There's a implicit requirement that string names are unique (by
> default).

Wouldn't it also allow a single 'aggre0' string?

>
> > +                - const: aggre1 # Aggre NoC PCIe1 AXI clock
> > +        - properties:
> > +            clocks:
> > +              maxItems: 12
> > +            clock-names:
> > +              items:
> > +                - const: pipe # PIPE clock
> > +                - const: pipe_mux # PIPE MUX
> > +                - const: phy_pipe # PIPE output clock
> > +                - const: ref # REFERENCE clock
> > +                - const: aux # Auxiliary clock
> > +                - const: cfg # Configuration clock
> > +                - const: bus_master # Master AXI clock
> > +                - const: bus_slave # Slave AXI clock
> > +                - const: slave_q2a # Slave Q2A clock
> > +                - const: tbu # PCIe TBU clock
> > +                - const: ddrss_sf_tbu # PCIe SF TBU clock
> > +                - const: aggre1 # Aggre NoC PCIe1 AXI clock
> > +      properties:
> > +        resets:
> > +          maxItems: 1
> > +        reset-names:
> > +          items:
> > +            - const: pci # PCIe core reset
> > +
> >    - if:
> >        properties:
> >          compatible:
> > @@ -670,6 +723,7 @@ allOf:
> >                - qcom,pcie-sdm845
> >                - qcom,pcie-sm8150
> >                - qcom,pcie-sm8250
> > +              - qcom,pcie-sm8350
> >                - qcom,pcie-sm8450-pcie0
> >                - qcom,pcie-sm8450-pcie1
> >      then:
> > --
> > 2.35.1
> >
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
