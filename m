Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D68B6C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 06:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Hw3WvPwZWr6eEA9JZlekwhB19ybGJrtTqhyMvMcwIc=; b=B6VPSXsZooK/2T
	Fw3gmdNF70g2bheX/FJc6ZaaC5XlUrqutZ9dra5//yIsP/3HwpsMgF7DpUGYG5pRdHrVRV55f5zQb
	GeGwC3/0ebpMg9rf+nuSmEyOJQ//tgJUEFLd20Jocy5NscTdm7Nsgza2EcfME4InHocAs+wpfQUEv
	w26g5E7NPBKpNVpNP7Q5axefBYTyPils1AoPMi415SSzrzGXUMNz9Os4HoIJXKui+IKkIERTeFt7H
	catRzMwPCXo+xdKottIpc2pj85iQ2alnaxLYf9AKL6aArj74brUskzdp5WRyEn7eroDQLs4KDxCsR
	hoa6SZOqjMYivkwhy2AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh4IV-007f1i-60; Wed, 20 Apr 2022 06:58:43 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh4IR-007ezF-Ol
 for linux-phy@lists.infradead.org; Wed, 20 Apr 2022 06:58:41 +0000
Received: by mail-ot1-x32b.google.com with SMTP id
 l9-20020a056830268900b006054381dd35so535469otu.4
 for <linux-phy@lists.infradead.org>; Tue, 19 Apr 2022 23:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GSaPVxqUElsuAugf+lTz1Lk55X/LOO3DSjAti4V4PLM=;
 b=ofPJPhX4ltLEJkA1rOf++phksrK9ka18wA/xiNND9o9YTY8t049A7bGAjoB4+wZ+M1
 f6BUKDR4afoZezKXLdn94PqDDAVQFZDPaYzo1TLwasfNMrXWPY/Bz1JvlZpBjbb1u3CT
 I3yDB98LsQ0c+o/UHz5t5KWTQuinsW80gm8IWp/pG/wcidMLW8Vr1SMgxfgX5F6mO2ej
 zy5j1ANdx501TJX0h9L7hnqr6IoCJAG2hQJ/xA9kNhw+cAULXE64OVa6Tk3vAKPRSDWX
 MKfl5n3/LXlR8yNO4D8l2BfxEhxke9Pm3yU1FNr8xyD602tU2f0LJPehW3+SZ3V/18fh
 jPDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GSaPVxqUElsuAugf+lTz1Lk55X/LOO3DSjAti4V4PLM=;
 b=S0W1IP4I1oRVLpiS/Barn85Fuk2b6qD38eR3J5O+6p5cV5gTMtUAFnCmp9gAlETGZG
 3Ntu2eIiig2jd6ydm/ZhQDqdJGo/NGw/v+pgC3qNv5O/4kBT16ZAAaFZbIn17m9g/MMa
 73EGkAjLoet9NxAgCcCZgk3qYDnZ9vyr2WDZsi2t60BoZWL32A4EWOBArxEXzznRJtiw
 GYstvn11q/x3SPeO60nPrE+MmsmK2nEPozbC8W8MoWlWjLEDWjnnXV7EWgr/ed3FrHj2
 sDjexx/9bHXPf8DaT/D/mB+gtSiouHsP/Dvz80azViftZohmJCa96Qxp/C/MdahpCi6Z
 up/g==
X-Gm-Message-State: AOAM531iYa5C3xG2lJNY+7fYRi6XiMeLbwEYOqwYlS+p8QB8aDaa9xq7
 g/FEM6hk0LpnLZJE1VxAajhK9r1N/5jgPED0+0Ae8g==
X-Google-Smtp-Source: ABdhPJxiWsUR8OR24fa+Za6Sxyd3NPQjKZYvJR2DZCStyfS1fNcKqB+WQg+mQlFJ/nbyHWJW8Rk6Sf8gaJIb7sFfm88=
X-Received: by 2002:a05:6830:33d0:b0:5cf:bb0a:6d4a with SMTP id
 q16-20020a05683033d000b005cfbb0a6d4amr7047337ott.28.1650437915710; Tue, 19
 Apr 2022 23:58:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220419205854.1269922-1-bhupesh.sharma@linaro.org>
 <Yl9y668H/N+bcrP4@builder.lan>
In-Reply-To: <Yl9y668H/N+bcrP4@builder.lan>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Wed, 20 Apr 2022 12:28:24 +0530
Message-ID: <CAH=2NtwCsRmPbBJ6SAb4fL_Di3SxfUsw=mZMrRGyefd+NW=PQQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] arm64: dts: qcom: sm8350-sagami: usb qmp phy node
 - add 'vdda-pll-supply' & 'vdda-phy-supply'
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, bhupesh.linux@gmail.com, 
 linux-kernel@vger.kernel.org, vkoul@kernel.org, 
 Marijn Suijten <marijn.suijten@somainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_235839_871674_BF777F3E 
X-CRM114-Status: GOOD (  29.43  )
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

Hi Bjorn,

On Wed, 20 Apr 2022 at 08:11, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Tue 19 Apr 15:58 CDT 2022, Bhupesh Sharma wrote:
>
> How about making the subject:
>
> "arm64: dts: qcom: sm8350-sagami: add supplies to USB phy node"
>
> It still says the same thing, but in much less characters.

Sure, this wording seems better to me. Will fix this in v3.

> > As suggested by Bjorn during review of [1], the 'vdda-pll-supply' &
> > 'vdda-phy-supply' supplies denote the power for the bus and the
> > clock of the usb qmp phy and are used by the qcom qmp phy driver.
> >
> > So, its safe to assume that the two regulators are the same as on
> > the MTP. So let's wire them up in the same way as the MTP.
> >
>
> I'm not sure it's "safe to assume", so I would like to get Konrad's
> input before merging this.

Right. @Konrad Dybcio , @Marijn Suijten - Any comments on this fix?
Please share your thoughts.

Thanks,
Bhupesh

> > In absence of the same 'make dtbs_check' leads to following warnings:
> >
> > arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
> >  phy-wrapper@88e9000: 'vdda-phy-supply' is a required property
> >
> > arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami-pdx215.dt.yaml:
> >  phy-wrapper@88e9000: 'vdda-pll-supply' is a required property
> >
>
> This is good!
>
> Thanks for the patch Bhupesh,
> Bjorn
>
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
> >   was introduced erroraneously in the commit log).
> >
> >  .../dts/qcom/sm8350-sony-xperia-sagami.dtsi   | 25 +++++++++++++++++++
> >  1 file changed, 25 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> > index 90b13cbe2fa6..238ac9380ca2 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm8350-sony-xperia-sagami.dtsi
> > @@ -3,6 +3,7 @@
> >   * Copyright (c) 2021, Konrad Dybcio <konrad.dybcio@somainline.org>
> >   */
> >
> > +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >  #include "sm8350.dtsi"
> >  #include "pm8350.dtsi"
> >  #include "pm8350b.dtsi"
> > @@ -75,6 +76,27 @@ ramoops@ffc00000 {
> >       };
> >  };
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
> >  &adsp {
> >       status = "okay";
> >       firmware-name = "qcom/adsp.mbn";
> > @@ -256,4 +278,7 @@ &usb_1_hsphy {
> >
> >  &usb_1_qmpphy {
> >       status = "okay";
> > +
> > +     vdda-phy-supply = <&vreg_l6b_1p2>;
> > +     vdda-pll-supply = <&vreg_l1b_0p88>;
> >  };
> > --
> > 2.35.1
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
