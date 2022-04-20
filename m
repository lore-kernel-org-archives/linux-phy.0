Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF5AC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 19:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AujNtMH8l2Zj6h4u+0oSbRRzpyWBwX0q8x7O9ukn4Wo=; b=WbQGRzCm38AgUD
	JSpF8g+Of9wCd5j03EB6NTXQTxqz/88DafDekNinq37gRUQAZWhmXU7Q5GK2DXFH5iJL27ONVxJuI
	QHN8ve7We/IDJ9uCW4WEsHTgR2mVpH6Y2RjWB8egZB18wsXPhhaCU8YmoyRsdSjxMWIrXVK2qghUM
	YxN9WHtnT05RozUoeSLEtKlUKtN3dCrEoinONJquTBrm3BBZWAIP6+Sf1ZYsxb1Z1+vaCFX6XTU2N
	WfjHxwVQe8uXzwTAqNU4zEipzuvBT1YMnySY1DPjDmPBhQaYWC1A+JT8pmnOocKJ5plt77a48L3Bl
	q0baWBncdx6f5x25fupg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhG4u-00ADGv-1O; Wed, 20 Apr 2022 19:33:28 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhG4r-00ADGA-0E
 for linux-phy@lists.infradead.org; Wed, 20 Apr 2022 19:33:26 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 w27-20020a056830061b00b00604cde931a0so1793333oti.2
 for <linux-phy@lists.infradead.org>; Wed, 20 Apr 2022 12:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zTePCjaq6K0Z5qHIQSQaExYeC2BBv0IDHXSEaLWd7kE=;
 b=OF9o2p2++y63UunGihlxYZTv+lfERl5/nAliSripRfsHSJBjy/P1+2V5ib5N4AGckR
 fW0i+il8tJfGK23ML3m7SIvJzUQriy4pAICUpjylB7zRwpd0mH+O516HyBDSlrCJYbzW
 ggwWR5mECrHG+6yWoQd2wqChCSVvuE5OFbcfTNq+MftDuWfGxVf0lPpygNQj9bXCrg1+
 O2vRtd6JQQc2E2L695DerBriiE8lxHV/MvwV5cMozUT553VMHeJOfzvqq4WuvVdUBWmX
 7a1rCKVkYLJpCzeAvuhrkISCZg0/Layi5PyLNzjrafIcfk7gDshXuc9PGlnjqWgzrqkJ
 FyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zTePCjaq6K0Z5qHIQSQaExYeC2BBv0IDHXSEaLWd7kE=;
 b=iWqCKtQpfRHjiVQeZWEfyEbvDwkOgWobNBeASAiS7QKJwvV19H6QFIv0je+MFUZSRD
 cscoQotLJV1GR9p4eIpB2i5WWmVb0QvHz4ztE7qSa6gn+2iiqQQELjlSBunO22nsTSRc
 nEAJtSRsasDurUQcZg6sO5M0NN1gm+gxwz44Kzv3xojbBNgym8+brU9cF50bY9uNCfR3
 +bXdhX+BX1PEfo5ewxCGR2GyTIk6CXrgeFzTJQcFNDRnfzJSVoKGfsxzWVha6L5TroFZ
 5Ylb75eENLonZ7VHSZLtysyC3npe7f+VSI6nhhDkeeqewQjvK3Sbx9e3k2ZWLCDneIee
 cXIA==
X-Gm-Message-State: AOAM532A22mIAcG4GzYV3yI8mhmg61npdnYys34FEP/TezJjewG8b5dF
 UH3Vcc/A3QPFdGB+TQIPHFpVJ6hfJ7lURVsVJl1+ug==
X-Google-Smtp-Source: ABdhPJyocicbs028A0XM8UH4CGNVRr4acIzIcUBmvsAAJKDto/eyu8vaBFSEGYkB8lPZKxoGyI1a7O52y/LZCpkpQu0=
X-Received: by 2002:a9d:171:0:b0:605:5788:10bc with SMTP id
 104-20020a9d0171000000b00605578810bcmr3242749otu.162.1650483201820; Wed, 20
 Apr 2022 12:33:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220419205854.1269922-1-bhupesh.sharma@linaro.org>
 <997f91b9-c22e-41f0-300b-92559bc7896e@somainline.org>
In-Reply-To: <997f91b9-c22e-41f0-300b-92559bc7896e@somainline.org>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Thu, 21 Apr 2022 01:03:09 +0530
Message-ID: <CAH=2Ntw7Zy8nyDwNEnYQ=j=+25hjZsw3TGUW2TmT3+FvrLNu=A@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: sm8350-sagami: usb qmp phy node
 - add 'vdda-pll-supply' & 'vdda-phy-supply'
To: Konrad Dybcio <konrad.dybcio@somainline.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 bhupesh.linux@gmail.com, linux-kernel@vger.kernel.org, vkoul@kernel.org, 
 bjorn.andersson@linaro.org, Marijn Suijten <marijn.suijten@somainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_123325_093093_6E9A009C 
X-CRM114-Status: GOOD (  35.83  )
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

Hi Konrad,

Thanks for your comments. Please see my comments below:

On Wed, 20 Apr 2022 at 22:30, Konrad Dybcio
<konrad.dybcio@somainline.org> wrote:
>
>
> On 19/04/2022 22:58, Bhupesh Sharma wrote:
> > As suggested by Bjorn during review of [1], the 'vdda-pll-supply' &
> > 'vdda-phy-supply' supplies denote the power for the bus and the
> > clock of the usb qmp phy and are used by the qcom qmp phy driver.
> >
> > So, its safe to assume that the two regulators are the same as on
> > the MTP. So let's wire them up in the same way as the MTP.
> >
> > In absence of the same 'make dtbs_check' leads to following warnings:
> >
> > arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
> >   phy-wrapper@88e9000: 'vdda-phy-supply' is a required property
> >
> > arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
> >   phy-wrapper@88e9000: 'vdda-pll-supply' is a required property
> >
> > [1]. https://lore.kernel.org/lkml/20220228123019.382037-9-bhupesh.sharma@linaro.org/
> >
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: konrad.dybcio@somainline.org
> > Cc: Vinod Koul <vkoul@kernel.org>
> > Cc: Marijn Suijten <marijn.suijten@somainline.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> > Changes since v1:
> > -----------------
> > - v1 can be found here: https://www.spinics.net/lists/linux-arm-msm/msg108467.html
> > - Fixed the commit message to read usb qmp phy instead of ufs phy (which
> >    was introduced erroraneously in the commit log).
> >
> >   .../dts/qcom/sm8350-sony-xperia-sagami.dtsi   | 25 +++++++++++++++++++
> >   1 file changed, 25 insertions(+)
>
> Hi, I actually threw together a patch with [almost] all RPMh regulators
> on Sagami quite a while ago (if thunderbird doesn't explode, you should
> find it as an attachment to this message), but I haven't sent it, as
> pm8350c_l3 and pmr735a_s3 are broken on the .c driver side (the step
> numbers and/or values are not correct), but Qualcomm in their infinite
> Qualcommery will not let us, mere mortals, access the PDFs that contain
> the correct specifications, so I have to wait for somebody with access
> to them to pick them up. That said, the values you supplied seem correct
> (say for lack of allow-set-load which will bite when (if?) UFS is ever
> functional upstream on this piece of Japanese engineering), but adding
> the configuration of all regulators at once just seems more complete to me..

The complete set of regulator enablement was something on my mind and
which I tried before sending out the smaller (only relevant to USB)
patch.

My main concern was leaving the upstream kernel on the board in an
unbootable form, as I don't have the sagami board to test the changes
on.

That said, if you intend to send the complete regulator enablement
patch for the sagami board, it would be probably better in the longer
run (as currently any change to the common binding, dts or driver
files is held up by "make dtbs_check" warnings during upstream
review).

> On a note, USB - among other more or less necessary peripherals - along
> with its supplies, is brought up in XBL (or bootrom if you jump to EDL),
> so not setting these supplies in Linux does not bite in any way, shape
> or form other than "make dtbs_check" screaming.

I agree. If you want, you can include my simple patch as the followup
(just enabling the right regulators for the usb qmp phy), to your big
patch (which enables the complete regulator support). It should be
fine as well, as we eventually want to use the regulators defined in
the 'big' patch for some 'real' peripheral nodes like the usb qmp phy.

Please let me know your views.

Regards,
Bhupesh

> I'm not against this patch, but once again, even though this point may
> not sound very convincing to you all, I think it would be "nice" to
> configure all regulators in one go.
>
>
> Konrad
>
>
> > diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> > index 90b13cbe2fa6..238ac9380ca2 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> > @@ -3,6 +3,7 @@
> >    * Copyright (c) 2021, Konrad Dybcio <konrad.dybcio@somainline.org>
> >    */
> >
> > +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >   #include "sm8350.dtsi"
> >   #include "pm8350.dtsi"
> >   #include "pm8350b.dtsi"
> > @@ -75,6 +76,27 @@ ramoops@ffc00000 {
> >       };
> >   };
> >
> > +&apps_rsc {
> > +     pm8350-rpmh-regulators {
> > +             compatible = "qcom,pm8350-rpmh-regulators";
> > +             qcom,pmic-id = "b";
> > +
> > +             vreg_l1b_0p88: ldo1 {
> > +                     regulator-name = "vreg_l1b_0p88";
> > +                     regulator-min-microvolt = <912000>;
> > +                     regulator-max-microvolt = <920000>;
> > +                     regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +             };
> > +
> > +             vreg_l6b_1p2: ldo6 {
> > +                     regulator-name = "vreg_l6b_1p2";
> > +                     regulator-min-microvolt = <1200000>;
> > +                     regulator-max-microvolt = <1208000>;
> > +                     regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> > +             };
> > +     };
> > +};
> > +
> >   &adsp {
> >       status = "okay";
> >       firmware-name = "qcom/adsp.mbn";
> > @@ -256,4 +278,7 @@ &usb_1_hsphy {
> >
> >   &usb_1_qmpphy {
> >       status = "okay";
> > +
> > +     vdda-phy-supply = <&vreg_l6b_1p2>;
> > +     vdda-pll-supply = <&vreg_l1b_0p88>;
> >   };

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
