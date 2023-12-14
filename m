Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80828C4167B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 07:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FaUHZHEzl15zgVfyVTJPzUGMz12RjAueMzmZkMB6/M=; b=3QqgASgawKwdGm
	MNCrFZxuMAu+PrRmkEUJmk6padfIuAnL9TOOVwtfra9ZqoC896kMP+knB2lH9ig3SeATZS1X28gpq
	aZfeWwxG/ZAABSew8BMrGH3zP9JhID8o3TabEngXpD6cXpp59o7DTN4F4sdYm49CwfCrWpTCPzX50
	us4AfjInrO15LTpTdUkFmRpOUjDgqjHJGi2PvXMjMWFF+vWZ0QaEqPloI6Awt7KPn3u/TbR+ilx8D
	uqfBFGwN+TBH4iTr/nx+QRfGq+PZnjnQ+8pOFA+/GZEMpmycU7GbFVWnbUBrShUFnDjF3jGfw6k5N
	mT/2OXX7p9o21z+Q4Bpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDftu-00H4GU-0s;
	Thu, 14 Dec 2023 07:12:54 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfts-00H4G9-0W
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 07:12:53 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5b383b4184fso70583627b3.1
        for <linux-phy@lists.infradead.org>; Wed, 13 Dec 2023 23:12:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702537970; x=1703142770; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=93QX/jgZBqRf6fwN+rr8BYXawe/tGzkWINFxkuFYXG4=;
        b=t8pxq/9msUd/E7FGB1V9r9bBxYonsB3Z11YKAqAF5efSOAfCcLeK92KGdpAhbxK/Df
         aSzpbOVhRJ/qwAVbF4egQr3MosrWajqSR4Kjf69g3xwWsvSrAzJWlzm+I3uL+WfqeoTx
         FHtKMYBkF8Dth1h9L38zNyRAGW8hO0XPdsGZH0MgwD4TCvBuFO59Bm3wdJRy7PI8UtZp
         EXIT/LufqgjVBpkeNBlXjj5IRFlUsqwHgMj0s32FzTjCvl29xXYgpGMNoTfumfGg+/5X
         B5nkvv8is0i+X5rgxSzL2UCToNyUBPHgQK9HejVXF/Tz0CX1idhXFuZTCrZqb1ffgpiq
         1n3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702537970; x=1703142770;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=93QX/jgZBqRf6fwN+rr8BYXawe/tGzkWINFxkuFYXG4=;
        b=rxOEadY2Su1yXr5IloNKixUz8oXZg8rG4PMBoTwZwQGv2fjvc2It1nqtNJUvtSPzSh
         MDKDktbRBf6hYKaiq4+aKGppFKWosyPpCggcvNMdYZ7xF0vSD5H+uKnHHqsT6ZPqEF+p
         Ff0rvuRct1KaFg5ki1EWjv8bE8Ez+dc1xIZl5PZc1OQEHweW3l04NOPbketHEkp/2Dtf
         xS0MHlAvND0vI0dMsYCF/3noQnOy4vcq5h52iLHu+tGLUloOvyS7HRycoU3FIggFIqBO
         PQ5gAsojZmKw3/3x5pwEaZzE8i0uMzIJDqMvwQJmttcg2O8XFInUpqBC0RQ2JA5P0Pre
         1Paw==
X-Gm-Message-State: AOJu0Yz6txBuf6tVYgAmlXVujWiIfq2DgUnyFOutLOVJnjnirn1dVDW5
	+vyoRrRDCrtcdIO+e0UpS6W2STXgrN5FycS9ukHH4A==
X-Google-Smtp-Source: AGHT+IGhCYJ6oqVzy6LbBhSToBcgh/7Ie6zjhhlYJRcHkOc+QFWGJAo1D/JpyUKQrMnIvCrzM0Nb9dc+JGLDE73Mp5g=
X-Received: by 2002:a81:49c8:0:b0:5de:93b6:7045 with SMTP id
 w191-20020a8149c8000000b005de93b67045mr8139176ywa.39.1702537970292; Wed, 13
 Dec 2023 23:12:50 -0800 (PST)
MIME-Version: 1.0
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com> <20231214062847.2215542-5-quic_ipkumar@quicinc.com>
In-Reply-To: <20231214062847.2215542-5-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 14 Dec 2023 09:12:39 +0200
Message-ID: <CAA8EJppV1UnC_Howfn1_4Ox-jftrRRF63QesFzqCSX+tC4c6FQ@mail.gmail.com>
Subject: Re: [PATCH 04/10] phy: qcom: Add support for Pipe clock rate from
 device data
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
X-CRM114-CacheID: sfid-20231213_231252_198267_F57AA90E 
X-CRM114-Status: GOOD (  18.06  )
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
> Qualcomm IPQ5332 has the same PCIe UNIPHY PHY with different pipe
> clock rate. Add support to define the pipe clock rate in device
> data.
>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>

With the name fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
> This patch depends on the below series which adds PCIe support in
> Qualcomm IPQ5018
> https://lore.kernel.org/all/20231003120846.28626-1-quic_nsekar@quicinc.com/
>
>  drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> index 5ef6ae7276cf..9f9a03faf6fa 100644
> --- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> @@ -54,6 +54,7 @@ struct uniphy_pcie_data {
>         unsigned int phy_type;
>         const struct uniphy_regs *init_seq;
>         unsigned int init_seq_num;
> +       unsigned int pipe_clk_rate;
>  };
>
>  struct qcom_uniphy_pcie {
> @@ -117,6 +118,7 @@ static const struct uniphy_pcie_data ipq5018_2x2_data = {
>         .phy_type       = PHY_TYPE_PCIE_GEN2,
>         .init_seq       = ipq5018_regs,
>         .init_seq_num   = ARRAY_SIZE(ipq5018_regs),
> +       .pipe_clk_rate  = 125000000,
>  };
>
>  static void qcom_uniphy_pcie_init(struct qcom_uniphy_pcie *phy)
> @@ -232,6 +234,7 @@ static int qcom_uniphy_pcie_get_resources(struct platform_device *pdev,
>  static int phy_pipe_clk_register(struct qcom_uniphy_pcie  *phy,
>                                  struct device_node *np)
>  {
> +       const struct uniphy_pcie_data *data = phy->data;
>         struct clk_fixed_rate *fixed;
>         struct clk_init_data init = { };
>         int ret;
> @@ -247,7 +250,7 @@ static int phy_pipe_clk_register(struct qcom_uniphy_pcie  *phy,
>                 return -ENOMEM;
>
>         init.ops = &clk_fixed_rate_ops;
> -       fixed->fixed_rate = 125000000;
> +       fixed->fixed_rate = data->pipe_clk_rate;
>         fixed->hw.init = &init;
>
>         ret = devm_clk_hw_register(phy->dev, &fixed->hw);
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
