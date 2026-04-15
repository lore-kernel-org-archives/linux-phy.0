Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29D74FA0C42
	for <linux-phy@archiver.kernel.org>; Wed, 15 Apr 2026 07:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIDH/e6CEcF3HQqsJsWgF9HXRu7srdhwEJAtqeQM3uc=; b=yf6ATwBgKM+rf4
	Hyp16Q/TJuCtDaJvOyAMa2jsw3FbVVHCC6nMed2rIKUn1nfvq1+s0VNJfVg9ZJG7lnrwkl+2cE/Ae
	JchFYsWZwDDFz27Hv079agLQaJEZGNhlwcVykxjHN0PrFChbbWpBogRQbIe4FNGTG4cfNnslMsVRS
	ncXNQycL6J8cSCgByz+O9GI2IMOHbNrnxJprvJk01+IxdCCULdRuqfOa+MA1rVpMw9wncP14fzc0k
	rywjPK8MfAF5E5MG/BmIa/FPxEUSVrTYWtJ5epiHdl/6JrS5waRaqO0a9p0n1p0Hwb7dBTI/cfoQp
	sKMvGio7rZXlgt/ZHmCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCuv6-00000000kHU-3RVS;
	Wed, 15 Apr 2026 07:44:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCuv5-00000000kHN-1UtA
	for linux-phy@lists.infradead.org;
	Wed, 15 Apr 2026 07:44:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 80A5D6012A;
	Wed, 15 Apr 2026 07:44:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A9EEC19424;
	Wed, 15 Apr 2026 07:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776239058;
	bh=IpVNfJ9DJKRrgDgRGsPo+kUo+1XlJ8lK8e+SU0EKmxY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EsvKsX22T4W/rAfDQ7E3wFklFMejdHbKl9PhiB5jzUCfhByHQf1Tz7mj61GB71r5q
	 nRv6D3/WwmobztRnRK5M87XjDt9QwURXH+5FzixW77EfNU8eQE3SlUEtc802VbQS0E
	 6dzeh+F8o3o6FlZ8N0/SdcjNcWfMEKBwsh+6IPHhkB2Tqra+GpE6QV0qmJfwK+z/Ez
	 NhIzHwy6H0PjpkFPkdk+G5TPQ3fLzWJ+1JxvGx6jpYNX2Tj8OMREpShvZMfnrnIMCw
	 4crsLoyWn8jkssAhNHcjdItgYVa53xNJmvuCgZya7QxAlTrAhMXNQhEWY0AKLLgsW+
	 M38Ymz3lbt3XA==
Date: Wed, 15 Apr 2026 09:44:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 5/5] arch: arm64: dts: qcom: Add support for PCIe3a
Message-ID: <20260415-pragmatic-termite-of-attraction-3dbab5@quoll>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
 <20260412-glymur_gen5x8_phy_0413-v3-5-affcebc16b8b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260412-glymur_gen5x8_phy_0413-v3-5-affcebc16b8b@oss.qualcomm.com>
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

On Sun, Apr 12, 2026 at 11:26:00PM -0700, Qiang Yu wrote:
> Describe PCIe3a controller and PHY. Also add required system resources
> like regulators, clocks, interrupts and registers configuration for PCIe3a.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

subject: drop arch.

Please use subject prefixes matching the subsystem. You can get them for
example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

> ---
>  arch/arm64/boot/dts/qcom/glymur.dtsi | 316 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 315 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index f23cf81ddb77a4138deeb4e00dd8b316930a2feb..c15f87c37ecbad72076a6c731f4959a1a8bd8425 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> @@ -736,7 +736,7 @@ gcc: clock-controller@100000 {
>  				 <0>,				/* USB 2 Phy PCIE PIPEGMUX */
>  				 <0>,				/* USB 2 Phy PIPEGMUX */
>  				 <0>,				/* USB 2 Phy SYS PCIE PIPEGMUX */
> -				 <0>,				/* PCIe 3a */
> +				 <&pcie3a_phy>,			/* PCIe 3a */
>  				 <&pcie3b_phy>,			/* PCIe 3b */
>  				 <&pcie4_phy>,			/* PCIe 4 */
>  				 <&pcie5_phy>,			/* PCIe 5 */
> @@ -3640,6 +3640,320 @@ pcie3b_port0: pcie@0 {
>  			};

...

> > +		pcie3a_phy: phy@f00000 {

Same comment as before.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
