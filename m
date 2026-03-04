Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 443BCEFCE4A
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 20:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdZakeKPzesP6yuahX9LvUKvDTYooAW3r4fKuxQKItA=; b=FCN2CdBw4JGzxp
	00TXJGIX5//0Ox1Rgvyzo6ZItfOGxgFRO7xpDMgDe0/mBWXO/s+kdd84LSGBqRdxgZ3y6LTNCerm1
	NxHXz6vcvS3ecfmNq/7zefHWskyGaiNVNbnbZTfNKUsF/Kc7n6jAf9aC0bk2wkMa8w+J4aWyBujMx
	lR+BG9YeI5AJD6MLZOOykYpeOpjWPFO9KvQf7CEnatMcCrlyESNe/5YIm/8E/xgTt4EYmYe5JBVBz
	U48O0bBWzG5Dt/D0tH6E9ujsYP+u0i9ppHomSc0vHyjEpKxfLOgEnPmya+E3lyVkm2oVKkOQ9US7S
	vX6jhAkqplSPzmIYHQ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxt7C-00000000TKy-0MvA;
	Wed, 04 Mar 2026 20:46:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxt7A-00000000TKq-3qxF
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 20:46:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9C61D60053;
	Wed,  4 Mar 2026 20:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B95EFC4CEF7;
	Wed,  4 Mar 2026 20:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772657199;
	bh=xZPU+lO15zbS01J/5fhSubvCHoqF8ecKxJyi14RpyjE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XFtrj/CfE7jawNLOVd9//PL4AXeNcwg7aU2khJ2s3QPivnnq8v1QTuywFUWuNkCIc
	 Hd5/evtUohpOUbwHRqikiTH2OU2K7N8j8TBM08HgAwmCtklm2J7GI/dWMViFl3CG1W
	 QOdbUPYl62X3ibbincSJD1obKO54k3qe3PrCU0FyCUHyLExhtdHUw3n5qHX9TVKyRL
	 OdMR5zk7Dah5eLwQVZOxKlKLBUSkep7RziDbGG7EN2jq2HsP4zkE5lC+ulY16of1Gg
	 PGHG0h6ONyCzYYXkCy5ZWvF5o1fFzJ15kkkEXpgRnJzG/i+Ho5CrNVIgzkKZtMdrRJ
	 fngDBxHqKqc1w==
Date: Wed, 4 Mar 2026 14:46:22 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] phy: qcom: qmp-pcie: Add multiple power-domains
 support
Message-ID: <qmtl3j7czisocywmkwgaxxuzhc6e6zzvaqmqjs5p2phcpk2q3x@rocbjxeguv4g>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <20260304-glymur_gen5x8_phy-v1-2-849e9a72e125@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-2-849e9a72e125@oss.qualcomm.com>
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

On Wed, Mar 04, 2026 at 12:21:56AM -0800, Qiang Yu wrote:
> The Glymur SoC's 3rd PCIe instance supports 8-lane mode using two PHYs in
> a bifurcated configuration. Each PHY has its own power domain (phy_gdsc)
> that must be powered on before initialization per hardware requirements.
> 
> Current PHY power management assumes a single power domain per PHY,
> preventing proper setup for this dual-PHY scenario. Add support for
> multiple power domains by using devm_pm_domain_attach_list() to attach
> power domains manually, while maintaining compatibility with single
> power domain PHYs.
> 
> Enable runtime PM to allow power domain control when the PCIe driver
> calls phy_power_on/phy_power_off:
> 

Enabling runtime PM seems like a separate change that impacts all
existing targets, while adding multiple power domains should only affect
the specific ones.

I'm not sure if it's too picky, but it would be nice to separate this -
so that any issues that might arise can be bisected down to one or the
other of these two changes?

> - Single power domain: QMP PHY platform device directly attaches to
>   power domain and controls it during runtime resume/suspend
> - Multiple power domains: devm_pm_domain_attach_list() creates virtual
>   devices as power domain suppliers, linked to the QMP PHY platform
>   device as consumer
> 
> This ensures power domains are properly attached and turned on/off
> for both single and multiple power domain configurations.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index fed2fc9bb31108d51f88d34f3379c7744681f485..7369c291be51aa1ad7a330459dcb857f5a1988f6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -17,6 +17,7 @@
>  #include <linux/phy/pcie.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
> @@ -3334,6 +3335,8 @@ struct qmp_pcie {
>  
>  	struct clk_fixed_rate pipe_clk_fixed;
>  	struct clk_fixed_rate aux_clk_fixed;
> +
> +	struct dev_pm_domain_list *pd_list;

This is just an pointer to the list allocated inside
devm_pm_domain_attach_list(), as far as I can tell you don't need to
keep this in the qmp_pcie struct - as you're not using it anyways.

Regards,
Bjorn

>  };
>  
>  static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
> @@ -5348,6 +5351,16 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>  	WARN_ON_ONCE(!qmp->cfg->pwrdn_ctrl);
>  	WARN_ON_ONCE(!qmp->cfg->phy_status);
>  
> +	ret = devm_pm_domain_attach_list(dev, NULL, &qmp->pd_list);
> +	if (ret < 0 && ret != -EEXIST) {
> +		dev_err(dev, "Failed to attach power domain\n");
> +		return ret;
> +	}
> +
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;
> +
>  	ret = qmp_pcie_clk_init(qmp);
>  	if (ret)
>  		return ret;
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
