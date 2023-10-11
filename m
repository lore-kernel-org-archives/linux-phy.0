Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 751ADCD6E60
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 12:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deqPDJE+JnP2RH51NdT9Z0CQJW5HPT3a13bMNiNEJK4=; b=lis0oVVOUX4k9r
	vL7ZCuaok64F/g3OiH5X4bBVlFejTsKem7fr2j/pvV6hZBWEC9XayPZYSA3THX3ZYM7IhQW2Bp5k5
	KbPSa4eFi4Zc1wsmJp1rHZAyMvcXhRorXrnItbstERJKhyDoLKz8PyCEQ9fIkzmA/csDEYBiJp+uD
	9si0mVxzg5o3vNXRH7X9RGHDwql9/LY7PaxbaQPhMa5yx4ZzjF0hW9q801+pHQZ2ZC5jcjQIpzfAd
	fjm2hHRv1dTkEfBT42p7lOQWt2tgO54bicORgWzt4hhqsA4QR25zEcR3Y0tO2YqGIgJkhrHAZbTx5
	Ule0Pl8o+7y9IKPfcz2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXtX-00Fnlb-0e;
	Wed, 11 Oct 2023 12:00:55 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXtU-00Fnji-0z
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 12:00:53 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-533d31a8523so11963439a12.1
        for <linux-phy@lists.infradead.org>; Wed, 11 Oct 2023 05:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697025642; x=1697630442; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aVTN0BqqtO5MKlfxI7sXoH95j77MBJ0QiNgQ07twsNg=;
        b=MckU3Eqa36BcYapV04KKhvQOVsw/ys20IEf3fKhJINvnF3fJdoRA66wJArt1Ez3HXd
         RPvLfdUOHsRJ8+batSbNthUyL0BVRq8h0mnbAI1UNPiVtEBu5y2OojbDYuQz8uU17bi4
         P+nk/Lda2UaLPeyb2XqQOJa78DU5XNrF0JODdy5LVcF+JGFvEBnpttMT2TlZUq6knhE0
         Sa88yBiVC2fpFRQ1A9xtGyZTQ4LhQCsgVqLB+WJaAr+bkLq/TDMMnTevRrjPoEfo15ed
         YMhYS2VJ3yDgtKDlqFppHP94S/J7pUfIm3Zs1Uk6MBiEhD3k5QwQYjqMUXTM54zIpo4Q
         cTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697025642; x=1697630442;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aVTN0BqqtO5MKlfxI7sXoH95j77MBJ0QiNgQ07twsNg=;
        b=gWQfVZo4pEeX0td5jwuEQCrk8XrnVhT3NN/7wdVkuPFhcqXxFuAK0oZitR0vCQO4Ox
         6Poh+/CTVbITNk1nNSfr8gbrdZS2SZceZB2DnmDLWmcyLsoiKT/44L1CogSFxcB1exWo
         xl3C45TqKRoWM4mvemjFBiZSPdYas1ael2xwIouUvAu6iUZPYUXY6IQE0QSgByhWmRg+
         UNy2ZK5DctVIwBPEI3oAA/EGM1ThcMDkaYGVmLwTh4cedh3r40GnGeA+iZDTRhbg+OMj
         pg3C0ZFi4W5GYt2pAYWLDa173X+cQ84Mu2Qp2vIxWNPnDfK3ClM9xXq2Ix1wIqNG4e9d
         x/yg==
X-Gm-Message-State: AOJu0YwvWGkVfZBn/j5ys/ZkeiGAGY667kb2QuZYT/DLF+TwN5mt+txJ
	RrRQviFcTV5IGTsUsJRYE/TZPZ7azsv4BnS+KIacxQ==
X-Google-Smtp-Source: AGHT+IFKnbdS+liyq5BOO9m8ERjMSQL8biVjydd35Z2zaMUPssKf5QQkaQtgJ+ughRnn6bk/oM/oer9yveoYwYchCJs=
X-Received: by 2002:a17:906:19b:b0:9b6:e6ff:b20b with SMTP id
 27-20020a170906019b00b009b6e6ffb20bmr17472854ejb.8.1697025642572; Wed, 11 Oct
 2023 05:00:42 -0700 (PDT)
MIME-Version: 1.0
References: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com>
 <1697023109-23671-3-git-send-email-quic_msarkar@quicinc.com>
 <CAA8EJpoLxeSvxjcyq1BMR9XuAffrxLmO-eaBYJ+Fhnb4zYmxUQ@mail.gmail.com> <6531b333-b978-6b97-5cb4-59562d775ac3@quicinc.com>
In-Reply-To: <6531b333-b978-6b97-5cb4-59562d775ac3@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 15:00:29 +0300
Message-ID: <CAA8EJpoidaW8x3CAwNLWGcq2fz+x49kQWan2GXkgODUUypzKOQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] phy: qcom-qmp-pcie: add endpoint support for sa8775p
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nayiluri@quicinc.com, robh@kernel.org, quic_krichai@quicinc.com, 
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_050052_347401_7AD741D3 
X-CRM114-Status: GOOD (  24.87  )
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

On Wed, 11 Oct 2023 at 14:56, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
>
> On 10/11/2023 5:06 PM, Dmitry Baryshkov wrote:
> > On Wed, 11 Oct 2023 at 14:19, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
> >> Add support for dual lane end point mode PHY found on sa8755p platform.
> >>
> >> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 41 ++++++++++++++++++++++++++++++
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h |  2 ++
> >>   2 files changed, 43 insertions(+)
> > Two minor questions.
> >
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> index a63ca74..962b4a1 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> @@ -2147,6 +2147,38 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl[]
> >>          QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
> >>   };
> >>
> >> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl[] = {
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_BG_TIMER, 0x02),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYS_CLK_CTRL, 0x07),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE0, 0x27),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE1, 0x0a),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE0, 0x17),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_RCTRL_MODE1, 0x19),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x00),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE1, 0x03),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x00),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE0, 0xfb),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE0, 0x01),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN0_MODE1, 0xfb),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_INTEGLOOP_GAIN1_MODE1, 0x01),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_CMN_MODE, 0x14),
> > I should check whether we miss QSERDES_V5_COM_CMN_MODE in
> > sm8450_qmp_gen4x2_pcie_ep_serdes_tbl, which is otherwise nearly
> > identical.
> > Also do you need to set QSERDES_V5_COM_CORE_CLK_EN here?
> QSERDES_V5_COM_CORE_CLK_EN is common for both RC and EP
> so we are using it in sa8775p_qmp_gen4x2_pcie_serdes_alt_tbl
>
> -Mrinmay
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE0, 0xff),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE0, 0x04),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP1_MODE1, 0xff),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_LOCK_CMP2_MODE1, 0x09),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE0, 0x19),
> >> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_DEC_START_MODE1, 0x28),
> >> +};
> >> +
> >> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl[] = {
> >> +       QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
> >> +};
> > This is the same as sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl
>
> so you want me to use sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl
> instead of creating new one for sa8775?

If you don't see a problem with that, yes.

>
> -Mrinmay
>
> >> +
> >> +static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl[] = {
> >> +       QMP_PHY_INIT_CFG(QPHY_V5_PCS_INSIG_MX_CTRL7, 0x00),
> >> +       QMP_PHY_INIT_CFG(QPHY_V5_PCS_INSIG_SW_CTRL7, 0x00),
> >> +};
> > Could you please confirm that these registers belong to the V5
> > namespace rather than V5_20 one?
> may I know difference between V5 and V5_20 namespace
> can't we use V5 namespace here?

Register names are different, see existing v5 vs v5.20 and v4 vs v4.20
headers. So, I'd kindly ask to use the appropriate namespace.

>
> -Mrinmay
> >> +
> >>   struct qmp_pcie_offsets {
> >>          u16 serdes;
> >>          u16 pcs;
> >> @@ -3043,6 +3075,15 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
> >>                  .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
> >>          },
> >>
> >> +       .tbls_ep = &(const struct qmp_phy_cfg_tbls) {
> >> +               .serdes         = sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
> >> +               .serdes_num     = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
> >> +               .pcs_misc       = sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl,
> >> +               .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_ep_pcs_misc_tbl),
> >> +               .pcs            = sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl,
> >> +               .pcs_num        = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl),
> >> +       },
> >> +
> >>          .reset_list             = sdm845_pciephy_reset_l,
> >>          .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
> >>          .vreg_list              = qmp_phy_vreg_l,
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> >> index 36cc80b..6ee1c33 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h
> >> @@ -11,6 +11,8 @@
> >>   #define QPHY_V5_PCS_PCS_STATUS1                                0x014
> >>   #define QPHY_V5_PCS_POWER_DOWN_CONTROL                 0x040
> >>   #define QPHY_V5_PCS_START_CONTROL                      0x044
> >> +#define QPHY_V5_PCS_INSIG_SW_CTRL7                     0x060
> >> +#define QPHY_V5_PCS_INSIG_MX_CTRL7                     0x07c
> >>   #define QPHY_V5_PCS_LOCK_DETECT_CONFIG1                        0x0c4
> >>   #define QPHY_V5_PCS_LOCK_DETECT_CONFIG2                        0x0c8
> >>   #define QPHY_V5_PCS_LOCK_DETECT_CONFIG3                        0x0cc
> >> --
> >> 2.7.4
> >>
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
