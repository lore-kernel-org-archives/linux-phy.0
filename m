Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C595C54798
	for <linux-phy@archiver.kernel.org>; Fri,  1 Mar 2024 03:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czDHf+cTpIrehyQzrqNKeZeZxGGlZ5dEg9beqrUcQU8=; b=afovLQpB7fJoQH
	pqIlmEBN9yONclcSGrpuXmaCbPPvniE/WrZiqIJS8CYTfv0/fZJyPradbua44nrwzRMVQ101AmJaG
	XGlUjJJaGOS9reTUC/KwQUt36GFj5zuf2GJmT+Xou7sf3HVyFk0J0ON0sgIllpPDsBa3Qfeo8S9CY
	R4tTG52THnXhuiKKY8IF7q9NLF+KtHfrRa+X10VWsFUhToFkOROU+erqFi4yzX7CtRJoKDGZIXLq2
	dUEkTqYgHGtLCrVl6dgrqq11QzuTUx+eFBawFFM5ekqkU3SPaw4VsFwW09C59XhfCH4UEVBXsEJNy
	6ue4pC0XMTgJttQvx4KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rft8K-0000000G5PY-0jkF;
	Fri, 01 Mar 2024 03:00:24 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rft8H-0000000G5Ok-3BbD
	for linux-phy@lists.infradead.org;
	Fri, 01 Mar 2024 03:00:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A48D7CE2494;
	Fri,  1 Mar 2024 03:00:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8DC3C433C7;
	Fri,  1 Mar 2024 03:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709262017;
	bh=cy1flkHCEkyjQ+LrDNJLACLTv5jxDK8tRiGxgC/lIvE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q7ZHeWEUc22dhyYG992U2xjzYmMHs507mtCLrQ/U9KDjLkZ+hSV8vl9YGB0ylZfVh
	 3MSyxrRp8U1sMFVT4jMG4/e2Fk53x0b2T4scH/wjG4r8uSBZRCEJ32Nwajrd91uIQm
	 qgii5nnOGaI4hg93i/Cu6NkMC180jRHtnkFbvsAoEZCmJJJuzkeWdvsou+3Nv0fhAC
	 H+MWkpRuk6sweWa818+AsoZXgFYjeUFtG+F1N4c9Lcy7x90VjCXJMeUzC93r1f3xvJ
	 /H+DUx/7LZ/hEhOphhAZwbXEltL6+Y1t7L7mUMgs0VHuLtFL97h8LTjfIo8TtqH6Nq
	 adQGRd7KG7SyQ==
Date: Thu, 29 Feb 2024 21:00:14 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFT 7/7] arm64: dts: qcom-mode-switch: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
Message-ID: <jfwskyt3wllpf33ceeibrodorsfmhctfulfkzpkgmjikzbr63n@f4llf7wcmyxi>
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-7-07e24a231840@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-7-07e24a231840@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_190022_177828_5066F9A2 
X-CRM114-Status: GOOD (  17.25  )
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

On Thu, Feb 29, 2024 at 02:07:07PM +0100, Neil Armstrong wrote:
> Allow up to 4 lanes for the DisplayPort link from the PHYs to the Controllers
> and allow mode-switch events to the QMP Combo PHYs.
> 

Please adjust $subject and commit message to suite the x13s.dts...


With this series I'm reaching 4k@60 on my X13s (with some difficulty due
to current hotplug issues in the DP driver) - but 4-lane DP works, and
so does 2-lane combo.

I tested switching between DP-only and a USB device, this worked fine a
few (3-4) times, after which the USB device stopped showing up. The DP
display continued to work nicely and the debug prints from the driver
indicates that we're moving back and forth between the modes...

The problems I had when trying to implement this previously, with the
device crashing on disconnect have not been seen, across 20+
attempts.

Regards,
Bjorn

> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index a0fdef55a40a..6c73e0fc001f 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -556,7 +556,7 @@ &mdss0_dp0 {
>  };
>  
>  &mdss0_dp0_out {
> -	data-lanes = <0 1>;
> +	data-lanes = <0 1 2 3>;
>  	remote-endpoint = <&usb_0_qmpphy_dp_in>;
>  };
>  
> @@ -565,7 +565,7 @@ &mdss0_dp1 {
>  };
>  
>  &mdss0_dp1_out {
> -	data-lanes = <0 1>;
> +	data-lanes = <0 1 2 3>;
>  	remote-endpoint = <&usb_1_qmpphy_dp_in>;
>  };
>  
> @@ -1112,6 +1112,7 @@ &usb_0_qmpphy {
>  	vdda-phy-supply = <&vreg_l9d>;
>  	vdda-pll-supply = <&vreg_l4d>;
>  
> +	mode-switch;
>  	orientation-switch;
>  
>  	status = "okay";
> @@ -1149,6 +1150,7 @@ &usb_1_qmpphy {
>  	vdda-phy-supply = <&vreg_l4b>;
>  	vdda-pll-supply = <&vreg_l3b>;
>  
> +	mode-switch;
>  	orientation-switch;
>  
>  	status = "okay";
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
