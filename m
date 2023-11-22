Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2368C61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cmYK4ONOaySjKcda8LARXi2I3CDIMgxAtPZZucOsPY=; b=kAZJDTVA8onK2c
	WsnJMdqW9hXbSApwKTQWnmE5qA5YjdgD6Lpe91VWTrbmuFuZ5SFboYkeJZWDf/bmQoe4mWWFKqH2C
	AM1yr5CtP/I7PCu97Jxpv8s5A5vgAVPevVkCZh0qlklgFQ/fGE5wzWoptbL+4h0X+2BvX9l/zIiiz
	HJhSwcQXcXlD60jBpOTCrRP6A2i1mJbJSPtxvVFbbas88samvxS/qJqwlOjic3cMpMEVSJijMPn1Q
	BWegfLwuW8ozodYJ77i01WpakVacHJXa+12rswrtthI6V8xZjk5KL39QaZOYXb/zJsx6hkgeTHJuD
	CIAtANnlxqDV4o1ozqHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kLn-001Pww-1H;
	Wed, 22 Nov 2023 10:20:55 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kLk-001Pvn-0K
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:20:53 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5cbcfdeaff3so15046127b3.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648449; x=1701253249; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uF9oMwpOZMO8JSYm34njbxYk24Euivs6aKJ2cKa20XA=;
        b=Wtblr6AMigRJv/gHk+F9Zi+sYbkBkdSeyQC5evgVy8iItA2PsG0VDHUywggxO8YNdb
         MXNzDAqEiKTmKqHr1bdc+LFM8LEQ1f7esUi2KTGLPLfDy4L0+IaCexdPM4p4geUw5bSA
         HJ5Xuvwgawpz/6FVfXlxrekDMa3AkHlJsJ2JRFK83/U2u1bN99wYDrenOT4VCCeiXp1O
         NzIgNd/Dh8RJvTcpomYdelg41+KskuQ3QtEHpvPTrg3mZwYY1fBCps2WHlVFu+kfFEm+
         +8+6M3jLyvMwAlad1BVqY+IfV+2j4eJANJ4lkPtOHkhfKzMw+zE2JVRfj7yngPFDTNGc
         dSeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648449; x=1701253249;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uF9oMwpOZMO8JSYm34njbxYk24Euivs6aKJ2cKa20XA=;
        b=kRHvm/vlPD1tOQPq3AvowSiL1vtStKEg1B2nrWL1whAVuc7J9rJs6q1/EaW0kqK4f0
         u3Zh1YPfQ0SB+vM+/UePG/mUtp4vNsQg+aj+P5I3aucKJKN9RKXuu7W/uHnn+sq+sSwW
         bh2ZDyoUPBi7A2gzBoumIGyvkXmgG4tG0fo7czmvLsuF2LOY6e10jcVo2EEJoVHS0AlK
         pAP/29DALR9eoqxzYZUi/PfNyHljHjQkfy1GQ+902tE6RoR5Ak7zx1Ve7q+SDUkTIjEZ
         VOR/JvX216T/Tr5FVvNm+pZjcmUVvM2o0ozKvQEyQxISpo0agYn+wEGuhf01uDLix9fE
         cXMA==
X-Gm-Message-State: AOJu0Yy7CNr59/WnMfBjUrwy7AfrzzJAgpLHTe5ijuxBcJvaGDahRqOX
	R5vU3F5AndvkOkTceyKScRf2dsF9cF1/9RHUbiNAGA==
X-Google-Smtp-Source: AGHT+IEMi8icN8SpSyHZTcvnhOb2qfvNVMAQ7Gp0Dd7EsU5yN7FiBYiFkC6BXP5T0R0GRydEerDRH2SDFkuF1QL9FR4=
X-Received: by 2002:a0d:cacd:0:b0:5ca:3508:95c0 with SMTP id
 m196-20020a0dcacd000000b005ca350895c0mr1486172ywd.7.1700648448840; Wed, 22
 Nov 2023 02:20:48 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-7-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-7-d9340d362664@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 12:20:37 +0200
Message-ID: <CAA8EJpq0ZFEYSy4_kabR7+Cor=go8qm04e93gtZrUNXWm-e91w@mail.gmail.com>
Subject: Re: [PATCH 7/7] phy: qcom-qmp: qserdes-txrx: Add v7 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_022052_142536_469D8596 
X-CRM114-Status: GOOD (  14.19  )
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

On Wed, 22 Nov 2023 at 12:04, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The X1E80100 platform bumps the HW version of QMP phy to v7 for USB and PCIE.
> Add the new qserdes TX RX offsets in a dedicated header file.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    | 78 ++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>  2 files changed, 79 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
> new file mode 100644
> index 000000000000..14023f47a95c
> --- /dev/null
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
> @@ -0,0 +1,78 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2023, Linaro Limited
> + */
> +
> +#ifndef QCOM_PHY_QMP_QSERDES_TXRX_USB_V7_H_
> +#define QCOM_PHY_QMP_QSERDES_TXRX_USB_V7_H_

s/_USB//

> +
> +#define QSERDES_V7_TX_CLKBUF_ENABLE                            0x08
> +#define QSERDES_V7_TX_RESET_TSYNC_EN                           0x1c
> +#define QSERDES_V7_TX_PRE_STALL_LDO_BOOST_EN                   0x20
> +#define QSERDES_V7_TX_TX_BAND                                  0x24
> +#define QSERDES_V7_TX_INTERFACE_SELECT                         0x2c
> +#define QSERDES_V7_TX_RES_CODE_LANE_TX                         0x34
> +#define QSERDES_V7_TX_RES_CODE_LANE_RX                         0x38
> +#define QSERDES_V7_TX_RES_CODE_LANE_OFFSET_TX                  0x3c
> +#define QSERDES_V7_TX_RES_CODE_LANE_OFFSET_RX                  0x40
> +#define QSERDES_V7_TX_PARRATE_REC_DETECT_IDLE_EN               0x60
> +#define QSERDES_V7_TX_BIST_PATTERN7                            0x7c
> +#define QSERDES_V7_TX_LANE_MODE_1                              0x84
> +#define QSERDES_V7_TX_LANE_MODE_2                              0x88
> +#define QSERDES_V7_TX_LANE_MODE_3                              0x8c
> +#define QSERDES_V7_TX_LANE_MODE_4                              0x90
> +#define QSERDES_V7_TX_LANE_MODE_5                              0x94
> +#define QSERDES_V7_TX_RCV_DETECT_LVL_2                         0xa4
> +#define QSERDES_V7_TX_TRAN_DRVR_EMP_EN                         0xc0
> +#define QSERDES_V7_TX_TX_INTERFACE_MODE                                0xc4
> +#define QSERDES_V7_TX_VMODE_CTRL1                              0xc8
> +#define QSERDES_V7_TX_PI_QEC_CTRL                              0xe4
> +
> +#define QSERDES_V7_RX_UCDR_FO_GAIN                             0x08
> +#define QSERDES_V7_RX_UCDR_SO_GAIN                             0x14
> +#define QSERDES_V7_RX_UCDR_FASTLOCK_FO_GAIN                    0x30
> +#define QSERDES_V7_RX_UCDR_SO_SATURATION_AND_ENABLE            0x34
> +#define QSERDES_V7_RX_UCDR_FASTLOCK_COUNT_LOW                  0x3c
> +#define QSERDES_V7_RX_UCDR_FASTLOCK_COUNT_HIGH                 0x40
> +#define QSERDES_V7_RX_UCDR_PI_CONTROLS                         0x44
> +#define QSERDES_V7_RX_UCDR_SB2_THRESH1                         0x4c
> +#define QSERDES_V7_RX_UCDR_SB2_THRESH2                         0x50
> +#define QSERDES_V7_RX_UCDR_SB2_GAIN1                           0x54
> +#define QSERDES_V7_RX_UCDR_SB2_GAIN2                           0x58
> +#define QSERDES_V7_RX_AUX_DATA_TCOARSE_TFINE                   0x60
> +#define QSERDES_V7_RX_TX_ADAPT_POST_THRESH                     0xcc
> +#define QSERDES_V7_RX_VGA_CAL_CNTRL1                           0xd4
> +#define QSERDES_V7_RX_VGA_CAL_CNTRL2                           0xd8
> +#define QSERDES_V7_RX_GM_CAL                                   0xdc
> +#define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL2                    0xec
> +#define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL3                    0xf0
> +#define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL4                    0xf4
> +#define QSERDES_V7_RX_RX_IDAC_TSETTLE_LOW                      0xf8
> +#define QSERDES_V7_RX_RX_IDAC_TSETTLE_HIGH                     0xfc
> +#define QSERDES_V7_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1              0x110
> +#define QSERDES_V7_RX_SIDGET_ENABLES                           0x118
> +#define QSERDES_V7_RX_SIGDET_CNTRL                             0x11c
> +#define QSERDES_V7_RX_SIGDET_DEGLITCH_CNTRL                    0x124
> +#define QSERDES_V7_RX_RX_MODE_00_LOW                           0x15c
> +#define QSERDES_V7_RX_RX_MODE_00_HIGH                          0x160
> +#define QSERDES_V7_RX_RX_MODE_00_HIGH2                         0x164
> +#define QSERDES_V7_RX_RX_MODE_00_HIGH3                         0x168
> +#define QSERDES_V7_RX_RX_MODE_00_HIGH4                         0x16c
> +#define QSERDES_V7_RX_RX_MODE_01_LOW                           0x170
> +#define QSERDES_V7_RX_RX_MODE_01_HIGH                          0x174
> +#define QSERDES_V7_RX_RX_MODE_01_HIGH2                         0x178
> +#define QSERDES_V7_RX_RX_MODE_01_HIGH3                         0x17c
> +#define QSERDES_V7_RX_RX_MODE_01_HIGH4                         0x180
> +#define QSERDES_V7_RX_RX_MODE_10_LOW                           0x184
> +#define QSERDES_V7_RX_RX_MODE_10_HIGH                          0x188
> +#define QSERDES_V7_RX_RX_MODE_10_HIGH2                         0x18c
> +#define QSERDES_V7_RX_RX_MODE_10_HIGH3                         0x190
> +#define QSERDES_V7_RX_RX_MODE_10_HIGH4                         0x194
> +#define QSERDES_V7_RX_DFE_EN_TIMER                             0x1a0
> +#define QSERDES_V7_RX_DFE_CTLE_POST_CAL_OFFSET                 0x1a4
> +#define QSERDES_V7_RX_DCC_CTRL1                                        0x1a8
> +#define QSERDES_V7_RX_VTH_CODE                                 0x1b0
> +#define QSERDES_V7_RX_SIGDET_CAL_CTRL1                         0x1e4
> +#define QSERDES_V7_RX_SIGDET_CAL_TRIM                          0x1f8
> +
> +#endif
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> index 63b3cbfcb50f..6923496cbfee 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> @@ -28,6 +28,7 @@
>  #include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
>
>  #include "phy-qcom-qmp-qserdes-com-v7.h"
> +#include "phy-qcom-qmp-qserdes-txrx-v7.h"
>
>  #include "phy-qcom-qmp-qserdes-pll.h"
>
>
> --
> 2.34.1
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
