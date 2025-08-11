Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47AC8CA0EDC
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 22:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gSHUQuv6UKo5Uh0RED5aXVdy+M7lV8q3LyRVvyia/w=; b=y8kDZhjTzp+Q+L
	TaX22u+FZUQ7y2c5UZbOkZoz1Flw9TKE8GKNYs0Eb24oR5YY+E10mWw7Dhp4r5Y8HwzaY6RKy1nSY
	1Vz2WpWBaQHXMEPjOwqnPqI9oWDmDtY/eMw9rRxqGOzZhsZPfG11HHCjL54GxGg+lJf+hZKW26GA7
	zajYx4qJDRzzzuyQpDRh8B5GNMI+VRkuBA8oDPOj1UGCyAF7kiXqx5uIUJbkwc2UP4Iu/VfNVBMDh
	D+B2fwJRaTWHbTrutWWr4BVSfBPKdLhY1NcnGQ3NTTyeit7EAiM0f1AKTpsRITdmb7kyXWsCOWmaW
	EPQva3X6YCYny26rD/2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulaaW-000000098ya-2t3x;
	Mon, 11 Aug 2025 22:01:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulUP5-00000008C72-3jak
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 15:25:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 769D440C42;
	Mon, 11 Aug 2025 15:25:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FFF5C4CEED;
	Mon, 11 Aug 2025 15:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754925939;
	bh=IhIcr66PToRKXOs7w1W4iQhvU2VtWXgGXaxM2SDwKgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qchva0sczO7tAGJoNcboP/KSVOd5rINI76Yu3dlVbv2AFnRwqQYYqodZwcpntYzY9
	 H1gv2Hiy44BwZuLyO+NRLphKrKVgYS0RxOAmfYVM4Rk+agFZTFniwa9SsxM9D0oy/6
	 gILT0HQSbwjVLvpTf1aLzif9rpLHjKWhpMTOSSJoKxpMARYKHhGVSqLZ4uaSMlOEP4
	 rK+nJdeXjNcG7KI8nwCSINn7zAuq/AdQ17OaZEabz5QoRuzToc7KoLGtpqrTFZaul8
	 QLKCqM+LtEj0NxjJq2QUsiq6v3ppkvupF32gq0C5iw5bVHqx+XEb0hOVvy/ylk9JBb
	 y+WUyDMzHCoQw==
Date: Mon, 11 Aug 2025 10:25:36 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, 
	conor+dt@kernel.org, bvanassche@acm.org, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH V1 2/4] arm64: dts: qcom: sm8750: add max-microamp for
 UFS PHY and PLL supplies
Message-ID: <gvwdeswdx5rhdepxrgomtbeenh4o6zyi5banvp3y5gz2dkvopb@7pd6qmq4ypvg>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-3-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806154340.20122-3-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_082539_958576_8DB1C675 
X-CRM114-Status: GOOD (  17.75  )
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

On Wed, Aug 06, 2025 at 09:13:38PM +0530, Nitin Rawat wrote:
> Add `vdda-phy-max-microamp` and `vdda-pll-max-microamp` properties to
> the UFS PHY node in the device tree.
> 
> These properties define the maximum current (in microamps) expected
> from the PHY and PLL regulators. This allows the PHY driver to
> configure regulator load accurately and ensure proper regulator
> mode based on load requirements.
> 

But doesn't this imply that these values are fixed for a given SoC?
Perhaps even for a given generation of the PHY/process?

Is there any case where these values need to be tweaked on a per-board
basis?


If not, I think these should be constants in the driver.

Regards,
Bjorn

> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 2 ++
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index 75cfbb510be5..2ae5915fe38d 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -1032,7 +1032,9 @@ wcd_default: wcd-reset-n-active-state {
>  
>  &ufs_mem_phy {
>  	vdda-phy-supply = <&vreg_l1j_0p91>;
> +	vdda-phy-max-microamp = <213000>;
>  	vdda-pll-supply = <&vreg_l3g_1p2>;
> +	vdda-pll-max-microamp = <18300>;
>  
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> index 13c7b9664c89..e9a41d34e2d6 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> @@ -1039,7 +1039,9 @@ &uart7 {
>  
>  &ufs_mem_phy {
>  	vdda-phy-supply = <&vreg_l1j_0p91>;
> +	vdda-phy-max-microamp = <213000>;
>  	vdda-pll-supply = <&vreg_l3g_1p2>;
> +	vdda-pll-max-microamp = <18300>;
>  
>  	status = "okay";
>  };
> -- 
> 2.48.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
