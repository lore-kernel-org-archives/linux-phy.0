Return-Path: <SRS0=Wr7y=JS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 472C0C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 21 Apr 2021 18:46:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E355613FA
	for <linux-phy@archiver.kernel.org>; Wed, 21 Apr 2021 18:45:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8E355613FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nZ1U/DBen9lEm4jBQC+55jXTHKdL7DZ9caY08xSi1bU=; b=CP8Uz+ATVndDeM3N0tYITVsVr
	ISqheAy4r/naMcYGqFBpf+Kl1+mOYZDTIZcUpaXJjnkEyI34p5lHWDvg33XR45ieBdGByKgw5smGi
	8Zmjb3qShu6t8hU3oCDsTbFBW+ZXcygt2KFzb2PY7+kLqdm//ahbNZk+4BmIY0EE9S/MhwtxoQmDf
	iwb6Z9kkEkClA/wrgFN8aiwsUmA8pxtlVWKG424Fvz0O+0Y2bwZanVQ1SGs6HL6LfE6cfhoM6vLHZ
	J8t+Uikm72TuIzEfcx+Veye5wU0UAae6RXWWUSZkOeztSvXqm2nx+Mpp1QcPVBKs/udwYsCQhxR51
	X/uEgNa1g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZHrH-00EyQJ-BF; Wed, 21 Apr 2021 18:45:55 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZHr5-00EyOt-N9; Wed, 21 Apr 2021 18:45:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0Zzt5+rfER4LPyDD2QTXX98g/ctt2RdGoZklTqO9iT4=; b=YxisVkfxGWsH+dZY7mewd7j7ii
 cY8TgRfYImS5Kw7oCp+LIxGZhoHLsMTipX6m+yBAzJS2mBB53N30bl+frIhTG/ZSkggI+44oCDAnY
 3r9njU8JcaNjLPeJub8b8gdwKBu7HRSRr/TcIbvywE5nQMnhHnulkVIsC4EOWDVoH35rdQQy2mfGU
 VRqH5l//KHO/75amTWHsBSGqGAoolRhL9mcKO7LTuPcmcp5nWLryz8na2klWEyeLRhIOQOwFxan2I
 W5oiJCCGnl+FbRa4hV6ec1neB//0pyUmUqJ1Rmn3BnFYHmOGCRdwMk/EMsWVOmR1P1ccuBI2znlam
 cWlw9dbw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZHr2-00D6si-SJ; Wed, 21 Apr 2021 18:45:42 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3BA8161453;
 Wed, 21 Apr 2021 18:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619030740;
 bh=UKjUh24QqYmwHHSQuEySdCcJc2UvAvWPJoLiR3wCGKc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=URABPCKSQG09ALSpWO9/iywOZvM0Llx/PBU5zWecpkWfgaSZuCQIfHbzBQPm2DZvG
 UZ9CcDUUu2LviLN1OjO1D+0LPyViI3CgrPUSJuEPuqUsm2I0cH57MQiSCEOb9iNsWJ
 bR06s9dMbze28GFon41XmlwIh79KKW9i93jloIbAmxkbBZPM3zvn17RcDgXqMraw9I
 r1dFr5AV/8Qw+vFedr+Y6y+fEm6WCQ1jC2jiv/k0+TmqEDcYgzHQ5ZPHWM+sZ3QqFM
 uG9t7sx9dez/I4XgiYON2ooCYT9kg3FkWwxE+pjRk2RcVAypv3CS9R2eo5qLfEY4N/
 NygmfvynIDwpw==
Received: by mail-ej1-f52.google.com with SMTP id w23so49189919ejb.9;
 Wed, 21 Apr 2021 11:45:40 -0700 (PDT)
X-Gm-Message-State: AOAM532fhuKNBIwD3+KUpramDp0TdCpdXgtvZk+SUsDQtt8vfvLB3QY2
 3ZCRLVUQG1uNYvQE1gGlu8fQjaThcS0AojX1dQ==
X-Google-Smtp-Source: ABdhPJxGEGQ5XZOIN12a5/tf2rH4PRymOB2OCJQlg4vuUdHH5WJ4aW20jpXWygeIzqi8xAkH01TNnrppfzRQmPD+E3c=
X-Received: by 2002:a17:906:1984:: with SMTP id
 g4mr33699798ejd.525.1619030738569; 
 Wed, 21 Apr 2021 11:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1618916235.git.baruch@tkos.co.il>
 <c6ff03d1377ea9b5ff40ab283c884aeff6254dd9.1618916235.git.baruch@tkos.co.il>
 <20210420161855.GA3402221@robh.at.kernel.org> <87r1j4kzzm.fsf@tarshish>
In-Reply-To: <87r1j4kzzm.fsf@tarshish>
From: Rob Herring <robh@kernel.org>
Date: Wed, 21 Apr 2021 13:45:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKP1hZ6UGEuevjcMC_ZLbojemZ7-X-koyaxViRHQOoN4g@mail.gmail.com>
Message-ID: <CAL_JsqKP1hZ6UGEuevjcMC_ZLbojemZ7-X-koyaxViRHQOoN4g@mail.gmail.com>
Subject: Re: [PATCH 1/5] PCI: qcom: add support for IPQ60xx PCIe controller
To: Baruch Siach <baruch@tkos.co.il>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, 
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
 PCI <linux-pci@vger.kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_114541_015926_23C4FD6B 
X-CRM114-Status: GOOD (  37.27  )
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

On Tue, Apr 20, 2021 at 11:45 PM Baruch Siach <baruch@tkos.co.il> wrote:
>
> Hi Rob,
>
> Thanks for your review.
>
> I have a few comments below.
>
> On Tue, Apr 20 2021, Rob Herring wrote:
> > On Tue, Apr 20, 2021 at 02:21:36PM +0300, Baruch Siach wrote:
> >> From: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> >>
> >> IPQ60xx series of SoCs have one port of PCIe gen 3. Add support for that
> >> platform.
> >>
> >> The code is based on downstream Codeaurora kernel v5.4. Split out the
> >> registers access part from .init into .post_init. Registers are only
> >> accessible after phy_power_on().
> >>
> >> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> >> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> >> ---
> >>  drivers/pci/controller/dwc/pcie-qcom.c | 279 +++++++++++++++++++++++++
> >>  1 file changed, 279 insertions(+)
> >>
> >> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> >> index 8a7a300163e5..3e27de744738 100644
> >> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> >> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> >> @@ -41,6 +41,31 @@
> >>  #define L23_CLK_RMV_DIS                             BIT(2)
> >>  #define L1_CLK_RMV_DIS                              BIT(1)
> >>
> >> +#define PCIE_ATU_CR1_OUTBOUND_6_GEN3                0xC00
> >> +#define PCIE_ATU_CR2_OUTBOUND_6_GEN3                0xC04
> >> +#define PCIE_ATU_LOWER_BASE_OUTBOUND_6_GEN3 0xC08
> >> +#define PCIE_ATU_UPPER_BASE_OUTBOUND_6_GEN3 0xC0C
> >> +#define PCIE_ATU_LIMIT_OUTBOUND_6_GEN3              0xC10
> >> +#define PCIE_ATU_LOWER_TARGET_OUTBOUND_6_GEN3       0xC14
> >> +#define PCIE_ATU_UPPER_TARGET_OUTBOUND_6_GEN3       0xC18
> >> +
> >> +#define PCIE_ATU_CR1_OUTBOUND_7_GEN3                0xE00
> >> +#define PCIE_ATU_CR2_OUTBOUND_7_GEN3                0xE04
> >> +#define PCIE_ATU_LOWER_BASE_OUTBOUND_7_GEN3 0xE08
> >> +#define PCIE_ATU_UPPER_BASE_OUTBOUND_7_GEN3 0xE0C
> >> +#define PCIE_ATU_LIMIT_OUTBOUND_7_GEN3              0xE10
> >> +#define PCIE_ATU_LOWER_TARGET_OUTBOUND_7_GEN3       0xE14
> >> +#define PCIE_ATU_UPPER_TARGET_OUTBOUND_7_GEN3       0xE18
> >
> > ATU registers are standard DWC registers. Plus upstream now dynamically
> > detects how many ATU regions there are.
> >
> >> +#define PCIE20_COMMAND_STATUS                       0x04
> >> +#define BUS_MASTER_EN                               0x7
> >> +#define PCIE20_DEVICE_CONTROL2_STATUS2              0x98
> >> +#define PCIE_CAP_CPL_TIMEOUT_DISABLE                0x10
> >
> > All PCI standard registers.
>
> PCIE20_COMMAND_STATUS is indeed the common PCI_COMMAND. I could not find
> anything that matches PCIE20_DEVICE_CONTROL2_STATUS2. Where should I
> look?

Looks like PCI_EXP_DEVCTL2 and PCI_EXP_DEVSTA2 to me. The register bit
looks like PCI_EXP_DEVCTL2_COMP_TMOUT_DIS. Those are extended config
registers so their offset is variable.

>
> >
> >> +#define PCIE30_GEN3_RELATED_OFF                     0x890
> >
> > Looks like a DWC port logic register. The define at a minimum goes in
> > the common code. We probably already have one. Code touching the
> > register should ideally be there too (hint: look at the other drivers).
>
> pcie-tegra194.c uses the equivalent GEN3_RELATED_OFF. So I can move the
> definition to a common header. As for the code, I don't know. The tegra
> configuration sequence involves other registers as well.

I'm sure the Tegra folks will be happy to tell you if anything breaks.

>
> [snip]
>
> >> +static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
> >> +{
> >> +    struct dw_pcie *pci = pcie->pci;
> >> +    u16 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
> >> +    u32 val;
> >> +    int i;
> >> +
> >> +    writel(SLV_ADDR_SPACE_SZ,
> >> +            pcie->parf + PCIE20_v3_PARF_SLV_ADDR_SPACE_SIZE);
> >> +
> >> +    val = readl(pcie->parf + PCIE20_PARF_PHY_CTRL);
> >> +    val &= ~BIT(0);
> >
> > What's BIT(0)?
>
> I have no idea. I have no access to hardware documentation. I'm just
> porting working code from the Codeaurora tree.

Based on the 7 other existing modifications to that bit, it's 'enable
PCIe clocks and resets'. Looks like we need some refactoring at least
so there's not yet another copy.

> >> +    writel(val, pcie->parf + PCIE20_PARF_PHY_CTRL);
> >> +
> >> +    writel(0, pcie->parf + PCIE20_PARF_DBI_BASE_ADDR);
> >> +
> >> +    writel(DEVICE_TYPE_RC, pcie->parf + PCIE20_PARF_DEVICE_TYPE);
> >> +    writel(BYPASS | MSTR_AXI_CLK_EN | AHB_CLK_EN,
> >> +            pcie->parf + PCIE20_PARF_MHI_CLOCK_RESET_CTRL);
> >> +    writel(RXEQ_RGRDLESS_RXTS | GEN3_ZRXDC_NONCOMPL,
> >> +            pci->dbi_base + PCIE30_GEN3_RELATED_OFF);
> >> +
> >> +    writel(MST_WAKEUP_EN | SLV_WAKEUP_EN | MSTR_ACLK_CGC_DIS
> >> +            | SLV_ACLK_CGC_DIS | CORE_CLK_CGC_DIS |
> >> +            AUX_PWR_DET | L23_CLK_RMV_DIS | L1_CLK_RMV_DIS,
> >> +            pcie->parf + PCIE20_PARF_SYS_CTRL);
> >> +
> >> +    writel(0, pcie->parf + PCIE20_PARF_Q2A_FLUSH);
> >> +
> >> +    writel(BUS_MASTER_EN, pci->dbi_base + PCIE20_COMMAND_STATUS);
> >
> > Pretty sure the DWC core or PCI core does this already.
> >
> >> +
> >> +    writel(DBI_RO_WR_EN, pci->dbi_base + PCIE20_MISC_CONTROL_1_REG);
> >> +    writel(PCIE_CAP_LINK1_VAL, pci->dbi_base + offset + PCI_EXP_SLTCAP);

I have to wonder if all the bits being set here are really true.
Hotplug is really supported? There's an attention button? Power
indicator? If anything, that's all board specific and would need to
come from firmware (DT).

> >> +
> >> +    /* Configure PCIe link capabilities for ASPM */
> >> +    val = readl(pci->dbi_base + offset + PCI_EXP_LNKCAP);
> >> +    val &= ~PCI_EXP_LNKCAP_ASPMS;
> >> +    writel(val, pci->dbi_base + offset + PCI_EXP_LNKCAP);
> >> +
> >> +    writel(PCIE_CAP_CPL_TIMEOUT_DISABLE, pci->dbi_base +
> >> +            PCIE20_DEVICE_CONTROL2_STATUS2);
> >> +
> >> +    writel(PCIE_CAP_CURR_DEEMPHASIS | SPEED_GEN3,

SPEED_GEN3 does not look right for PCI_EXP_DEVCTL2.

> >> +                    pci->dbi_base + offset + PCI_EXP_DEVCTL2);
> >
> > This all looks like stuff that should be in the DWC core code. Maybe we
> > need an ASPM disable quirk or something? That's probably somewhat
> > common.
>
> Where in common code should that be?

If these registers are initialized elsewhere, in the same place.
Otherwise, probably in dw_pcie_setup_rc().

> Which part is quirky?

Disabling ASPM. It's a bit strange that some of this is needed at all
considering no other platform using the same IP needs it.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
