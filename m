Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74808C6FA8F
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 14:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHlY1hFNiyLeBPk698TWtZjBkBbeHGZlckA622CpSqc=; b=QVEOup+0aXritQ
	grrqyD2tC6CK+HBDy/R33fOj/ipMMZjDaGvvMVt9buijuCWrqBjou2G/octGH9NDsb27pm0capmyL
	ABOy3uZkWyN4/woE2JPZH+TxMLAlTOlTwJMSphmiUEmXcq36a58ivMw/Yh47X8t78tWivjzJXjIXq
	+9aYJufaU6pm3r6ODJyrBegqpe3aKQ/I65pwuH/+bCd7CkDPrQP/XC2NawJ3bbvK4GW9baUqm13cV
	P+6attN+1E5BgsoFuNoCSSa7A0BpxPAokjdQnsZHrL7RI2FjhggVuJi8RrHB1Xm87hWMmtpq4UrH5
	5EIMGYzbxKGtJvKFZyUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazy2-00Bimb-0U;
	Tue, 29 Aug 2023 14:45:18 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazxz-00Bilj-2Z
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 14:45:17 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d77a4e30e97so4220500276.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 07:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693320314; x=1693925114;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sYJFL/oP3SaDlhdD3A5BVkBBrDmASIKsskxYu/T8gOk=;
        b=GY0rtHFHuTCGCTm11spgEUbsSzmNYPKJ1piASOWE3ElhgJN7T+MNyYtD9MdkmLRGHj
         YykbxRufPy04Pie620zQY8M9JF9lGQVFlc4IquUKpxBHibg53HW6y+iBIfXaQC46uIvZ
         ntgj4qOqt8V7eoSSYpNSsACFZprYH3cuMTJ62c1z2WwenCA0CCZfK+czw+PoiYk57xKk
         PXB6DeOeDUor2bkWHnRyAEigbWq5I5CksfcVZk+dxjohBbLmeCUQFwTBstwU6FmbQUCj
         gXyu5ZLuGcjiyu7BekuXsBmqPyp6V455ezYy+EZvQQC8JC/VvXByKYEAXheoEBtj3TBR
         2NFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693320314; x=1693925114;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sYJFL/oP3SaDlhdD3A5BVkBBrDmASIKsskxYu/T8gOk=;
        b=elhoShUXKM2Od1Msa1vpCpqSxMbBctV335lGiW9VW/Q8uoq1125Sb84ozPG4CEdT4g
         wk583zFrTqvk3L4Rlvvf0E3jrz2PgbfUncaQ0Px+e2swPduttngEal26gdtx5cx8hv49
         37pKKckh22M2eh96YyrR/60TFLixGf8JM54pVNvQgNItN3DJCrA6XcYCYodWQ99Hh6hk
         pGYsoNd9E2KT+XI3KWGkbCEeMf8OQ21THZUKB+rYQXzkh6aZcjYk0pO6Z2dyaLQLQt0k
         uiWZGHJAuOrv9wCQYd6++UskLM1rQ2fvJuWqjWf9pTKXeLPHLuzwkMJfd+nwKiH1LWCw
         iAxA==
X-Gm-Message-State: AOJu0Yz7IYm2flboto9GV/WBUX8JonAiae0HEIQ2YlXYTqTjkKjXMCyE
	CYLLskD/QR2ftUlo+HYhNnSzzxbdaVenuEIbK8SXUg==
X-Google-Smtp-Source: AGHT+IGs1a1lOiAH7BmcROycjWaFcW0bQVi0E8yagxKqODme69iYwdaPfRNKIXre8FrW8ccNKSINi3f6JinWFQR0BBE=
X-Received: by 2002:a25:b0a3:0:b0:d39:fa2f:8b63 with SMTP id
 f35-20020a25b0a3000000b00d39fa2f8b63mr30342451ybj.25.1693320314602; Tue, 29
 Aug 2023 07:45:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com> <20230829135818.2219438-9-quic_ipkumar@quicinc.com>
In-Reply-To: <20230829135818.2219438-9-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 29 Aug 2023 17:45:03 +0300
Message-ID: <CAA8EJpqraO6UXBs=aPpWNuhEPjdcQ01FyV_Np1KtuJtEkJE0Hg@mail.gmail.com>
Subject: Re: [PATCH 8/9] phy: qcom: uniphy: Add ipq5332 USB UNIPHY support
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: robert.marko@sartura.hr, luka.perkov@sartura.hr, agross@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, 
	will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, 
	geert+renesas@glider.be, nfraprado@collabora.com, rafal@milecki.pl, 
	peng.fan@nxp.com, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, quic_varada@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_074515_839841_6648D799 
X-CRM114-Status: GOOD (  22.31  )
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

On Tue, 29 Aug 2023 at 17:00, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> This patch adds ipq5332 USB SS UNIPHY support.

First, please read to Documentation/process/submitting-patches.rst,
then rewrite the commit message.

Next, I tend to say that this driver doesn't have a lot in common with
the ipq4019 driver you have modified. Please consider adding new
driver for ipq5332, then we can see whether it makes sense to fold
ipq4019 to use new infrastructure.

>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
> This patch depends on the below series which adds support for USB2 in
> IPQ5332
> https://lore.kernel.org/all/cover.1692699472.git.quic_varada@quicinc.com/
>
>  drivers/phy/qualcomm/phy-qcom-uniphy.c | 37 ++++++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.c b/drivers/phy/qualcomm/phy-qcom-uniphy.c
> index eb71588f5417..91487e68bb6e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-uniphy.c
> +++ b/drivers/phy/qualcomm/phy-qcom-uniphy.c
> @@ -26,6 +26,10 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>
> +#define PCIE_USB_COMBO_PHY_CFG_MISC1           0x214
> +#define PCIE_USB_COMBO_PHY_CFG_RX_AFE_2                0x7C4
> +#define PCIE_USB_COMBO_PHY_CFG_RX_DLF_DEMUX_2  0x7E8
> +
>  struct uniphy_init_tbl {
>         unsigned int offset;
>         unsigned int val;
> @@ -37,6 +41,12 @@ struct uniphy_init_tbl {
>                 .val = v,               \
>         }
>
> +static const struct uniphy_init_tbl ipq5332_usb_ssphy_init_tbl[] = {
> +       UNIPHY_INIT_CFG(PCIE_USB_COMBO_PHY_CFG_RX_AFE_2, 0x1076),
> +       UNIPHY_INIT_CFG(PCIE_USB_COMBO_PHY_CFG_RX_DLF_DEMUX_2, 0x3142),
> +       UNIPHY_INIT_CFG(PCIE_USB_COMBO_PHY_CFG_MISC1, 0x3),
> +};
> +
>  struct uniphy_cfg {
>         const struct uniphy_init_tbl *init_seq;
>         int num_init_seq;
> @@ -83,6 +93,32 @@ static const struct uniphy_cfg ipq4019_usb_hsphy_cfg = {
>         .reset_udelay   = 10000,
>  };
>
> +static const char * const ipq5332_usb_ssphy_clk_l[] = {
> +       "phy_ahb", "phy_cfg_ahb", "pipe",
> +};
> +
> +static const char * const ipq5332_usb_ssphy_reset_l[] = {
> +       "por_rst",
> +};
> +
> +static const char * const ipq5332_usb_ssphy_vreg_l[] = {
> +       "vdda-phy",
> +};
> +
> +static const struct uniphy_cfg ipq5332_usb_ssphy_cfg = {
> +       .init_seq       = ipq5332_usb_ssphy_init_tbl,
> +       .num_init_seq   = ARRAY_SIZE(ipq5332_usb_ssphy_init_tbl),
> +       .clk_list       = ipq5332_usb_ssphy_clk_l,
> +       .num_clks       = ARRAY_SIZE(ipq5332_usb_ssphy_clk_l),
> +       .reset_list     = ipq5332_usb_ssphy_reset_l,
> +       .num_resets     = ARRAY_SIZE(ipq5332_usb_ssphy_reset_l),
> +       .vreg_list      = ipq5332_usb_ssphy_vreg_l,
> +       .num_vregs      = ARRAY_SIZE(ipq5332_usb_ssphy_vreg_l),
> +       .pipe_clk_rate  = 250000000,
> +       .reset_udelay   = 1,
> +       .autoload_udelay = 35,
> +};
> +
>  static int phy_mux_sel(struct phy *phy)
>  {
>         struct qcom_uniphy *uniphy = phy_get_drvdata(phy);
> @@ -396,6 +432,7 @@ static int qcom_uniphy_probe(struct platform_device *pdev)
>  static const struct of_device_id qcom_uniphy_of_match[] = {
>         { .compatible = "qcom,usb-hs-ipq4019-phy", .data = &ipq4019_usb_hsphy_cfg},
>         { .compatible = "qcom,usb-ss-ipq4019-phy", .data = &ipq4019_usb_ssphy_cfg},
> +       { .compatible = "qcom,ipq5332-usb-ssphy", .data = &ipq5332_usb_ssphy_cfg},
>         { },
>  };
>  MODULE_DEVICE_TABLE(of, qcom_uniphy_of_match);
> --
> 2.34.1


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
