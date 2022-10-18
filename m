Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A646AC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 13:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kUC/rePMkdZY+1CdZEtSEt5cEYlspYACD7Blq0XZJU=; b=IxeOoXd1msOtYE
	+33YULHDiT6RiTh88UtL+EufnLx8/E5LQII+afrJVfpXEVbos2TAU9kveLEkhwnbABUsSIVtPywAE
	dxqqEJ4k0IVKZ2/6grKY1JKbCkhBsM+c9KRiz4Sm26uHuBAUXNVYv8pSVgyRq44uo+SiGqoABL6lm
	2MpJvF+O6AzTI4I8nFgTKzO24OAEYq5Ue2BpsKYe9Y1IZCxFoqujQj4oDXpyHPo3Hxs67xnC21cyz
	KGblTabzfal1wGOAfO8vf7zhMkLrtW0Ylc3YdUaR/mKbBuBGt2kTXSsy5CxCkms4qvO90GZP0OVc3
	9w+029oL+PmDtju7rsrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okmHq-006sqY-VO; Tue, 18 Oct 2022 13:05:38 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okmHo-006sjC-2z
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 13:05:37 +0000
Received: by mail-lf1-x136.google.com with SMTP id b2so22389803lfp.6
        for <linux-phy@lists.infradead.org>; Tue, 18 Oct 2022 06:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xgD9kZURxSV2+Jxzl+l3QUkumq48W2A38D+vEtiJ1Rc=;
        b=BR0V+6uNZn/HO6b3BiLjY69G/W/m65ZgIp+zLnD98J/oBPW87eSoIIilOP6LKeh3lH
         MgH7eZWuPIqhy0v1wJyxx4owSEVLRJaHe/229RwaAbAc6coo8uNwfgjVUcPQzWw6CLL1
         VqLffgVudxbPZFBLVtQI6r7B35UFNBMVox2K+JSSScLQhcf5nLgALa3RfW44hIpJDT+h
         3HU1asjDS9oskPcN+6PQpa5gz8bRlPa6cS6VY6j8yBtgHre8w5ywLmJuT+wZhUVcbZFc
         3q9qfonK2pn2xzFJbCaHTNRBJ942ajnUvZTlsmtZHcfD4kn/Xf0hTx3JJfyptByXh7hi
         +hGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xgD9kZURxSV2+Jxzl+l3QUkumq48W2A38D+vEtiJ1Rc=;
        b=VKUJG4z74dtGoqxl9Ujbnsj0rFWOkJ7dZyurEtu5OECysKFvCp3Xsz5SRAXWGm0WJk
         ZOYvSrYFAeMa42PsGmWbiqy9InnLLlKiO7LF55bA1+TTPW3Al4fBTL22/I18BNr78b+D
         J/lGI7sGwpAXF6GVnz4k74A/9xCRST4N2GV2RaKsc6COyahRB/2mbLcgYHJzXdhMedij
         jWU/8k0tqqDkLLqM9yEagbk8eykUAW2AvG0FzjlJzoLkMRsD4VkM4MpRybCGp/6zkucH
         vC9J/9B5n8+S+0653qwdpJcZAqKrlGb/5UL3dO3bzz6PMMz+GBoUjqLkCZJRGzzg9s1C
         ovKg==
X-Gm-Message-State: ACrzQf0YAMLL0IGOrxeBhB+Xg9nFbEC8nOqM9O/Sho4+cXFSOCCf2iOg
	lcGFEjH7CrMx4zNiJH1PxIQG+Q==
X-Google-Smtp-Source: AMsMyM6cSxZHtfiUXjJkcPdZwXMrh4R2F6KBhxzZQtIK46bRK4C4DOqqSINnIf8MTi9aV3jj9iFtJQ==
X-Received: by 2002:a19:f80c:0:b0:4a4:5923:5174 with SMTP id a12-20020a19f80c000000b004a459235174mr1016570lff.151.1666098330548;
        Tue, 18 Oct 2022 06:05:30 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v18-20020a2ea452000000b0026ab83298d6sm1976580ljn.77.2022.10.18.06.05.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 06:05:30 -0700 (PDT)
Message-ID: <2cf670a0-59bd-31b0-8816-496c1e13165d@linaro.org>
Date: Tue, 18 Oct 2022 16:05:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 13/15] phy: qcom-qmp-pcie: add support for pipediv2 clock
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221017145328.22090-1-johan+linaro@kernel.org>
 <20221017145328.22090-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221017145328.22090-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_060536_162903_BB7A3352 
X-CRM114-Status: GOOD (  23.01  )
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

On 17/10/2022 17:53, Johan Hovold wrote:
> Some QMP PHYs have a second fixed-divider pipe clock that needs to be
> enabled along with the pipe clock.
> 
> Add support for an optional "pipediv2" clock.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++----
>   1 file changed, 36 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 9c8e009033f1..c1d74c06fad1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1379,7 +1379,9 @@ struct qmp_pcie {
>   	void __iomem *rx2;
>   
>   	struct clk *pipe_clk;
> +	struct clk *pipediv2_clk;
>   	struct clk_bulk_data *clks;
> +
>   	struct reset_control_bulk_data *resets;
>   	struct regulator_bulk_data *vregs;
>   
> @@ -1902,6 +1904,36 @@ static int qmp_pcie_exit(struct phy *phy)
>   	return 0;
>   }
>   
> +static int pipe_clk_enable(struct qmp_pcie *qmp)
> +{
> +	int ret;
> +
> +	ret = clk_prepare_enable(qmp->pipe_clk);
> +	if (ret) {
> +		dev_err(qmp->dev, "failed to enable pipe clock: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(qmp->pipediv2_clk);
> +	if (ret) {
> +		dev_err(qmp->dev, "failed to enable pipediv2 clock: %d\n", ret);
> +		goto err_disable_pipe_clk;
> +	}

Do they have to be enabled in sequence? If not, I'd use a bulk clocks 
here for the pipe clocks. While it can look like an overkill, it would 
be a safe net for the possible future changes, which might include 
additional clocks.

> +
> +	return 0;
> +
> +err_disable_pipe_clk:
> +	clk_disable_unprepare(qmp->pipe_clk);
> +
> +	return ret;
> +}
> +
> +static void pipe_clk_disable(struct qmp_pcie *qmp)
> +{
> +	clk_disable_unprepare(qmp->pipediv2_clk);
> +	clk_disable_unprepare(qmp->pipe_clk);
> +}
> +
>   static int qmp_pcie_power_on(struct phy *phy)
>   {
>   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
> @@ -1923,11 +1955,9 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	qmp_pcie_init_registers(qmp, &cfg->tables);
>   	qmp_pcie_init_registers(qmp, mode_tables);
>   
> -	ret = clk_prepare_enable(qmp->pipe_clk);
> -	if (ret) {
> -		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
> +	ret = pipe_clk_enable(qmp);
> +	if (ret)
>   		return ret;
> -	}
>   
>   	/* Pull PHY out of reset state */
>   	qphy_clrbits(pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> @@ -1950,7 +1980,7 @@ static int qmp_pcie_power_on(struct phy *phy)
>   	return 0;
>   
>   err_disable_pipe_clk:
> -	clk_disable_unprepare(qmp->pipe_clk);
> +	pipe_clk_disable(qmp);
>   
>   	return ret;
>   }
> @@ -1960,7 +1990,7 @@ static int qmp_pcie_power_off(struct phy *phy)
>   	struct qmp_pcie *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   
> -	clk_disable_unprepare(qmp->pipe_clk);
> +	pipe_clk_disable(qmp);
>   
>   	/* PHY reset */
>   	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
