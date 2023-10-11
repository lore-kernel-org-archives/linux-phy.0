Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59F85CD6E5C
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 11:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHd9kAqmCtRfTmlQd55+w5q0CNaCbvSRBJ4w6wh6Psc=; b=xdeyA/D6WXQDfK
	ukJWV6SWsPHw7dGzQywtm9kUoz99UoXNvFkhUnSLgYBkCCJUL/sSWCq8ZpcrGyGWE61bHPWqxSBLh
	0gpnhP+OSHKu3LXRz0LcG8H3HLSpNYfmlGFBUGQ+anzWF9Xb0skLFJCPfoIcz5fGoHApDvaSR2JSQ
	OdjB046hH3Ft8JStSY6h0BLfPCsMUddS8P/4/lUTGFgbDp9BRRhNk366lIL6kxOoNRwyJxaCrqOeF
	9ttho1jxl+Wf1kSVyd/9RPe87OZQKcN7TyZ67IUadYviA6V57X16jhX6kXhaEW5cChSO+FmnbbPiv
	UD/3sHXNNlwPdZsya9jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXcc-00Flri-0F;
	Wed, 11 Oct 2023 11:43:26 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXcZ-00FlqZ-07
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 11:43:24 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-991c786369cso1127804266b.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Oct 2023 04:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697024598; x=1697629398; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZgxFWFlqtNB9y2KoDFsWngJ4vKWBFSBMlRLjDq6FqUA=;
        b=w60sZXaxWuucOw671F3nYd56Ix5mcIxqTT6ZHvQ9N5g7pK/v/zDcmtb5Q8Heli6LpP
         xswRzV3pdHG46qBdTjuVefsIgbtAeHk/mvvu0a5BoeQ+rJKpR60Ahi4aKETgq0FqCWcQ
         T2RMNS7Mn5XYxWzEsEILmnJy1+FQk0LT1U9Zbg76jgcME259HFJSx546xJiyDo19o+h/
         gWEDUesmEmmIYNPv3t1+pySXnQDeDjf4ycpFNtZk+lbCIGWG89Ax3DZFvUi2US8fwrIy
         IThAfmvs2Q9f/DHC7QQmv9BdAypvlnq30on1bJe+C70/b4sQUIshZDRShIFHyDC+3csS
         Mrfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024598; x=1697629398;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZgxFWFlqtNB9y2KoDFsWngJ4vKWBFSBMlRLjDq6FqUA=;
        b=uAG5Fr6tciFT6mLM2gLA9bOPTkZYiq27HgTLsbIQ+7jp5RtcEMS7jGnNU74MhDOYKe
         dKIxr76GBG/EnStJdYu9bwte6V9WnhBu6hc/MrOnjSQDGGnIuof6X7be1bNaEe9sJ3ui
         z02nuF18toipr6n2R+XKi9EpAxXj2HKbC3/0h4LGx4ub9j16Z5NcrYR8ZFVAR5i9C8vo
         zytVbZk3/RaHOt+KINqsqRz8jPVMmUQqrH6djvwqOwUrCda3zRggXLFmTs9rdf/tExQu
         jYznl5K2jB4GqU0+pwymqSJUudHuDNXo99DqYK/tTKhoBSZVyUdQ8wLNHpK1Ca1rheAp
         hMaw==
X-Gm-Message-State: AOJu0YzQASihGm2Efr/GV/EA4LnlxMN2ex6v2goIPJ/ROuOYajMy4rTr
	k9JdF3HizdGkeE9BU0HTdJLcUUGEUnHtOQgOUTwnzQ==
X-Google-Smtp-Source: AGHT+IF+0sYBl6h4x+B0Hh3LisaV7RDJ/W7t5rpHpMiyWZMWhMOJ9yAdGZnDXCwDAWqrX82dofTUxKy7oUeA7d1TUFg=
X-Received: by 2002:a17:906:8a73:b0:9a1:e758:fc73 with SMTP id
 hy19-20020a1709068a7300b009a1e758fc73mr17381841ejc.67.1697024598423; Wed, 11
 Oct 2023 04:43:18 -0700 (PDT)
MIME-Version: 1.0
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-2-git-send-email-quic_msarkar@quicinc.com>
 <20230921183850.GA762694-robh@kernel.org> <28bf111f-b965-4d38-884b-bc3a0b68a6cc@quicinc.com>
 <8effa7e5-a223-081b-75b8-7b94400d42e6@quicinc.com>
In-Reply-To: <8effa7e5-a223-081b-75b8-7b94400d42e6@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 14:43:05 +0300
Message-ID: <CAA8EJpp+3_A-9YXF1yOKdFweVKqrpTxvxKoJcUH6qiDHfCQ-dQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20231011_044323_077402_480C78B6 
X-CRM114-Status: GOOD (  22.63  )
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

On Wed, 11 Oct 2023 at 14:14, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
>
> On 10/6/2023 4:24 PM, Shazad Hussain wrote:
> >
> >
> > On 9/22/2023 12:08 AM, Rob Herring wrote:
> >> On Wed, Sep 20, 2023 at 07:25:08PM +0530, Mrinmay Sarkar wrote:
> >>> Add devicetree bindings support for SA8775P SoC.
> >>> Define reg and interrupt per platform.
> >>>
> >>> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> >>> ---
> >>>   .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 130
> >>> +++++++++++++++++----
> >>>   1 file changed, 108 insertions(+), 22 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>> b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>> index a223ce0..e860e8f 100644
> >>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
> >>> @@ -13,6 +13,7 @@ properties:
> >>>     compatible:
> >>>       oneOf:
> >>>         - enum:
> >>> +          - qcom,sa8775p-pcie-ep
> >>>             - qcom,sdx55-pcie-ep
> >>>             - qcom,sm8450-pcie-ep
> >>>         - items:
> >>> @@ -20,29 +21,19 @@ properties:
> >>>             - const: qcom,sdx55-pcie-ep
> >>>       reg:
> >>> -    items:
> >>> -      - description: Qualcomm-specific PARF configuration registers
> >>> -      - description: DesignWare PCIe registers
> >>> -      - description: External local bus interface registers
> >>> -      - description: Address Translation Unit (ATU) registers
> >>> -      - description: Memory region used to map remote RC address space
> >>> -      - description: BAR memory region
> >>> +    minItems: 6
> >>> +    maxItems: 7
> >>>       reg-names:
> >>> -    items:
> >>> -      - const: parf
> >>> -      - const: dbi
> >>> -      - const: elbi
> >>> -      - const: atu
> >>> -      - const: addr_space
> >>> -      - const: mmio
> >>> +    minItems: 6
> >>> +    maxItems: 7
> >>
> >> Don't move these into if/then schemas. Then we are duplicating the
> >> names, and there is no reason to keep them aligned for new compatibles.
> >>
> >> Rob
> >
> > Hi Rob,
> > As we have one extra reg property (dma) required for sa8775p-pcie-ep,
> > isn't it expected to be moved in if/then as per number of regs
> > required. Anyways we would have duplication of some properties for new
> > compatibles where the member numbers differs for a property.
> >
> > Are you suggesting to add the extra reg property (dma) in the existing
> > reg and reg-names list, and add minItems/maxItems for all compatibles
> > present in this file ?

This is what we have been doing in other cases: if the list is an
extension of the current list, there is no need to duplicate it. One
can use min/maxItems instead.

> >
> > -Shazad
>
> Here we have defined reg and interrupt per platform as clocks is defined.
>
> -Mrinmay
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
