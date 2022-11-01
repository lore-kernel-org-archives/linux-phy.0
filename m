Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 080CBC4332F
	for <linux-phy@archiver.kernel.org>; Tue,  1 Nov 2022 17:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Sm5UiuCWkgbjWvKhHcCHlszDW5k7HCPVrAmJtK+NUg=; b=vO1mAjP1b5EdVm
	fIS/vHV5jWQzF/KePj2P5NYcK1c+B0h3+7U05lbFO7gyfE+csoWhYEA+nOlUmjmdFkMZm/cHZRqg/
	Gc83m8RMKxU3mRbLbJ3R8PhwSKvZYGcQpDKZ7W/vbGHU5adjKYtxst8oh8BycGRdnPK+nXzaLXGj/
	m5897xhVOguSqTvOtg4hsBQ5qZOqvRVlQK1mY46D1KZI+FVwnu31I7mUN80c0PekGMaTpdbgoKzHd
	qFHurXLDIuidHxEqRM4ulG5/1aMim1wJ//dt+rhqv9AhxvstEti/jt2QnWSauhDG/k7WASlvkDN68
	bh3ZAgA2JTdrpKc2p1AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opuyE-006F11-FD; Tue, 01 Nov 2022 17:22:38 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opuyB-006Epf-Dd
	for linux-phy@lists.infradead.org; Tue, 01 Nov 2022 17:22:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 80BBBB81E6C
	for <linux-phy@lists.infradead.org>; Tue,  1 Nov 2022 17:22:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1ED6C43144
	for <linux-phy@lists.infradead.org>; Tue,  1 Nov 2022 17:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667323351;
	bh=rgPGhUUt+Eyr0PadTOMg/b3hGIEIFxFAmO+UgjHuXjg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=sKK7JjMNpUp0pB4xBhlrCB4Q5PsVPhMCuyQFP06qzMwkOZUXClGjTp3ioNusBPvql
	 pDtDKVjcSDhLImjrE/4+pfjgfeKpoiwXm8zeNcEqJ1EFd6Cug6V7NB9nvzk1a0uVrH
	 BtykVR53Ni8+BOFwtc4crxEVkaPeh+fugsdv+R6OvwPluKc9IdrKOyC7j3NquziIFo
	 vHX9Ihlt44Bb7XSnnoXrBY3rAjA7NcMCwTtw1yCRr+JgXLrElPcW3llcNItoaTBOic
	 qYSC32+9pLwAChCVilgLXhHX+7rFAqLR5aLRDIj6lAJ3zBuFmKvxvtZNdIRsZydwsi
	 1aczXvTT8+SZQ==
Received: by mail-lj1-f176.google.com with SMTP id z24so21887387ljn.4
        for <linux-phy@lists.infradead.org>; Tue, 01 Nov 2022 10:22:31 -0700 (PDT)
X-Gm-Message-State: ACrzQf2XswHFyh2Rkp+5JifaFkNscq6/GJWjxaf5EXFtPRBcRdWAYMKd
	8NuhbnWX1v0dXA2ekZOa1cqgUeLGrHMlxpfsVw==
X-Google-Smtp-Source: AMsMyM5vOg74NIWBfxSPaEbGXTsm2QqL0KeMr1dNQn0vaGrKgq5wWdu76VnqemjN8nO91mLCT9GkD3PgA7n9FTpeu5A=
X-Received: by 2002:a2e:9a85:0:b0:275:1343:df71 with SMTP id
 p5-20020a2e9a85000000b002751343df71mr1163621lji.215.1667323349671; Tue, 01
 Nov 2022 10:22:29 -0700 (PDT)
MIME-Version: 1.0
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
 <20221029211312.929862-2-dmitry.baryshkov@linaro.org> <20221031214055.GA3613285-robh@kernel.org>
 <CAA8EJpqt+UvWHwd90Cdm3iCi2sbxbwbC3ADY6PW053Tw8r94VA@mail.gmail.com>
In-Reply-To: <CAA8EJpqt+UvWHwd90Cdm3iCi2sbxbwbC3ADY6PW053Tw8r94VA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 1 Nov 2022 12:22:20 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLVzPawSFh9e6b3nVfn+dNDFooVgOa7B_iTGU13tzXTRQ@mail.gmail.com>
Message-ID: <CAL_JsqLVzPawSFh9e6b3nVfn+dNDFooVgOa7B_iTGU13tzXTRQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/7] dt-bindings: PCI: qcom: Add sm8350 to bindings
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
X-CRM114-CacheID: sfid-20221101_102235_765888_9F477723 
X-CRM114-Status: GOOD (  22.47  )
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

On Mon, Oct 31, 2022 at 4:47 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Tue, 1 Nov 2022 at 00:40, Rob Herring <robh@kernel.org> wrote:
> >
> > On Sun, Oct 30, 2022 at 12:13:06AM +0300, Dmitry Baryshkov wrote:
> > > Add bindings for two PCIe hosts on SM8350 platform. The only difference
> > > between them is in the aggre0 clock, which warrants the oneOf clause for
> > > the clocks properties.
> > >
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > >  .../devicetree/bindings/pci/qcom,pcie.yaml    | 54 +++++++++++++++++++
> > >  1 file changed, 54 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > > index 54f07852d279..55bf5958ef79 100644
> > > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > > @@ -32,6 +32,7 @@ properties:
> > >        - qcom,pcie-sdm845
> > >        - qcom,pcie-sm8150
> > >        - qcom,pcie-sm8250
> > > +      - qcom,pcie-sm8350
> > >        - qcom,pcie-sm8450-pcie0
> > >        - qcom,pcie-sm8450-pcie1
> > >        - qcom,pcie-ipq6018
> > > @@ -185,6 +186,7 @@ allOf:
> > >                - qcom,pcie-sc8180x
> > >                - qcom,pcie-sc8280xp
> > >                - qcom,pcie-sm8250
> > > +              - qcom,pcie-sm8350
> > >                - qcom,pcie-sm8450-pcie0
> > >                - qcom,pcie-sm8450-pcie1
> > >      then:
> > > @@ -540,6 +542,57 @@ allOf:
> > >            items:
> > >              - const: pci # PCIe core reset
> > >
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            enum:
> > > +              - qcom,pcie-sm8350
> > > +    then:
> > > +      oneOf:
> > > +          # Unfortunately the "optional" ref clock is used in the middle of the list
> > > +        - properties:
> > > +            clocks:
> > > +              maxItems: 13
> > > +            clock-names:
> > > +              items:
> > > +                - const: pipe # PIPE clock
> > > +                - const: pipe_mux # PIPE MUX
> > > +                - const: phy_pipe # PIPE output clock
> > > +                - const: ref # REFERENCE clock
> > > +                - const: aux # Auxiliary clock
> > > +                - const: cfg # Configuration clock
> > > +                - const: bus_master # Master AXI clock
> > > +                - const: bus_slave # Slave AXI clock
> > > +                - const: slave_q2a # Slave Q2A clock
> > > +                - const: tbu # PCIe TBU clock
> > > +                - const: ddrss_sf_tbu # PCIe SF TBU clock
> > > +                - const: aggre0 # Aggre NoC PCIe0 AXI clock
> >
> > 'enum: [ aggre0, aggre1 ]' and 'minItems: 12' would eliminate the 2nd
> > case. There's a implicit requirement that string names are unique (by
> > default).
>
> Wouldn't it also allow a single 'aggre0' string?

No, because it's only for the 12th entry in the list.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
