Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B97F6CA0FE8
	for <linux-phy@archiver.kernel.org>; Fri,  1 Sep 2023 21:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5bqTBh0doFnCj3YUd0dmaWjzjoiHmQtChutVeU9V6g=; b=gPkdsbAVRaW+Jx
	8bUvq568Nyc+v4Faqpnco89V09hHNE+4r9spiX8qfiWff8L5zAZcVBjCHYUX1QHkCkD2NEPrLf/x3
	cWvozoG++IZqdNQu62rGuEVxhPx1prKDL4eaFSTXnU2ahOAta/LjbDyH57pSLX5SbTNFmhqbqFkzs
	w6e7k7L9eUFhzUV71g9IQE5bCjCQOOWW3knhbHQgSyPtMYkHsHLcNoNNVmv/J/0/M7C4f8pgLCOfR
	7GHjm+B77xbBXHKwMAi/sSxnDb6J2OHoMIL2uiyzdRIc0meFQj1fP9VJHa/1HyDYJzhgScBatO80T
	FTgN070ueDDZNbWbyLaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qcC1w-000QMW-2e;
	Fri, 01 Sep 2023 21:50:16 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qcC1t-000QM9-1w
	for linux-phy@lists.infradead.org;
	Fri, 01 Sep 2023 21:50:15 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d7260fae148so2042707276.1
        for <linux-phy@lists.infradead.org>; Fri, 01 Sep 2023 14:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693605011; x=1694209811; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lA/gYj4G9dBVeXUfikZ7kSFesNkiwy9bpcMTmp53A5g=;
        b=BDU8+yE59EqEaOZBcA7T8dJllyvgcBWnIltR6snR5TynB9aik3S1ou5CXjYwBDzZiw
         sCBzB3kcPY9CpMG8QxbC+oVGMkuIrPUY1uDCEh7ArG2UXP1hGtFeH3DHIfPhNOfHxzrH
         mfy3YW2H52uca58alOt8rFC5tJhqgsI0AySQYCyRVzs5NVBOtsKhCThdo83fdVMzSUv8
         wpnjFNqJCslGHr/A0y9v2f1lj0j0F81RGM+mPEkQfdcjH9QY9vciW1RcpPGN0Kic9y53
         K7+S3iAhAt9uR9DzQZy8SbwuUEiCLRqWJwLDire/LsCJZoqSAZjHzTIuxFsRAz2I3XyO
         hUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693605011; x=1694209811;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lA/gYj4G9dBVeXUfikZ7kSFesNkiwy9bpcMTmp53A5g=;
        b=N1RLw9tJYuUR6x8HM/D1V4CtjyYaITE9uLdjH35SGjg55L1jTsJwaHQ9a3+rBO7C+L
         evvDto+DaQ3NdEtfXd1A76f/4TczPl72kVcZ1DV0t0PDJF/hA1CRMLa9flhUcxrXzicf
         H38ae556XbY6wy2FK7ayXGC4U+CpSeh7bS4TJnMIvZzhaejxTNvMWGDDq91cvPaD3RLX
         jXDOHPNcwDwdZ0Kt/ZOqqZ3RwJyFDiJkVJf8A72IVFXkXpciZeyRBiY9kyU+RmWwfKWt
         0Ehnu9v6Qx5qF7irTt5+ke2ipU+wqAid0aymkuPPMqa9Pw8mwPL4sGXtw6NUDkk6CO7v
         IX8g==
X-Gm-Message-State: AOJu0YxgDkItnYVtC3XQ53Gfwu8twTVBcgDDlFJNjLVsNiP7U8t+oQDB
	bT/DzPEXmHc1+8vA1FBpGXnmzSutXPe1Uv5yvVqDTQ==
X-Google-Smtp-Source: AGHT+IFAIw3fZY5uif8FGyQUm6GVIBe/G3nd55d0OfG3nGHm9snPjGrA8RAKabs/WWggVm9iSiyma2/CBVv19LYToSA=
X-Received: by 2002:a25:348b:0:b0:d78:1311:aa1b with SMTP id
 b133-20020a25348b000000b00d781311aa1bmr4040638yba.48.1693605011562; Fri, 01
 Sep 2023 14:50:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230901092645.20522-1-quic_nsekar@quicinc.com> <20230901092645.20522-3-quic_nsekar@quicinc.com>
In-Reply-To: <20230901092645.20522-3-quic_nsekar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 2 Sep 2023 00:50:00 +0300
Message-ID: <CAA8EJppej++gbrWrRU9EFBntjzck4-9xbgS_sCPBfcxEofUo3Q@mail.gmail.com>
Subject: Re: [PATCH V3 2/4] phy: qcom-m31: Add compatible, phy init sequence
 for IPQ5018
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, quic_srichara@quicinc.com, 
	quic_varada@quicinc.com, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230901_145013_710246_3550B04E 
X-CRM114-Status: GOOD (  20.98  )
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

On Fri, 1 Sept 2023 at 12:27, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>
> Add phy init sequence and compatible string for IPQ5018
> chipset.
>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
> V3:
>         Dropped 0 delay inits.
>         Added static const type for m31_ipq5018_regs.
> V2:
>         Updated the commit message.
> ---
>  drivers/phy/qualcomm/phy-qcom-m31.c | 49 +++++++++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
> index ed08072ca032..ceee38695d7d 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
> @@ -82,6 +82,48 @@ struct m31_priv_data {
>         unsigned int                    nregs;
>  };
>
> +static const struct m31_phy_regs m31_ipq5018_regs[] = {
> +       {

C99 initializers, please?

> +               USB_PHY_CFG0,
> +               UTMI_PHY_OVERRIDE_EN
> +       },
> +       {
> +               USB_PHY_UTMI_CTRL5,
> +               POR_EN,
> +               15
> +       },
> +       {
> +               USB_PHY_FSEL_SEL,
> +               FREQ_SEL
> +       },
> +       {
> +               USB_PHY_HS_PHY_CTRL_COMMON0,
> +               COMMONONN | FSEL | RETENABLEN
> +       },
> +       {
> +               USB_PHY_REFCLK_CTRL,
> +               CLKCORE
> +       },
> +       {
> +               USB_PHY_UTMI_CTRL5,
> +               POR_EN
> +       },
> +       {
> +               USB_PHY_HS_PHY_CTRL2,
> +               USB2_SUSPEND_N_SEL | USB2_SUSPEND_N | USB2_UTMI_CLK_EN
> +       },
> +       {
> +               USB_PHY_UTMI_CTRL5
> +       },
> +       {
> +               USB_PHY_HS_PHY_CTRL2,
> +               USB2_SUSPEND_N | USB2_UTMI_CLK_EN
> +       },
> +       {
> +               USB_PHY_CFG0

What is the value written? While it didn't make sense to write 0
delays, it is sensible to write 0 register values here.

> +       },
> +};
> +
>  struct m31_phy_regs m31_ipq5332_regs[] = {
>         {
>                 USB_PHY_CFG0,
> @@ -268,6 +310,12 @@ static int m31usb_phy_probe(struct platform_device *pdev)
>         return PTR_ERR_OR_ZERO(phy_provider);
>  }
>
> +static const struct m31_priv_data m31_ipq5018_data = {
> +       .ulpi_mode = false,
> +       .regs = m31_ipq5018_regs,
> +       .nregs = ARRAY_SIZE(m31_ipq5018_regs),
> +};
> +
>  static const struct m31_priv_data m31_ipq5332_data = {
>         .ulpi_mode = false,
>         .regs = m31_ipq5332_regs,
> @@ -275,6 +323,7 @@ static const struct m31_priv_data m31_ipq5332_data = {
>  };
>
>  static const struct of_device_id m31usb_phy_id_table[] = {
> +       { .compatible = "qcom,ipq5018-usb-hsphy", .data = &m31_ipq5018_data },
>         { .compatible = "qcom,ipq5332-usb-hsphy", .data = &m31_ipq5332_data },
>         { },
>  };
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
