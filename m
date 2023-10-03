Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AF66E7AD6E
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 15:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwfEKdK6jKx7WPbejhYPlzpXpAkR817+vQNERZb6LDU=; b=NYX8GchBp8UFAe
	5UUUlAs0qkB+nWMe04DsG010UgKJqK2DnzR/8vtdn+3udT9jMzpewm/0DsyzQ0u/7bpbo3qh1yBcr
	4pzqrKN55iY7GJhJ7e4qeiHTjzIBRpzhcVI31TSgoQc6K58bPOvnAd3jwzlDtFP+7O7L4doQtdIjs
	pVbxdtLpjld3iwu2lqejQM0VfEgnpov3igt05Jzp16gIh5Veed4yfWxe5SjTgtTNZeRZ9MdND3iD9
	h/Ly6iSdHxV5ON0ANoALlv9E/4b+LmoriifIbUb7cbnzbscPkmgCVT/9QcVc8eyf/niMo/4ROLoaL
	Xhi1qz7dL6fTy6VoS1RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnhBu-00EreU-2d;
	Tue, 03 Oct 2023 15:20:06 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnhBr-00Ercv-1m
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 15:20:05 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-d9151fc5903so1117931276.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Oct 2023 08:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696346401; x=1696951201; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J9n7qJH5dKjKjDWMds6U5WZJV1JGy3FQs/DoOpcjJEw=;
        b=q2OtxWlS1yxW577ny8bmZ21sIiKK7Mkdj0W6yI12/WedfuNH7x8oFJTOwvgG22+04+
         xC4aq9JdTgabtby+mnKbtxTx3IFE4PvUx/AxOfbvSGpMoccT2gf6I54aRTSoE4kXIzA/
         ZvRC966YQpbjhcfSL5lDQ/wliIE5v2VYSjtIzI3+v1Xbm7Er7c8a2byQSkSxi3CoD59q
         KgekCv/kDKZx7ov2HsX4UeO6bK6D5Ejatn7ERpFrghm+j8E4d6cdOyo+kHMrKmREec5H
         +qVtb7+IdPq/HWkeiWLNiyRDVHJtWjUptvAwlTsFQF2rnn/so9VSByPmt2ori6+X2FWQ
         fI8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696346401; x=1696951201;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J9n7qJH5dKjKjDWMds6U5WZJV1JGy3FQs/DoOpcjJEw=;
        b=OFS1eOrql8lV8FzjQ9prNDx0ljm12eb6U+2EsTbPcWNNLmwUB3Q+k0dC8nB5FBf91Q
         1sa0w9X61+S6OsXdyG5nON55AiOcoDhP4RkUIKuu5wMr8wmAYyVqhHmMSSlO4AH6MuMh
         +JgjkYv9kEdN5G55nztAfEGmqqsNf5Q3aMmesAI4ZWQw5hIfH+3I/q7BH8U18CkoZt14
         745JHus0u32ZQHoqpqEuL1E3JwcQm9MTx24cfuq7c+wHX/eBOxQSRb0JNTgZzXcpK1+q
         wytGbWwX1sYENIkuTaHKw8EWc/wO3LK7PUQUNn0J7bWdsmzgIZhAAbEAUU7GbNOkN0h5
         efPQ==
X-Gm-Message-State: AOJu0Yyqxcl2GxaCvv22qZIu7upwNueX4toY82VBA6CXmOROMHvrN5gS
	IdIwpaD5s05ndZUuXMJS7J9slZ2fIqcZ98AXsJ0ZgA==
X-Google-Smtp-Source: AGHT+IHylk+ABoXP1gkWE01a+0EpIeQSeiPnSh4yQB5nw6TcBeX1Cvei99wpL6PTinUs/7vO4T3ns4RM4Rw5j2VOiwE=
X-Received: by 2002:a25:86cf:0:b0:d62:9b77:a41a with SMTP id
 y15-20020a2586cf000000b00d629b77a41amr13626504ybm.31.1696346401567; Tue, 03
 Oct 2023 08:20:01 -0700 (PDT)
MIME-Version: 1.0
References: <20231003120846.28626-1-quic_nsekar@quicinc.com> <20231003120846.28626-5-quic_nsekar@quicinc.com>
In-Reply-To: <20231003120846.28626-5-quic_nsekar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 3 Oct 2023 18:19:50 +0300
Message-ID: <CAA8EJpqbBRGEQ7ZFsngwivkovycOt97SU1Pge7JEHhCs+aQe=Q@mail.gmail.com>
Subject: Re: [PATCH 4/6] PCI: qcom: Add support for IPQ5018
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org, bhelgaas@google.com, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, mani@kernel.org, p.zabel@pengutronix.de, 
	quic_srichara@quicinc.com, quic_varada@quicinc.com, quic_ipkumar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, Anusha Rao <quic_anusha@quicinc.com>, 
	Devi Priya <quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_082003_597624_A023C940 
X-CRM114-Status: GOOD (  19.71  )
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

On Tue, 3 Oct 2023 at 15:10, Nitheesh Sekar <quic_nsekar@quicinc.com> wrote:
>
> Added a new compatible 'qcom,pcie-ipq5018' and modified
> get_resources of 'ops 2_9_0' to get the clocks from the
> device-tree.
>
> Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> Co-developed-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 22 ++++++++--------------
>  1 file changed, 8 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index e2f29404c84e..bb0717190920 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -197,10 +197,10 @@ struct qcom_pcie_resources_2_7_0 {
>         struct reset_control *rst;
>  };
>
> -#define QCOM_PCIE_2_9_0_MAX_CLOCKS             5
>  struct qcom_pcie_resources_2_9_0 {
> -       struct clk_bulk_data clks[QCOM_PCIE_2_9_0_MAX_CLOCKS];
> +       struct clk_bulk_data *clks;
>         struct reset_control *rst;
> +       int num_clks;
>  };
>
>  union qcom_pcie_resources {
> @@ -1048,17 +1048,10 @@ static int qcom_pcie_get_resources_2_9_0(struct qcom_pcie *pcie)
>         struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
>         struct dw_pcie *pci = pcie->pci;
>         struct device *dev = pci->dev;
> -       int ret;
>
> -       res->clks[0].id = "iface";
> -       res->clks[1].id = "axi_m";
> -       res->clks[2].id = "axi_s";
> -       res->clks[3].id = "axi_bridge";
> -       res->clks[4].id = "rchng";
> -
> -       ret = devm_clk_bulk_get(dev, ARRAY_SIZE(res->clks), res->clks);

Changing this to devm_clk_bulk_get_optional would be easier and will
follow the design of the driver.

> -       if (ret < 0)
> -               return ret;
> +       res->num_clks = devm_clk_bulk_get_all(dev, &res->clks);
> +       if (res->num_clks < 0)
> +               return res->num_clks;
>
>         res->rst = devm_reset_control_array_get_exclusive(dev);
>         if (IS_ERR(res->rst))
> @@ -1071,7 +1064,7 @@ static void qcom_pcie_deinit_2_9_0(struct qcom_pcie *pcie)
>  {
>         struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
>
> -       clk_bulk_disable_unprepare(ARRAY_SIZE(res->clks), res->clks);
> +       clk_bulk_disable_unprepare(res->num_clks, res->clks);
>  }
>
>  static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
> @@ -1100,7 +1093,7 @@ static int qcom_pcie_init_2_9_0(struct qcom_pcie *pcie)
>
>         usleep_range(2000, 2500);
>
> -       return clk_bulk_prepare_enable(ARRAY_SIZE(res->clks), res->clks);
> +       return clk_bulk_prepare_enable(res->num_clks, res->clks);
>  }
>
>  static int qcom_pcie_post_init_2_9_0(struct qcom_pcie *pcie)
> @@ -1605,6 +1598,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>         { .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
>         { .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
>         { .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },
> +       { .compatible = "qcom,pcie-ipq5018", .data = &cfg_2_9_0 },
>         { .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },
>         { .compatible = "qcom,pcie-ipq8064", .data = &cfg_2_1_0 },
>         { .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
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
