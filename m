Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B4FCC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 08:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+3mCVtfkOdH4Jq8iV3+VFgUZa1lCG4chkxUd4CjsXE=; b=J48Uiv0sL1Lg/h
	ZG7wvU+b1UrIoJReX2fyxhhzrA0POgvYtr0oOf86wrsQHgtGlYNfw1p8vd64O3CgWDU3dEODrFKw2
	jNQeNLqBAxKZBoEnvWvJ+MbOEydcDPbuPkUYYifCy1Lz7Hn8mcaX/ZB80UvkFKT21ryg9nev6BlY/
	YBKA3nDqYTiYOKlnannGpUkmNMxvhVzE/NKs6J5wiIUlesUwwafT/TXYAGkEs2fu7yZx90HW/+yDk
	pd+P663R31t2ukblYPk0rphkjXX3ADrWqNkLG4gNCpV4a8Rs2jc+/gvkDZg4zE1UkTFTmmNF32BR8
	C6VK7e7pahQa/W7XIt4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh62S-0089lV-M6; Wed, 20 Apr 2022 08:50:16 +0000
Received: from m-r2.th.seeweb.it ([5.144.164.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh62O-0089go-JM
 for linux-phy@lists.infradead.org; Wed, 20 Apr 2022 08:50:15 +0000
Received: from SoMainline.org (D57D4C6E.static.ziggozakelijk.nl
 [213.125.76.110])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 9AB6F3F7B4;
 Wed, 20 Apr 2022 10:50:01 +0200 (CEST)
Date: Wed, 20 Apr 2022 10:49:59 +0200
From: Marijn Suijten <marijn.suijten@somainline.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, bhupesh.linux@gmail.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: sm8350-sagami: usb qmp phy node
 - add 'vdda-pll-supply' & 'vdda-phy-supply'
Message-ID: <20220420084959.fvswkrcimkvxleii@SoMainline.org>
References: <20220419205854.1269922-1-bhupesh.sharma@linaro.org>
 <Yl9y668H/N+bcrP4@builder.lan>
 <CAH=2NtwCsRmPbBJ6SAb4fL_Di3SxfUsw=mZMrRGyefd+NW=PQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH=2NtwCsRmPbBJ6SAb4fL_Di3SxfUsw=mZMrRGyefd+NW=PQQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_015012_982570_420FA55E 
X-CRM114-Status: GOOD (  33.11  )
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

On 2022-04-20 12:28:24, Bhupesh Sharma wrote:
> Hi Bjorn,
> 
> On Wed, 20 Apr 2022 at 08:11, Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > On Tue 19 Apr 15:58 CDT 2022, Bhupesh Sharma wrote:
> >
> > How about making the subject:
> >
> > "arm64: dts: qcom: sm8350-sagami: add supplies to USB phy node"
> >
> > It still says the same thing, but in much less characters.
> 
> Sure, this wording seems better to me. Will fix this in v3.
> 
> > > As suggested by Bjorn during review of [1], the 'vdda-pll-supply' &
> > > 'vdda-phy-supply' supplies denote the power for the bus and the
> > > clock of the usb qmp phy and are used by the qcom qmp phy driver.
> > >
> > > So, its safe to assume that the two regulators are the same as on
> > > the MTP. So let's wire them up in the same way as the MTP.
> > >
> >
> > I'm not sure it's "safe to assume", so I would like to get Konrad's
> > input before merging this.
> 
> Right. @Konrad Dybcio , @Marijn Suijten - Any comments on this fix?
> Please share your thoughts.

All we can do is read downstream sources (and/or check compiled DTS
after all overrides have been flattened together), or read sysfs to
validate values where applicable.

These are indeed the two regulators used by USB in:

	https://github.com/sonyxperiadev/kernel/blob/7378fb627b546e0eae24cccd3ab37fa9e0802f95/arch/arm64/boot/dts/qcom/lahaina-usb.dtsi#L146-L149

And the voltages are correct for our board too as per:

	https://github.com/sonyxperiadev/kernel/blob/7378fb627b546e0eae24cccd3ab37fa9e0802f95/arch/arm64/boot/dts/qcom/lahaina-regulators.dtsi

It appears only L6 is used by other hardware nodes, but that should be
fine.

As such, with the suggestions from Bjorn applied:

	Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>

- Marijn

> Thanks,
> Bhupesh
> 
> > > In absence of the same 'make dtbs_check' leads to following warnings:
> > >
> > > arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
> > >  phy-wrapper@88e9000: 'vdda-phy-supply' is a required property
> > >
> > > arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
> > >  phy-wrapper@88e9000: 'vdda-pll-supply' is a required property
> > >
> >
> > This is good!
> >
> > Thanks for the patch Bhupesh,
> > Bjorn
> >
> > > [1]. https://lore.kernel.org/lkml/20220228123019.382037-9-bhupesh.sharma@linaro.org/
> > >
> > > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > Cc: konrad.dybcio@somainline.org
> > > Cc: Vinod Koul <vkoul@kernel.org>
> > > Cc: Marijn Suijten <marijn.suijten@somainline.org>
> > > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > > ---
> > > Changes since v1:
> > > -----------------
> > > - v1 can be found here: https://www.spinics.net/lists/linux-arm-msm/msg108467.html
> > > - Fixed the commit message to read usb qmp phy instead of ufs phy (which
> > >   was introduced erroraneously in the commit log).
> > >
> > >  .../dts/qcom/sm8350-sony-xperia-sagami.dtsi   | 25 +++++++++++++++++++
> > >  1 file changed, 25 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> > > index 90b13cbe2fa6..238ac9380ca2 100644
> > > --- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> > > @@ -3,6 +3,7 @@
> > >   * Copyright (c) 2021, Konrad Dybcio <konrad.dybcio@somainline.org>
> > >   */
> > >
> > > +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> > >  #include "sm8350.dtsi"
> > >  #include "pm8350.dtsi"
> > >  #include "pm8350b.dtsi"
> > > @@ -75,6 +76,27 @@ ramoops@ffc00000 {
> > >       };
> > >  };
> > >
> > > +&apps_rsc {
> > > +     pm8350-rpmh-regulators {
> > > +             compatible = "qcom,pm8350-rpmh-regulators";
> > > +             qcom,pmic-id = "b";
> > > +
> > > +             vreg_l1b_0p88: ldo1 {
> > > +                     regulator-name = "vreg_l1b_0p88";
> > > +                     regulator-min-microvolt = <912000>;
> > > +                     regulator-max-microvolt = <920000>;
> > > +                     regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > > +             };
> > > +
> > > +             vreg_l6b_1p2: ldo6 {
> > > +                     regulator-name = "vreg_l6b_1p2";
> > > +                     regulator-min-microvolt = <1200000>;
> > > +                     regulator-max-microvolt = <1208000>;
> > > +                     regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > > +             };
> > > +     };
> > > +};
> > > +
> > >  &adsp {
> > >       status = "okay";
> > >       firmware-name = "qcom/adsp.mbn";
> > > @@ -256,4 +278,7 @@ &usb_1_hsphy {
> > >
> > >  &usb_1_qmpphy {
> > >       status = "okay";
> > > +
> > > +     vdda-phy-supply = <&vreg_l6b_1p2>;
> > > +     vdda-pll-supply = <&vreg_l1b_0p88>;
> > >  };
> > > --
> > > 2.35.1
> > >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
