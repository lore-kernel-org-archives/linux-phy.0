Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 915A0C54735
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 11:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3V8PDuyf33CsFIMvf4iVr/IzsQtE0vQfgeQEgb+jgQ=; b=wKy73NL0LEEwHT
	9q35yfoAXoKpAo8GobEnbLLtG17InzhrkKkRUfjMRzjD8vkxUu2Oi/CSHECJ7IZkPpzfgb/YlUA0P
	WVOEe+IDet7O+TcaAAQBfb94uBi0h8mTQJ+x4p2bfrffvdWjdIU/aZVAYRTFsBhCHc0hBoytLv+AP
	mAskakK+RXWQswE0MnGdsWj0ZpT+BkFhfKqHeWfnk1S9wYb4cGL0UQhglU8bk/0hfWFos2F8CLwo1
	WnU0mLeGzuAeO8pcugvCRizhR0q+7MwGyWUjupnoLbEG3+6BDZQBqJ4Kr10/34lMzDJGKDpXr1mpc
	cCwgOuIRLd+Vmpn539GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siuep-0000000B5Ul-0qLs;
	Tue, 27 Aug 2024 11:46:43 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siucY-0000000B4sI-1htm
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 11:44:23 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-6cdae28014dso15622647b3.1
        for <linux-phy@lists.infradead.org>; Tue, 27 Aug 2024 04:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724759061; x=1725363861; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HbrPQE8jRD81MclT20thBdKrMQOQNi57XSGQvxTWTS4=;
        b=cbkkKHePvL1OYuHpBuFvPfbEPGle/xVZ1tZBtHIyCCl24X14CyqVstpU84bpmEezTb
         Qt5pR75uyoTBspi7BIUPGmlv5Ln+2wx0/ntQYJfLMdtRlAuh3+fJC6iH6ogv7ve2Vd54
         Oo4DsdsE/TWtE4gaQiTjyvPd5NhDu4eX2/XwEmXqC903narW06VRpopGjr/vRiMu2Lq2
         hwnMNrmVbrEhvS+USkksXigbRzdxU+rYdL7ctb8ZYaGWeh9r8aJa69d+hZbDoYRxz+H9
         jnsWAym6zKhk6CwFxiq1zpDuQigwmQS2Yijdk5DZAmONKQZXMe48GvtjYlTWuoKcAi6k
         2pjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724759061; x=1725363861;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HbrPQE8jRD81MclT20thBdKrMQOQNi57XSGQvxTWTS4=;
        b=efgdzmvflfvT2n+7X2FZjUFtOzLCTnDOqqg5T31HXbsgfN1eDIN2DYosJol7TmCWiU
         MQVH5XAtPVAzS+WtI3qdckxP3cn9yK9Wu+n3FY/ezE+aDD3nqqM3/CXKk9Q7F4EU9CAg
         r3V3OBqBjHNEzLHNlbNgo0R6YALlmt8UgJrPbpfC+wxnk0vSLLH8y2x/aISbJQT5uu/C
         o5CeVNlC1HalpQA3v6cvzgY/4JQIjpAQ78k0tqzLMNwEN8+0KP06xpDSpP2O46mrmNKI
         ZaM0e46qmIWZXEJYic8MSSAVWUqQPgvFRgGQWiFKhqayAxcoTEr54NImZ+Sk2KB6zz1R
         A2YA==
X-Forwarded-Encrypted: i=1; AJvYcCUHZitFOl2mYhD8fBHR2nkHHvGuiANCiVSkLEtIVQfFBJeL88/S1oRYUB2jj8Je1dfOb+/0Tl14wwA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyuS5R1oY6ON5qF1++3/uXKq4/qqlt/GnE3R/UH5Li4S9vJ2+W6
	Jmqrve7GF8ywPc3ubIat2nQnN4BZxcvaZPfQomBDmzlMB2hF33lxSRN6OpxBSQEkvKBHgfy4R0a
	c8NRPEYqfZF8tno8Jx8aRo+0iQ7X93iE+lxqRbA==
X-Google-Smtp-Source: AGHT+IEFbOl3EI7OwCA2RA3WFV/8KK9lP4+cyNXB+PQIqHygNosqXZpSCOmLNbYe18abw+wdIinxpT2b9VOQqGYfq/w=
X-Received: by 2002:a05:690c:6c09:b0:6ad:c9bd:3812 with SMTP id
 00721157ae682-6cfb3fde15cmr20895397b3.17.1724759060653; Tue, 27 Aug 2024
 04:44:20 -0700 (PDT)
MIME-Version: 1.0
References: <20240827063631.3932971-1-quic_qianyu@quicinc.com> <20240827063631.3932971-9-quic_qianyu@quicinc.com>
In-Reply-To: <20240827063631.3932971-9-quic_qianyu@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 27 Aug 2024 14:44:09 +0300
Message-ID: <CAA8EJpq5KergZ8czg4F=EYMLANoOeBsiSVoO-zAgfG0ezQrKCQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] PCI: qcom: Add support to PCIe slot power supplies
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com, 
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com, 
	quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_044422_474626_BCF67A59 
X-CRM114-Status: GOOD (  21.84  )
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

On Tue, 27 Aug 2024 at 09:36, Qiang Yu <quic_qianyu@quicinc.com> wrote:
>
> On platform x1e80100 QCP, PCIe3 is a standard x8 form factor. Hence, add
> support to use 3.3v, 3.3v aux and 12v regulators.

First of all, I don't see corresponding bindings change.

Second, these supplies power up the slot, not the host controller
itself. As such these supplies do not belong to the host controller
entry. Please consider using the pwrseq framework instead.

>
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 52 +++++++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 6f953e32d990..59fb415dfeeb 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -248,6 +248,8 @@ struct qcom_pcie_cfg {
>         bool no_l0s;
>  };
>
> +#define QCOM_PCIE_SLOT_MAX_SUPPLIES                    3
> +
>  struct qcom_pcie {
>         struct dw_pcie *pci;
>         void __iomem *parf;                     /* DT parf */
> @@ -260,6 +262,7 @@ struct qcom_pcie {
>         struct icc_path *icc_cpu;
>         const struct qcom_pcie_cfg *cfg;
>         struct dentry *debugfs;
> +       struct regulator_bulk_data slot_supplies[QCOM_PCIE_SLOT_MAX_SUPPLIES];
>         bool suspended;
>         bool use_pm_opp;
>  };
> @@ -1174,6 +1177,41 @@ static int qcom_pcie_link_up(struct dw_pcie *pci)
>         return !!(val & PCI_EXP_LNKSTA_DLLLA);
>  }
>
> +static int qcom_pcie_enable_slot_supplies(struct qcom_pcie *pcie)
> +{
> +       struct dw_pcie *pci = pcie->pci;
> +       int ret;
> +
> +       ret = regulator_bulk_enable(ARRAY_SIZE(pcie->slot_supplies),
> +                                   pcie->slot_supplies);
> +       if (ret < 0)
> +               dev_err(pci->dev, "Failed to enable slot regulators\n");
> +
> +       return ret;
> +}
> +
> +static void qcom_pcie_disable_slot_supplies(struct qcom_pcie *pcie)
> +{
> +       regulator_bulk_disable(ARRAY_SIZE(pcie->slot_supplies),
> +                              pcie->slot_supplies);
> +}
> +
> +static int qcom_pcie_get_slot_supplies(struct qcom_pcie *pcie)
> +{
> +       struct dw_pcie *pci = pcie->pci;
> +       int ret;
> +
> +       pcie->slot_supplies[0].supply = "vpcie12v";
> +       pcie->slot_supplies[1].supply = "vpcie3v3";
> +       pcie->slot_supplies[2].supply = "vpcie3v3aux";
> +       ret = devm_regulator_bulk_get(pci->dev, ARRAY_SIZE(pcie->slot_supplies),
> +                                     pcie->slot_supplies);
> +       if (ret < 0)
> +               dev_err(pci->dev, "Failed to get slot regulators\n");
> +
> +       return ret;
> +}
> +
>  static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>  {
>         struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> @@ -1182,10 +1220,14 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>
>         qcom_ep_reset_assert(pcie);
>
> -       ret = pcie->cfg->ops->init(pcie);
> +       ret = qcom_pcie_enable_slot_supplies(pcie);
>         if (ret)
>                 return ret;
>
> +       ret = pcie->cfg->ops->init(pcie);
> +       if (ret)
> +               goto err_disable_slot;
> +
>         ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
>         if (ret)
>                 goto err_deinit;
> @@ -1216,7 +1258,8 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>         phy_power_off(pcie->phy);
>  err_deinit:
>         pcie->cfg->ops->deinit(pcie);
> -
> +err_disable_slot:
> +       qcom_pcie_disable_slot_supplies(pcie);
>         return ret;
>  }
>
> @@ -1228,6 +1271,7 @@ static void qcom_pcie_host_deinit(struct dw_pcie_rp *pp)
>         qcom_ep_reset_assert(pcie);
>         phy_power_off(pcie->phy);
>         pcie->cfg->ops->deinit(pcie);
> +       qcom_pcie_disable_slot_supplies(pcie);
>  }
>
>  static void qcom_pcie_host_post_init(struct dw_pcie_rp *pp)
> @@ -1602,6 +1646,10 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>                         goto err_pm_runtime_put;
>         }
>
> +       ret = qcom_pcie_get_slot_supplies(pcie);
> +       if (ret)
> +               goto err_pm_runtime_put;
> +
>         ret = pcie->cfg->ops->get_resources(pcie);
>         if (ret)
>                 goto err_pm_runtime_put;
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
