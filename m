Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0AA4C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 07:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uF5OF7s61jAGR4MssdODuO01oxo4g7smKuSASocQndE=; b=5GldSJ40lotXRU
	a/VL3ZfRPvMN2B4ySgT89I5RB29OFhbxDoufqAYwWDLRjMCGMt5zfbOtE2WEY97D9/gD/Hu7lZFuu
	hpRXEXJuI0y5O0KEWgxfLO1OWOqsr9N/7Q5WVCdmddDiJOTu6TQFGIIJNoF6ViFfpSwfwZiT5/BeE
	7RbfIbLbkxIceR0+PWDu3D6rL410YP3HkIu3tXPxk4vsCCwrX6+qKA6H58ctJJIm07LGOPv4oftvg
	JVx4D8sLzr7t6dkcpoGVRYALIurwdvtylrm1t86NVFInGODmXD2O955EhB84TgOK9Rg4tIMdF+466
	n51yHNHupmP9PqhYYitw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfqR-00H40m-2J;
	Thu, 14 Dec 2023 07:09:19 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfqP-00H40N-35
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 07:09:19 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-db5e5647c24so234426276.1
        for <linux-phy@lists.infradead.org>; Wed, 13 Dec 2023 23:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702537756; x=1703142556; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9O1GnUq4pw6hl4a/GhVKNLNjzNzEUMAMJcd0utEyLiE=;
        b=Z6TxT/NrbvjUgorQCs6CgTNlkd/GCgIPWbLCgmY2bT2rVieQA8h12Z1PJlyAKiFmhi
         56RNxyaUdNDOv5v+yMnv7WO51FnRxKzJ/QHXAeMt9dMtDy0Wg2cKuNd4WNCLOY2wCf2l
         PLmuDdPIq43MNeKTHdkPyKRA9IGviITU0N4afpePfQCTLuzArd8KVVq+AqUxgErmxCbl
         vBww+t+lKYozzYnLI+lfH238+WLwazNPITxQGKb07E8mpVPXhYJqX3niPZBrnD3/Z+6t
         KhgRkbf9I/6Mx8kQTVd0K8p74IfEXeq5iveWvsAQOqb2OfZec03SFQS34ns3OTU/5Nlr
         vgcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702537756; x=1703142556;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9O1GnUq4pw6hl4a/GhVKNLNjzNzEUMAMJcd0utEyLiE=;
        b=l0yTQI/9fz8ZxHy9gluRZ7EH11TOlRzKjID6wqoAUrZiiwpk+Ks3AnfxODC3J92CB0
         arPh4uOfKD3Yjj4djf7ptnYpvBCwJivC9A3euSVNx9Zs1cq0fQEcV6PlPa8SsJwGgkf4
         a8La/SBwhy7FQNSw1d0mYy5pcrLy/brgWjOgTqy23moQ1Jk35CSUzHhVUwgY6EjKsqag
         Pqs1swTHtjb6M22vjQ8DuTflWz7KOalYz7rLSWX7TanHPbqJYyVLiRVUbZHwXcMTlh8/
         E+nZKf++UHT8C+14DDXbRVZNXr2bEAg0+qD+exAHhsNxUrZoP/aIbxSzkU12wzTt+tN5
         rnWg==
X-Gm-Message-State: AOJu0YwlAcMzwXrcCDjhDGQjK/Qknc5Lwm1FYXM80ziBx5nQkr4rh1C7
	1LREkulAbxHI7W7JAwqQ+vctlTaWJY50us4BVujrJw==
X-Google-Smtp-Source: AGHT+IG078aMdmbmisgdnRLiC9BHttQaRKTw1dmngc8Uzuyuor0vsPrA1eyS3c5KPIlT0ZUu4886PyAXYBHaW+v9aKM=
X-Received: by 2002:a25:8041:0:b0:dbc:ddf4:4b14 with SMTP id
 a1-20020a258041000000b00dbcddf44b14mr1157789ybn.50.1702537756642; Wed, 13 Dec
 2023 23:09:16 -0800 (PST)
MIME-Version: 1.0
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com> <20231214062847.2215542-3-quic_ipkumar@quicinc.com>
In-Reply-To: <20231214062847.2215542-3-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Dec 2023 09:09:05 +0200
Message-ID: <CAA8EJpr61JuznqfdMG96mjrqquf2Qbfe=potB5vzk43XexWj2w@mail.gmail.com>
Subject: Re: [PATCH 02/10] clk: qcom: ipq5332: Add separate clocks for PCIe
 and USB for Combo PHY
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, bhelgaas@google.com, 
	lpieralisi@kernel.org, kw@linux.com, vkoul@kernel.org, kishon@kernel.org, 
	mani@kernel.org, quic_nsekar@quicinc.com, quic_srichara@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_varada@quicinc.com, quic_devipriy@quicinc.com, quic_kathirav@quicinc.com, 
	quic_anusha@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_230918_032658_5FD100FD 
X-CRM114-Status: GOOD (  19.33  )
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

On Thu, 14 Dec 2023 at 08:29, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> Qualcomm IPQ5332 has a combo PHY for PCIe and USB. Either one of the
> interface (PCIe/USB) can use this combo PHY and the PHY drivers are
> different for PCIe and USB. Hence separate the PCIe and USB pipe clock
> source from DT, and individual driver node can be used as a clock source
> separately in the gcc. Add separate enum for PCIe and USB pipe clock and
> change the parent in corresponding structures.
>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>

Please use your full name for the git authorship and or the S-o-B
tags. This applies to the whole series.

Other than that:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/clk/qcom/gcc-ipq5332.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/clk/qcom/gcc-ipq5332.c b/drivers/clk/qcom/gcc-ipq5332.c
> index f98591148a97..aa0f616c3b1b 100644
> --- a/drivers/clk/qcom/gcc-ipq5332.c
> +++ b/drivers/clk/qcom/gcc-ipq5332.c
> @@ -25,7 +25,8 @@ enum {
>         DT_SLEEP_CLK,
>         DT_PCIE_2LANE_PHY_PIPE_CLK,
>         DT_PCIE_2LANE_PHY_PIPE_CLK_X1,
> -       DT_USB_PCIE_WRAPPER_PIPE_CLK,
> +       DT_PCIE_WRAPPER_PIPE_CLK,
> +       DT_USB_WRAPPER_PIPE_CLK,
>  };
>
>  enum {
> @@ -728,7 +729,7 @@ static struct clk_regmap_phy_mux gcc_pcie3x1_0_pipe_clk_src = {
>                 .hw.init = &(struct clk_init_data) {
>                         .name = "gcc_pcie3x1_0_pipe_clk_src",
>                         .parent_data = &(const struct clk_parent_data) {
> -                               .index = DT_USB_PCIE_WRAPPER_PIPE_CLK,
> +                               .index = DT_PCIE_WRAPPER_PIPE_CLK,
>                         },
>                         .num_parents = 1,
>                         .ops = &clk_regmap_phy_mux_ops,
> @@ -1072,7 +1073,7 @@ static struct clk_regmap_phy_mux gcc_usb0_pipe_clk_src = {
>                 .hw.init = &(struct clk_init_data) {
>                         .name = "gcc_usb0_pipe_clk_src",
>                         .parent_data = &(const struct clk_parent_data) {
> -                               .index = DT_USB_PCIE_WRAPPER_PIPE_CLK,
> +                               .index = DT_USB_WRAPPER_PIPE_CLK,
>                         },
>                         .num_parents = 1,
>                         .ops = &clk_regmap_phy_mux_ops,
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
