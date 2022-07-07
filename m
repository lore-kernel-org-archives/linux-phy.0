Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58354C43334
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 07:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlGZE4kwA1KT7tToEmlyfr15sbB/LB259uln+CwSkug=; b=21x5OMyuajtISD
	eIz/fnzyLsN32MooxCUI3y5wCD4U5QzTRTNq1ZbfJWaSprhIsOP3rxs3Lc9gZkQHXpeY9ptAGxYnB
	gT0xjXzqmQ7eLMc7+4tQ7usScm/8VcDxU1AeNYRo/99HwsVD/7S4I6bUqYoRphkHnhXGSN1p+BzDh
	j46zNp3/7/aLTb6VBMNjqgj9rJ9d6ulJbM9y1O5LfeyD9ScHcMVp2Sa3N8BTGGpaX9ksJoUg/8z80
	LqmUhRXIO+xr8zFHOi+ZE4v+yq9qA9fSF6NPr7fVc54qU1kZPzg1/fCHoomjSSE2h5wy3uYaYv5Rz
	q0IJjUw6hUjdbEXZoLsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9M5w-00Ejf5-OW; Thu, 07 Jul 2022 07:38:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9M5t-00EjaH-OH
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 07:38:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5794261540;
	Thu,  7 Jul 2022 07:38:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2C07C3411E;
	Thu,  7 Jul 2022 07:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657179515;
	bh=dEH00sPee+QPLnv4vCT0+HRB/HiN2iqpU4CrPolA87A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pr3afQObb2yiXatw9whVzqKy3t1SWArA7c5qdephf6Eu2In0y9jjAc7uJkyHaTtRQ
	 RizEOEFsIZ8ZfYclMF/ClpnGUxwRm+FlHbZmOGit74tSA003KaUDCOvUAkd3O7XGi+
	 RsUVglrGvjxr/xQcv5WoRFoPH58lxw9lFfmKQ97XAb5XKWTooPHvbV6K9nE3Izel7v
	 RnY5El1xSJSDLX6wvLHo0J4wwvFkigGOqHNRrh7mGyxcsLjW7ODwbxoWtWeDX6wzIB
	 tFdHv3k1nKrVDxr3vbskQvBXU11LmmL1A9HeiVBPQxHPuuksR9/L7VlVtWl/b9RdLz
	 NIikfJJ7HAgvQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o9M5s-0004XB-V3; Thu, 07 Jul 2022 09:38:37 +0200
Date: Thu, 7 Jul 2022 09:38:36 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Stephen Boyd <swboyd@chromium.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom-qmp-ufs: provide symbol clocks
Message-ID: <YsaNfK64RGNp/ZvT@hovoldconsulting.com>
References: <20220620153956.1723269-1-dmitry.baryshkov@linaro.org>
 <20220620153956.1723269-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220620153956.1723269-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_003837_885723_BBF9262B 
X-CRM114-Status: GOOD (  20.09  )
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

On Mon, Jun 20, 2022 at 06:39:56PM +0300, Dmitry Baryshkov wrote:
> Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
> ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
> provider to let other devices link these clocks through the DT.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 55 +++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index a2526068232b..0f31d3255897 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1167,6 +1167,54 @@ static int qcom_qmp_phy_ufs_clk_init(struct device *dev, const struct qmp_phy_cf
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
> +	int ret;
> +
> +	clk_data = devm_kzalloc(qmp->dev, struct_size(clk_data, hws, UFS_SYMBOL_CLOCKS), GFP_KERNEL);

Missing error handling.

> +	clk_data->num = UFS_SYMBOL_CLOCKS;
> +
> +	hw = devm_clk_hw_register_fixed_rate(qmp->dev, "ufs_rx_symbol_0_clk_src",

Don't the clock names need to be globally unique and hence either come
from the devicetree or encode the device topology some other way?

We have two UFS PHYs on sc8280xp for example.

> +							   NULL, 0, 0);
> +	if (IS_ERR(hw))
> +		return PTR_ERR(hw);
> +
> +	clk_data->hws[0] = hw;
> +
> +	hw = devm_clk_hw_register_fixed_rate(qmp->dev, "ufs_rx_symbol_1_clk_src",
> +							   NULL, 0, 0);
> +	if (IS_ERR(hw))
> +		return PTR_ERR(hw);
> +
> +	clk_data->hws[1] = hw;
> +
> +	hw = devm_clk_hw_register_fixed_rate(qmp->dev, "ufs_tx_symbol_0_clk_src",
> +							   NULL, 0, 0);
> +	if (IS_ERR(hw))
> +		return PTR_ERR(hw);
> +
> +	clk_data->hws[2] = hw;
> +
> +	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_data);
> +	if (ret)
> +		return ret;
> +
> +        /*
> +         * Roll a devm action because the clock provider is the child node, but
> +         * the child node is not actually a device.
> +         */
> +        return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
> +}

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
