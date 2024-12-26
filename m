Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96602E7718D
	for <linux-phy@archiver.kernel.org>; Thu, 26 Dec 2024 05:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DhcV3oDPjnc372yfCu/or/5dAfXkK/WOs60rxfpH5o=; b=Xv1EQvdhkTNQK0
	3+hXr3NaVIak9rC/9/6H6+7qT2sxfNAnUfp8o8Q5RXN3z3iydW6oW86U4NuwvUPI3uLfoWCc/MUbf
	4RmXDdBFn8X+f6KH9Ic0rJhBGdUpyt1/j2PL/JZwjjiS1Q75kIVyh5OKc5UgIMWkPfUzQ/ui/WAmT
	m9n7kMidxip6oVW1mUywx/Ln9Dy3oZz5cjxDl4IKjj/LniajSMy7MvW693/7vCxMUv5Sn5mqZjDvX
	ZKd6Z5/5LCS/V+81nK8cC0uiqJ3UyH9o1EJDqSA45ngIrPtxK5/8JsMwt4ZT+64c3GDXgVegFY53i
	zo3W9uepf91mjPDgfcYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQg9K-0000000F8Oj-2sTX;
	Thu, 26 Dec 2024 05:11:06 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQg7N-0000000F7xF-3823
	for linux-phy@lists.infradead.org;
	Thu, 26 Dec 2024 05:09:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E709FA40BB7;
	Thu, 26 Dec 2024 05:07:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62300C4CED1;
	Thu, 26 Dec 2024 05:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735189744;
	bh=vbEYz7VTSc/9TiJZ9hHDACf4zMFs+jaf6mhgV00O4jQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rLC9FyvNEZ9Nkv0gv6iW1sx1YqhP716br9UjWB9P/LsrNIQzvkGjQdcSvMcSDWOEI
	 1pvqCy+d4Wa7aFj9AqKImFJdbT4kM7vewpL32xmewDJYqmuhteVb1WWW3IVJm3k3eE
	 4NUlMl3DEWWDQ1iU7zbgI8ZKPW0NJq+6Se0AAAl9zBZdUjbJ+mBjhsZF2OmXjyeVaq
	 kzvkiJVyDX99yKOIDMog1l4Ws76v1+8w//TLqlj/oye8xKGUxCSzDzFJATcr7fDRoY
	 p/TkyCI9lBnJNhWhNTzLKVL3SCYBNmfysigQ5BtMOT5RRRzZzH0pJx8KDr2aAn2yky
	 b5WTkdn9pnpXw==
Date: Wed, 25 Dec 2024 23:09:01 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, dmitry.baryshkov@linaro.org, 
	abel.vesa@linaro.org, neil.armstrong@linaro.org, manivannan.sadhasivam@linaro.org, 
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs615: add pcie phy max current
 property
Message-ID: <hughcvp6indpkjadvx3z3s3umkgqkbnqfp3wvle4jm4xdzkniy@e2oqjinaaa65>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-4-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204105249.3544114-4-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_210905_861275_2AA4B840 
X-CRM114-Status: GOOD (  18.30  )
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

On Wed, Dec 04, 2024 at 06:52:49PM +0800, Ziyue Zhang wrote:
> Add vdda-pll-max-microamp for vdda-pll-supply. The value of this property
> is from the power grid guide. It is the maximum current the regulator can
> provide. The property will be parsed by PCIe PHY driver to set the current
> load.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index 18f131ae9e07..6d93ef0d886b 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -215,6 +215,7 @@ &pcie {
>  &pcie_phy {
>  	vdda-phy-supply = <&vreg_l5a>;
>  	vdda-pll-supply = <&vreg_l12a>;
> +	vdda-pll-max-microamp = <165000>;

It seems from the driver patch (patch 2/3) that you will apply this
load-request at init and release it at exit, which I believe will hold
the regulator at HPM always.

If that's the case, why is vreg_l12a declared with
regulator-allow-set-load and support LPM on this board?

If the regulator needs to be in HPM on this board, remove
regulator-allow-set-load and the LPM mode from the regulator.


In fact, you (all of you) should remove all regulator-allow-set-load and
LPM modes from the DT until you know what that implies - and then
provide specific patches with clear description of the impact when you
add it back.

Regards,
Bjorn

>  
>  	status = "okay";
>  };
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
