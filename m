Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBC95CCFA15
	for <linux-phy@archiver.kernel.org>; Wed,  5 Nov 2025 08:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqRIBoqZ5rLVrOOF/ZhKSH3nPeGIiJ1FldcDwPgUZLA=; b=rWRSxrwbE6SiXs
	3+B6l6qdnZgIdDTqJxH7uhgQDQTumX0ZpDFEzNjgP+ebOJtvrRgvlQrEERL0pX9e7eOY+JVAYnx7t
	oTDNzC7EL8N3wnvglb+jIWWKx6jpyIQRzgz/l5QzEaRHGZSaAdEeQDJ9SPsVWe8CCUlcCzkqhTJt6
	KHkNR3+cf6P7Zjr1Dl1JirORO8l5CsjE81/Mtw5pnQYVyFHvt7WhUXE/2ONAl5vhMG3imY51376kI
	tA9T0+IKzyDCUesJ/rK7kT0rRQJJv/m0v4PeErM5appV5PBZkH1tn+X6XS7LpRZjKJjANf/rdOZrT
	hvlaop0oyURpqytUNiVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGZ8C-0000000DJPT-1zcQ;
	Wed, 05 Nov 2025 08:44:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGZ89-0000000DJOw-0Hrw
	for linux-phy@lists.infradead.org;
	Wed, 05 Nov 2025 08:44:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6CF7D4376F;
	Wed,  5 Nov 2025 08:44:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4CD0C4CEF8;
	Wed,  5 Nov 2025 08:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762332276;
	bh=B1mrzqdCotHeUPx6GmeRphi3vwwxC29uywn7AUaYpIM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CzGUfFRLTsL19Qi/+XP0OzEpr4fmO4sluqZzOHVtWApYci0N543doqZb2LYPRMQR4
	 dY3EVAfT1DZ2vwrO7fYLaNlYaTSnc+KirvRrrwMu6Ew/NsyGtBg43SQTwVp6Sir5ET
	 ODovueBinj4gWGjlSR5zIFRhClia0uE1HD8cXIzP6s91aSZItsvOjfYekB9LCByPlR
	 +owTzT/WQLgiiks5rvCRODfMhUIKdFzoFYtM9H1JdeJAQTf3yvj8hbxZfQPqTT8I9z
	 ILgsXLWk6nWUVl6SrnknhDK+0kpfZ5ka+Z1NQgsi801m2a32GWLRkoYE2Gd55ZaGeu
	 mZFe9LQ00RxUA==
Date: Wed, 5 Nov 2025 09:44:33 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ritesh Kumar <riteshk@qti.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, 
	abhinav.kumar@linux.dev, jessica.zhang@oss.qualcomm.com, sean@poorly.run, 
	marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_mahap@quicinc.com, 
	andersson@kernel.org, konradybcio@kernel.org, mani@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, vkoul@kernel.org, kishon@kernel.org, 
	cros-qcom-dts-watchers@chromium.org, Ritesh Kumar <quic_riteshk@quicinc.com>, 
	linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, quic_vproddut@quicinc.com
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom-edp: Add eDP ref clk for
 sa8775p
Message-ID: <20251105-juicy-rhino-of-action-b6be48@kuoka>
References: <20251104114327.27842-1-riteshk@qti.qualcomm.com>
 <20251104114327.27842-2-riteshk@qti.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251104114327.27842-2-riteshk@qti.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_004437_150134_54AA4747 
X-CRM114-Status: GOOD (  18.50  )
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

On Tue, Nov 04, 2025 at 05:13:26PM +0530, Ritesh Kumar wrote:
> From: Ritesh Kumar <quic_riteshk@quicinc.com>
> 
> When the initial contribution of eDP PHY for sa8775p was done,
> eDP reference clock voting was missed. It worked fine at that
> time because the clock was already enabled by the UFS PHY driver.
> 
> After commit 77d2fa54a945 ("scsi: ufs: qcom : Refactor
> phy_power_on/off calls"), eDP reference clock started getting
> turned off, leading to the following PHY power-on failure:
> 
> phy phy-aec2a00.phy.10: phy poweron failed --> -110
> 
> To fix this, explicit voting for the eDP reference clock is
> required. This patch adds the eDP reference clock for sa8775p
> eDP PHY and updates the corresponding example node.

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

> 
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  .../devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml  | 6 ++++--
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml     | 1 +
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> index e2730a2f25cf..6c827cf9692b 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> @@ -200,9 +200,11 @@ examples:
>                    <0x0aec2000 0x1c8>;
>  
>              clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> -                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                     <&gcc GCC_EDP_REF_CLKREF_EN>;
>              clock-names = "aux",
> -                          "cfg_ahb";
> +                          "cfg_ahb",
> +                          "ref";
>  
>              #clock-cells = <1>;
>              #phy-cells = <0>;
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index bfc4d75f50ff..ba757b08b9b1 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -72,6 +72,7 @@ allOf:
>        properties:
>          compatible:
>            enum:
> +            - qcom,sa8775p-edp-phy
>              - qcom,x1e80100-dp-phy

I don't have such code in latest next, which makes it impossible to
review.

>      then:
>        properties:
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
