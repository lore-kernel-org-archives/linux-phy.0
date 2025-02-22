Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B0E1C021B5
	for <linux-phy@archiver.kernel.org>; Sat, 22 Feb 2025 05:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CaOJLuTOKQF+oJ0GoiJbmdvYdtCussNUGWrRpP1misE=; b=RFU6boHxLmemYD
	pUAoZ+bEoJygnrbyqwe5aiuniSJuBK9LDm7YwakvKOCuAV86BCv217NwnERQpY2bYkeMA9TKfLvva
	teHHEV8/fp17kcx3/1EyP45WTPclDycvnlSury8fxLyGU/SHWD10o77P+TkKWIRWuO3d8906KGdrn
	HynorOu890IF5RvpCk5D1h+0/kzkja306aZh5IvwLV3X9Xw367ucXdfILSHO4iC2oZYyUvtvVrNc4
	0JFa5lggWDtPJP3RolKDxK4EnFWdQjDWZ4FovSiVPBkTav9NzrhqJ+uXUXPwCZbVRbVkHh15Vb/42
	HTmqierR50UncIk7F6Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlhrz-00000007TVa-3MsW;
	Sat, 22 Feb 2025 05:16:07 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlhqU-00000007TKG-483e
	for linux-phy@lists.infradead.org;
	Sat, 22 Feb 2025 05:14:36 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-6fb9388f9f8so28770577b3.0
        for <linux-phy@lists.infradead.org>; Fri, 21 Feb 2025 21:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740201273; x=1740806073; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8RwvbWHHETKK51FixReBj+oJDEXTCnpFZVoOS2S1OW8=;
        b=o3g5zmnC8tJ+u77HKzH+lw7rHyWq0beK9lbrLKFWWyZAFBRcrbMGZxO3R/fdg7Ute1
         fgrJTJOmSUoS0XmIX2OMfK/oURuLUkTS6PGDzIcSSXJQktdZnkIu/PqaHIfPTiKuPBpZ
         mnABMGDTyVAb56qYFszgokI679TFiCfmx7/sioQN9QmO30wVOVJ21hgD1Hgrny3GJ1xu
         /7vd079PZiUV4vJE/dRQCUBKg7uXD6SYBGtczHgZhEWkcvwjlgzuoArLi1Pr8PHxyGyU
         ud1N48EErtiUhMtCzcgI1sxiyHNKks9grWF0hEaepB0BEN1qF/eZYaP6TTzGjO52e4HZ
         CXqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740201273; x=1740806073;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8RwvbWHHETKK51FixReBj+oJDEXTCnpFZVoOS2S1OW8=;
        b=GRcaDY1BA/hgPMhJ6V+ZhX1IQJKCwMK5qAura4kw/Os+qHvh723Mfqf8UolIIajIj2
         sRDRPXCj7YMkLb7uut/H1Kr4saRu7TIF8uk8MkgNPtosfKWtUUK2mRFM3F5Ak7yYa0Rb
         hwD5YODIsoDHIUzuQC30qGpA8AmeF1w6ngLZU0R5hjyetO49GGCeVf0YskFs1sBZOt1z
         gVNpxwz5dHNgLu1mOv2WviW1mJaeD+WQeS/2Lb2q4YfUveE7KLZ0H78zXjz+If4esKP7
         d6GMQSEgIVuDWaDTvKc7e3Ag4KD/2OHhWxbtaNgfWJr25bMMSvi/1eLv53as8QR7QHIw
         E1ng==
X-Forwarded-Encrypted: i=1; AJvYcCUK4+FtZlY4ImF93m5p1H2iXZpHX/WiMVYLUgAUSffsz2fqTNhn8yvawnm++ZbZHsWMINrNc/0JayA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0/yVwXWtmFXR4Qnbd+Gj+yWv9KXs7ERp2M7Uh4VLbMkWzn20z
	z5zq8uOLlrTkTcbYnFo0k1EWlnuAFAK+Wp+yDgeKlCYkphC30Fl6QEgkcQYMOeFMXDRMmHcsCti
	rLj2FuQkJj04pdKYFetLUxDt5XkMeG0U8wcFVzw==
X-Gm-Gg: ASbGnctvQjY8SLpOUqosoTsq38AVCOmzd2UXcJ1U6Vz7JOL6oUf2PB4YawFrLUfnxOh
	0Yd+GA5NWfFPNmmwWt+WYsleVLL6oJ51dVQ7SzVpxrXYLTjOdQUiTcsi7LyBWmn4Ig6C0LDllAy
	8EhqdVqpa6WPWwxRq8Eovf6Q==
X-Google-Smtp-Source: AGHT+IGQ/KDfElGvmhXzkExKjHk2cNCssJrpvCzkIdV66lfJ6iHkLOurmTN6M3RYaA42R4m5UEil7RWRi+/OxN7VaZA=
X-Received: by 2002:a05:690c:4587:b0:6ef:60f4:3d41 with SMTP id
 00721157ae682-6fbcc7805f5mr53359567b3.16.1740201273393; Fri, 21 Feb 2025
 21:14:33 -0800 (PST)
MIME-Version: 1.0
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-4-09afe1dc2524@quicinc.com>
 <tcm2hn7rpzaazntp5r7ag466ynacexnke43e6ypm4q5mrrlkdb@nem3gzib2l2v>
 <0ec95cca-45ed-4805-8ebd-03563d55627e@quicinc.com> <ofaioilki5qxdq2x5fpbpuk6mid6i6slpyqzwol4e2s4cwdwsf@lgpqy2zil4j6>
 <8c48de90-3dda-40c8-8f7a-01102f7360a3@quicinc.com>
In-Reply-To: <8c48de90-3dda-40c8-8f7a-01102f7360a3@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 22 Feb 2025 07:14:22 +0200
X-Gm-Features: AWEUYZm-KOty3ecyZHdCAcNlwh-Kws5SWY_GBymMAYd9Ar5b7QNW2Z98djrEc3Q
Message-ID: <CAA8EJprT5cz=tpSpMVAk7HQwTf8V4BdRuaoZPfdObfxwTjnKzw@mail.gmail.com>
Subject: Re: [PATCH 4/7] phy: qcom: qmp-combo: Add new PHY sequences for SM8750
To: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_211435_046840_5C3E4125 
X-CRM114-Status: GOOD (  30.16  )
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

On Sat, 22 Feb 2025 at 04:43, Wesley Cheng <quic_wcheng@quicinc.com> wrote:
>
>
>
> On 2/4/2025 6:59 AM, Dmitry Baryshkov wrote:
> > On Mon, Feb 03, 2025 at 07:31:29PM -0800, Wesley Cheng wrote:
> >>
> >> On 1/14/2025 2:23 AM, Dmitry Baryshkov wrote:
> >>> On Mon, Jan 13, 2025 at 01:52:10PM -0800, Melody Olvera wrote:
> >>>> From: Wesley Cheng <quic_wcheng@quicinc.com>
> >>>>
> >>>> Add new register offsets and PHY values for SM8750. Some of the previous
> >>>> definitions can be leveraged from older PHY versions as offsets within
> >>>> registers have not changed. This also updates the PHY sequence that is
> >>>> recommended after running hardware characterization.
> >>>>
> >>>> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> >>>> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> >>>> ---
> >>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 198 ++++++++++++++++++++++++++++++
> >>>>  1 file changed, 198 insertions(+)
> >>>>
> >>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >>>> index b09fa00e9fe7db8d97b7179ee15d3f07fe578b0c..823a60029ea6acbd1f0f8c7d27aaa58de39ed758 100644
> >>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> >>>> @@ -1471,6 +1471,139 @@ static const struct qmp_phy_init_tbl x1e80100_usb43dp_pcs_tbl[] = {
> >>>>    QMP_PHY_INIT_CFG(QPHY_V6_N4_PCS_EQ_CONFIG5, 0x10),
> >>>>  };
> >>>>
> >>>> +static const struct qmp_phy_init_tbl sm8750_usb3_serdes_tbl[] = {
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0xc0),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x01),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x16),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x41),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x41),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE1, 0x00),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0x55),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0x75),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x01),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE1, 0x25),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE1, 0x02),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0x5c),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x0f),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x5c),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x0f),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0xc0),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x01),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x08),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x1a),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MSB_MODE0, 0x00),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0x55),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0x75),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x01),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE1_MODE0, 0x25),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE2_MODE0, 0x02),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0a),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x62),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x02),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_BUF_ENABLE, 0x0c),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x1a),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_CFG, 0x14),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0x20),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_1, 0xb6),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_2, 0x4a),
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_AUTO_GAIN_ADJ_CTRL_3, 0x36),
> >>> The only difference from sm8550_usb3_serdes_tbl, it has 0x37 here.
> >> Not sure what the suggestion is here.  I think in general I would want to have a separate table for each chipset, considering that settings may change/evolve.  Currently, if you're asking to re-use the sm8550 table to avoid re-defining this sequence, I think it'll be confusing to folks when they refer to this SOC's PHY settings.
> >
> >
> > No suggestion, merely a question if both tables are correct or not.
> >
> >>>> +  QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADDITIONAL_MISC, 0x0c),
> >>>> +};
> >>>> +
> >>> [...]
> >>>
> >>>> @@ -1781,6 +1914,22 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
> >>>>    .dp_dp_phy      = 0x2200,
> >>>>  };
> >>>>
> >>>> +static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {
> >>> Why is it v8? Is the actual PHY also v8 rather than v6?
> >> Yes, actual QMP PHY major rev is v8.  If we want to, I can generate a separate v8 based header files if that is better.  However, most of the offsets for the registers we're taking advantage of in the actual driver has the same offsets as previous revisions.
> >
> > If all registers of a particular set (QSERDE, TX/RX, PCS) are the same,
> > then it should be fine to reuse those (although it creates some
> > questions). If the majority is the same, but there are some differences,
> > please create new header file. It is definitely easier to verify that
> > the patch is correct if every piece has the same version.
> >
>
> Hi Dmitry,
>
> I reviewed the differences in the register sets, and there are new addtions
> in the v8 QMP PHY, however, we do not use or program those registers as of
> now.  I noticed as well in previous versions, we only capture register
> defines if they are used in any of the init sequences.  Assuming this
> applies in this scenario, its probably ok to keep the v6 version until we
> actually need to add any settings for the new registers.

And when we actually need one of those registers, there will be a
confusion because some of the tables for sm8750 will have V6 and some
will have V8. In the worst case the table will have V6 and V8
registers interleaved.
Please provide a new set of defines for V8 registers.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
