Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 345D5C5475B
	for <linux-phy@archiver.kernel.org>; Mon, 11 Mar 2024 12:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuOPF7r/zZWRfW3AjO3Q09maLXysm9fr2Kn4oAGv1mA=; b=KroB+tB3ZFRDtM
	OxD6W77BgeeQ1rfWwWHrud+cJFs0oYLRoTMFSlWwMYBz9akvnZpsb8kfSsbloytPSFI3o0A6wXeuX
	/CcVP9RaPkN+TdqxwuUHPZWkN6EzTNTtH21xE5AynxQ7y5kh9wzYDpEgqoB0/isoFoWUu/s+DfVSj
	VXoL7l02Uk1+pw4VxL65+hn1MbEbbeYl9w6yvzI3EUMX6fURIJlVSdnPWv9KXj2G7dPdf4Gg9mZLO
	EaAeX7q2jP4e636LH6CtgLfE0580bb29xDnTu+5mwdwyFmqdFA9oLiJMwIU/z1P5BQmw9JCg90MTP
	J834J6uVUmH5jxAWG+sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjeVE-00000001Pit-2zDD;
	Mon, 11 Mar 2024 12:11:36 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjeVB-00000001Pi0-1NIU
	for linux-phy@lists.infradead.org;
	Mon, 11 Mar 2024 12:11:35 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-60a0a54869bso19290067b3.1
        for <linux-phy@lists.infradead.org>; Mon, 11 Mar 2024 05:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710159091; x=1710763891; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8Df2BGMbvWb2FVi+eRBRBYDqje0ymDCBi93nT5jupjk=;
        b=nyrf/yOtt8nxtruHQEDjdsvTw/rOnvzslmitgbB1x2YhKUtgtRqS3epJxcnaDT3ayJ
         jqdtX/dOan4QiNr/3qlC/RnJ3dHtu4c6HnYpJEgHVvp0A6qhdJMdjPlBHB1uxhkaEoLq
         H69RTfjxlsVxsGBNxDRTG/lupcaxu/lFairJ3PVjbnXJ6OQd3eBvQJs6a40xO2kiSpTZ
         /6jN1abbYNbUW4nqzD651w5qcz31CsKPeEE/LRb+RSGWltyrst2o/St5he2xxtwGZDXs
         QumhqOmX6s7NBF/1bkJd/pMFOStE8iDALrDdzTl3tU7w8LQd5aX55CTVcVAE0ewwGuFO
         9rOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710159091; x=1710763891;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Df2BGMbvWb2FVi+eRBRBYDqje0ymDCBi93nT5jupjk=;
        b=g1y4tONIfpDq8Vs6Ax86NSZU0kBYApeTiZzhGqr0RRCJacmpW1h/D3Z8URBNXMNbrh
         /besE1ItUZe3ecrI7FImM987YHG8Ng29masRIHxC3Q54a0Edx8LYaZMQu2xa2OKW0R8b
         c/1c1UnaNJjJMdOMEfQ6n65KKORN94t2h9wFHwXJP49oSshdo2BZVqbDr8eukrvMFe3K
         djQBrY7iyzu5eet0SBzIDb95iTpY/BPy/rlNCM0eCqGHgquyqOx6xVB5MNDG1+IuPnSf
         YBAw1Evcf6t/nTAnZto0Am3nRp9uTVKTHx+yNHyPshEgGw7lrJeeJendl3bxmivH0eGh
         S9TQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBfmKctUM3Z4pZvaOKO80iPj5DVtIICtDGGUP9CkaHzQ/1i9/ZPHb7APRqzlj4sBWNbEU3XE2LJmQ//nvy8I4ZBpkmYhINjvTcdfxe5A==
X-Gm-Message-State: AOJu0YysaNPPxcOl2jOp98CUtze+VavgNfmbizE4MjueEFLsSWHPMeTh
	sS54uslC/O/l4dDnX4R3S9amnG2rWdSf55DZkf69IhCnA8gk3M3ZE9XvAlu2BwfKXJgTZKCSZpW
	kdq9Wgm0/Pa/4xQ4anocrEm2oWdyyqHq62kO+Mg==
X-Google-Smtp-Source: AGHT+IH3uEU9Y3NgSjn2ucTTnuKP0tLiafc9xxzHXN2G6ScWOy3+Ws7ZAt0RIOXZIhqarb09H4oVYpgLcqNXFBV4RIE=
X-Received: by 2002:a0d:eec1:0:b0:60a:36c2:fdf8 with SMTP id
 x184-20020a0deec1000000b0060a36c2fdf8mr1469676ywe.18.1710159091155; Mon, 11
 Mar 2024 05:11:31 -0700 (PDT)
MIME-Version: 1.0
References: <20240311120215.16845-1-quic_kbajaj@quicinc.com> <20240311120215.16845-5-quic_kbajaj@quicinc.com>
In-Reply-To: <20240311120215.16845-5-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 11 Mar 2024 14:11:19 +0200
Message-ID: <CAA8EJpo7Zd-QxAxKFuo5zaR-=N8eBefpL=LcLQ9j+akhFQYUrg@mail.gmail.com>
Subject: Re: [PATCH 4/4] phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, Amrit Anand <quic_amrianan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_051133_544977_4219C2E5 
X-CRM114-Status: GOOD (  17.05  )
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

On Mon, 11 Mar 2024 at 14:05, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> Add QDU1000/QRU1000 specific register layout and table configs.
>
> Co-developed-by: Amrit Anand <quic_amrianan@quicinc.com>
> Signed-off-by: Amrit Anand <quic_amrianan@quicinc.com>
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 52 +++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 5c003988c35d..e067574bea7a 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -1441,6 +1441,32 @@ static const struct qmp_phy_init_tbl x1e80100_usb3_uniphy_pcs_usb_tbl[] = {
>         QMP_PHY_INIT_CFG(QPHY_V7_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
>  };
>
> +
> +static const struct qmp_phy_init_tbl qdu1000_usb3_uniphy_pcs_tbl[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG1, 0xc4),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG2, 0x89),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG3, 0x20),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG6, 0x13),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xaa),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_CDR_RESET_TIME, 0x0a),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG1, 0x88),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG2, 0x13),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG1, 0x4b),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x10),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x21),
> +};
> +
> +static const struct qmp_phy_init_tbl qdu1000_usb3_uniphy_pcs_usb_tbl[] = {
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
> +       QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_POWER_STATE_CONFIG1, 0x6f),
> +};
> +
> +
> +

Please drop extra empty lines.

Also the tables are more or less sorted out. Please move this to a
correct place.

>  struct qmp_usb_offsets {
>         u16 serdes;
>         u16 pcs;
> @@ -1693,6 +1719,29 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
>         .regs                   = qmp_v2_usb3phy_regs_layout,
>  };
>
> +static const struct qmp_phy_cfg qdu1000_usb3_uniphy_cfg = {
> +       .lanes                  = 1,
> +
> +       .offsets                = &qmp_usb_offsets_v5,
> +
> +       .serdes_tbl             = sm8150_usb3_uniphy_serdes_tbl,
> +       .serdes_tbl_num         = ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
> +       .tx_tbl                 = sm8350_usb3_uniphy_tx_tbl,
> +       .tx_tbl_num             = ARRAY_SIZE(sm8350_usb3_uniphy_tx_tbl),
> +       .rx_tbl                 = sm8350_usb3_uniphy_rx_tbl,
> +       .rx_tbl_num             = ARRAY_SIZE(sm8350_usb3_uniphy_rx_tbl),
> +       .pcs_tbl                = qdu1000_usb3_uniphy_pcs_tbl,
> +       .pcs_tbl_num            = ARRAY_SIZE(qdu1000_usb3_uniphy_pcs_tbl),
> +       .pcs_usb_tbl            = qdu1000_usb3_uniphy_pcs_usb_tbl,
> +       .pcs_usb_tbl_num        = ARRAY_SIZE(qdu1000_usb3_uniphy_pcs_usb_tbl),
> +       .vreg_list              = qmp_phy_vreg_l,
> +       .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> +       .regs                   = qmp_v4_usb3phy_regs_layout,
> +       .pcs_usb_offset         = 0x1000,
> +
> +       .has_pwrdn_delay        = true,
> +};
> +
>  static const struct qmp_phy_cfg sa8775p_usb3_uniphy_cfg = {
>         .lanes                  = 1,
>
> @@ -2620,6 +2669,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
>         }, {
>                 .compatible = "qcom,sdx65-qmp-usb3-uni-phy",
>                 .data = &sdx65_usb3_uniphy_cfg,
> +       }, {
> +               .compatible = "qcom,qdu1000-qmp-usb3-uni-phy",
> +               .data = &qdu1000_usb3_uniphy_cfg,

Please keep the table sorted.

>         }, {
>                 .compatible = "qcom,sdx75-qmp-usb3-uni-phy",
>                 .data = &sdx75_usb3_uniphy_cfg,
> --
> 2.42.0
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
