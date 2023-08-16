Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79FC9C25B7F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Aug 2023 20:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/s+JE8yYqzYrKhlxtf4K3Lbt5u6Ps2EkI2TLB1WU8I=; b=46uBafgJoJ6DK1
	tans2BVz2gdZCDM2Sujob3S7QMh9oZSVL1rv+Sh2szFjqdpmD4VqxqSDjKJmPxAsFZY8tyWtBXHsy
	Mxe2MMUHhF/GMjQq6cPJOjuN+BGDukCdK2LUcTwIL+4ZNKhQ07YBVJl6FZ7mT0CiLdlH8DR+PsnoV
	RSf4zAPlU11dTgi3xQbZib8MDdaqNWXenChSddRHpDXboEnpbriQuT7zxU5e4PjodltCImPc+QeXl
	qfkFNEXzSd4tZGn0CBj27PfP1YjCnPvF8TPa08Fz6mEKYr03BztjaP1u7zxIsKyHuLl68lZhDISCA
	3vgxsz+NZk08r2Kng8Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWNAP-004xMc-0b;
	Wed, 16 Aug 2023 20:30:57 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWNAL-004xM6-30
	for linux-phy@lists.infradead.org;
	Wed, 16 Aug 2023 20:30:55 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-58c4f61ca12so31434467b3.3
        for <linux-phy@lists.infradead.org>; Wed, 16 Aug 2023 13:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692217852; x=1692822652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oj6j0UTfHpcSFW9VWSKTIuwYq3syLxLFSaHojGg/8BU=;
        b=oyskU0VjEFTUCSJe+GtbdU6XRZefYsg8/zNlQPNN1Lvdc7MCXFuH4PmEIYOqBpVr3n
         yqcZiyzCpAHpE8r1Q54Dh9js/LEODJv1ovzn/2dATFBQpDHBx7K4/zxD4w5Cf5NPAh8o
         5V6Ue7s3wws4i+Kh9+xQS2oVW7rMLNh+akB3nxcqOBoL6KX3rbJrHVN1xAJkLdmWAVmM
         NfXpTE/N+yoSWWrEZsQzAL+orf1HvLYUdJzhhc8SRVhaVSWvp2Xx2cmzLjUqG8HyK/dQ
         8+W7HsyL5DhkfyjZcDuHuLlfbTy1qczL0cC6mH4T1YnwZ1JLww8aWYEghzqqk8HDIBoF
         ff7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692217852; x=1692822652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oj6j0UTfHpcSFW9VWSKTIuwYq3syLxLFSaHojGg/8BU=;
        b=ii9zSZun/ICtXtf9gygAFswsoZl2QubcU5EmD8m/4UGwkSyUBLBzxAZ2PyzijVUKiX
         a9ywZOEY66oSkzmv7dfVxZKCqVn6apokcxPcmoyN0GVqpU2uaWdrH1Mz/11Lz0dbxiE/
         ZYSqqJdxENntFZjzDZij3e/0HL08TN/nwfMOewNbtLed6v3t2vOGEGN66dbj4ku8qWXm
         dfKIJZVMmvOJotB9U7gOFpEQ1ipB/cQJknJgDyimsiFSnS2uR47P8kXN9VUojEG0hjae
         BbpiERCivpuQPsYT3OUDR/0/sMNWM6KF3jmjzDUk1y3LT3UfZ4OoLBykdT1zWH1qA6mz
         Ghhg==
X-Gm-Message-State: AOJu0YzwNtsCBe+l6cZdHfRYgrK3bp+fo84hSy7doh617cRDLkVsEUhd
	DH8d7jai/4lvCPBUSEFQgRsObxapNv/j8M060WN7Hg==
X-Google-Smtp-Source: AGHT+IElXLWoEGgM6YkthVVmmyFQI0WOphZRgqH18CiggpK6VxOnrQ3koFNz/0WXlf4R0R4uh+NL6eBq57tcTXm8oA0=
X-Received: by 2002:a25:b286:0:b0:d0e:c72d:71f8 with SMTP id
 k6-20020a25b286000000b00d0ec72d71f8mr3625306ybj.58.1692217851831; Wed, 16 Aug
 2023 13:30:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230816154841.2183-1-quic_nitirawa@quicinc.com> <20230816154841.2183-3-quic_nitirawa@quicinc.com>
In-Reply-To: <20230816154841.2183-3-quic_nitirawa@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 16 Aug 2023 23:30:40 +0300
Message-ID: <CAA8EJpo2Rm0oBGC_Qd2QtmmdQcWW3zKeTb-X5VH3wazCsriSNA@mail.gmail.com>
Subject: Re: [PATCH V1 2/2] phy: qcom-qmp-ufs: Add Phy Configuration support
 for SC7280
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	agross@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Manish Pandey <quic_mapa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_133054_051139_3B682494 
X-CRM114-Status: GOOD (  15.87  )
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

On Wed, 16 Aug 2023 at 18:50, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
> Add SC7280 specific register layout and table configs.
>
> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 142 ++++++++++++++++++++++++
>  1 file changed, 142 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 03cd47faf3fd..c5ab5f0792f5 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -493,6 +493,70 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_g4_pcs[] = {
>         QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
>  };
>
> +static const struct qmp_phy_init_tbl sc7280_ufsphy_tx[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_1_DIVIDER_BAND0_1, 0x06),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_2_DIVIDER_BAND0_1, 0x03),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_3_DIVIDER_BAND0_1, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_TX_PWM_GEAR_4_DIVIDER_BAND0_1, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0x35),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_TX_TRAN_DRVR_EMP_EN, 0x0c),
> +};
> +
> +static const struct qmp_phy_init_tbl sc7280_ufsphy_rx[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_LVL, 0x24),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x0f),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_BAND, 0x18),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_FO_GAIN, 0x0a),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5a),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0xf1),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_LOW, 0x80),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CTRL2, 0x80),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0e),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_TERM_BW, 0x1b),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x06),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x1d),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_MEASURE_TIME, 0x10),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0xc0),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0x6d),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0x6d),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0xed),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0x3b),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x3c),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0xe0),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0xc8),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xc8),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x3b),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0xb1),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_LOW, 0xe0),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH, 0xc8),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH2, 0xc8),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH3, 0x3b),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0xb1),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_DCC_CTRL1, 0x0c),
> +};
> +
> +static const struct qmp_phy_init_tbl sc7280_ufsphy_pcs[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_SIGDET_CTRL2, 0x6D),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0A),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_SMALL_AMP_DRV_LVL, 0x02),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_DEBUG_BUS_CLKSEL, 0x1F),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_MIN_HIBERN8_TIME, 0xFF),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_PLL_CNTL, 0x03),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB, 0x16),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB, 0xD8),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_PWM_GEAR_BAND, 0xAA),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HS_GEAR_BAND, 0x06),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x03),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x03),
> +};
> +
>  static const struct qmp_phy_init_tbl sm8250_ufsphy_hs_g4_tx[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V4_TX_LANE_MODE_1, 0xe5),
>  };
> @@ -521,6 +585,47 @@ static const struct qmp_phy_init_tbl sm8250_ufsphy_hs_g4_rx[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0x3c),
>  };
>
> +static const struct qmp_phy_init_tbl sc7280_ufsphy_hs_g4_rx[] = {

Please put this next to sc7280 register arrays.

> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_LVL, 0x24),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_CNTRL, 0x0f),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_SIGDET_DEGLITCH_CNTRL, 0x1e),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_BAND, 0x18),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_FO_GAIN, 0x0a),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x5a),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CONTROLS, 0xf1),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FASTLOCK_COUNT_LOW, 0x80),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_PI_CTRL2, 0x81),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_FO_GAIN, 0x0e),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_UCDR_SO_GAIN, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_TERM_BW, 0x6f),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL1, 0x04),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL2, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL3, 0x09),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQU_ADAPTOR_CNTRL4, 0x07),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x17),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x00),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_MEASURE_TIME, 0x20),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_LOW, 0x80),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_IDAC_TSETTLE_HIGH, 0x01),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_LOW, 0x3f),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH, 0xff),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH2, 0xff),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH3, 0x7f),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_00_HIGH4, 0x2c),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_LOW, 0x6d),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH, 0x6d),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH2, 0xed),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH3, 0x3b),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_01_HIGH4, 0x3c),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_LOW, 0xe0),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH, 0xc8),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH2, 0xc8),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH3, 0x3b),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_RX_MODE_10_HIGH4, 0xb1),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_DCC_CTRL1, 0x0c),
> +       QMP_PHY_INIT_CFG(QSERDES_V4_RX_GM_CAL, 0x0f),
> +};
> +
>  static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes[] = {
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0xd9),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x11),
> @@ -1162,6 +1267,40 @@ static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
>         .regs                   = ufsphy_v6_regs_layout,
>  };
>
> +static const struct qmp_phy_cfg sc7280_ufsphy_cfg = {

This should come before sc8280xp entry.

> +       .lanes                  = 2,
> +
> +       .offsets                = &qmp_ufs_offsets,
> +
> +       .tbls = {
> +               .serdes         = sm8150_ufsphy_serdes,
> +               .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
> +               .tx             = sc7280_ufsphy_tx,
> +               .tx_num         = ARRAY_SIZE(sc7280_ufsphy_tx),
> +               .rx             = sc7280_ufsphy_rx,
> +               .rx_num         = ARRAY_SIZE(sc7280_ufsphy_rx),
> +               .pcs            = sc7280_ufsphy_pcs,
> +               .pcs_num        = ARRAY_SIZE(sc7280_ufsphy_pcs),
> +       },
> +       .tbls_hs_b = {
> +               .serdes         = sm8150_ufsphy_hs_b_serdes,
> +               .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
> +       },
> +       .tbls_hs_g4 = {
> +               .tx             = sm8250_ufsphy_hs_g4_tx,
> +               .tx_num         = ARRAY_SIZE(sm8250_ufsphy_hs_g4_tx),
> +               .rx             = sc7280_ufsphy_hs_g4_rx,
> +               .rx_num         = ARRAY_SIZE(sc7280_ufsphy_hs_g4_rx),
> +               .pcs            = sm8150_ufsphy_hs_g4_pcs,
> +               .pcs_num        = ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
> +       },
> +       .clk_list               = sm8450_ufs_phy_clk_l,
> +       .num_clks               = ARRAY_SIZE(sm8450_ufs_phy_clk_l),
> +       .vreg_list              = qmp_phy_vreg_l,
> +       .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> +       .regs                   = ufsphy_v4_regs_layout,
> +};
> +
>  static void qmp_ufs_configure_lane(void __iomem *base,
>                                         const struct qmp_phy_init_tbl tbl[],
>                                         int num,
> @@ -1682,6 +1821,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
>         }, {
>                 .compatible = "qcom,sm8550-qmp-ufs-phy",
>                 .data = &sm8550_ufsphy_cfg,
> +       }, {
> +               .compatible = "qcom,sc7280-qmp-ufs-phy",
> +               .data = &sc7280_ufsphy_cfg,

This list is sorted, please put new data to the proper place.

>         },
>         { },
>  };
> --
> 2.17.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
