Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92B21C35FFA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 19:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JD88veVw6qBd75Lv5qv0+xweCid7vrCFSChQScmE8k8=; b=UIKuSm7dNWk2Kv
	z9M4ksNlfspw96RlUhdULInaOukUOrgo7gAixFXq7SjwYmN0WnS4gwetG39DJdsp6asZqwe4lDjJf
	V+NIb6PUTqgDXuyqEgCFwX9vbxO0ak14XHkws332molgnbHE6z5nEikIzgDNxu9bHpG3RFjxoYcXb
	0U3QqkycmRGI6t1uvdm0NvaF6EJEcEmVSXpxp9/f9HjwA/eRLJ9iWfZ+h376y8oCpsGNckpaZfaIi
	KxQ/OtQ3l3p/yBQbkXR/7DEgPVIY5nLshVdknPPq6pR0NLgyLn2KxUnj7bERmGu4M4c5vrUoSxj8A
	Ri+N2osK1UwBa8gVwkYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuzM8-0000000A0to-0iVD;
	Wed, 19 Mar 2025 19:45:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuzM5-0000000A0tQ-00dA
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 19:45:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4CBC05C6261;
	Wed, 19 Mar 2025 19:43:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 194F1C4CEE4;
	Wed, 19 Mar 2025 19:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742413532;
	bh=Myrbj9m3hCsLiGJ67e/0Ahc4o+JFpDhFwC5X4tYyaWQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k83A1uajWbT+HjRfBwWMJPneWcAaqV8JUKcAotRtn3xRccysHf6Se8rOR6tPMmIRx
	 MRaiXTRZ3l2DSxZNErw8zsSjnDQ14rm0PJ1zS29pTXfGn7vASw0CMSPOiYObcExFLk
	 sxAr1VvnTVur/2PG9RUpkq77dounwhdqyNcqIjaHoBj74JBsVwM6aP0q2sacTOCqOO
	 /e/66r7FNUHCQdGe6AHAI+qsfL99iNMlMKcRxWSSxFIDeKjLK8Iroa8SO0WgJxJsDJ
	 pcygy6FToNzIz85JZ3cqVwsfXV6BL0A2rkytbN+EKRCTPMB0RLv7JFPQsHkiwOLEjk
	 //6tSSP1ZNk8w==
Date: Wed, 19 Mar 2025 14:45:29 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: bjorn.andersson@oss.qualcomm.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 fingerprint sensor
Message-ID: <4kh3zg3ohqzarbhv4r64iapi5x7paz2r7z3wkesgbjmm5fvgsy@dkkbbgmgt6mo>
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
 <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
 <CAMcHhXoE+UvoKmy1ULJoAq1nrr+PO6qie3vxLuqQbUpiE=SMBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMcHhXoE+UvoKmy1ULJoAq1nrr+PO6qie3vxLuqQbUpiE=SMBQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_124533_127713_34CAA24F 
X-CRM114-Status: GOOD (  28.82  )
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

On Wed, Mar 19, 2025 at 04:05:41PM +0100, Aleksandrs Vinarskis wrote:
> On Wed, 19 Mar 2025 at 04:22, Bjorn Andersson via B4 Relay
> <devnull+bjorn.andersson.oss.qualcomm.com@kernel.org> wrote:
> >
> > From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> >
> > The fingerprint sensor, hidden in the power button, is connected to one
> > of the USB multiport ports; while the other port is unused.
> >
> > Describe the USB controller, the four phys and the repeater involved to
> > make the fingerprint sensor operational.
> >
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> > ---
> 
> Thanks for getting to the bottom of this, it was certainly a long
> awaited feature :)
> 

Didn't think it was something I wanted, but now that it's working I
proved myself wrong ;)

> >  .../boot/dts/qcom/x1e80100-dell-xps13-9345.dts     | 59 +++++++++++++++++++++-
> >  1 file changed, 57 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> > index 967f6dba0878b51a985fd7c9570b8c4e71afe57d..a35557c562d771e2ce209fca05b82c1943d70f63 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> > @@ -744,8 +744,21 @@ touchscreen@10 {
> >
> >  &i2c9 {
> >         clock-frequency = <400000>;
> > -       status = "disabled";
> > -       /* USB3 retimer device @0x4f */
> > +       status = "okay";
> > +
> > +       eusb6_repeater: redriver@4f {
> > +               compatible = "nxp,ptn3222";
> > +               reg = <0x4f>;
> > +               #phy-cells = <0>;
> > +
> > +               vdd3v3-supply = <&vreg_l13b_3p0>;
> > +               vdd1v8-supply = <&vreg_l4b_1p8>;
> > +
> > +               reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
> > +
> > +               pinctrl-0 = <&eusb6_reset_n>;
> > +               pinctrl-names = "default";
> > +       };
> >  };
> >
> >  &i2c17 {
> > @@ -967,6 +980,14 @@ edp_reg_en: edp-reg-en-state {
> >                 bias-disable;
> >         };
> >
> > +       eusb6_reset_n: eusb6-reset-n-state {
> > +               pins = "gpio184";
> > +               function = "gpio";
> > +               drive-strength = <2>;
> > +               bias-disable;
> > +               output-low;
> > +       };
> > +
> >         hall_int_n_default: hall-int-n-state {
> >                 pins = "gpio92";
> >                 function = "gpio";
> > @@ -1172,3 +1193,37 @@ &usb_1_ss1_dwc3_hs {
> >  &usb_1_ss1_qmpphy_out {
> >         remote-endpoint = <&retimer_ss1_ss_in>;
> >  };
> > +
> > +&usb_mp {
> > +       status = "okay";
> > +};
> > +
> > +&usb_mp_hsphy0 {
> > +       vdd-supply = <&vreg_l2e_0p8>;
> > +       vdda12-supply = <&vreg_l3e_1p2>;
> > +
> > +       phys = <&eusb6_repeater>;
> 
> I was under the impression that the fingerprint reader is on the 2nd
> port of the root hub, as:
> * In ACPI, the only USB device of MP is listed under PRT1, PRT0 is empty
> * On Windows the device is listed as PORT2...HUB1...
> * `lsusb -t` for the device gives `Port 002: Dev 002,...12M`
> 
> Do `usb_mp_hsphy0` and `usb_mp_hsphy1` translate to port 1 and 2
> respectively? Because if yes, repeater may belong to `usb_mp_hsphy1`
> instead?
> 

That would be more logical, I'll dig up some documentation for the
SoC and see if I can better understand the naming of these instances.

> Current series works. Moving `phys = <&eusb6_repeater>;` to
> `usb_mp_hsphy1` also works, I'm assuming because we are not actually
> disabling unused phys.
> 

While not being used for any communication, the PHY is there and the
multiport controller seems to need them both to be present. Further
regardless of something being connected to the PHY, it's still there, so
it seems correct to represent it in the dtsi. That said, I didn't dig
deeper into the exact details here.

> Tested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> 

Thanks.

Regards,
Bjorn

> 
> > +
> > +       status = "okay";
> > +};
> > +
> > +&usb_mp_hsphy1 {
> > +       vdd-supply = <&vreg_l2e_0p8>;
> > +       vdda12-supply = <&vreg_l3e_1p2>;
> > +
> > +       status = "okay";
> > +};
> > +
> > +&usb_mp_qmpphy0 {
> > +       vdda-phy-supply = <&vreg_l3e_1p2>;
> > +       vdda-pll-supply = <&vreg_l3c_0p9>;
> > +
> > +       status = "okay";
> > +};
> > +
> > +&usb_mp_qmpphy1 {
> > +       vdda-phy-supply = <&vreg_l3e_1p2>;
> > +       vdda-pll-supply = <&vreg_l3c_0p9>;
> > +
> > +       status = "okay";
> > +};
> >
> > --
> > 2.48.1
> >
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
