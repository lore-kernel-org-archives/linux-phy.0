Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02AB4C83F01
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 12:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cE/79zImPO0OTSFG8nzdwWFOAgs9u6c9wGyhG+kmmS8=; b=JGEvyRWDFU0yqZ
	fVO64Fo0vwJlHR8++ZeoSYCuBBJkMzfPzIA/GTaZ9qwjHSI4d6PNP/ZOXUne0t6O4sLhD3971WojT
	aZd4G+Bt2mJpor7rWNrqxeW9/GYT4nN/Pt3NGjK/8UWyISmgwftFYBVHD4KIjZK693GvjQZqQ6KI2
	o8TBCzOGNo2tG1vCr69GFix+nZ93g3KddnHEYcesfeoAHmTyj98F6bLFqzXGdoUOyNrABZyuQSU/1
	4Ywyo6djzri0gLG79FgTSOoaJa5pwwuUg5WuixY3yzGgtuTC2SO/32tRyC0lnPclOfJy+DOPCQq2J
	1f2Uc4ujof+CDbKaEerQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbggU-00FGx3-1p;
	Thu, 31 Aug 2023 12:22:02 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbggS-00FGvy-1e
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 12:22:02 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-ccc462deca6so514207276.0
        for <linux-phy@lists.infradead.org>; Thu, 31 Aug 2023 05:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693484514; x=1694089314; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Bwx8x4YtYezNUMgi8q+uTUrpHBYEE2Cu4KRHN4N06co=;
        b=X36/II6fq7gnlRiK7LL7TdYHyK86wQblC4lV6GAzz3EO8OZB5Q1HlZhVk16oMz9ebe
         RI4eyM3K82HHhIozr9EbdpPQ74hbyF6IC5YQgBObr0b3swjwawKfaPI5v1mKHcVNbJ5q
         kOvvIZpA8LVJptH93rLFX4ntvFDL/tz/+7Wua5koGXmzIZndHrt/4sSmh9C8bcqZXeNm
         I1DJbVIpGE5B5uXsZOxWebqmfZdjH/Oh9nADkwajcXumjvCq+kr34Blu4IlHE/HYMh2H
         xGpouzUzZFLklGEDR6SJDUViD+SHoOjMQ6ek36NQ0OawFHdijjegKNjBkXhBc9M6fyin
         MERQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693484514; x=1694089314;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bwx8x4YtYezNUMgi8q+uTUrpHBYEE2Cu4KRHN4N06co=;
        b=eI7P7ixctEYwuE9E/bmWem4clU0f88OYNrVyXh1IYiPn0HmEuS/04RJoetYgq10JiW
         8uVigcbK2Hg8Y/Z3qN8xD6wNwuyDikQkVKUuQyAoWHLY4pt5bxLx9iR9uI82SpcvUiBY
         XhWWhJ+YBpPvRWUMx/4lWb68Hu4cwlDLpeaPMKWvKarWbUTRnKdCFZH9Ww50ZaKv0pBm
         gYWSgRTtuzhNjNdClKca7xayKLpzEpPgmQebvSg7IirqhJBnCQ64btAXlupYeL4uTPa4
         EeSB9fGOzDEKICV/EoOxSWXbXw+2YmWy9FZiEjCa03szprRQxyAiHpqXFU0bkonHEgIv
         Ni9Q==
X-Gm-Message-State: AOJu0Yy/45dTVHF9BsZXLeKdPMM7Zu1PlUVj0MUog7blBEZHaKwmiWhU
	K7qdrZAONnLfEx533a/vr7S92GKD1hYEkXn61oYHUg==
X-Google-Smtp-Source: AGHT+IEo8NkEEu0Mba1RWLUMRB4w7afRpOH0sbqEazlACaU2jB+LyYPESyYrSiL6PqveSzE4onlwPh0ZMuVpwsJCsf0=
X-Received: by 2002:a25:dbd2:0:b0:d7b:a834:3b2c with SMTP id
 g201-20020a25dbd2000000b00d7ba8343b2cmr4698974ybf.1.1693484514213; Thu, 31
 Aug 2023 05:21:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-9-quic_ipkumar@quicinc.com> <CAA8EJpqraO6UXBs=aPpWNuhEPjdcQ01FyV_Np1KtuJtEkJE0Hg@mail.gmail.com>
 <2ff8ef8e-c7d8-4a02-a764-ef2a3f83e87c@quicinc.com>
In-Reply-To: <2ff8ef8e-c7d8-4a02-a764-ef2a3f83e87c@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 31 Aug 2023 15:21:43 +0300
Message-ID: <CAA8EJpoFYeHFJ5SDaJJYUO09JO31dv8fnsG8207ginpe6mQ0ag@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20230831_052200_550598_9C3B08D7 
X-CRM114-Status: GOOD (  27.51  )
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

On Thu, 31 Aug 2023 at 15:13, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
>
> On 8/29/2023 8:15 PM, Dmitry Baryshkov wrote:
>
> On Tue, 29 Aug 2023 at 17:00, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> This patch adds ipq5332 USB SS UNIPHY support.
>
> First, please read to Documentation/process/submitting-patches.rst,
> then rewrite the commit message.
>
> Next, I tend to say that this driver doesn't have a lot in common with
> the ipq4019 driver you have modified. Please consider adding new
> driver for ipq5332, then we can see whether it makes sense to fold
> ipq4019 to use new infrastructure.
>
> Sure, will add new driver for IPQ5332 USB3 PHY. Thanks a lot for the review.

No HTML mail please. Ever. And use proper quotation. Thank you.

>
> --
> Thanks,
> Praveenkumar
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
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
