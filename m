Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51B04C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 13:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUupjxhMUwW/imTJbsGREyzl8zBESBTvHs7G4axmFyc=; b=XpneJsFbk3PZOS
	vNCPo9fc8WhQCIoAnfJHafNKHFVluotqVTTLft0jZEv6AK0hiInnqbhOqtdcKniln4TtBUDin6y+4
	0bTpMJxtrBx7Ok3jQGttltDpuVyS9WCwKicQVrslEcDNavRC+TB2G2C1gem41SCMRcqu2Pvxcgmhc
	1TlAZbFpH8UcWAAWwKXYbqeP/BySvSzeqUIZ0tQBvP1N7rz4oUJIGkSLe/ZFXtXYgkCyDB8tOLirL
	K7mEOBWuz5EIPGcP8YZlVd6CcfGT0JrN3enmXdM1f1TpKJChF/j0dMMuRbZXlzpyIc2PZjmf2YD8C
	9xlPBTxcQ4ASvtv/KOWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Lqd-001aUZ-0G;
	Tue, 07 Nov 2023 13:10:27 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Lqa-001aTD-23
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 13:10:25 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5a82f176860so67560527b3.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Nov 2023 05:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699362622; x=1699967422; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wm1Mb5/Vjq9aMkJlsrjTa8/I47O6pvYgHKx9Bcn4a/Q=;
        b=ih35hPwC8+/gGM79H9LuTp2IwK/0ce4OOUudvRRLl5NKIkkeRU8/cOePao89pUd77H
         05vNUF9PgtZX92AV27uxhSbu/r7uaPs3EsJGrMHYI2yDkCXQY0qzwL89RrtvBVT6z7sn
         NAgBDLjr6WEad1Qs6vHVq7S+XKvqlT+1azjCkIuqkD5EebkzYBvbX5xR5vb8uViq+RwY
         EmMmDYIsk/YoCSYFTEg2m0TCp7YgR2MicVJTpernMxQXkgm+Ph/y7+tLgx6i1QkKaSIY
         8G7Zr6l29HjppFVzgUWajKZYBfuu68+7ZFHEowY9x/m2PKwRy4ram/qr13qpFHUxBv/B
         CnkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699362622; x=1699967422;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wm1Mb5/Vjq9aMkJlsrjTa8/I47O6pvYgHKx9Bcn4a/Q=;
        b=B3GyJHSA/27sgayreue7PzO8VtsVFnnGc/Zkbpjx2DU9tmmtWeS0dbmn1JY4caN8he
         qzglT6TZUtumJmTnBt9XpU043A7VfjU951Gslxbc3uu6Pc701oMN0YyPY0PubWNqUAPS
         3jE6u+rcxgu5VopXNl56O1WagASdLQsx5Sl5A9xUfI2MwrjPaQm4Qh0ygHI8wploqsnl
         95cYxAsZ6m2cJpKC5nV86VwkNij8CfIrWEqYTsXNTx+Lb30R3ZGpmgSVmQdq3yFRGprd
         cUKG9hAXjExgcsu7pUy3oG4nmte2mkkWj0rF0f09BALDgtjnk6d+BsAea7zX7/Ov4qsa
         ubIg==
X-Gm-Message-State: AOJu0YzezMfzTybkqlcin+x2Lful6b9+pmDrI4FG8+xN66fBvsS4yiKe
	3pml1/rXTWPZjbcdcWf9AU2uQ0CmRyUzoT2MBgZI4Q==
X-Google-Smtp-Source: AGHT+IF5Y2PdTK3EgzgxLoQDJvc7JWtJeaqzhWMhuNj03yIKxJpo/mL6Uhb0mf5EVPARRWo8zNGIUpAEY6Ec32rjXXY=
X-Received: by 2002:a0d:d48a:0:b0:5ad:4975:c860 with SMTP id
 w132-20020a0dd48a000000b005ad4975c860mr13979075ywd.39.1699362621854; Tue, 07
 Nov 2023 05:10:21 -0800 (PST)
MIME-Version: 1.0
References: <1699362294-15558-1-git-send-email-quic_msarkar@quicinc.com> <1699362294-15558-2-git-send-email-quic_msarkar@quicinc.com>
In-Reply-To: <1699362294-15558-2-git-send-email-quic_msarkar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 Nov 2023 15:10:09 +0200
Message-ID: <CAA8EJpp4E7L0JZjj3mT_2SQHeA6az9uwtaF3_diZ_McpGRg-Jg@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] phy: qcom-qmp-pcie: add x4 lane EP support for sa8775p
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	robh+dt@kernel.org, quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, robh@kernel.org, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	quic_schintav@quicinc.com, quic_shijjose@quicinc.com, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_051024_672019_6437DA4A 
X-CRM114-Status: GOOD (  15.98  )
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

On Tue, 7 Nov 2023 at 15:05, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
>
> Add support for x4 lane end point mode PHY found on sa8755p platform.
> Reusing existing serdes and pcs_misc table for EP and moved
> BIAS_EN_CLKBUFLR_EN register from RC serdes table to common serdes
> table as this register is part of both RC and EP.
>
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index b64598a..7114b4e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -2099,6 +2099,7 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_pcs_alt_tbl[] = {
>  };
>
>  static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_serdes_alt_tbl[] = {
> +       QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x1c),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_IVCO, 0x0f),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE0, 0x36),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_CCTRL_MODE1, 0x36),
> @@ -2125,7 +2126,6 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_rc_serdes_alt_tbl[]
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE2_MODE0, 0x07),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE1_MODE1, 0x97),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_SSC_STEP_SIZE2_MODE1, 0x0c),
> -       QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x1c),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_ENABLE1, 0x90),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE0, 0x06),
>         QMP_PHY_INIT_CFG(QSERDES_V5_COM_CP_CTRL_MODE1, 0x06),
> @@ -3114,6 +3114,13 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x4_pciephy_cfg = {
>                 .pcs_misc_num   = ARRAY_SIZE(sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl),
>         },
>
> +       .tbls_ep = &(const struct qmp_phy_cfg_tbls) {
> +               .serdes         = sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl,
> +               .serdes_num     = ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ep_serdes_alt_tbl),
> +               .pcs_misc       = sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl,
> +               .pcs_misc_num   = ARRAY_SIZE(sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl),
> +       },
> +
>         .reset_list             = sdm845_pciephy_reset_l,
>         .num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
>         .vreg_list              = qmp_phy_vreg_l,
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
