Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28E74CDB47E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 16:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuvtRXdTyOE9SOZDxquZg/rzW6jAipNHw865ERknjGI=; b=B0fRTRilA3EjKi
	wOYj+ytACE02lDdRUT+Pe8knq0FiYDlOlCtekkN5QmZ0xNrBAcL1p4kSbFViSOIQWJXNhv8w0vbcu
	9Gn1aVsR+LLt3UuuRuXrzB0tRk7LyTAxKzHQ50Z1oGxyrIvbt/vUmBmoCm2iZRaUIbVlL2OHHnfwL
	H0ZOscy/scKU3dWk1FhusfzXaNWaTpyX7HBnRzmzbSI1ya8tSPinZPuePeq2cjIo5jOGfDm5GV1qx
	ybzxFZ3IN9eUlzgd6NhBsmRaYcCh+2XlRNXRDFDa+tKPPYL8iOFHNUmnCfx4kVw17vJvb0auUpm4k
	5Qi5vcqYafoB+Klmjlcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrLBJ-003t42-1Q;
	Fri, 13 Oct 2023 16:38:33 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrLBF-003t20-2k
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 16:38:31 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5a7a7e9357eso27791017b3.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Oct 2023 09:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697215105; x=1697819905; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y62C42hqOldBla5nOPJaFzuEZ48dSgIXLJ1wjt3nmfg=;
        b=uNEDIkESek0Vv4nLd22vfKtHiGekl/x6oZkffVkBxYGHKwoeha2scdP2I3nH3gLEtk
         iYqgCPNspjECmbc2R1zaq+d4RicpwOvu95hntjHmQJSjxepU/mSHVTtzmuS7FnDrlw22
         gn7CcoiBkecacjpDL+inoiJgwZHFIWF4TmcDfT3La9BXgcJa9xZLB+CFCsNz7S1ggYuG
         7PMXU8Bo8MzFXmLBufLxDRp36P3oYJITDo+XZTbLbv9Mz9mFvLFCdzP+QY5Xc9p8MFjC
         ZfWsozscMT9L1e7EW6at7JYuD4W2Rh3b8DNekQlY57n7mKT991fBSJyD9jbqp1m4vYB3
         ucBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697215105; x=1697819905;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y62C42hqOldBla5nOPJaFzuEZ48dSgIXLJ1wjt3nmfg=;
        b=jgUBsIyVP5dEuXQi87rDCDRIEUv5C36wxi2DKHsOXeSu31ZRIXs4oGBILYBC2e+hrE
         tR7DmoIGlWy+Q3n18EanXJb44gs/pS8wzB3cStf+kseAatlFbIltNWduJ3bxkAB0lfkk
         qhiSqL+lzt90N2/NdtgGU/p5fmIf7JCFEyJqyO44kOpUoEf7CHeVF6Zh1/QYXGNHNYLm
         B+cFvgwAatoZ+tpE3ZbqByg9gM5r+YcuroZTlZDeuSCVPMNEB4tipj1+TscsRwmJnEf5
         sRhCiqZREGhSLB16rHxm438mCm3u7i2/QdF+lVqwkdNFd3amG5uJC0jtbO9XYBN2dGR6
         /m8Q==
X-Gm-Message-State: AOJu0Yz1wZAcOekW2QVp1TElNLFc0csDvzAaf6P20qTxxJroyxoFFnX+
	Xwd62kWvXyfX0mpSt0s8SpUh33int0lotwVfdgEAyQ==
X-Google-Smtp-Source: AGHT+IGNSo+78yX/NsWCFtkVnlt0MXoHA1iGSKh5UHymJ8V2IoNpgMBwBsPLUuvZ85t7hTyy9e6zlHX6+UtYGK0YhjI=
X-Received: by 2002:a0d:eb0e:0:b0:5a8:1654:4b6f with SMTP id
 u14-20020a0deb0e000000b005a816544b6fmr3585459ywe.17.1697215105287; Fri, 13
 Oct 2023 09:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-2-git-send-email-quic_msarkar@quicinc.com>
 <20230921183850.GA762694-robh@kernel.org> <28bf111f-b965-4d38-884b-bc3a0b68a6cc@quicinc.com>
 <8effa7e5-a223-081b-75b8-7b94400d42e6@quicinc.com> <CAA8EJpp+3_A-9YXF1yOKdFweVKqrpTxvxKoJcUH6qiDHfCQ-dQ@mail.gmail.com>
 <31e6aab6-73f9-a421-9dfa-292d9d0e9649@quicinc.com>
In-Reply-To: <31e6aab6-73f9-a421-9dfa-292d9d0e9649@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 13 Oct 2023 19:38:13 +0300
Message-ID: <CAA8EJprSxKXjZTH8tCHGvw4zBp_H-DunS9v9kvp=aFRNd55OhA@mail.gmail.com>
Subject: Re: [PATCH v1 1/5] dt-bindings: PCI: qcom-ep: Add support for SA8775P SoC
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: Shazad Hussain <quic_shazhuss@quicinc.com>, Rob Herring <robh@kernel.org>, agross@kernel.org, 
	andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	konrad.dybcio@linaro.org, mani@kernel.org, quic_nitegupt@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, quic_krichai@quicinc.com, 
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_093829_888645_F14558AE 
X-CRM114-Status: GOOD (  25.72  )
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

On Fri, 13 Oct 2023 at 15:55, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
>
> On 10/11/2023 5:13 PM, Dmitry Baryshkov wrote:
> > On Wed, 11 Oct 2023 at 14:14, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
> >>
> >> On 10/6/2023 4:24 PM, Shazad Hussain wrote:
> >>>
> >>> On 9/22/2023 12:08 AM, Rob Herring wrote:
> >>>> On Wed, Sep 20, 2023 at 07:25:08PM +0530, Mrinmay Sarkar wrote:
> >>>>> Add devicetree bindings support for SA8775P SoC.
> >>>>> Define reg and interrupt per platform.
> >>>>>
> >>>>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> >>>>> ---
> >>>>>    .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 130
> >>>>> +++++++++++++++++----
> >>>>>    1 file changed, 108 insertions(+), 22 deletions(-)
> >>>>>
> >>>>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>>>> b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>>>> index a223ce0..e860e8f 100644
> >>>>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>>>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>>>> @@ -13,6 +13,7 @@ properties:
> >>>>>      compatible:
> >>>>>        oneOf:
> >>>>>          - enum:
> >>>>> +          - qcom,sa8775p-pcie-ep
> >>>>>              - qcom,sdx55-pcie-ep
> >>>>>              - qcom,sm8450-pcie-ep
> >>>>>          - items:
> >>>>> @@ -20,29 +21,19 @@ properties:
> >>>>>              - const: qcom,sdx55-pcie-ep
> >>>>>        reg:
> >>>>> -    items:
> >>>>> -      - description: Qualcomm-specific PARF configuration registers
> >>>>> -      - description: DesignWare PCIe registers
> >>>>> -      - description: External local bus interface registers
> >>>>> -      - description: Address Translation Unit (ATU) registers
> >>>>> -      - description: Memory region used to map remote RC address space
> >>>>> -      - description: BAR memory region
> >>>>> +    minItems: 6
> >>>>> +    maxItems: 7
> >>>>>        reg-names:
> >>>>> -    items:
> >>>>> -      - const: parf
> >>>>> -      - const: dbi
> >>>>> -      - const: elbi
> >>>>> -      - const: atu
> >>>>> -      - const: addr_space
> >>>>> -      - const: mmio
> >>>>> +    minItems: 6
> >>>>> +    maxItems: 7
> >>>> Don't move these into if/then schemas. Then we are duplicating the
> >>>> names, and there is no reason to keep them aligned for new compatibles.
> >>>>
> >>>> Rob
> >>> Hi Rob,
> >>> As we have one extra reg property (dma) required for sa8775p-pcie-ep,
> >>> isn't it expected to be moved in if/then as per number of regs
> >>> required. Anyways we would have duplication of some properties for new
> >>> compatibles where the member numbers differs for a property.
> >>>
> >>> Are you suggesting to add the extra reg property (dma) in the existing
> >>> reg and reg-names list, and add minItems/maxItems for all compatibles
> >>> present in this file ?
> > This is what we have been doing in other cases: if the list is an
> > extension of the current list, there is no need to duplicate it. One
> > can use min/maxItems instead.
> Hi Dmitry
>
> we have tried using min/maxItems rather than duplicating but somehow
> catch up with some warnings in dt_bindings check
>
> //local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: reg: [[29360128, 12288], [1073741824, 3869],
> [1073745696, 200], [1073745920, 4096], [1073750016, 4096], [29372416,
> 12288]] is too short//
> //        from schema $id:
> http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#//
> ///local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: reg-names: ['parf', 'dbi', 'elbi', 'atu', 'addr_space',
> 'mmio'] is too short//
> //        from schema $id:

missing min/maxItems for reg and reg-names

> http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#//
> ///local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: interrupts: [[0, 140, 4], [0, 145, 4]] is too short//
> //        from schema $id:
> http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#//
> ///local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: interrupt-names: ['global', 'doorbell'] is too short//
> //        from schema $id:
> http://devicetree.org/schemas/pci/qcom,pcie-ep.yaml#//

incorrect min/maxItems for interrupts.

> //local/mnt/workspace/Mrinmay/lemans/next-20230914/linux-next/out/Documentation/devicetree/bindings/pci/qcom,pcie-ep.example.dtb:
> pcie-ep@1c00000: interrupt-names: ['global', 'doorbell'] is too short/
>
> added the patch in attachment.
>
> --Mrinmay
>
> >>> -Shazad
> >> Here we have defined reg and interrupt per platform as clocks is defined.
> >>
> >> -Mrinmay
> >>
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
