Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F10A9C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Apr 2024 21:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0coLuW0KOkbHW1311NwCo4pRKL5MPhGSEUuyfyIe/w=; b=mLcsPT255qeXuj
	bpmTbZPJrONR5X6r2LR5CKdm6cMrVpw2At2yr8kFgRA2JkgF9NPnuzcUEwkfN+/3ZFpnFxaMfmglO
	nY5Rf1Cc21fnbyVBpVvVQwDAFXNHYfQDKw2EGo58EZFMmtaOoS+6LIpkS7tlwIf47jzUksws2+DgI
	jD+tioLbbRlZr6d7WgdCv8fRjm64yrCILUm/pU/Vjb4STTPKk0PnBWu0R5ub6DZaaooWB9RiBXKj7
	t/Rc54p6GzMTN5mGrd/I9zPGUQr5cSN6f6EiOnbTDa0xLTsfA+S2NbREhpl/4fPeIPFay2yKIxwGD
	Eant6kSNAMYB31Lz8ffw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1vVy-000000081q1-229K;
	Tue, 30 Apr 2024 21:59:55 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1vVv-000000081pW-0TGw
	for linux-phy@lists.infradead.org;
	Tue, 30 Apr 2024 21:59:52 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-de596c078c2so6181168276.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Apr 2024 14:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714514389; x=1715119189; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aitWmRcAVpn7HzPwQhTVKeFU7re+mCUC33ppmlezlfs=;
        b=ivb3TSwAtQbwFS+ziY6FL1Pm9eFPSj61VJE3uGPAvLbzslaXcqfOg1SUD6+9hql+IS
         sM7wKg1YyDbd+Trd7ZKja/9kkg6DxvV+iBmP/GPcJ4vhumZYTAiGmTLN/mvVC07EsFse
         iFy5h7+lxZ0760kibU9isz4k25ZLGsX0lDcP/hO8lc3LrnTuI86ZyeNHyGufGH5SQFF6
         /SnZa81fJVErRpYl++31rV0QbPe1PrBdMJMBzoDNTiCBXZ/kG0V1c0/9EEKFyOJSi8xO
         5GafsCt6DueM2J6TP0vtmMd/X7SzJ7991tP9RvYyFrDTDFBAmQkLb+lSXLJ0S3Vp22hV
         97Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714514389; x=1715119189;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aitWmRcAVpn7HzPwQhTVKeFU7re+mCUC33ppmlezlfs=;
        b=N4hOWth2oTRWkWjMve63cUGHfFyDZzYV0b3+e8ZrKUBTLVWEmBwYgU5DsPmsZcZ5E5
         v9KZGobCb7fdJNxBCqxHmXO77OBmP4tmPOt+DV6pmd+hZSYWrLK21uLUKeqzS6uIChO2
         thL9Tnh3qbpyngOKIzIurUReWsplf0YmSJHxtok2OE+Y5ik67DeOp989YPKoFj7Ng3Pi
         XNBl5LFZP8uSUKdvY2txkwD29jCL1lOINUeNn2ie/gN0rdSvVR2Mx6w2hKsnwbtv6EJ1
         OrJ5IfX01jYg46+hghh7t8/lmn8IA76cgJR0TYCVL7Ut5Ym4HUi0qSHKyaK2uT3UUcLO
         GoEw==
X-Forwarded-Encrypted: i=1; AJvYcCXZ3PJbM6bQtk0uRtxBcsJjPhTqq/PIoOo194RsWc4AO9SDIcbLd9A12jgIek92+k0d7FnwDd02r/OgLzvA8qCIXZ8aCkO28zZMhg04CQ==
X-Gm-Message-State: AOJu0YxkBuGAWvGkGS0WebnqO4OBTXEC70j7Y/NsxoFDzPzMfro/8lDm
	dnulZfw1t9teG3hWu/2mbrj2TPLlBxfwpaHQ/DxkgdGNCb5YUSmRAZZWyf78QU30346u2LPB/aC
	6LcjNcf7Y5+zdtMqj54SaJDYTuiiJoFsxKNasLg==
X-Google-Smtp-Source: AGHT+IE1KB8yrzrfhVxOHpSzlO3DAENKkQ1zAhecye+ph9WJKSb9t/G7xbAvzC7x1FXX+/8cofgIR2G0w2AQZg8an/o=
X-Received: by 2002:a25:907:0:b0:dcc:9e88:b15 with SMTP id 7-20020a250907000000b00dcc9e880b15mr878986ybj.41.1714514389105;
 Tue, 30 Apr 2024 14:59:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240415182052.374494-1-mr.nuke.me@gmail.com> <20240415182052.374494-7-mr.nuke.me@gmail.com>
 <CAA8EJpqY1aDZMaeqBULEOD26UeGYbLd8RsA16jZw7zXJ7_oGPQ@mail.gmail.com>
 <6726fa2b-f5fe-10fb-6aab-f76d61f0b3cd@gmail.com> <4a7b1e1d-ac68-4857-8925-f90c9e123fd1@gmail.com>
 <CAA8EJppGW=qyk2P6Z_S=dp0njsCjqZaXjw8qU4MY1HOZR-N=4A@mail.gmail.com>
 <Zi88Hdx6UgBo/gti@hu-varada-blr.qualcomm.com> <CAA8EJpq+Bbws8yH5Xq7rHyA+-=DaCcfEcgUa5RUt2+LWQW0kKg@mail.gmail.com>
 <ZjCQM24T2XIJ6GAR@hu-varada-blr.qualcomm.com> <9d9c569b-2e9c-4fd3-9a1a-50f198bd0884@gmail.com>
In-Reply-To: <9d9c569b-2e9c-4fd3-9a1a-50f198bd0884@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 1 May 2024 00:59:37 +0300
Message-ID: <CAA8EJpocetzWV-xoVzeD7HxkE9s4+iGq7Q-sZz8Ue89YuptdYw@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] phy: qcom-qmp-pcie: add support for ipq9574 gen3x2 PHY
To: mr.nuke.me@gmail.com
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_145951_230909_4B674F32 
X-CRM114-Status: GOOD (  28.33  )
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

On Wed, 1 May 2024 at 00:51, <mr.nuke.me@gmail.com> wrote:
>
> On 4/30/24 1:31 AM, Varadarajan Narayanan wrote:
> > On Mon, Apr 29, 2024 at 01:55:32PM +0300, Dmitry Baryshkov wrote:
> >> On Mon, 29 Apr 2024 at 09:20, Varadarajan Narayanan
> >> <quic_varada@quicinc.com> wrote:
> >>>
> >>> On Wed, Apr 17, 2024 at 12:50:49AM +0300, Dmitry Baryshkov wrote:
> >>>> On Wed, 17 Apr 2024 at 00:25, Alex G. <mr.nuke.me@gmail.com> wrote:
> >>>>>
> >>>>> Hi Dmitry,
> >>>>>
> >>>>> On 4/15/24 16:25, mr.nuke.me@gmail.com wrote:
> >>>>>>
> >>>>>>
> >>>>>> On 4/15/24 15:10, Dmitry Baryshkov wrote:
> >>>>>>> On Mon, 15 Apr 2024 at 21:23, Alexandru Gagniuc <mr.nuke.me@gmail.com>
> >>>>>>> wrote:
> >>>>>>>>
> >>>>>>>> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
> >>>>>>>> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
> >>>>>>>> being reused from IPQ8074 and IPQ6018 PHYs.
> >>>>>>>>
> >>>>>>>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> >>>>>>>> ---
> >>>>>>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
> >>>>>>>>    .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
> >>>>>>>>    2 files changed, 149 insertions(+), 1 deletion(-)
> >>>>>>>>
> >>>>>>>
> >>>>>>> [skipped]
> >>>>>>>
> >>>>>>>> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem
> >>>>>>>> *base, u32 offset, u32 val)
> >>>>>>>>
> >>>>>>>>    /* list of clocks required by phy */
> >>>>>>>>    static const char * const qmp_pciephy_clk_l[] = {
> >>>>>>>> -       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> >>>>>>>> +       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> >>>>>>>> "anoc", "snoc"
> >>>>>>>
> >>>>>>> Are the NoC clocks really necessary to drive the PHY? I think they are
> >>>>>>> usually connected to the controllers, not the PHYs.
> >>>>>>
> >>>>>> The system will hang if these clocks are not enabled. They are also
> >>>>>> attached to the PHY in the QCA 5.4 downstream kernel.
> >>>>
> >>>> Interesting.
> >>>> I see that Varadarajan is converting these clocks into interconnects.
> >>>> Maybe it's better to wait for those patches to land and use
> >>>> interconnects instead. I think it would better suit the
> >>>> infrastructure.
> >>>>
> >>>> Varadarajan, could you please comment, are these interconnects
> >>>> connected to the PHY too or just to the PCIe controller?
> >>>
> >>> Sorry for the late response. Missed this e-mail.
> >>>
> >>> These 2 clks are related to AXI port clk on Aggnoc/SNOC, not
> >>> directly connected to PCIE wrapper, but it should be enabled to
> >>> generate pcie traffic.
> >>
> >> So, are they required for the PHY or are they required for the PCIe
> >> controller only?
> >
> > These 2 clks are required for PCIe controller only.
> > PCIE controller need these clks to send/receive axi pkts.
>
> Very interesting information, thank you!
>
> Dmitry, In light of this information do you want me to move these clocks
> out of the PHY and into the PCIe controller?

That's what I was thinking about.

>
> Alex
>
> > Thanks
> > Varada
> >
> >>>>> They are named "anoc_lane", and "snoc_lane" in the downstream kernel.
> >>>>> Would you like me to use these names instead?
> >>>>
> >>>> I'm fine either way.
> >>>>
> >>
> >>
> >>
> >> --
> >> With best wishes
> >> Dmitry



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
