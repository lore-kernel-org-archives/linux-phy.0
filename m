Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DEEAC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 20:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cex1L6cv7CK6SKOOwzBrvyQxSmEqBf9Po4GC65nuMvk=; b=30e1I8CJ4XFRfh
	tpnTUJramc80dCb+9NeuyU7KTVu+chLn4IojxuFNh+dcgZXS/gspCRvKRDCfTJiDm19MtE61SoPDS
	5FPLOl1gj8jwBDAdiHfq5MkbPpOiAm7xMiE/kODnWzkkdCgp1/4EqrnlZ2CJUsBlm9FnvemzHLO5B
	A71EJjxE5C2DfGW1iOnjD7KYzyDA37PDFLfYZiuC5ZE7iXo7XL8WnDPfBulqjo8W8XzpmEOZXNRC8
	+xtcxoWhD2bgss8VuFYimkvi3jAWuLt9hiM0jYOPMC7iq0BrFEY6XwdXBAkSULqOD+3IRqJfZ94ux
	sXhZA8rEEwKntTUx//QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwSf6-00000009nGC-3zG7;
	Mon, 15 Apr 2024 20:10:44 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwSf4-00000009nEa-2DZ9
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 20:10:43 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-dc6cbe1ac75so2820965276.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 13:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713211840; x=1713816640; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N+78Ths3N+m/trnfB/LCX44mWfPui51vN9doYTN2NYM=;
        b=lDNcMyhAtSj6jxgjz2049qhNY4gIr++P5McZkvG+tPkZ2UmPWwO6JnH+8AY0VmA0m2
         9jtZ7evCX10Lir5JcEZx7kTgBpMlh7e8h2awETgObAHLYqV5WR/cQM/6ZePDCmodsvYK
         rP6dk3UvVZ3ZK316DTAnGJc4qcBHoSUwR3i7BbrRA5v+/WUGo3w6dVLoUHEJe3+MOPKQ
         rLCMP9fjoUValoHW0s47eObs5rXpAMYeSVrvXO1x6LoDhe1xVZwCHRMZSv4xM9ZxBhnV
         DGbvW6NJBBM8WWJctpcJTnDAlbMtc1xfJwgWjoZk3IUxD9uvAongCQv6QMrXPonHNhpX
         k5PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713211840; x=1713816640;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N+78Ths3N+m/trnfB/LCX44mWfPui51vN9doYTN2NYM=;
        b=V0XFcWLVIVbtfLe2NCDNdIlSzAGAUUCN8OgdfNy+thkpaA/F6jMuCCpOpEfnyyrL1H
         FBWyGRFp58BNSaH0jnC3dSB0yvZfZvZLHeZwdK3kNzAUYpetAkx3dwp1jU2QIHq690m0
         YKwRfsvhwfCTaHXZOxc897bFvdbLedZGbWNWJA/JTPO6MqYaTsg9PKqQLJEm6vAexVoe
         8H9s3s+rBbaBzsiNmqFyLG7witKL4D/tRmqkosQ9pM8Tes7SXihf40wV9aggTyvn9Ot/
         54wsUinEpHi2t3JbXPuoeJYrsY7Ju+Rfm1MojULsJyEHCH56RXvfw2kvEszrwZWtiiws
         u3sg==
X-Forwarded-Encrypted: i=1; AJvYcCWDZbRdu0ux4yEhIO8UEDhPDqmg1zn7sNC0/svuX8hIUGBzG7EcOCHAIpqPYvdRN2sVRuILUY3R0XsX2yhXv2/3L9vJVZOj5032Yp1Agw==
X-Gm-Message-State: AOJu0Yxsb9pvtFaCsIMgNkNoCGeq0Kh+mJUhCma4WdVmPXX/R1nGJN6l
	lXZJogRhB9xQpJM8U0aTxGrwAiAUoW/iTdL7lbk6H8m7JHi2o5glgDoZeoZPZuHXzYIPd+7WOMk
	x/LuHXtx866LYvjS7/6WH+74DYQlpePwDwkJ3qw==
X-Google-Smtp-Source: AGHT+IF3dCILXKJoWIQJ/KpG+i09kWimSM1ct7OC41doCnBTN0/8ltTd5BS3mmOyeIOPSukUr96ntaZGG8MklU++vOk=
X-Received: by 2002:a5b:90e:0:b0:dc2:23b1:eaef with SMTP id
 a14-20020a5b090e000000b00dc223b1eaefmr36360ybq.18.1713211840182; Mon, 15 Apr
 2024 13:10:40 -0700 (PDT)
MIME-Version: 1.0
References: <20240415182052.374494-1-mr.nuke.me@gmail.com> <20240415182052.374494-7-mr.nuke.me@gmail.com>
In-Reply-To: <20240415182052.374494-7-mr.nuke.me@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Apr 2024 23:10:29 +0300
Message-ID: <CAA8EJpqY1aDZMaeqBULEOD26UeGYbLd8RsA16jZw7zXJ7_oGPQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] phy: qcom-qmp-pcie: add support for ipq9574 gen3x2 PHY
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_131042_599993_9453E6CF 
X-CRM114-Status: GOOD (  15.78  )
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

On Mon, 15 Apr 2024 at 21:23, Alexandru Gagniuc <mr.nuke.me@gmail.com> wrote:
>
> Add support for the gen3x2 PCIe PHY on IPQ9574, ported form downstream
> 5.4 kernel. Only the serdes and pcs_misc tables are new, the others
> being reused from IPQ8074 and IPQ6018 PHYs.
>
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 136 +++++++++++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 ++
>  2 files changed, 149 insertions(+), 1 deletion(-)
>

[skipped]

> @@ -2448,7 +2542,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
>
>  /* list of clocks required by phy */
>  static const char * const qmp_pciephy_clk_l[] = {
> -       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
> +       "aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "anoc", "snoc"

Are the NoC clocks really necessary to drive the PHY? I think they are
usually connected to the controllers, not the PHYs.

>  };
>
>  /* list of regulators */
> @@ -2499,6 +2593,16 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x1 = {
>         .rx             = 0x0400,
>  };
>
> +static const struct qmp_pcie_offsets qmp_pcie_offsets_ipq9574 = {
> +       .serdes         = 0,
> +       .pcs            = 0x1000,
> +       .pcs_misc       = 0x1400,
> +       .tx             = 0x0200,
> +       .rx             = 0x0400,
> +       .tx2            = 0x0600,
> +       .rx2            = 0x0800,
> +};
> +
>  static const struct qmp_pcie_offsets qmp_pcie_offsets_v4x2 = {
>         .serdes         = 0,
>         .pcs            = 0x0a00,
> @@ -2728,6 +2832,33 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
>         .phy_status             = PHYSTATUS,
>  };
>
> +static const struct qmp_phy_cfg ipq9574_pciephy_gen3x2_cfg = {
> +       .lanes                  = 2,
> +
> +       .offsets                = &qmp_pcie_offsets_ipq9574,
> +
> +       .tbls = {
> +               .serdes         = ipq9574_gen3x2_pcie_serdes_tbl,
> +               .serdes_num     = ARRAY_SIZE(ipq9574_gen3x2_pcie_serdes_tbl),
> +               .tx             = ipq8074_pcie_gen3_tx_tbl,
> +               .tx_num         = ARRAY_SIZE(ipq8074_pcie_gen3_tx_tbl),
> +               .rx             = ipq6018_pcie_rx_tbl,
> +               .rx_num         = ARRAY_SIZE(ipq6018_pcie_rx_tbl),
> +               .pcs            = ipq6018_pcie_pcs_tbl,
> +               .pcs_num        = ARRAY_SIZE(ipq6018_pcie_pcs_tbl),
> +               .pcs_misc       = ipq9574_gen3x2_pcie_pcs_misc_tbl,
> +               .pcs_misc_num   = ARRAY_SIZE(ipq9574_gen3x2_pcie_pcs_misc_tbl),
> +       },
> +       .reset_list             = ipq8074_pciephy_reset_l,
> +       .num_resets             = ARRAY_SIZE(ipq8074_pciephy_reset_l),
> +       .vreg_list              = NULL,
> +       .num_vregs              = 0,
> +       .regs                   = pciephy_v4_regs_layout,

So, is it v4 or v5?


> +
> +       .pwrdn_ctrl             = SW_PWRDN | REFCLK_DRV_DSBL,
> +       .phy_status             = PHYSTATUS,
> +};
> +
>  static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
>         .lanes                  = 2,
>



--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
