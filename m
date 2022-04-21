Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D40EC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 21 Apr 2022 11:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHmzpaQubUjauxAMabJwDWC/prrxZgQ+xIpjv/qJ9Dw=; b=Ze35cShi7+lhHY
	NrYm/w7QByAO2ZmFfopMqTDNALE/qgIAt4eM/P2aUSTrEfQzX4RxjvcvcEWZdMF5o2WOuo13htnaZ
	EsANvzW2/GN+/aafD7L4ZTiobyo8y9O9i2EhBZakI9ZbS1bTkjjFe5tfex9HDW83ob7cBf5abP3dx
	jLEXgk3q6ViIauuC2DhvWymBeQI3K0hj9wfD/zJUDfqhVlbk3CYHVjFseiUo/5S+cKO52wrFzym0e
	rRpW6vRjpgQqJjvmP8ZQ2WS0jUTVFgEZ9wsQBcFaRHqedL1R6rUtuGmIGnLObLE8OnYughn77q4v3
	ocWIif/8U2iEt+OPci/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhV6d-00DDA0-KO; Thu, 21 Apr 2022 11:36:15 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhV6a-00DD8f-HI
 for linux-phy@lists.infradead.org; Thu, 21 Apr 2022 11:36:14 +0000
Received: by mail-lf1-x12d.google.com with SMTP id y32so8174577lfa.6
 for <linux-phy@lists.infradead.org>; Thu, 21 Apr 2022 04:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=nhxnVej2CIUMLhdNzrsZoPwHkHCS1xzrTTmqvH/njl8=;
 b=JlgcvbzqGUzAWxfa2H0VDGBAue1ylSoHDEeaowQLuS7QB3U10bKI92k3Pnhi1se7Ud
 wpwpruPBzEMnxiE7eHnnKLc66ErVKGoZvKUyfHQ2vPJhU1DGoELOMXZmjnpVGu6K6jkr
 eQvTqyvE30q2iQHVz9GJyPhs2GKEs38GL4BSLyh8P1Pl+q+2RW3pOHYHHh1Ll4mPBsMD
 aBq8q69v28bV2iMJXb3jOCDDkM6LwDUWlwjZ8a7i0MJHAgnsylmaKSI4jTWoq7NPFlb+
 XNHQvFIl7FDBe/E6Z+H7VyGrw9afFBEfOGHZTU/IqrWwNR3zv0NhSPTjHMe1czKyWxds
 Jynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=nhxnVej2CIUMLhdNzrsZoPwHkHCS1xzrTTmqvH/njl8=;
 b=tXwnfj6nABP2TgkfK3JuEyY86sq3s9PP5A0QgjcR7e7JyXqcR2KqvQ/mxuIOhQQYfw
 gHQRcEzmoYVlG6qmtp1Vv2S6idrhx4r2wr+j6hOa3OsaNcyBNdaIwBOlaCZrbhV/94hD
 mAZATRVm+gkseMC0o+xYjpFujBhe7p59Zx1wgTe8caQfoTwhtwI+UY06BwXG0t3LTvKz
 VYfjEn55v1jOKlvVOjbs47TFsJ3rF+nl6TET90BXdwDBLcbYNB6Sx0e2uAFjHbVwSt1l
 WiC+9rahmnVkelMxbVR4hHGEJYW8QSL/+VU1WJvAaQ16oks/xI5RCBnHPLGTwLYdQKIW
 5fDg==
X-Gm-Message-State: AOAM533kdvEq/D1iZcQKqM6WWfoyPyfaYFaW3R/HYI2a+8USz7IpJABM
 wzZsZgZesa426Rf+P4RFSg/eDg==
X-Google-Smtp-Source: ABdhPJzUhkWLfAN2qyBuzif4rSkuHafqFixxn6fwtjaFjUpPSgYzT8HvoUwrlPrV9m9YTT0Id8YCBA==
X-Received: by 2002:ac2:5339:0:b0:46b:c20a:b5f9 with SMTP id
 f25-20020ac25339000000b0046bc20ab5f9mr17943098lfh.105.1650540968641; 
 Thu, 21 Apr 2022 04:36:08 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 h6-20020a2e5306000000b00247e893075asm2007916ljb.37.2022.04.21.04.36.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Apr 2022 04:36:08 -0700 (PDT)
Message-ID: <f4cfc1b3-2a85-f948-ff2c-27588cbe2210@linaro.org>
Date: Thu, 21 Apr 2022 14:36:05 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH RFC 1/5] phy: qcom-qmp: add support for pipe clock muxing
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Stanimir Varbanov <svarbanov@mm-sol.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220421102041.17345-1-johan+linaro@kernel.org>
 <20220421102041.17345-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220421102041.17345-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_043612_630728_D517E8A1 
X-CRM114-Status: GOOD (  27.28  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 21/04/2022 13:20, Johan Hovold wrote:
> Some QMP PHYs need to remux to their pipe clock input to the pipe clock
> output generated by the PHY before powering on the PHY and restore the
> default source during power down.
> 
> Add support for an optional pipe clock mux which will be reparented to
> the generated pipe clock before powering on the PHY and restored to the
> default reference source on power off.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp.c | 71 ++++++++++++++++++++++++++---
>   1 file changed, 65 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index 7d2d1ab061f7..bc6db9670291 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -3292,6 +3292,8 @@ struct qmp_phy_combo_cfg {
>    * @rx2: iomapped memory space for second lane's rx (in dual lane PHYs)
>    * @pcs_misc: iomapped memory space for lane's pcs_misc
>    * @pipe_clk: pipe clock
> + * @pipemux_clk: pipe clock source mux
> + * @piperef_clk: pipe clock default reference source
>    * @index: lane index
>    * @qmp: QMP phy to which this lane belongs
>    * @lane_rst: lane's reset controller
> @@ -3311,6 +3313,8 @@ struct qmp_phy {
>   	void __iomem *rx2;
>   	void __iomem *pcs_misc;
>   	struct clk *pipe_clk;
> +	struct clk *pipemux_clk;
> +	struct clk *piperef_clk;
>   	unsigned int index;
>   	struct qcom_qmp *qmp;
>   	struct reset_control *lane_rst;
> @@ -3346,6 +3350,7 @@ struct qcom_qmp {
>   	void __iomem *dp_com;
>   
>   	struct clk_bulk_data *clks;
> +	struct clk *pipe_clksrc;
>   	struct reset_control **resets;
>   	struct regulator_bulk_data *vregs;
>   
> @@ -5355,6 +5360,42 @@ static int qcom_qmp_phy_init(struct phy *phy)
>   	return 0;
>   }
>   
> +static int qcom_qmp_phy_pipe_clk_enable(struct qmp_phy *qphy)
> +{
> +	struct qcom_qmp *qmp = qphy->qmp;
> +	int ret;
> +
> +	ret = clk_set_parent(qphy->pipemux_clk, qmp->pipe_clksrc);
> +	if (ret)
> +		dev_err(qmp->dev, "failed to reparent pipe clock: %d\n", ret);
> +
> +
> +	ret = clk_prepare_enable(qphy->pipe_clk);
> +	if (ret) {
> +		dev_err(qmp->dev, "failed to enable pipe clock: %d\n", ret);
> +		goto err_restore_parent;
> +	}

So, what you do here is you manually set the parent of 
GCC_PCIE_1_PIPE_CLK_SRC to PHY pipe clock right before enabling 
GCC_PCIE_1_PIPE_CLK and set it back to XO after disabling 
GCC_PCIE_1_PIPE_CLK.

My proposal is doing exactly the same, but doing that automatically 
through the clock infrastructure. After removing pipe_clock handling 
from pcie driver itself, we can be sure that nobody is playing dirty 
tricks around the pipe_clock.

> +
> +	return 0;
> +
> +err_restore_parent:
> +	clk_set_parent(qphy->pipemux_clk, qphy->piperef_clk);
> +
> +	return ret;
> +}
> +
> +static void qcom_qmp_phy_pipe_clk_disable(struct qmp_phy *qphy)
> +{
> +	struct qcom_qmp *qmp = qphy->qmp;
> +	int ret;
> +
> +	clk_disable_unprepare(qphy->pipe_clk);
> +
> +	ret = clk_set_parent(qphy->pipemux_clk, qphy->piperef_clk);
> +	if (ret)
> +		dev_err(qmp->dev, "failed to reparent pipe clock: %d\n", ret);
> +}
> +
>   static int qcom_qmp_phy_power_on(struct phy *phy)
>   {
>   	struct qmp_phy *qphy = phy_get_drvdata(phy);
> @@ -5379,11 +5420,9 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
>   		}
>   	}
>   
> -	ret = clk_prepare_enable(qphy->pipe_clk);
> -	if (ret) {
> -		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
> +	ret = qcom_qmp_phy_pipe_clk_enable(qphy);
> +	if (ret)
>   		goto err_reset_lane;
> -	}
>   
>   	/* Tx, Rx, and PCS configurations */
>   	qcom_qmp_phy_configure_lane(tx, cfg->regs,
> @@ -5478,7 +5517,7 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
>   	return 0;
>   
>   err_disable_pipe_clk:
> -	clk_disable_unprepare(qphy->pipe_clk);
> +	qcom_qmp_phy_pipe_clk_disable(qphy);
>   err_reset_lane:
>   	if (cfg->has_lane_rst)
>   		reset_control_assert(qphy->lane_rst);
> @@ -5491,7 +5530,7 @@ static int qcom_qmp_phy_power_off(struct phy *phy)
>   	struct qmp_phy *qphy = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qphy->cfg;
>   
> -	clk_disable_unprepare(qphy->pipe_clk);
> +	qcom_qmp_phy_pipe_clk_disable(qphy);
>   
>   	if (cfg->type == PHY_TYPE_DP) {
>   		/* Assert DP PHY power down */
> @@ -5777,6 +5816,8 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
>   	if (ret)
>   		return ret;
>   
> +	qmp->pipe_clksrc = fixed->hw.clk;
> +
>   	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
>   	if (ret)
>   		return ret;
> @@ -6091,6 +6132,24 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
>   		qphy->pipe_clk = NULL;
>   	}
>   
> +	/* Get optional pipe clock mux and default reference source clock. */
> +	qphy->pipemux_clk = of_clk_get_by_name(np, "mux");
> +	if (IS_ERR(qphy->pipemux_clk)) {
> +		ret = PTR_ERR(qphy->pipemux_clk);
> +		if (ret == -EPROBE_DEFER)
> +			return ret;
> +
> +		qphy->pipemux_clk = NULL;
> +	} else {
> +		qphy->piperef_clk = of_clk_get_by_name(np, "ref");
> +		if (IS_ERR(qphy->piperef_clk)) {
> +			ret = PTR_ERR(qphy->piperef_clk);
> +			return dev_err_probe(dev, ret,
> +					     "failed to get lane%d piperef_clk\n",
> +					     id);
> +		}
> +	}
> +
>   	/* Get lane reset, if any */
>   	if (cfg->has_lane_rst) {
>   		snprintf(prop_name, sizeof(prop_name), "lane%d", id);


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
