Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7303C02196
	for <linux-phy@archiver.kernel.org>; Tue,  4 Feb 2025 15:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZSrmI5w2P8yhz4d6xWW0i7096vkQavF78+uxXujJjY=; b=ThrFBRDNcgP7+9
	OagbGuY0sfFpxLDY6YRTWH3pXlZz9TnYWEOqjEcNHjnUH47EtdTqq5bo5DfbihlgOtQFzfS9N8+//
	Su+6qsgOqcqvK8qB7VQmfmkMUwAGkcctZT+dbkZ7YL4iwivD+2nr728XpmnLiF5M7Pb0xQ89VFneb
	vcur3r82FtacT9mSaWIxQpXaOnwEEacY+MG1qFM4Xs6VlRmUMB8fS4nvePsYKK217QwJFqKEHsKbL
	5Wpimhb1tWhXbDscHOQuc+sBte8sTSE44wvTfwdt5rqMzjVMY5hVm/p+dOBSlkYEaRHjpCtDW3Mil
	WQb/oRE5zEAMPYELlrGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfKPd-00000000k6V-0oTD;
	Tue, 04 Feb 2025 15:00:29 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfKOg-00000000jou-2I9T
	for linux-phy@lists.infradead.org;
	Tue, 04 Feb 2025 14:59:31 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-53e3a37ae07so6364765e87.3
        for <linux-phy@lists.infradead.org>; Tue, 04 Feb 2025 06:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738681168; x=1739285968; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t1DYlp7BOgCsO/bvivOkdwsvShb36ZFFcwsQF/5DCtw=;
        b=jxsxdCD+kCV2XqbeJ5SvLK4aZlegdKMKM6OKQvjGf4UPIGzxg0XEa41EcD7JLszUTU
         l1qQij+6sMHNd9xTdEcfBp92JByzEMyaQZ7iYdFieb1Ud+rMyTXyh07Pd31tpETHZNFC
         SBQ2XgcHmvCN24Cj35wGkRTigJ4iDhjiWA8j2Zkk8Hslhly37g+tqOv/YY4Ioq60ODfd
         WSNCyZzukgM/gDF+J52zhVf3mK5uFAvBQ1WLSZIkBT75zJu4x5tZLaDp5FTZg6No06iy
         nn/kng410qdVaTzmOG4PAG9NX+qFvxKkCSs1KXbixD9iH+tZjLc4KxXFraFLD8hC8ylw
         YawQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738681168; x=1739285968;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t1DYlp7BOgCsO/bvivOkdwsvShb36ZFFcwsQF/5DCtw=;
        b=qI8/j4/2cFWEkzEJy8LEjvzMRFBN1Feannqhpr3Ehk+HmNGLO9G0dQYxIjVswiR4o3
         dpMUFP/usa3GkFzxVOoYsbt2mDN7X9N8QztkjRA6mwfiUMkyuQEq0lxbAcbDhOE6W25j
         xMlSKRQjVAoRcRUFl3h6OLNECfmADcbvRuCuz0it2fHQi7KZ6S8tdBPeYapFxTCr/5Oc
         eFqRVPKgR4im9+NZndXs5MedSVPS/mZxvosnLGwtD9awaHnuMFaKu6FqgMjtBDykAzi2
         iRCBrdTHIYuSAyKNtUU+smdlCQXSUeOHjtkfzS4as3iror4H7jRiedKAhdEULPx888v9
         zl/g==
X-Forwarded-Encrypted: i=1; AJvYcCXkNGI+pQpY0kdCda803Y/f416iR3pvlmVJ5HVkrwot6t3ABAj6sT5to7hX0yMZ+lbKEE9lEH6om5I=@lists.infradead.org
X-Gm-Message-State: AOJu0YzgdRbAcrBnmCjDVQbFof7+JLrmpa8AFsGxNkb3OMIkFbxZx9j6
	vSJPBsTauKmItKJUz6Yb9WFM9fjkVUtLZPb+WGibfAJw8LZ6nCUpUstK43h78Nc=
X-Gm-Gg: ASbGnctJhZfn1v+A3IlmQeFEYWumLxJIs3gc/PpbHSf8clmX46KJkZE43UzbX8PQnKO
	XypzYc9N1y+i6Pe06vcO767YDCSkkvZLRQPFk1INDkpV7SoOueB7nFywdQh6wOCPtwdRnGYKC8O
	IfPOsXB6W+xXS89EpgRePqupvtf0ILVJ3CVzPEheayWGlYd9anezISrn0fL1FR7tQMus2ITdZ2U
	ycQN/cKA71c82VgmLJJ6QduuFTOe5JX1Fs2+ciAcvXfaJcCXdlDMttbYXowtKB6wAevcARoK6Ta
	NofuRSu+dg+LBlXRuSO8dwi9y6KUWgXasZDWSUB6smDEBr4G+1dDTMVpUyMs/7kHMFu/SUI=
X-Google-Smtp-Source: AGHT+IE7b+udRsOmYgAUchqywxLPloRDcPecM5jIJa9qMOD6OPTAHNII/xMHMBXskhTGDDkZ3IE7zA==
X-Received: by 2002:ac2:48a1:0:b0:542:9883:26f with SMTP id 2adb3069b0e04-543e4c3a1demr7204191e87.50.1738681168494;
        Tue, 04 Feb 2025 06:59:28 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebe0f8f5sm1636690e87.58.2025.02.04.06.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 06:59:27 -0800 (PST)
Date: Tue, 4 Feb 2025 16:59:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/7] phy: qcom: qmp-combo: Add new PHY sequences for
 SM8750
Message-ID: <ofaioilki5qxdq2x5fpbpuk6mid6i6slpyqzwol4e2s4cwdwsf@lgpqy2zil4j6>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-4-09afe1dc2524@quicinc.com>
 <tcm2hn7rpzaazntp5r7ag466ynacexnke43e6ypm4q5mrrlkdb@nem3gzib2l2v>
 <0ec95cca-45ed-4805-8ebd-03563d55627e@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ec95cca-45ed-4805-8ebd-03563d55627e@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_065930_600047_1C4A594E 
X-CRM114-Status: GOOD (  24.12  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Feb 03, 2025 at 07:31:29PM -0800, Wesley Cheng wrote:
> =

> On 1/14/2025 2:23 AM, Dmitry Baryshkov wrote:
> > On Mon, Jan 13, 2025 at 01:52:10PM -0800, Melody Olvera wrote:
> >> From: Wesley Cheng <quic_wcheng@quicinc.com>
> >>
> >> Add new register offsets and PHY values for SM8750. Some of the previo=
us
> >> definitions can be leveraged from older PHY versions as offsets within
> >> registers have not changed. This also updates the PHY sequence that is
> >> recommended after running hardware characterization.
> >>
> >> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> >> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 198 +++++++++++++++++++++=
+++++++++
> >>  1 file changed, 198 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/q=
ualcomm/phy-qcom-qmp-combo.c
> >> index b09fa00e9fe7db8d97b7179ee15d3f07fe578b0c..823a60029ea6acbd1f0f8c=
7d27aaa58de39ed758 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >> @@ -1471,6 +1471,139 @@ static const struct qmp_phy_init_tbl x1e80100_=
usb43dp_pcs_tbl[] =3D {
> >>  	QMP_PHY_INIT_CFG(QPHY_V6_N4_PCS_EQ_CONFIG5, 0x10),
> >>  };
> >>  =

> >> +static const struct qmp_phy_init_tbl sm8750_usb3_serdes_tbl[] =3D {
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0xc0),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x01),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x16),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x41),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x41),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE1, 0x00),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0x55),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0x75),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x01),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE1, 0x25),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE1, 0x02),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0x5c),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x0f),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x5c),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x0f),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0xc0),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x01),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x08),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x1a),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE0, 0x00),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0x55),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0x75),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x01),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE0, 0x25),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE0, 0x02),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0a),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x62),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x02),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_BUF_ENABLE, 0x0c),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x1a),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x14),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0x20),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_1, 0xb6),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_2, 0x4a),
> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_3, 0x36),
> > The only difference from sm8550_usb3_serdes_tbl, it has 0x37 here.
> Not sure what the suggestion is here.=A0 I think in general I would want =
to have a separate table for each chipset, considering that settings may ch=
ange/evolve.=A0 Currently, if you're asking to re-use the sm8550 table to a=
void re-defining this sequence, I think it'll be confusing to folks when th=
ey refer to this SOC's PHY settings.


No suggestion, merely a question if both tables are correct or not.

> >> +	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADDITIONAL_MISC, 0x0c),
> >> +};
> >> +
> > [...]
> >
> >> @@ -1781,6 +1914,22 @@ static const struct qmp_combo_offsets qmp_combo=
_offsets_v5 =3D {
> >>  	.dp_dp_phy	=3D 0x2200,
> >>  };
> >>  =

> >> +static const struct qmp_combo_offsets qmp_combo_offsets_v8 =3D {
> > Why is it v8? Is the actual PHY also v8 rather than v6?
> Yes, actual QMP PHY major rev is v8.=A0 If we want to, I can generate a s=
eparate v8 based header files if that is better.=A0 However, most of the of=
fsets for the registers we're taking advantage of in the actual driver has =
the same offsets as previous revisions.

If all registers of a particular set (QSERDE, TX/RX, PCS) are the same,
then it should be fine to reuse those (although it creates some
questions). If the majority is the same, but there are some differences,
please create new header file. It is definitely easier to verify that
the patch is correct if every piece has the same version.

-- =

With best wishes
Dmitry

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
