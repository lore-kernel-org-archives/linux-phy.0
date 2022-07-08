Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C2C9C43334
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 13:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eO6Yk4OOk+9EXPZXUkc6E4ZjRVawgvRjs9XcgfEIO20=; b=LrTQYP8Pejx2zx
	AVS/4nnK99bBqw/HVWpI1hO3SQmeMuAWXDBZBmRWVAd51/bNG9+w5XhN42qCLDgrjt/GRjr5z0jnl
	UB+pj7dw3fQmClCZ8SWlQpmYJX9PNq0vFp9ktJYSePxQWH81kDvO9Gqg/O64oL3XepKIrOWBojZ50
	/SDBhMwWkU67alPXTjpQegGgN1coi8/Me1E52JfOu3GRCo/aBaQdHGDNi1sOTZww4DzfUBD3RfYvm
	NVltUTs7FGC0HZtJMFDl5j2i+Fku/XbZA9L/yYECA8Jm9vR1P4mwEwdTPxOzOo3J9zuv4MxsWGcer
	Eq/R5sw71o+2BUQ5uOSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9nsH-003tHZ-CK; Fri, 08 Jul 2022 13:18:25 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9nsE-003tGK-Uc
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 13:18:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D5078B827E7;
	Fri,  8 Jul 2022 13:18:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 929ADC341C0;
	Fri,  8 Jul 2022 13:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657286297;
	bh=LFNYBD49AwA/Cv/jTTpxa7Y0w3Pr54JyGI0tMbAHhIU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sZbYpQNed89IdBLutAcpl80Qev+MeZE87xu9Joqmi+MPv0iHMiNk4gkATCSO4W3Pd
	 eGWbgwu1CiJ0t3ZauzZhg093YFr/32OzADaFiIPtnsM5t+3EirejZzj8f0chrRyeug
	 p0DPghwreutxvXQLk5dorXSgL+SCa8be5x0pC7JvhmZZYpEUbm1bJJko2WbVn54Zrr
	 DHjvlkNCJWlouCvWQnPkHr0Spm1pgnb8tilCBVmBF70Xgci7nrYKSXT+wEabUPHvHo
	 A9ClTHXE56ojDO3c8z/+wzwJM8OxuvD5+7Zqw2oZAl4pS5dnyirx0V6Hm/TwCCpqE+
	 FLtZfsL9v0gfw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o9nsC-0001Ui-Pj; Fri, 08 Jul 2022 15:18:20 +0200
Date: Fri, 8 Jul 2022 15:18:20 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Taniya Das <quic_tdas@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 3/3] phy: qcom-qmp-ufs: provide symbol clocks
Message-ID: <YsgunOdx6D5HVNzY@hovoldconsulting.com>
References: <20220708131333.2836900-1-dmitry.baryshkov@linaro.org>
 <20220708131333.2836900-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220708131333.2836900-4-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_061823_170522_DB8C7D5A 
X-CRM114-Status: GOOD (  11.72  )
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

On Fri, Jul 08, 2022 at 04:13:33PM +0300, Dmitry Baryshkov wrote:
> Register three UFS symbol clocks (ufs_rx_symbol_0_clk_src,
> ufs_rx_symbol_1_clk_src ufs_tx_symbol_0_clk_src). Register OF clock
> provider to let other devices link these clocks through the DT.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 56 +++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> +static int phy_symbols_clk_register(struct qcom_qmp *qmp, struct device_node *np)
> +{
> +	struct clk_hw_onecell_data *clk_data;
> +	struct clk_hw *hw;
> +	char name[64];
> +	int ret;
> +
> +	clk_data = devm_kzalloc(qmp->dev, struct_size(clk_data, hws, UFS_SYMBOL_CLOCKS), GFP_KERNEL);

Error handling still missing.

> +	clk_data->num = UFS_SYMBOL_CLOCKS;

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
