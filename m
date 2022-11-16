Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6834EC43217
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 14:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc/I1L9+Pjz5gc5Du76Kzv5nfUXu8nvFqCVq0bh500M=; b=Vfjx+TrDR3RowK
	+Pqx7pcGuyiKPTyvo+BBXIhm5u5OCthiPfl57xnbjHJ5Y7G71ZcdxrV9/NC0HynDl2mD9EFId3Bc7
	surKneN/riA0zDfRbJbVEKWpuIvtWQmQdpc4io5uvncZojIylfrc2ytHCUTkcSYetWs6/utMiBiph
	Lh3wy2Bz3DJr3hxmFrYIWxYoh7ql1dMiK/ew8m/Q+TsBLy0LbCCG2NPU24QmTo18JSTTwQWnJp+QX
	e44bhSw+1QcRNQ/9p8Y1WWbqs7gN12+/WfeQV7wd/LvJKGlunJuxOErHRfCFl6m8XrwX1et4EZy2i
	bFpMkXYrkKC9RTWPUb8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovJNg-004Yf9-Sd; Wed, 16 Nov 2022 14:27:12 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovJNd-004Yco-Pm
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 14:27:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2ECD461E37;
	Wed, 16 Nov 2022 14:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5C3EC433C1;
	Wed, 16 Nov 2022 14:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668608826;
	bh=ahD/4zXE9e7nQQFpuuGPjNGZrn9Bn9hkwL74eBJbe6E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=awj+6z41L1DfkGwzD4PaNsEiwuZfb+t8R/qG3aZnN0T6WrOsKuGBYvcdv3MFnY8TJ
	 sMFb6ZSe3HKal8nvKxDy3qshp+B3QzMSeJQSwzhaUZqdUnoHrKSBBFqivM3hQuiIjW
	 qam7sO/VH+Y1+eo8s80gTJOykJ60EcBp82vdJ9pmJQXePAhvasf/KLV+j0lf6Fd4zZ
	 TzZKCZ7H8HZZuLkH+LVE82OWp3qCXG3Pky7rqENj9lTOMtxCYrNwJkPx/BxBRmgxpC
	 /uMARJaiMXTWm6YL6PWJ3jJUBlqoecwVkhWFmA20PNTf0kq70/SUfgY1bF2joN5jWA
	 ZJ+fQCfA/NaXg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ovJN5-00038I-Hs; Wed, 16 Nov 2022 15:26:36 +0100
Date: Wed, 16 Nov 2022 15:26:35 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sm8350: add PCIe devices
Message-ID: <Y3TzG4HGsFSU3sky@hovoldconsulting.com>
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
 <20221110103345.729018-8-dmitry.baryshkov@linaro.org>
 <Y2zYHEZDbNoGumTl@hovoldconsulting.com>
 <37fe9a22-7ca0-e4e5-ebff-4eb56dbb74eb@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <37fe9a22-7ca0-e4e5-ebff-4eb56dbb74eb@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_062709_974414_F7158B90 
X-CRM114-Status: GOOD (  19.49  )
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

On Thu, Nov 10, 2022 at 05:20:11PM +0300, Dmitry Baryshkov wrote:
> On 10/11/2022 13:53, Johan Hovold wrote:
> > On Thu, Nov 10, 2022 at 01:33:44PM +0300, Dmitry Baryshkov wrote:
> >> Add PCIe0 and PCIe1 (and corresponding PHY) devices found on SM8350
> >> platform. The PCIe0 is a 1-lane Gen3 host, PCIe1 is a 2-lane Gen3 host.
> >>
> >> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >> ---
> >>   arch/arm64/boot/dts/qcom/sm8350.dtsi | 246 ++++++++++++++++++++++++++-
> >>   1 file changed, 244 insertions(+), 2 deletions(-)
> > 
> >> @@ -1761,6 +1957,52 @@ tlmm: pinctrl@f100000 {
> >>   			gpio-ranges = <&tlmm 0 0 204>;
> >>   			wakeup-parent = <&pdc>;
> >>   
> >> +			pcie0_default_state: pcie0-default-state {
> >> +				perst-pins {
> >> +					pins = "gpio94";
> >> +					function = "gpio";
> >> +					drive-strength = <2>;
> >> +					bias-pull-down;
> >> +				};
> >> +
> >> +				clkreq-pins {
> >> +					pins = "gpio95";
> >> +					function = "pcie0_clkreqn";
> >> +					drive-strength = <2>;
> >> +					bias-pull-up;
> >> +				};
> >> +
> >> +				wake-pins {
> >> +					pins = "gpio96";
> >> +					function = "gpio";
> >> +					drive-strength = <2>;
> >> +					bias-pull-up;
> >> +				};
> >> +			};
> > 
> > The pinconfig should go in the board file.
> 
> Usually yes. However for the PCIe we usually put them into the main 
> .dtsi. See sm8[124]50.dtsi.

Yeah, I noticed that too and had this discussion with Bjorn for
sc8280xp some months ago. Even if you may save a few lines by providing
defaults in a dtsi, the pin configuration is board specific and belongs
in the dts.

Also note that 'perst' and 'wake' above could in principle be connected
to other GPIOs on different boards.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
