Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2B5ECD0438
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 04:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y44X/ZN4xJ65FirZMjN/Gko+oQ1x5EIrAf+EEZSNvPk=; b=1EQIAATqspduGS
	Eg5JKJl31h9p5A3amGupTI9IzcvQAaW7CRIhBCONisBlSXYUGFs4wCvgLS0agsPa5R9c5rC98N4I5
	PDURlQtAYj6Wm4V0vERpA3wH8oZgrxgdw3MiSDljaGOrzHGxVOaoeMXMYo6aFKiYWeAB5rpEOqwzh
	gB8K+uGOeCSEB1broFz4tChcyXi8PYUF9CROQl7JeF4cYPnaYu7x7yEUQ6KFq0423aVwCK3Vm03Co
	VSssLt1rcgx8r/ThxGNdFHR8gevG1J8M6ESQJnrurXYbBGxxZfJDQNAx/OLYaP2wubxq1hlzm8Ttx
	bHbn+AiYcwj1Vg851Fhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcywR-0000000CPVp-0Fzb;
	Tue, 06 Jan 2026 04:45:11 +0000
Received: from mx.socionext.com ([202.248.49.38])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcywO-0000000CPVN-4A0Y;
	Tue, 06 Jan 2026 04:45:10 +0000
Received: from unknown (HELO iyokan3-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 06 Jan 2026 13:45:07 +0900
Received: from mail.mfilter.local (mail-arc01.css.socionext.com [10.213.46.36])
	by iyokan3-ex.css.socionext.com (Postfix) with ESMTP id 2AC422091484;
	Tue,  6 Jan 2026 13:45:07 +0900 (JST)
Received: from iyokan3.css.socionext.com ([172.31.9.53]) by m-FILTER with ESMTP; Tue, 6 Jan 2026 13:45:07 +0900
Received: from [10.212.247.110] (unknown [10.212.247.110])
	by iyokan3.css.socionext.com (Postfix) with ESMTP id 66FE810A003;
	Tue,  6 Jan 2026 13:45:06 +0900 (JST)
Message-ID: <c60cd68a-d963-40ae-9366-44678490291d@socionext.com>
Date: Tue, 6 Jan 2026 13:45:09 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: socionext: usb2: Simplify with scoped for each OF
 child loop
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Masami Hiramatsu <mhiramat@kernel.org>
References: <20260102124848.64474-2-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
In-Reply-To: <20260102124848.64474-2-krzysztof.kozlowski@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_204509_150976_1469A53F 
X-CRM114-Status: GOOD (  18.68  )
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

Hi Krzysztof,

On 2026/01/02 21:48, Krzysztof Kozlowski wrote:
> Use scoped for-each loop when iterating over device nodes to make code a
> bit simpler.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>   drivers/phy/socionext/phy-uniphier-usb2.c | 28 ++++++++---------------
>   1 file changed, 10 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/phy/socionext/phy-uniphier-usb2.c
> b/drivers/phy/socionext/phy-uniphier-usb2.c
> index 21c201717d95..c49d432e526b 100644
> --- a/drivers/phy/socionext/phy-uniphier-usb2.c
> +++ b/drivers/phy/socionext/phy-uniphier-usb2.c
> @@ -106,7 +106,7 @@ static const struct phy_ops uniphier_u2phy_ops = {
>   static int uniphier_u2phy_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
> -	struct device_node *parent, *child;
> +	struct device_node *parent;
>   	struct uniphier_u2phy_priv *priv = NULL, *next = NULL;
>   	struct phy_provider *phy_provider;
>   	struct regmap *regmap;
> @@ -129,34 +129,31 @@ static int uniphier_u2phy_probe(struct
> platform_device *pdev)
>   		return PTR_ERR(regmap);
>   	}
>   
> -	for_each_child_of_node(dev->of_node, child) {
> +	for_each_child_of_node_scoped(dev->of_node, child) {
>   		priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> -		if (!priv) {
> -			ret = -ENOMEM;
> -			goto out_put_child;
> -		}
> +		if (!priv)
> +			return -ENOMEM;
> +
>   		priv->regmap = regmap;
>   
>   		priv->vbus = devm_regulator_get_optional(dev, "vbus");
>   		if (IS_ERR(priv->vbus)) {
> -			if (PTR_ERR(priv->vbus) == -EPROBE_DEFER) {
> -				ret = PTR_ERR(priv->vbus);
> -				goto out_put_child;
> -			}
> +			if (PTR_ERR(priv->vbus) == -EPROBE_DEFER)
> +				return PTR_ERR(priv->vbus);
> +
>   			priv->vbus = NULL;
>   		}
>   
>   		priv->phy = devm_phy_create(dev, child,
> &uniphier_u2phy_ops);
>   		if (IS_ERR(priv->phy)) {
>   			dev_err(dev, "Failed to create phy\n");
> -			ret = PTR_ERR(priv->phy);
> -			goto out_put_child;
> +			return PTR_ERR(priv->phy);
>   		}
>   
>   		ret = of_property_read_u32(child, "reg", &data_idx);
>   		if (ret) {
>   			dev_err(dev, "Failed to get reg property\n");
> -			goto out_put_child;
> +			return ret;
>   		}
>   
>   		if (data_idx < ndatas)
> @@ -174,11 +171,6 @@ static int uniphier_u2phy_probe(struct
> platform_device *pdev)
>   	phy_provider = devm_of_phy_provider_register(dev,
>   						
> uniphier_u2phy_xlate);
>   	return PTR_ERR_OR_ZERO(phy_provider);
> -
> -out_put_child:
> -	of_node_put(child);
> -
> -	return ret;
>   }
>   
>   static const struct uniphier_u2phy_soc_data uniphier_pro4_data[] = {

Reviewed-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

Thank you,

---
Best Regards
Kunihiko Hayashi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
