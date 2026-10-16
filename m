Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F211CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 09:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0TBGWUbnHIHmBQ+Tw0hBI5kCxFoozV/pEAIUNjxziw=; b=RVIQujP4IBTG22
	6bgdwyO1Hwu33wF56thCNEsbqb/gFNzHa28IpouYFM7pGlBulvFjKHImM2TFr5ASXesV/VfRGUq8g
	Eg0Tei0t1P8bOFO5zpyDKWMAJimSY1t6vcFXs8Utbuio/YVJvtQGLS8ZEgySAN6Z3SZaZy+2K47AH
	hVa99E4TaMEqkB4q6z2fjrA7jkahjIPq0tnsijgf1YSEv1KPC195vo4Y9dtDxzxKects0CYS55dOS
	kpTZca5pJngtWu+IpmtJztKsNJDZoL/GH5NRq81/zP44AByRFG+0ku7gkyZz1VoDIQVxmhWClVtZy
	MByhYqKs5j95FOyruwpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdwo-00000002R5L-0N0H;
	Fri, 16 Oct 2026 09:09:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdwn-00000002R5F-1SBd
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 09:09:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C9E2F602C3;
	Fri, 16 Oct 2026 09:09:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E85291F000C5;
	Fri, 16 Oct 2026 09:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792141792;
	bh=jRJpfbMFIjfEU0tsH7yW/QKvARVo1QquuMxzsg0WdpE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=bjvk15rwTZvV1Q5cX4++rHGhvASJtBttSkeUhg3pizMNzLOqeEdVjHq4bfxMKajVB
	 wALXgdRPwgAToBLZwGG14tHsBGFTcO1f/Du6oW4H6YjIpoG00OBnn8Fk8a7n6Fu1pb
	 EkL3uRgW9bjuk4JpaXcMsq1SfW+jaddLVg7AG6XPIn94hScTHM3DQAFYfUysyFj1h8
	 SMBsPyqRUvlLwy8QGK1SD7UMCGnIGmVUL1pmQ08QGen3xMrg/hRJuKpljWcqF5XNNM
	 H6feMr/Djq/7JQHiEKlNEAO54RGEY7xErpUm63PaTvm0inhkyiiHEcjg0gUrZII7Nf
	 JJeZ/lwEGNDFQ==
Message-ID: <aa5083cf-1400-476b-9e8f-b97e062dad92@kernel.org>
Date: Fri, 16 Oct 2026 10:09:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 4/4] media: qcom: camss: Configure C-PHY through the
 PHY API
To: geocausa@gmail.com, Vinod Koul <vkoul@kernel.org>,
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20261015-x1e-cphy-rfc-v1-0-1f3fa9af940a@gmail.com>
 <39_60e7JWzomu65UjqBRaN5wYsC-80_KwUWXiUI5xyrR4Xm1Hr1QSCLbafzYGahn5ArXl1FXM9Esj4xIBwaL7Q==@protonmail.internalid>
 <20261015-x1e-cphy-rfc-v1-4-1f3fa9af940a@gmail.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-GB
Autocrypt: addr=bod@kernel.org; keydata=
 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
In-Reply-To: <20261015-x1e-cphy-rfc-v1-4-1f3fa9af940a@gmail.com>
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

On 15/10/2026 23:20, George Neacsu via B4 Relay wrote:
> From: George Neacsu <geocausa@gmail.com>
> 
> With a PHY API CSIPHY, csiphy_stream_on() always asks for D-PHY. Ask for
> C-PHY when the endpoint is C-PHY, and pass the trio count and the symbol
> rate, which by the V4L2 convention is twice the link frequency.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: George Neacsu <geocausa@gmail.com>
> ---
>   drivers/media/platform/qcom/camss/camss-csiphy.c | 35 ++++++++++++++----------
>   1 file changed, 21 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
> index f44f2aeb9..8e1b4335a 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> @@ -329,17 +329,15 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
>   	u8 bpp = csiphy_get_bpp(csiphy->res->formats->formats, csiphy->res->formats->nformats,
>   				csiphy->fmt[MSM_CSIPHY_PAD_SINK].code);
>   	struct csiphy_lanes_cfg *lncfg = &csiphy->cfg.csi2->lane_cfg;
> -	struct phy_configure_opts_mipi_dphy *dphy_cfg;
> -	union phy_configure_opts dphy_opts = { 0 };
> +	const bool cphy = lncfg->phy_cfg == V4L2_MBUS_CSI2_CPHY;
> +	union phy_configure_opts opts = { 0 };
>   	struct device *dev = csiphy->camss->dev;
>   	u8 num_lanes = lncfg->num_data;
>   	s64 link_freq;
>   	int ret;
> 
> -	dphy_cfg = &dphy_opts.mipi_dphy;
> -
>   	link_freq = camss_get_link_freq(&csiphy->subdev.entity, bpp, num_lanes,
> -					csiphy->cfg.csi2->lane_cfg.phy_cfg == V4L2_MBUS_CSI2_CPHY);
> +					cphy);

That's a nice reduction, yikes who let that statement into the kernel :)

> 
>   	if (link_freq <= 0) {
>   		dev_err(dev,
> @@ -347,23 +345,32 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
>   		return -EINVAL;
>   	}
> 
> -	ret = phy_mipi_dphy_get_default_config_for_hsclk(link_freq, num_lanes,
> -							 dphy_cfg);
> -	if (ret < 0) {
> -		dev_err(dev, "Invalid config for link frequency %lld\n",
> -			link_freq);
> -		return ret;
> +	if (cphy) {
> +		/* A C-PHY link frequency is half the symbol rate. */

A comment that should live in a helper.

> +		opts.mipi_cphy.symbol_rate = link_freq * 2;

Sounds like something which should have a helper coming from the PHY layer.

The analogue for DPHY is phy_mipi_dphy_get_default_config_for_hsclk()

> +		opts.mipi_cphy.lanes = num_lanes;
> +	} else {
> +		ret = phy_mipi_dphy_get_default_config_for_hsclk(link_freq,
> +								 num_lanes,
> +								 &opts.mipi_dphy);
> +		if (ret < 0) {
> +			dev_err(dev, "Invalid config for link frequency %lld\n",
> +				link_freq);
> +			return ret;
> +		}
>   	}
> 
> -	ret = phy_set_mode(csiphy->phy, PHY_MODE_MIPI_DPHY);
> +	ret = phy_set_mode(csiphy->phy,
> +			   cphy ? PHY_MODE_MIPI_CPHY : PHY_MODE_MIPI_DPHY);

Instead of a bool if you define an int which carriers the type you can 
still disjunct on that all you like but ultimately pass it into 
phy_set_mode() directly - skipping at least this ternary statement.

>   	if (ret) {
>   		dev_err(dev, "Failed to set phy mode\n");
>   		return ret;
>   	}
> 
> -	ret = phy_configure(csiphy->phy, &dphy_opts);
> +	ret = phy_configure(csiphy->phy, &opts);
>   	if (ret) {
> -		dev_err(dev, "failed to configure MIPI D-PHY\n");
> +		dev_err(dev, "failed to configure MIPI %s\n",
> +			cphy ? "C-PHY" : "D-PHY");
>   		goto error;
>   	}
> 
> 
> --
> 2.53.0

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
