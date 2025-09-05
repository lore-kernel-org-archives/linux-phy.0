Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEB52CA0FED
	for <linux-phy@archiver.kernel.org>; Fri,  5 Sep 2025 09:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chrjFH8B2Hf7TifaUCrzMGz+gq2hepyfs2wH+n3HJ7o=; b=rr6vAmvFf0JVus
	WQbMW9F4ECCQW0MV2b20wd86F+wLROx7ZuBtzrePBYs5oJLaG2hqWtA0hvh/a0oX/PVyTiehUgJru
	LYeNHpoARSWk207DnVrANldfA2A41QJhKPmAmpMckCGCTA+YI+oapwMKUvfhHo77otZ3E43HVUL/p
	eNUgoMObBnrUB9rZwedup6WPYFADLAcgfE1c3tcU0kp93U4LBjZkb32U5sVxmtdF/7VvJEjyjLp8Z
	r4guHWTO/q968/6pCdRFds+AUEt0zY/jnON5k3cuEItytYhSnSoY3kD8r0ySWkBcTM8/WB7Zket3R
	a1dFMBJUlhyf7sbJVmdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuTBu-00000000t6h-2FY7;
	Fri, 05 Sep 2025 09:57:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuRjW-00000000Kui-1M3Q
	for linux-phy@lists.infradead.org;
	Fri, 05 Sep 2025 08:23:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7C42660279;
	Fri,  5 Sep 2025 08:23:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 980AFC4CEF1;
	Fri,  5 Sep 2025 08:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757060625;
	bh=6PHoWwsgos2vO1ljkGufasMWk4E1NTgVcy0xZdrHxho=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iPwf3TVv6ZgYxi/+rQ69QAef1ym8eeJMKwrgaFGe5jM0qbD+6evn2aNDD0daDA9ky
	 CGXziOS382j0yQSBYl39u0dMZYaF8vpf5QxFKRuAdX293jYpzhyjoMsB25IK+/LYzJ
	 bat8NHSd+9RuSMpzy0fPiJl+yZXwlXRD8E4kMNtkhiyQBkTlQLu3Kho1EE6BSMM1My
	 ijHcsTiviOCJl5BfoZHf3vmZEbtrke84+lMZowtuEWvpaFEq5Oc0gtTVZUGnQS61Bk
	 cyAUQo3LBOOZI2R5WF6d8OSS0WrFep3NFBgZmVF1b5oKlG3Yi2JmUtELRSSXsectoL
	 aSRVFO6gIIlfA==
Date: Fri, 5 Sep 2025 10:23:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: qcom: edp: Add Glymur platform support
Message-ID: <20250905-cuddly-viridian-coucal-134f8a@kuoka>
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
 <20250904-phy-qcom-edp-add-glymur-support-v1-3-e83c6b9a145b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250904-phy-qcom-edp-add-glymur-support-v1-3-e83c6b9a145b@linaro.org>
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

On Thu, Sep 04, 2025 at 09:55:53AM +0300, Abel Vesa wrote:
>  static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
>  	.aux_cfg = edp_phy_aux_cfg_v4,
> +	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
> +	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
>  	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
>  	.ver_ops = &qcom_edp_phy_ops_v6,
>  };
>  
> +static struct qcom_edp_phy_cfg glymur_phy_cfg = {

g<x

> +	.aux_cfg = edp_phy_aux_cfg_v8,
> +	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v8),
> +	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
> +	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
> +	.ver_ops = &qcom_edp_phy_ops_v8,
> +};
> +
>  static int qcom_edp_phy_power_on(struct phy *phy)
>  {
>  	const struct qcom_edp *edp = phy_get_drvdata(phy);
> @@ -1141,6 +1365,7 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
>  	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
>  	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
>  	{ .compatible = "qcom,x1e80100-dp-phy", .data = &x1e80100_phy_cfg, },
> +	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },

Don't stuff things to the end of lists.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
