Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5389EC4332F
	for <linux-phy@archiver.kernel.org>; Thu,  9 Nov 2023 09:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z88wrAs1OKR1qyJueMREdidgl3AmGN3lfgh+TB8LrSw=; b=UdFgvwUzkIQ1uU
	OZvBeecfBg56cg4GjzwcYENG1aoUaMWxE7Eo8dgmT0TTMHmihVIVXK7RLe4/TV1u7hHg6iIzxIyKD
	CgQO4LVHHI4am0WIg5LEdcl0EBP3fhOEJfymJlWCckQCH1EOiCJQF+bc4Hzzx37gS29EX+DiiNjbB
	yUAbFSLuZ3vHmVq2sUllMt+5IXXGAn4pThvi2GRTlOJBlJw8yJx+2la8XEIARa3zXchsMnXdFtA1o
	/u9kQoHLilhy1dtDY6xBVmj3+mUiDF5QVaq2PT5xSyvrd19gBFD9SU6oBZFnXVnVoToxTg7BlRtyw
	CCgWLm/evcmYS9nQmATg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11XC-005oH2-09;
	Thu, 09 Nov 2023 09:41:10 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11X8-005oFw-3D
	for linux-phy@lists.infradead.org;
	Thu, 09 Nov 2023 09:41:08 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5bf58204b7aso4824277b3.3
        for <linux-phy@lists.infradead.org>; Thu, 09 Nov 2023 01:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699522862; x=1700127662; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=L/VRoybhVsew3opMcGHVm+ubzjiQSXoVA7q+5Qj1/jM=;
        b=GXlctitMfowCuP/ZAW43V9iU8RtJeJghvttKQG7x5RbiDA+N9Y2oiBMXZpJvCw7OJQ
         sYlZoVr84ccAUe/t98DWfirFNP/PomA0+tbo99LqVKEt47GOudzUGgm/2hhAf2B69cXc
         8OBL+pk+m8gSZI+F9LTkJM/i1/F/dBlDeANKavyEERoJR/DF7GZzaZE2NiYsTNzTswQH
         UMWJvmpySOaQ6s+6nwDuT1cgZxm6fdmbe+2XWk6L9lWR9GLRpCMA1fZhVzkbQzrCFtrf
         BIqBzHpLnbPqqCqo92llhUn6stlUvLDa+oQgRhhQ92PIA6uWjvLf/+3cr0ti6/+4qo56
         cAFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699522862; x=1700127662;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L/VRoybhVsew3opMcGHVm+ubzjiQSXoVA7q+5Qj1/jM=;
        b=irx1JzUPUBfCv2brz9rdu4PcvXIynsl1vuyQgeFsU8kZgXMTSImSm6pNfG6U2g4O9I
         c3qSr4W+Me+VPafERYzS+UfyWDanpvqM+/KY1lRXamp1vSRTC1V20tLv6FFmxbxR7LHh
         D+CwueApMKhUReyQ9cU1ObUR/AFK+phjinjielnBnPAh7I/EThSvpG5RZ/uLrONkQHOQ
         XDey6RtMog9MclNAizpyO7XWjbfqKoYkuXZIli79qa/KbxKbNYIuXW0cr8iWELFCn7Wz
         vfj4y1p73gRp3yUuiLCnTRYBy8+YQ+ZEZkrCSFFmhz4jIPi5VZljl2roiT/cXBxKJxbJ
         vm1A==
X-Gm-Message-State: AOJu0YxLmFWn4nw/rXx3JZygxqaOspSLY57Ps3ALAka6EyLPdi6N5gkX
	U1YHVe5dU8ZLbYezaV46/nr95cu4UAdPWbUp/Mc7yA==
X-Google-Smtp-Source: AGHT+IFqHlG5+5A7vQh23L1v8lx4L+nVLtmCZEOOAmFT7DUANs/uCld9G79+OcwVigUDPhYnXomWFTTR/cHQsYxJb68=
X-Received: by 2002:a0d:dd0c:0:b0:586:a684:e7ba with SMTP id
 g12-20020a0ddd0c000000b00586a684e7bamr4658061ywe.39.1699522862518; Thu, 09
 Nov 2023 01:41:02 -0800 (PST)
MIME-Version: 1.0
References: <1699332374-9324-1-git-send-email-cang@qti.qualcomm.com>
 <1699332374-9324-7-git-send-email-cang@qti.qualcomm.com> <CAA8EJpqEkkEoQ9vncNJU1t=mKbvBXKk1FUxnmGTE0Q++sf=oXA@mail.gmail.com>
 <20231108054942.GF3296@thinkpad> <CAA8EJpoCZChHDQLF0QHN0PkRUWV20thXMQvK-sH2fpYaC1zcvg@mail.gmail.com>
 <20231109032418.GA3752@thinkpad>
In-Reply-To: <20231109032418.GA3752@thinkpad>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 9 Nov 2023 11:40:51 +0200
Message-ID: <CAA8EJpoZUf9Ku5meH5VAcSkCbna__5LdPi8rgnN0tyBc-UzzWw@mail.gmail.com>
Subject: Re: [PATCH v2 6/7] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Can Guo <cang@qti.qualcomm.com>, quic_cang@quicinc.com, bvanassche@acm.org, 
	stanley.chu@mediatek.com, adrian.hunter@intel.com, beanhuo@micron.com, 
	avri.altman@wdc.com, junwoo80.lee@samsung.com, martin.petersen@oracle.com, 
	linux-scsi@vger.kernel.org, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_014107_035909_A8FD92F6 
X-CRM114-Status: GOOD (  41.40  )
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

On Thu, 9 Nov 2023 at 05:24, Manivannan Sadhasivam <mani@kernel.org> wrote:
>
> On Wed, Nov 08, 2023 at 08:56:16AM +0200, Dmitry Baryshkov wrote:
> > On Wed, 8 Nov 2023 at 07:49, Manivannan Sadhasivam <mani@kernel.org> wrote:
> > >
> > > On Tue, Nov 07, 2023 at 03:18:09PM +0200, Dmitry Baryshkov wrote:
> > > > On Tue, 7 Nov 2023 at 06:47, Can Guo <cang@qti.qualcomm.com> wrote:
> > > > >
> > > > > From: Can Guo <quic_cang@quicinc.com>
> > > > >
> > > > > On SM8550, two sets of UFS PHY settings are provided, one set is to support
> > > > > HS-G5, another set is to support HS-G4 and lower gears. The two sets of PHY
> > > > > settings are programming different values to different registers, mixing
> > > > > the two sets and/or overwriting one set with another set is definitely not
> > > > > blessed by UFS PHY designers. In order to add HS-G5 support for SM8550, we
> > > > > need to split the two sets into their dedicated tables, and leave only the
> > > > > common settings in the .tlbs. To have the PHY programmed with the correct
> > > > > set of PHY settings, the submode passed to PHY driver must be either HS-G4
> > > > > or HS-G5.
> > > > >
> > >
> > > You should also mention that this issue is also present in G4 supported targets.
> > > And a note that it will get fixed later.
> > >
> > > > > Signed-off-by: Can Guo <quic_cang@quicinc.com>
> > > > > ---
> > > > >  drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |   2 +
> > > > >  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   2 +
> > > > >  .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  12 +++
> > > > >  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 112 ++++++++++++++++++---
> > > > >  4 files changed, 115 insertions(+), 13 deletions(-)
> > > > >
> > > > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
> > > > > index c23d5e4..e563af5 100644
> > > > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
> > > > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h
> > > > > @@ -18,6 +18,7 @@
> > > > >  #define QPHY_V6_PCS_UFS_BIST_FIXED_PAT_CTRL            0x060
> > > > >  #define QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY           0x074
> > > > >  #define QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY           0x0bc
> > > > > +#define QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY        0x12c
> > > > >  #define QPHY_V6_PCS_UFS_DEBUG_BUS_CLKSEL               0x158
> > > > >  #define QPHY_V6_PCS_UFS_LINECFG_DISABLE                        0x17c
> > > > >  #define QPHY_V6_PCS_UFS_RX_MIN_HIBERN8_TIME            0x184
> > > > > @@ -27,5 +28,6 @@
> > > > >  #define QPHY_V6_PCS_UFS_READY_STATUS                   0x1a8
> > > > >  #define QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1              0x1f4
> > > > >  #define QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1               0x1fc
> > > > > +#define QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME         0x220
> > > > >
> > > > >  #endif
> > > > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> > > > > index f420f8f..ef392ce 100644
> > > > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> > > > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> > > > > @@ -56,6 +56,8 @@
> > > > >  #define QSERDES_V6_COM_SYS_CLK_CTRL                            0xe4
> > > > >  #define QSERDES_V6_COM_SYSCLK_BUF_ENABLE                       0xe8
> > > > >  #define QSERDES_V6_COM_PLL_IVCO                                        0xf4
> > > > > +#define QSERDES_V6_COM_CMN_IETRIM                              0xfc
> > > > > +#define QSERDES_V6_COM_CMN_IPTRIM                              0x100
> > > > >  #define QSERDES_V6_COM_SYSCLK_EN_SEL                           0x110
> > > > >  #define QSERDES_V6_COM_RESETSM_CNTRL                           0x118
> > > > >  #define QSERDES_V6_COM_LOCK_CMP_EN                             0x120
> > > > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> > > > > index 15bcb4b..48f31c8 100644
> > > > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> > > > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h
> > > > > @@ -10,10 +10,20 @@
> > > > >  #define QSERDES_UFS_V6_TX_RES_CODE_LANE_RX                     0x2c
> > > > >  #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX              0x30
> > > > >  #define QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX              0x34
> > > > > +#define QSERDES_UFS_V6_TX_LANE_MODE_1                          0x7c
> > > > > +#define QSERDES_UFS_V6_TX_FR_DCC_CTRL                          0x108
> > > > >
> > > > >  #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2          0x08
> > > > >  #define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4          0x10
> > > > > +#define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_SO_GAIN_RATE4          0x24
> > > > > +#define QSERDES_UFS_V6_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4       0x54
> > > > > +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2                   0xd4
> > > > > +#define QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE4                   0xdc
> > > > > +#define QSERDES_UFS_V6_RX_UCDR_SO_GAIN_RATE4                   0xf0
> > > > > +#define QSERDES_UFS_V6_RX_UCDR_PI_CONTROLS                     0xf4
> > > > >  #define QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL                      0x178
> > > > > +#define QSERDES_UFS_V6_RX_EQ_OFFSET_ADAPTOR_CNTRL1             0x1bc
> > > > > +#define QSERDES_UFS_V6_RX_OFFSET_ADAPTOR_CNTRL3                        0x1c4
> > > > >  #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0                     0x208
> > > > >  #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1                     0x20c
> > > > >  #define QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3                     0x214
> > > > > @@ -25,6 +35,8 @@
> > > > >  #define QSERDES_UFS_V6_RX_MODE_RATE3_B5                                0x264
> > > > >  #define QSERDES_UFS_V6_RX_MODE_RATE3_B8                                0x270
> > > > >  #define QSERDES_UFS_V6_RX_MODE_RATE4_B3                                0x280
> > > > > +#define QSERDES_UFS_V6_RX_MODE_RATE4_B4                                0x284
> > > > >  #define QSERDES_UFS_V6_RX_MODE_RATE4_B6                                0x28c
> > > > > +#define QSERDES_UFS_V6_RX_DLL0_FTUNE_CTRL                      0x2f8
> > > > >
> > > > >  #endif
> > > > > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > > > index 3927eba..e0a01497 100644
> > > > > --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > > > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> > > > > @@ -649,32 +649,51 @@ static const struct qmp_phy_init_tbl sm8550_ufsphy_serdes[] = {
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
> > > > > -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> > > > > -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
> > > > > +
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> > > > > -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
> > > > > -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x4c),
> > > > > +};
> > > > > +
> > > > > +static const struct qmp_phy_init_tbl sm8550_ufsphy_hs_b_serdes[] = {
> > > > > +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x44),
> > > > > +};
> > > > > +
> > > > > +static const struct qmp_phy_init_tbl sm8550_ufsphy_g4_serdes[] = {
> > > > > +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> > > > > +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
> > > > >         QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
> > > > > -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> > > > > -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> > > > > -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x99),
> > > > > -       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x07),
> > > >
> > > > Aside from moving these registers to the HS_G4 table, you are also
> > > > changing these registers. It makes me think that there was an error in
> > > > the original programming sequence.
> > > > If that is correct, could you please split the patch into two pieces:
> > > > - Fix programming sequence (add proper Fixes tags)
> > > > - Split G4 and G5 tables.
> > >
> > > Ack
> > >
> > > >
> > > > > +
> > > > > +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4c),
> > > > > +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x0a),
> > > > > +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
> > > > > +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x14),
> > > > > +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x99),
> > > > > +       QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x07),
> > > >
> > > > I see all the MODE1 registers being only present in G4 and G5 tables.
> > > > Should they be programmed for the modes lower than G4?
> > > >
> > >
> > > We use G4 table for all the modes <= G4.
> >
> > Could you please point me how it's handled?
> > In the patch I see just:
> >
> >        if (qmp->submode == UFS_HS_G4)
> >                qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_g4);
> >        else if (qmp->submode == UFS_HS_G5)
> >                qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_g5);
> >
> > Which looks like two special cases (HS_G4 and HS_G5) and nothing for
> > anything else.
> >
>
> Yes, and the UFS driver passes only G4/G5. For all the gears <=G4, G4 init
> sequence will be used and for G5, G5 sequence will be used.
>

That's what I could not find in the UFS driver. I see a call to
`phy_set_mode_ext(phy, PHY_MODE_UFS_HS_B, host->phy_gear);` and
host->phy_gear is initialised to UFS_HS_G2.

Maybe we should change the condition here (in the PHY driver) to:

if (qmp->submode <= UFS_HS_G4)

?
-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
