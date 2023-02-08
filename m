Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40615C6379F
	for <linux-phy@archiver.kernel.org>; Wed,  8 Feb 2023 16:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+fdBP46KDFxjcH/f1JoZcmR30HKGmIIc5s9dKNA6kE=; b=o5EX8XcjL80Pql
	5YpK5JV+/Fbq06JCd6kH8VDN24v2gAYm8g4Qiz80u1Ifx4Eft7Re0qdEqWAq+70jVYMrkg9CNUN+3
	1VFMx9/Q8UromR30kUcdBAGYWpeF4nayfyskXe2HKmKfC71Fcupfrt/0Kr+Zi6RSo1vtjcYrb3pZj
	5zuQmC4nVwtUvyC98sL0+N94G+T4FQkYHrv3lRxRFP6nyDXcpbxp4x8zv+HaeLDuuCeGkUzXUVql1
	btSzvBMP7y0v1CCe6UQeVmn1UugTbRG0v+RWHHw+IdpTzBqwN/DdEjlQYCki5478rD+8ufomkebEI
	sJBtbFw0jE1dc/pvOAmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnbb-00GLOP-Kk; Wed, 08 Feb 2023 16:47:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPnbY-00GLMy-O8
	for linux-phy@lists.infradead.org; Wed, 08 Feb 2023 16:47:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 47E3561738;
	Wed,  8 Feb 2023 16:47:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0D0DC433EF;
	Wed,  8 Feb 2023 16:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675874851;
	bh=R1EhtcU+fclNZFQL8u7Brp4bwbZEsKYX6uSdRHsHv2A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U6bWjigrlotYRUIqlBf8CTuKUZCDW3AGSsDqyFp0kwvWC8JQRu3AlgZpFaAjcANgY
	 +7xrcdOVda0QADEWQmcdrstkLl3RUmnw6HTlO/+3VXa2n86Tff4UWmGuw4cjysRWyc
	 L4HiEDCK5VRqocjXbIEJpIdhYzGrErw31zK2EbkEbZKesAuCUQIFPObo61tkkXdh6A
	 7CzGXoDejf9KxH8Ze6wqa5LGVZNhff8HSn6o8W6M2h8xc33zdAiSy9+bFHT+qA6xbf
	 3z0LubwWlERJ8GYylBIAwRsvEljLm+KYWoCp3DDBq/ucxQtXLg9u6LUAOxypVkXzRS
	 JJrUpwUXaJ3IQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pPnc7-0005yV-DZ; Wed, 08 Feb 2023 17:48:08 +0100
Date: Wed, 8 Feb 2023 17:48:07 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v8 08/11] phy: qcom-qmp-pcie: Add support for SM8550 g3x2
 and g4x2 PCIEs
Message-ID: <Y+PSR6DKUeoreGJL@hovoldconsulting.com>
References: <20230206212619.3218741-1-abel.vesa@linaro.org>
 <20230206212619.3218741-9-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230206212619.3218741-9-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_084732_863711_2CD040D0 
X-CRM114-Status: GOOD (  16.26  )
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

On Mon, Feb 06, 2023 at 11:26:16PM +0200, Abel Vesa wrote:
> Add the SM8550 both g4 and g3 configurations. In addition, there is a
> new "lane shared" table that needs to be configured for g4, along with
> the No-CSR list of resets. The no-CSR allows resetting the PHY without
> actually dropping the PHY configuration. The no-CSR needs to be
> deasserted only after the PHY has been configured and the PLL has
> stabilized.
> 
> Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

> @@ -2370,6 +2690,12 @@ static int qmp_pcie_power_on(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> +	ret = reset_control_deassert(qmp->nocsr_reset);
> +	if (ret) {
> +		dev_err(qmp->dev, "no-csr reset deassert failed\n");
> +		goto err_disable_pipe_clk;
> +	}
> +
>  	/* Pull PHY out of reset state */
>  	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
>  
> @@ -2503,6 +2829,13 @@ static int qmp_pcie_reset_init(struct qmp_pcie *qmp)
>  	if (ret)
>  		return dev_err_probe(dev, ret, "failed to get resets\n");
>  
> +	if (cfg->has_nocsr_reset) {
> +		qmp->nocsr_reset = devm_reset_control_get_exclusive(dev, "phy_nocsr");
> +		if (IS_ERR(qmp->nocsr_reset))
> +			return dev_err_probe(dev, PTR_ERR(qmp->nocsr_reset),
> +						"failed to get no-CSR reset\n");

Nit: You're still using uppercase CSR here and lowercase elsewhere.

> +	}
> +
>  	return 0;
>  }

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
