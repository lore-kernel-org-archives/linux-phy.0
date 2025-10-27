Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81F1ACCF9EE
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 15:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YvcvEoC9LObZy7ypw2jam3RZBtK5xt+lvD5k4kTPqo=; b=CSW2Rb5IxMlpHN
	IXtcHTaK4PhA3lfRQCSYbyquLd/BVFaaxg0q1nET9rzHsgSJ8+EQNWGx0xeuHtYuN2ImSsjKtcNqc
	2L1BdegmfbGFp8iMIkqCsmS1ygp38QWorakiZ0bvNKrZgzIXLHpR1i0xoiU+g6vnRtgJ2sPI7wHKE
	coHmy6ydYU/Ue9+xnefH3HnuGoVUkxuiyZ5W5Rmv1yeKQs0F0K4X46cSVj9Uw6YMVxefBf5pPhQGi
	fYX7odvsdyYzWY0KD9aLRKEeVYSB33D/VcTwYGGBajW5iWxv1v3bro5iqAiGuoyIUc3u3uOZpKk/m
	+qrqqOSA5oLa3ZvNgwGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDPY7-0000000EGR5-1Cz4;
	Mon, 27 Oct 2025 15:54:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDPY6-0000000EGQh-36jd
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 15:54:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D94B3604F8;
	Mon, 27 Oct 2025 15:54:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7E2FC4CEF1;
	Mon, 27 Oct 2025 15:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761580461;
	bh=aNG/Xv8gCUMk2mL6QGjKgipDfk2wjjPqo6zhLwcFPAY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LS0umjTDiZiKI/a+r3HCL+b/I6dSagSLfTI7yGyW/mNTuOcGSyHWGUM9oZOXh0TPv
	 rVj8iAfbSTMVP0ilGO1iitAK9t2Od2I7ylviMS6HDrkKVAI6ilJW9p7eyFWhmbGp4B
	 0/6X7OXTFS/bK4OnsguilhCtWR07792HBzxwc/owQX1mHE8uACC++8zMXnfDUN8HKb
	 EqBkiqoC1doCx6N2PIIHQmtYLa73BZEyx8SQj7aVfZVr4h33OeDZA4uSKKqFmbq5em
	 xE+FDWdlPymZ1pCFPe1z/969Tl0lw5uWkWDMnw6C/O1+7cowOfHR1YkByk2TOxQjRn
	 Mycfu7+Hd9zPQ==
Date: Mon, 27 Oct 2025 10:57:13 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>, konradybcio@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org, 
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v1 3/4] arm64: dts: qcom: Add PCIe 3 support for
 HAMOA-IOT-SOM platform
Message-ID: <cncyo6y47anbyi434inelfl5czvgscjezejtzii4kihffkj2hj@e5jvvk4o5l7x>
References: <20250922075509.3288419-1-ziyue.zhang@oss.qualcomm.com>
 <20250922075509.3288419-4-ziyue.zhang@oss.qualcomm.com>
 <cd84f10e-c264-43fb-9e3d-20338d85de19@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cd84f10e-c264-43fb-9e3d-20338d85de19@oss.qualcomm.com>
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

On Tue, Oct 14, 2025 at 11:13:42AM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 9/22/2025 1:25 PM, Ziyue Zhang wrote:
> > Update the HAMOA-IOT-SOM device tree to enable PCIe 3 support. Add perst
> > wake and clkreq sideband signals and required regulators in PCIe3
> > controller and PHY device tree node.

The commit message should answer the questions I pose below. This
message explains what you change, but it doesn't explain why.

Start your commit message by describing the hardware, then follow that
with the description of your change.

> > 
> > Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com
> > ---
> >   arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi | 70 +++++++++++++++++++++
> >   1 file changed, 70 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> > index 0c8ae34c1f37..7486204a4a46 100644
> > --- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
> > @@ -390,6 +390,53 @@ &gpu_zap_shader {
> >   	firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
> >   };
> > +&pm8550ve_8_gpios {
> > +	pcie_x8_12v: pcie-12v-default-state {
> > +		pins = "gpio8";
> > +		function = "normal";
> > +		output-enable;
> > +		output-high;
> > +		bias-pull-down;
> > +		power-source = <0>;
> > +	};
> > +};
> > +
> > +&pmc8380_3_gpios {
> > +	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
> > +		pins = "gpio8";
> > +		function = "normal";
> > +		output-enable;
> > +		output-high;
> > +		bias-pull-down;
> > +		power-source = <0>;
> > +	};
> > +
> > +	pm_sde7_main_3p3_en: pcie-main-3p3-default-state {
> > +		pins = "gpio6";
> > +		function = "normal";
> > +		output-enable;
> > +		output-high;
> > +		bias-pull-down;
> > +		power-source = <0>;
> > +	};
> > +};
> Either squash patch 3/4 with 4/4 or move these pin configuration to
> patch 4/4.
> 

Patch 3 defines properties for the SOM and patch 4 defines properties
for the EVK board, so the split sounds reasonable.

But looking at the details, why would the SOM define these states? Isn't
it the carrier board that contains the related regulators? If I use this
SOM in my design, does my board have to have a 12V supply to my x8 PCIe
that's being controlled by gpio8?


In other words, I think you're right.

Regards,
Bjorn

> - Krishna Chaitanya.
> > +
> > +&pcie3 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie3_default>;
> > +	perst-gpios = <&tlmm 143 GPIO_ACTIVE_LOW>;
> > +	wake-gpios = <&tlmm 145 GPIO_ACTIVE_LOW>;
> > +
> > +	status = "okay";
> > +};
> > +
> > +&pcie3_phy {
> > +	vdda-phy-supply = <&vreg_l3c_0p8>;
> > +	vdda-pll-supply = <&vreg_l3e_1p2>;
> > +
> > +	status = "okay";
> > +};
> > +
> >   &pcie4 {
> >   	perst-gpios = <&tlmm 146 GPIO_ACTIVE_LOW>;
> >   	wake-gpios = <&tlmm 148 GPIO_ACTIVE_LOW>;
> > @@ -471,6 +518,29 @@ &tlmm {
> >   	gpio-reserved-ranges = <34 2>, /* TPM LP & INT */
> >   			       <44 4>; /* SPI (TPM) */
> > +	pcie3_default: pcie3-default-state {
> > +		clkreq-n-pins {
> > +			pins = "gpio144";
> > +			function = "pcie3_clk";
> > +			drive-strength = <2>;
> > +			bias-pull-up;
> > +		};
> > +
> > +		perst-n-pins {
> > +			pins = "gpio143";
> > +			function = "gpio";
> > +			drive-strength = <2>;
> > +			bias-pull-down;
> > +		};
> > +
> > +		wake-n-pins {
> > +			pins = "gpio145";
> > +			function = "gpio";
> > +			drive-strength = <2>;
> > +			bias-pull-up;
> > +		};
> > +	};
> > +
> >   	pcie4_default: pcie4-default-state {
> >   		clkreq-n-pins {
> >   			pins = "gpio147";

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
