Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E367ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWGR8v1050bbj8rk4hn2U+QBFGLculHnCRyizq+rnh0=; b=AiKGMketp8D2PF
	xTzeIbHQvTp1pUX4ZAcam72JcjGHjvs0/kRIDdJRdICURRQDO2PxLSGAIKP6XR0GI6bGvk1lt7EVs
	D3IxPgSEWs7Npa6ioxy9LsBKDnZSsLTi3Ba3dHagHHG/Q2snEcnIZlLXiP4H9XNAYez8nbug1VJaP
	/YVvUCStTwcLUCoAwA6ZyutmHe1QwKcCSDjKcDHGTRlGmb+ksNwB8C/j/LNXivxd2g/RYQOcsN1El
	YKB7PXc4LlyoHURIgJoMGYgjPp7NuEH6vgzJoup/DgySY9x7ezkja71tHTpjR8sOTx/nCzDwAnPZf
	co5iy/6C1TzdxHywJE1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPbJ-00HPLC-Ls; Fri, 28 Oct 2022 13:40:45 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPbG-00HPJx-FF
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:40:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 60709B82A33;
	Fri, 28 Oct 2022 13:40:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B2F0C433D7;
	Fri, 28 Oct 2022 13:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964439;
	bh=1TTp4oQ239VWKrke6o3KSy2K4p1TTVxw2l1hI12pgJE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S4dRs7vPhZye7M91ex4c8eepK1DtzbEe+ZYLI9FJ6Cr6IZV6Ofol09dgk8NrGSuzf
	 wOoyzRS5a2x2GlFsPJuGAm5SVdBwl7a4U9zYHbbY/laznVpNUJgVyUCM4GG1QB5N6n
	 hGErxEgcfo3d6JpaeWf0URdW1xPAuEyFRpmn22Nw5OBlLEr5eWFd4hTejLTJce4WJz
	 5pfKleBf+5ptLY9WjacWoqhXzCDzl4aB+ZBTFYWUosbzYtxNDXT6vD7+oEWP38KQRE
	 9U8L74sOwwuTw2eg33K7FfMrxnQ7h3zZ1HVkUfamtteEtOl1Z3QAahBV0topdLg72V
	 OqGxOBqgPyK9g==
Date: Fri, 28 Oct 2022 08:40:36 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v5] phy: qcom-qmp-ufs: provide symbol clocks
Message-ID: <20221028134036.s3sunt7loa2gcq6s@baldur>
References: <20221028125148.264833-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221028125148.264833-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_064042_828521_28EE1509 
X-CRM114-Status: GOOD (  22.73  )
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

On Fri, Oct 28, 2022 at 03:51:48PM +0300, Dmitry Baryshkov wrote:
> Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
> ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
> provider to let other devices link these clocks through the DT.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> 
> Changes since v4:
> - Rebased, dropping merged clk patches
> - Fix whitespace errors
> - Add linebreaks to fit into 100 chars limit
> 
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 61 +++++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index e28c45ab74ea..f60e29c68c26 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1067,6 +1067,60 @@ static int qmp_ufs_clk_init(struct device *dev, const struct qmp_phy_cfg *cfg)
>  	return devm_clk_bulk_get(dev, num, qmp->clks);
>  }
>  
> +static void phy_clk_release_provider(void *res)
> +{
> +	of_clk_del_provider(res);
> +}
> +
> +#define UFS_SYMBOL_CLOCKS 3
> +
> +static int phy_symbols_clk_register(struct qcom_qmp *qmp, struct device_node *np)
> +{
> +	struct clk_hw_onecell_data *clk_data;
> +	struct clk_hw *hw;
> +	char name[64];
> +	int ret;
> +
> +	clk_data = devm_kzalloc(qmp->dev,
> +				struct_size(clk_data, hws, UFS_SYMBOL_CLOCKS),
> +				GFP_KERNEL);
> +	if (!clk_data)
> +		return -ENOMEM;
> +
> +	clk_data->num = UFS_SYMBOL_CLOCKS;
> +
> +	snprintf(name, sizeof(name), "%s::rx_symbol_0", dev_name(qmp->dev));
> +	hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);

Wouldn't it be desirable to provide a non-zero frequency for these
clocks?

Regards,
Bjorn

> +	if (IS_ERR(hw))
> +		return PTR_ERR(hw);
> +
> +	clk_data->hws[0] = hw;
> +
> +	snprintf(name, sizeof(name), "%s::rx_symbol_1", dev_name(qmp->dev));
> +	hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);
> +	if (IS_ERR(hw))
> +		return PTR_ERR(hw);
> +
> +	clk_data->hws[1] = hw;
> +
> +	snprintf(name, sizeof(name), "%s::tx_symbol_0", dev_name(qmp->dev));
> +	hw = devm_clk_hw_register_fixed_rate(qmp->dev, name, NULL, 0, 0);
> +	if (IS_ERR(hw))
> +		return PTR_ERR(hw);
> +
> +	clk_data->hws[2] = hw;
> +
> +	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * Roll a devm action because the clock provider is the child node, but
> +	 * the child node is not actually a device.
> +	 */
> +	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
> +}
> +
>  static const struct phy_ops qcom_qmp_ufs_ops = {
>  	.power_on	= qmp_ufs_enable,
>  	.power_off	= qmp_ufs_disable,
> @@ -1232,6 +1286,13 @@ static int qmp_ufs_probe(struct platform_device *pdev)
>  			goto err_node_put;
>  		}
>  
> +		ret = phy_symbols_clk_register(qmp, child);
> +		if (ret) {
> +			dev_err(dev, "failed to create symbol clocks, %d\n",
> +				ret);
> +			goto err_node_put;
> +		}
> +
>  		id++;
>  	}
>  
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
