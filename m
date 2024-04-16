Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA4C9C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 21:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyNKawdILq+4vOrortR0fMTh53T+dQGUuRrIc4NEjjM=; b=LExpkkPsJhIRfB
	Q7xA3fULRJPZhstO/WO8zNUzSE6rBuh6zrYc3R7bxbgPr/rJCfYTm4hsVP6/VEAmzYbH9gk+3bpt0
	pqLIXoOd5wphSykYLYO/PeLDadDte3nXmWQ1UNa1Rvp3ezf8cRFRsJIOd7oTxfHI+SjXTf5lkQYau
	9OPxUWC3zRYLcAduDTVBZoeg0wSd/XZBGDtHKoryu1g549ZUU27yrnTx3ytZBVdYkd7mR/7447Lxf
	TWbAOarFw3+4HDLCd0E29AtFq68g3u3O7TEtsD4EjOOdIuswjdJ9mRy1fP/rD6pMYq2gzHPfcksbH
	cLXCFlv5ytcTCYny4RzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwqhn-0000000DxLA-2R2a;
	Tue, 16 Apr 2024 21:51:07 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwqhi-0000000DxKY-1qqn
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 21:51:05 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-6098a20ab22so43378467b3.2
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 14:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713304260; x=1713909060; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kjacwD0Z0JhzcTISBRsYUI2PwcebrTIi/3ViNZqx+HY=;
        b=knuNAVdVVFw+Y8lQ1cr/BfzsmmSBUd0l9sEDRMMkunvVMo39O/HawJdujuo5pvQboe
         OddmjI9jlCMhjVQtJxQfVaTVQ9fQV3pe9rN7gVi6sAOw7Lu0A/ZuP8ZzYpT2sLSKk/11
         y+2mq/qz/Y/idV2mjXHdExg02KAOpwCmiHfqlrvZJJbfO7Mm6CWUCyNFcD/lHE020y+b
         MyoJg9BYgMgb4gNUjOEj0FPmjqNODrUCc8VSjx5qWJ97sJmltByy5F0pxv1WzFWMuMfz
         oHTtRhFWsLcNF8C4bJfZBwqlPRYdyKvt+gH4IfA+EnqThHaQykyOuUW/WMSJw2H8v/lR
         8geg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713304260; x=1713909060;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kjacwD0Z0JhzcTISBRsYUI2PwcebrTIi/3ViNZqx+HY=;
        b=aBH2GWgVOPcqmtC94cvCETeTEY7pqhY9wPDXYBeVTZCEYcy/Qo/BbVGn9dxCVXcxAj
         a4NbFS/8pjB/n+Bz3aAbMl/0QE/5w+cvWzDwil9nqnQkTebksDjh9LeJFfra3G/NQUqc
         umHennTpXVR3WmywU6VwSG3++mgZSCSGbBfyHl0IWWxqrN4qOUdEotEf69yTGMfr0RlR
         kxHr1ny+FVX7Ny4338EPs6Rtske/qm+u/7C0I3E4fvvf8qF2AszXp730xAt+OCFtliBf
         +XN7MU/dd1McrIpfZa5SDHKfRtaPYLezA3bwtkvFVA0463IjH3yvNYT1507BCLXgjmYS
         7Jsw==
X-Forwarded-Encrypted: i=1; AJvYcCV5HbtkBRmbras07E8CMa7T9OnX5etbAsqfp3q4gpQd3VikOVbPTGW43QXEwavUHfU16H3RPnJtep0TfTwwGsFfRrOIiGwmdfrW1tv0UQ==
X-Gm-Message-State: AOJu0YwwQR7ThzELbTUySRRpyWPNOCdqs30wGjacSwi6jXi98D/PmPbn
	sYoxPdCDuqss9ynXij9dwizpdeCAxmMKRMibMTfLaD7H88qhUsrkc6ErLTtu55MvBj2RpHUrqgk
	lNMVB0JmL/h4dBOPIvRBMQfI7zcnmvOqmdxFXtA==
X-Google-Smtp-Source: AGHT+IHwf4S0I3CIxt2zebmdygPEKzxzcZAva7zQrKgbnJ+VAk/Eu2tIwupOVk1YuWmguhQVN3+jp9oteWNx3Ywc3xc=
X-Received: by 2002:a81:ac65:0:b0:611:1861:1f0 with SMTP id
 z37-20020a81ac65000000b00611186101f0mr13251817ywj.52.1713304260489; Tue, 16
 Apr 2024 14:51:00 -0700 (PDT)
MIME-Version: 1.0
References: <20240415182052.374494-1-mr.nuke.me@gmail.com> <20240415182052.374494-7-mr.nuke.me@gmail.com>
 <CAA8EJpqY1aDZMaeqBULEOD26UeGYbLd8RsA16jZw7zXJ7_oGPQ@mail.gmail.com>
 <6726fa2b-f5fe-10fb-6aab-f76d61f0b3cd@gmail.com> <4a7b1e1d-ac68-4857-8925-f90c9e123fd1@gmail.com>
In-Reply-To: <4a7b1e1d-ac68-4857-8925-f90c9e123fd1@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Apr 2024 00:50:49 +0300
Message-ID: <CAA8EJppGW=qyk2P6Z_S=dp0njsCjqZaXjw8qU4MY1HOZR-N=4A@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] phy: qcom-qmp-pcie: add support for ipq9574 gen3x2 PHY
To: "Alex G." <mr.nuke.me@gmail.com>, Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_145102_582504_0A53894C 
X-CRM114-Status: GOOD (  34.49  )
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

On Wed, 17 Apr 2024 at 00:25, Alex G. <mr.nuke.me@gmail.com> wrote:
>
> Hi Dmitry,
>
> On 4/15/24 16:25, mr.nuke.me@gmail.com wrote:
> >
> >
> > On 4/15/24 15:10, Dmitry Baryshkov wrote:
> >> On Mon, 15 Apr 2024 at 21:23, Alexandru Gagniuc <mr.nuke.me@gmail.com>
> >> wrote:
> >>>
> >>> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
> >>> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
> >>> being reused from IPQ8074 and IPQ6018 PHYs.
> >>>
> >>> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> >>> ---
> >>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
> >>>   .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
> >>>   2 files changed, 149 insertions(+), 1 deletion(-)
> >>>
> >>
> >> [skipped]
> >>
> >>> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem
> >>> *base, u32 offset, u32 val)
> >>>
> >>>   /* list of clocks required by phy */
> >>>   static const char * const qmp_pciephy_clk_l[] = {
> >>> -       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> >>> +       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> >>> "anoc", "snoc"
> >>
> >> Are the NoC clocks really necessary to drive the PHY? I think they are
> >> usually connected to the controllers, not the PHYs.
> >
> > The system will hang if these clocks are not enabled. They are also
> > attached to the PHY in the QCA 5.4 downstream kernel.

Interesting.
I see that Varadarajan is converting these clocks into interconnects.
Maybe it's better to wait for those patches to land and use
interconnects instead. I think it would better suit the
infrastructure.

Varadarajan, could you please comment, are these interconnects
connected to the PHY too or just to the PCIe controller?

> >
> They are named "anoc_lane", and "snoc_lane" in the downstream kernel.
> Would you like me to use these names instead?

I'm fine either way.

> e>>>   };
> >>>
> >>>   /* list of regulators */
> >>> @@ -2499,6 +2593,16 @@ static const struct qmp_pcie_offsets
> >>> qmp_pcie_offsets_v4x1 = {
> >>>          .rx             = 0x0400,
> >>>   };
> >>>
> >>> +static const struct qmp_pcie_offsets qmp_pcie_offsets_ipq9574 = {
> >>> +       .serdes         = 0,
> >>> +       .pcs            = 0x1000,
> >>> +       .pcs_misc       = 0x1400,
> >>> +       .tx             = 0x0200,
> >>> +       .rx             = 0x0400,
> >>> +       .tx2            = 0x0600,
> >>> +       .rx2            = 0x0800,
> >>> +};
> >>> +
> >>>   static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x2 = {
> >>>          .serdes         = 0,
> >>>          .pcs            = 0x0a00,
> >>> @@ -2728,6 +2832,33 @@ static const struct qmp_phy_cfg
> >>> sm8250_qmp_gen3x1_pciephy_cfg = {
> >>>          .phy_status             = PHYSTATUS,
> >>>   };
> >>>
> >>> +static const struct qmp_phy_cfg ipq9574_pciephy_gen3x2_cfg = {
> >>> +       .lanes                  = 2,
> >>> +
> >>> +       .offsets                = &qmp_pcie_offsets_ipq9574,
> >>> +
> >>> +       .tbls = {
> >>> +               .serdes         = ipq9574_gen3x2_pcie_serdes_tbl,
> >>> +               .serdes_num     =
> >>> ARRAY_SIZE(ipq9574_gen3x2_pcie_serdes_tbl),
> >>> +               .tx             = ipq8074_pcie_gen3_tx_tbl,
> >>> +               .tx_num         = ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
> >>> +               .rx             = ipq6018_pcie_rx_tbl,
> >>> +               .rx_num         = ARRAY_SIZE(ipq6018_pcie_rx_tbl),
> >>> +               .pcs            = ipq6018_pcie_pcs_tbl,
> >>> +               .pcs_num        = ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
> >>> +               .pcs_misc       = ipq9574_gen3x2_pcie_pcs_misc_tbl,
> >>> +               .pcs_misc_num   =
> >>> ARRAY_SIZE(ipq9574_gen3x2_pcie_pcs_misc_tbl),
> >>> +       },
> >>> +       .reset_list             = ipq8074_pciephy_reset_l,
> >>> +       .num_resets             = ARRAY_SIZE(ipq8074_pciephy_reset_l),
> >>> +       .vreg_list              = NULL,
> >>> +       .num_vregs              = 0,
> >>> +       .regs                   = pciephy_v4_regs_layout,
> >>
> >> So, is it v4 or v5?
> >
> > Please give me a day or so to go over my notes and give you a more
> > coherent explanation of why this versioning was chosen. I am only
> > working from the QCA 5.4 downstream sources. I don't have any
> > documentation for the silicon
>
> The downstream QCA kernel uses the same table for ipq6018, ipq8074-gen3,
> and ipq9574. It is named "ipq_pciephy_gen3_regs_layout". Thus, it made
> sense to use the same upstream table for ipq9574, "pciephy_v4_regs_layout".
>
> As far as the register tables go, the pcs/pcs_misc are squashed into the
> same table in the downstream 5.4 kernel. I was able to separate the two
> tables because the pcs_misc registers were defined with an offset of
> 0x400. For example:
>
> /* QMP V2 PHY for PCIE gen3 2 Lane ports - PCS Misc registers */
> #define PCS_PCIE_X2_POWER_STATE_CONFIG2                    0x40c
> #define PCS_PCIE_X2_POWER_STATE_CONFIG4                    0x414
> #define PCS_PCIE_X2_ENDPOINT_REFCLK_DRIVE                  0x420
> #define PCS_PCIE_X2_L1P1_WAKEUP_DLY_TIME_AUXCLK_L          0x444
> #define PCS_PCIE_X2_L1P1_WAKEUP_DLY_TIME_AUXCLK_H          0x448
> #define PCS_PCIE_X2_L1P2_WAKEUP_DLY_TIME_AUXCLK_L          0x44c
> #define PCS_PCIE_X2_L1P2_WAKEUP_DLY_TIME_AUXCLK_H          0x450
> ...
>
> Here, QPHY_V4_PCS_PCIE_POWER_STATE_CONFIG2 = 0xc would be correct,
> assuming a pcs_misc offset of 0x400. However, starting with
> ENDPOINT_REFCLK_DRIVE, the register would be
> QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_DRIVE = 0x1c. Our offsets are off-by 0x4.
>
> The existing V5 offsets, on the other hand, were all correct. For this
> reason, I considered that V5 is the most likely place to add the missing
> PCS misc definitions.

Ok, sounds sane. Please use _v5 for the regs layout.

>
> Is this explanation sufficiently convincing? Where does the v4/v5 scheme
> in upstream kernel originate?

Sometimes it's vendor kernels, sometimes it's a feedback from devs
that have access to actual specs.


--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
