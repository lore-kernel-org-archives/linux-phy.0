Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1346AC02192
	for <linux-phy@archiver.kernel.org>; Wed,  5 Feb 2025 11:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6SyLojJ0rkG9FjVvSc0ozZN9esXp9TkbOMG5LSHWFQ=; b=Qkdf+BxWE7+S0d
	piwgvvnugWNXG8qg54Mf1amJImYKtJeY0jvbO3STl1lSDeBqLDqbfEtYb9RNMvuIBqj9Qsbg0ZX9w
	DWEKnpFloprz9Tgmk3ukz70LVixTT2eEgWgnb/oKkXi9VWS1G40QIN4NuMov5ybgpyYOFvAyOVgaw
	nC9aILgv/JMau/Ks2LKLZUUSFggdYa0rEk0boaw8+pu8Bcq45abircRx6+6UvfCRNUg2HEWlSe2yK
	EC8Zgn9PPgXZbn0PMrg0eDHj4JSgiWMY9aOZi0AGD9+lTmNa0IVSHLVI11CeKRqzxHH7/VlUoMT23
	DTY3cW3JMWIFEH8peLGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfdpu-000000035r2-2pLA;
	Wed, 05 Feb 2025 11:44:54 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfdps-000000035qW-1Mda
	for linux-phy@lists.infradead.org;
	Wed, 05 Feb 2025 11:44:53 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-e58a7e02514so6273019276.1
        for <linux-phy@lists.infradead.org>; Wed, 05 Feb 2025 03:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738755891; x=1739360691; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ycu19bA5ix+Pkzs6CJB+wb21X/EiPAQ3uyvrjaHRoO4=;
        b=o1EzR54fidqHLTCGkPjhIvCM4drbNqDMq7zgCY19UCHPZ7mHseTmygeBItV2w5JD2g
         GBqoA7vcvtl+M67Dqqw/uzhYDGWXKn598cIIuPWJjkrvIX7zLNzwPn8DOwHQ+0lOWjy/
         5TJA6+F+Y29jUhxtdc2CD9tfHXSznaBhZdUrU757dujJTp/suSRa0UFoifgPDpx7pS/q
         gF/Sv0nU2Y0417p4sWvU4n10vEfch3SSXhvKT+bsegFonKiWR316TmOMk2XJ8XzSw5A3
         88d1NvDeqppjLqcmb/bpI2JV1IaeWrgQxV3eataEpXVpP6yLSO9J7ASbzrObQS7etx6L
         eVoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738755891; x=1739360691;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ycu19bA5ix+Pkzs6CJB+wb21X/EiPAQ3uyvrjaHRoO4=;
        b=t/Cg2Pkztc6Ko1jXMaU5Wt7+3EV2KIs/4xtV3HNLKUyWNMffNey9Lhy1QJE1OIwsL0
         +MF0GSavrHEYqan3sfRYmRKqIqR8TvQDZN3p4JLVt9xLFW4wG/JdFP1BPx1pjwqHU8I9
         7VIkMHxFEAQLxW7TQHGJiSQzkx+NVCUIVWJWyKLixiY4giXv2OYmNAQC5bDoSltT0BB6
         z3hemRzSmj+ZXiE11p8Il+zUDpEdjCMT4jVKW60+SO66uQWP6eogW8L1m09mHoAIC+F/
         Csezj4iXFbAjoecrvmlnHpdq2QLwFaZxGyZ6CfiAQkp5UXjlrB5R7G32G0j1bxCWWOa/
         CMpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSfXM/lisUDNt4NFPgxyOz9RRzCG9zQptq1g15QvCwnAyi28FF6X2mBTTZDn3tjMLsR/fKy1Ahllc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyuhQYirT1+CZ/TZxQOHCob+/qKdLMFyUrskI3SvLr3J8wHEvab
	fB+DTw4HKlzc+i4E56aBwy+AZSWb7oUs2RiK8B22w4W0dWCsJs3msMZqGRhoC3VxxtV7zqwcElY
	oLKAk4jZi+xc0xX0X3ZzIk8ckcZFdB4srcs2pbQ==
X-Gm-Gg: ASbGncsCCSITFXqX58QKI0ilpSy33zz0CNGE/WnNODPO9Hl480Ma9HLNS9DIhY7+F+u
	Do15c8mvNxsX2qVIIcjuvhK2XQD9jKhCyrc/2eiaMvmaTRV+YRfW3PuauSoGqGWMCqjqHck4=
X-Google-Smtp-Source: AGHT+IGqnV6KAg4QzBU1J74W1eMEKDHR5lAAY7McfsBFPtrflNLGI1vrZOT25X0UdRdkLxjOzXKzitQhZU2py9RHQv4=
X-Received: by 2002:a05:690c:3393:b0:6ef:4cb2:8b4c with SMTP id
 00721157ae682-6f989f87599mr21834167b3.23.1738755890682; Wed, 05 Feb 2025
 03:44:50 -0800 (PST)
MIME-Version: 1.0
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-2-b3774120eb8c@quicinc.com>
 <vry7yib4jtvyc5baruetqb2msy4j4ityv2s6z5smrz6rqjfb5l@xoharscfhz5n> <a4162070-f5cd-464a-b814-42c923e63784@quicinc.com>
In-Reply-To: <a4162070-f5cd-464a-b814-42c923e63784@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 5 Feb 2025 13:44:41 +0200
X-Gm-Features: AWEUYZksq4TU45-zRmoLuxJewNga8_9-ISsUSCmvXyc0tgEwZ3GtyxXNvVy6sG4
Message-ID: <CAA8EJpq45o6M24ZXWYrx4WCakW3EiD6hunjhQ1NK+Lduwu7CXg@mail.gmail.com>
Subject: Re: [PATCH 2/5] phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, Manish Pandey <quic_mapa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_034452_377858_A4B26857 
X-CRM114-Status: GOOD (  19.76  )
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

On Wed, 5 Feb 2025 at 13:34, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
>
>
> On 1/14/2025 4:19 PM, Dmitry Baryshkov wrote:
> > On Mon, Jan 13, 2025 at 01:46:25PM -0800, Melody Olvera wrote:
> >> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> >>
> >> Add SM8750 specific register layout and table configs. The serdes
> >> TX RX register offset has changed for SM8750 and hence keep UFS
> >> specific serdes offsets in a dedicated header file.
> >>
> >> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> >> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> >> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> >> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |  12 ++
> >>   .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h    |  68 ++++++++
> >>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 174 ++++++++++++++++++++-
> >>   3 files changed, 253 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> >> index 328c6c0b0b09ae4ff5bf14e846772e6d0f31ce5a..aa2278f9377408b3c602f6fa0de5021804f21f52 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h
> >> @@ -86,4 +86,16 @@
> >>   #define QSERDES_V6_COM_CMN_STATUS                          0x1d0
> >>   #define QSERDES_V6_COM_C_READY_STATUS                              0x1f8
> >>
> >> +#define QSERDES_V6_COM_ADAPTIVE_ANALOG_CONFIG                       0x268
> >> +#define QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE0                       0x26c
> >> +#define QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE0            0x270
> >> +#define QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE0                     0x274
> >> +#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0           0x58
> >> +
> >> +#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0           0x5c
> >> +#define QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE1                       0x278
> >> +#define QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE1            0x27c
> >> +#define QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE1                     0x280
> >> +#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1           0x50
> >> +#define QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1           0x54
> >>   #endif
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h
> >> new file mode 100644
> >> index 0000000000000000000000000000000000000000..73b3857e0277ce6cdbe658066772172a94f25d6e
> >> --- /dev/null
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v7.h
> >> @@ -0,0 +1,68 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +/*
> >> + * Copyright (c) 2024, Linaro Limited
> >> + */
> >> +
> >> +#ifndef QCOM_PHY_QMP_QSERDES_TXRX_UFS_V7_H_
> >> +#define QCOM_PHY_QMP_QSERDES_TXRX_UFS_V7_H_
> >> +
> >> +#define QSERDES_UFS_V7_TX_RES_CODE_LANE_TX                          0x28
> >> +#define QSERDES_UFS_V7_TX_RES_CODE_LANE_RX                          0x2c
> >> +#define QSERDES_UFS_V7_TX_RES_CODE_LANE_OFFSET_TX                   0x30
> >> +#define QSERDES_UFS_V7_TX_RES_CODE_LANE_OFFSET_RX                   0x34
> >> +#define QSERDES_UFS_V7_TX_LANE_MODE_1                                       0x7c
> >> +#define QSERDES_UFS_V7_TX_FR_DCC_CTRL                                       0x108
> >> +
> >> +#define QSERDES_UFS_V7_RX_UCDR_SO_SATURATION                                0x28
> >> +#define QSERDES_UFS_V7_RX_UCDR_PI_CTRL1                                     0x58
> >> +#define QSERDES_UFS_V7_RX_TERM_BW_CTRL0                                     0xC4
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B0                          0x218
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B1                          0x21C
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B2                          0x220
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B3                          0x224
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B4                          0x228
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B6                          0x230
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE_0_1_B7                          0x234
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE2_B3                                     0x248
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE2_B6                                     0x254
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE2_B7                                     0x258
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B0                                     0x260
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B1                                     0x264
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B2                                     0x268
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B3                                     0x26C
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B4                                     0x270
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B5                                     0x274
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B7                                     0x27C
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE3_B8                                     0x280
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B0                          0x284
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B1                          0x288
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B2                          0x28C
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B3                          0x290
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B4                          0x294
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B5                          0x298
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B6                          0x29C
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SA_B7                          0x2A0
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B0                          0x2A8
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B1                          0x2AC
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B2                          0x2B0
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B3                          0x2B4
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B4                          0x2B8
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B5                          0x2BC
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B6                          0x2C0
> >> +#define QSERDES_UFS_V7_RX_MODE_RATE4_SB_B7                          0x2C4
> >> +#define QSERDES_UFS_V7_RX_DLL0_FTUNE_CTRL                           0x348
> >> +#define QSERDES_UFS_V7_RX_SIGDET_CAL_TRIM                           0x380
> >> +#define QSERDES_UFS_V7_RX_INTERFACE_MODE                            0x1F0
> >> +#define QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE2                                0xD4
> >> +#define QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE4                                0xDC
> >> +#define QSERDES_UFS_V7_RX_UCDR_SO_GAIN_RATE4                                0xF0
> >> +#define QSERDES_UFS_V7_RX_UCDR_PI_CONTROLS                          0xF4
> >> +#define QSERDES_UFS_V7_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4            0x54
> >> +#define QSERDES_UFS_V7_RX_UCDR_FASTLOCK_FO_GAIN_RATE4                       0x10
> >> +#define QSERDES_UFS_V7_RX_UCDR_FASTLOCK_SO_GAIN_RATE4                       0x24
> >> +#define QSERDES_UFS_V7_RX_EQ_OFFSET_ADAPTOR_CNTRL1                  0x1CC
> >> +#define QSERDES_UFS_V7_RX_OFFSET_ADAPTOR_CNTRL3                             0x1D4
> >> +#define QSERDES_UFS_V7_RX_EQU_ADAPTOR_CNTRL4                                0x1B4
> >> +#define QSERDES_UFS_V7_RX_VGA_CAL_MAN_VAL                           0x178
> >
> > - Lowercase hex
> > - Sort RX by the register offset
>
> Sure Will take care in next patchset.

Just to note, please sort QSERDES_V6_COM regs too.

>
> >
> >
> >> +
> >> +#endif
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> index d964bdfe870029226482f264c78a27d0ec43bf2b..a1695b368fe7622bf8663343d0241b4d0d40ab59 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> @@ -31,6 +31,7 @@
> >>   #include "phy-qcom-qmp-pcs-ufs-v6.h"
> >>
> >>   #include "phy-qcom-qmp-qserdes-txrx-ufs-v6.h"
> >> +#include "phy-qcom-qmp-qserdes-txrx-ufs-v7.h"
> >>
> >>   /* QPHY_PCS_READY_STATUS bit */
> >>   #define PCS_READY                          BIT(0)
> >> @@ -949,6 +950,132 @@ static const struct qmp_phy_init_tbl sm8650_ufsphy_g5_pcs[] = {
> >>      QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME, 0x9e),
> >>   };
> >>
> >> +static const struct qmp_phy_init_tbl sm8750_ufsphy_serdes[] = {
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xD9),
> >
> > Lowercase hex
>
> Sure Will take care in next patchset.
> >
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x60),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x1F),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO_MODE1, 0x1F),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IETRIM, 0x07),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IPTRIM, 0x20),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_CTRL, 0x40),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADAPTIVE_ANALOG_CONFIG, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE0, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE0, 0x18),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE0, 0x14),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7F),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x92),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1E),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x4C),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x14),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_ADAPTIVE_MODE1, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCCTRL_ADAPTIVE_MODE1, 0x18),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_ADAPTIVE_MODE1, 0x14),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x99),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x07),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0xBE),
> >> +    QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x23),
> >> +};
> >> +
> >> +static const struct qmp_phy_init_tbl sm8750_ufsphy_tx[] = {
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_TX_LANE_MODE_1, 0x00),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_TX_RES_CODE_LANE_OFFSET_RX, 0x17),
> >> +};
> >> +
> >> +static const struct qmp_phy_init_tbl sm8750_ufsphy_rx[] = {
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE2, 0x0C),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FO_GAIN_RATE4, 0x0C),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_SO_GAIN_RATE4, 0x04),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x14),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_PI_CONTROLS, 0x07),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_OFFSET_ADAPTOR_CNTRL3, 0x0E),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_COUNT_HIGH_RATE4, 0x02),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x1C),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_FASTLOCK_SO_GAIN_RATE4, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_VGA_CAL_MAN_VAL, 0x8E),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_EQU_ADAPTOR_CNTRL4, 0x0F),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B0, 0xCE),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B1, 0xCE),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B2, 0x18),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B3, 0x1A),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B4, 0x0F),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B6, 0x60),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE_0_1_B7, 0x62),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B3, 0x9A),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B6, 0xE2),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE2_B7, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B0, 0x1B),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B1, 0x1B),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B2, 0x98),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B3, 0x9B),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B4, 0x2A),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B5, 0x12),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B7, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE3_B8, 0x01),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B0, 0x93),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B1, 0x93),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B2, 0x60),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B3, 0x99),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B4, 0x5F),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B5, 0x92),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B6, 0xE3),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SA_B7, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B0, 0x9B),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B1, 0x9B),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B2, 0x60),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B3, 0x99),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B4, 0x5F),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B5, 0x92),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B6, 0xFB),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_MODE_RATE4_SB_B7, 0x06),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_SO_SATURATION, 0x1F),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_UCDR_PI_CTRL1, 0x94),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_TERM_BW_CTRL0, 0xFA),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_DLL0_FTUNE_CTRL, 0x30),
> >> +    QMP_PHY_INIT_CFG(QSERDES_UFS_V7_RX_SIGDET_CAL_TRIM, 0x77),
> >> +};
> >> +
> >> +static const struct qmp_phy_init_tbl sm8750_ufsphy_pcs[] = {
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PCS_CTRL1, 0x40),
> >
> > Why does SM8650 have 0xc1 here?
>
> SM8750 phy is different from SM8650 and hence it is using different phy
> calibration setting. This value is as per Hardware programming guide.'

Ack.

>
> >
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0F),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S4, 0x0E),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S5, 0x12),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S6, 0x15),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_POST_EMP_LVL_S7, 0x19),
> >> +};
> >> +
> >> +static const struct qmp_phy_init_tbl sm8750_ufsphy_g4_pcs[] = {
> >
> > Missing QPHY_V6_PCS_UFS_PLL_CNTL, then it becomes sm8650_ufsphy_g4_pcs
>
> The value of QPHY_V6_PCS_UFS_PLL_CNTL is 0x33 for SM8750 as it is
> operating on 80bit mode. Similiar change needs to be done for SM8650.

Ack, please check if that allows the driver to use the same set of
tables for SM8650 and SM8750.

> >
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
> >> +};
> >> +
> >> +static const struct qmp_phy_init_tbl sm8750_ufsphy_g5_pcs[] = {
> >
> > sm8650_ufsphy_g5_pcs?
> Agree with you. Good Finding. I will replace sm8750_ufsphy_g5_pcs with
> sm8650_ufsphy_g5_pcs.
>
>
> >
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x33),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x05),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x05),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HS_G5_SYNC_LENGTH_CAPABILITY, 0x4d),
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSG5_SYNC_WAIT_TIME, 0x9e),
> >> +};
> >> +
> >> +static const struct qmp_phy_init_tbl sm8750_ufsphy_hs_b_pcs[] = {
> >> +    QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PCS_CTRL1, 0x41),
> >> +};
> >> +
> >>   struct qmp_ufs_offsets {
> >>      u16 serdes;
> >>      u16 pcs;
> >> @@ -1523,6 +1650,45 @@ static const struct qmp_phy_cfg sm8650_ufsphy_cfg = {
> >>      .regs                   = ufsphy_v6_regs_layout,
> >>   };
> >>
> >> +static const struct qmp_phy_cfg sm8750_ufsphy_cfg = {
> >> +    .lanes                  = 2,
> >> +
> >> +    .offsets                = &qmp_ufs_offsets_v6,
> >> +    .max_supported_gear     = UFS_HS_G5,
> >> +
> >> +    .tbls = {
> >> +            .serdes         = sm8750_ufsphy_serdes,
> >> +            .serdes_num     = ARRAY_SIZE(sm8750_ufsphy_serdes),
> >> +            .tx             = sm8750_ufsphy_tx,
> >> +            .tx_num         = ARRAY_SIZE(sm8750_ufsphy_tx),
> >> +            .rx             = sm8750_ufsphy_rx,
> >> +            .rx_num         = ARRAY_SIZE(sm8750_ufsphy_rx),
> >> +            .pcs            = sm8750_ufsphy_pcs,
> >> +            .pcs_num        = ARRAY_SIZE(sm8750_ufsphy_pcs),
> >> +    },
> >> +
> >> +    .tbls_hs_b = {
> >> +            .pcs            = sm8750_ufsphy_hs_b_pcs,
> >> +            .pcs_num        = ARRAY_SIZE(sm8750_ufsphy_hs_b_pcs),
> >> +    },
> >> +
> >> +    .tbls_hs_overlay[0] = {
> >> +            .pcs            = sm8750_ufsphy_g4_pcs,
> >> +            .pcs_num        = ARRAY_SIZE(sm8750_ufsphy_g4_pcs),
> >> +            .max_gear       = UFS_HS_G4,
> >> +    },
> >> +    .tbls_hs_overlay[1] = {
> >> +            .pcs            = sm8750_ufsphy_g5_pcs,
> >> +            .pcs_num        = ARRAY_SIZE(sm8750_ufsphy_g5_pcs),
> >> +            .max_gear       = UFS_HS_G5,
> >> +    },
> >> +
> >> +    .vreg_list              = qmp_phy_vreg_l,
> >> +    .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> >> +    .regs                   = ufsphy_v6_regs_layout,
> >> +
> >> +};
> >> +
> >>   static void qmp_ufs_serdes_init(struct qmp_ufs *qmp, const struct qmp_phy_cfg_tbls *tbls)
> >>   {
> >>      void __iomem *serdes = qmp->serdes;
> >> @@ -1593,8 +1759,10 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
> >>              qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_overlay[i]);
> >>      }
> >>
> >> -    if (qmp->mode == PHY_MODE_UFS_HS_B)
> >> +    if (qmp->mode == PHY_MODE_UFS_HS_B) {
> >>              qmp_ufs_serdes_init(qmp, &cfg->tbls_hs_b);
> >> +            qmp_ufs_pcs_init(qmp, &cfg->tbls_hs_b);
> >
> > Extract the serdes+lanes+pcs helper, use it in this function.
>
> Lane init is already a different helper and is already being called from
> function (qmp_ufs_init_register). Here we just adding few extra PCS
> registers needed to support Rate B.

Please extract the helper that calls qmp_ufs_serdes_init() +
qmp_ufs_lanes_init() + qmp_ufs_pcs_init() over a particular table.

>
> >
> >> +    }
> >>   }
> >>
> >>   static int qmp_ufs_com_init(struct qmp_ufs *qmp)
> >> @@ -2061,7 +2229,11 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
> >>      }, {
> >>              .compatible = "qcom,sm8650-qmp-ufs-phy",
> >>              .data = &sm8650_ufsphy_cfg,
> >> +    }, {
> >> +            .compatible = "qcom,sm8750-qmp-ufs-phy",
> >> +            .data = &sm8750_ufsphy_cfg,
> >>      },
> >> +
> >>      { },
> >>   };
> >>   MODULE_DEVICE_TABLE(of, qmp_ufs_of_match_table);
> >>
> >> --
> >> 2.46.1
> >>
> >
> Thanks,
> Nitin
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
