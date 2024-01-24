Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DBA3C47258
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJOWyh40/4u4jl11pH4szZGdhUgfvrFSygNqGDCtn88=; b=KVQ2IgxJ5rcib6
	W9wxuvLU2t0SKAk67tNbMrKaTaoowanqA/GAWmvV49pTBPaS+OwCupDPCQGNu8eHJ9rrvFjxmso3u
	EaxLR94OTJLXaIuoIL2SCWNgMMYWYyhbLD+r7O1cR+ES17Vt1tKL9GtEGR4RMJn+b/9HhGk/bF0x7
	1u8mfGF7Z9SLGlrloiM/GJNFu9Z7RJvnFFoRbpCpB1ehnBVKFdEb05fqnaOTnuQnMmwOLxp/TQ7fa
	Gq53vnMu70GMKsy3z8G+0F4CCLjKs8XVkhRfzGy4ZedN7LXufKFyehjM9Qk+mf1TP+7dwlrm7cU2O
	4J6EAoXMMi+2sJnnE+Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSRsp-000zuO-2U;
	Wed, 24 Jan 2024 01:16:51 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSRsm-000ztP-1l
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 01:16:50 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-db3a09e96daso4142304276.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 17:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706059006; x=1706663806; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XiDZPdJfTfPzimLT8ACIvzkmMThhwDufXcvlEt4ng70=;
        b=odCv2Uls3f6mxvpTQndVWkuLsqA+6KB23jDu4gi3WtNma3Rfjyla4+Bkt8z6dn3bPJ
         lJ0Y0tsdR3MnfQ5iuHUE1IuiA/W8kIadgnUH2gKUNglcFo+AvTTkSdDrC/j8iJYg2udX
         r+uqE/AT9vYmKW+4khxzrDALQTfgirSRP+erGEZqJGm1EkUpgOh9Y8uaaDFMCcF4triV
         R4l46fVNLuYqn4iGo8YEYDXEGnNI/KEt2jnUrQ32I2WsNjc0+4NPl/SgO1iK+wEDEKVG
         idYYzAPt3DDp+lyIAHJKZ8PeNeKtzq6ig/qwWR9UrXiWsAGzSsxBvxbrXRrGKjq7+B+o
         CxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706059006; x=1706663806;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XiDZPdJfTfPzimLT8ACIvzkmMThhwDufXcvlEt4ng70=;
        b=QbDUQZEQjNeft/sd3U/AHKmvOZEAeUbxDvJQCVnp7PJCJ3KG/bA/jg69HV0Z8LZnTt
         qMcZQIgwVsskVmdRVwtQuDtGU0TZ5C4VTIIAqFIayYcFzD3Kg+P2GIeTsW1ppfmrLJBB
         FWNJMHp1LHFSnpMEq2QShExXVJKUWXDEJbTIFx8jYwFltpHrhBCW/M/DUTAWsn4kTYil
         CJATlGBcx7MmNpCqbCKtfQIFop4tPj1lERIW8ldEQCFb6iyqk/d1zUtT0effUoPTDSJK
         056Ja9TuWDXLua3PAKXIfpvA+n9Q+neANLXnxrr9RFQHMnum1Xy5mQRwt4apNpifRYc6
         b41Q==
X-Gm-Message-State: AOJu0YxpzhtW8GtJt0IXn3oJzAVUbkwn50iMVO31GYQlRv3itWSdLnXe
	dlA5nm5UplZh/cuCPhzWZ5VXjhnami6aYfCqF/H5r8gvujX7bijPNvmGY2cYJ1cMoUf4NEyeoXw
	f1FBH/hVyYcSWPS5aU2O/Dufsj32hecDwcofs03QYBPcL6bU7u3w=
X-Google-Smtp-Source: AGHT+IGQ7HCSgRIhv+Wm9LSN6sbjwrzJYjPinkuCo89KnHd0kys9EF4OXMRQPRnVOV1NpPzxcP/YMnpDezw9TivlCAQ=
X-Received: by 2002:a05:6902:2189:b0:dbc:ab9d:4fab with SMTP id
 dl9-20020a056902218900b00dbcab9d4fabmr78935ybb.60.1706059006416; Tue, 23 Jan
 2024 17:16:46 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-15-182d9aa0a5b3@linaro.org> <CYMDEAJZ0TJK.K31XZB3E9QOG@fairphone.com>
In-Reply-To: <CYMDEAJZ0TJK.K31XZB3E9QOG@fairphone.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 24 Jan 2024 03:16:35 +0200
Message-ID: <CAA8EJpr-a1T_GTfYbUcaXv+mmjfqUYnx+fch-M=0-q89_UmeoQ@mail.gmail.com>
Subject: Re: [PATCH v2 15/15] arm64: dts: qcom: qrb4210-rb2: enable USB-C port handling
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_171648_592890_4A89232A 
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

On Tue, 23 Jan 2024 at 22:32, Luca Weiss <luca.weiss@fairphone.com> wrote:
>
> On Sat Jan 13, 2024 at 9:55 PM CET, Dmitry Baryshkov wrote:
> > Plug in USB-C related bits and pieces to enable USB role switching and
> > USB-C orientation handling for the Qualcomm RB2 board.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 50 ++++++++++++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/sm6115.dtsi     | 43 +++++++++++++++++++++++++++
> >  2 files changed, 93 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > index 52f31f3166c2..696d6d43c56b 100644
> > --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> > @@ -6,8 +6,10 @@
> >  /dts-v1/;
> >
> >  #include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/usb/pd.h>
> >  #include "sm4250.dtsi"
> >  #include "pm6125.dtsi"
> > +#include "pmi632.dtsi"
> >
> >  / {
> >       model = "Qualcomm Technologies, Inc. QRB4210 RB2";
> > @@ -256,6 +258,46 @@ kypd_vol_up_n: kypd-vol-up-n-state {
> >       };
> >  };
> >
> > +&pmi632_typec {
> > +     status = "okay";
> > +
> > +     connector {
> > +             compatible = "usb-c-connector";
> > +
> > +             power-role = "dual";
> > +             data-role = "dual";
> > +             self-powered;
> > +
> > +             typec-power-opmode = "default";
> > +             pd-disable;
> > +
> > +             ports {
> > +                     #address-cells = <1>;
> > +                     #size-cells = <0>;
> > +
> > +                     port@0 {
> > +                             reg = <0>;
> > +                             pmi632_hs_in: endpoint {
> > +                                     remote-endpoint = <&usb_dwc3_hs>;
> > +                             };
> > +                     };
> > +
> > +                     port@1 {
> > +                             reg = <1>;
> > +                             pmi632_ss_in: endpoint {
> > +                                     remote-endpoint = <&usb_qmpphy_out>;
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&pmi632_vbus {
> > +     regulator-min-microamp = <500000>;
> > +     regulator-max-microamp = <3000000>;
>
> Hi Dmitry,
>
> Are you sure vbus can supply 3000mA?
>
> In Qualcomm's document 80-PF208-77 I see 1000mA is the maximum it can
> provide, and I see the same value looking into downstream smb5 driver
> in sdm632 sources.

Indeed, you are correct here. It seems I confused vbus current with
charge current

>
> https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-4.9/+/refs/heads/int/13/fp3/drivers/power/supply/qcom/qpnp-smb5.c#414
>
> Regards
> Luca
>
> > +     status = "okay";
> > +};
> > +
> >  &pon_pwrkey {
> >       status = "okay";
> >  };
> > @@ -607,6 +649,10 @@ &usb {
> >       status = "okay";
> >  };
> >
> > +&usb_dwc3_hs {
> > +     remote-endpoint = <&pmi632_hs_in>;
> > +};
> > +
> >  &usb_hsphy {
> >       vdd-supply = <&vreg_l4a_0p9>;
> >       vdda-pll-supply = <&vreg_l12a_1p8>;
> > @@ -622,6 +668,10 @@ &usb_qmpphy {
> >       status = "okay";
> >  };
> >
> > +&usb_qmpphy_out {
> > +     remote-endpoint = <&pmi632_ss_in>;
> > +};
> > +
> >  &wifi {
> >       vdd-0.8-cx-mx-supply = <&vreg_l8a_0p664>;
> >       vdd-1.8-xo-supply = <&vreg_l16a_1p3>;
> > diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > index 76c429e8ebab..01dff6641280 100644
> > --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > @@ -878,8 +878,29 @@ usb_qmpphy: phy@1615000 {
> >                       clock-output-names = "usb3_phy_pipe_clk_src";
> >
> >                       #phy-cells = <0>;
> > +                     orientation-switch;
> >
> >                       status = "disabled";
> > +
> > +                     ports {
> > +                             #address-cells = <1>;
> > +                             #size-cells = <0>;
> > +
> > +                             port@0 {
> > +                                     reg = <0>;
> > +
> > +                                     usb_qmpphy_out: endpoint {
> > +                                     };
> > +                             };
> > +
> > +                             port@1 {
> > +                                     reg = <1>;
> > +
> > +                                     usb_qmpphy_usb_ss_in: endpoint {
> > +                                             remote-endpoint = <&usb_dwc3_ss>;
> > +                                     };
> > +                             };
> > +                     };
> >               };
> >
> >               system_noc: interconnect@1880000 {
> > @@ -1614,6 +1635,28 @@ usb_dwc3: usb@4e00000 {
> >                               snps,has-lpm-erratum;
> >                               snps,hird-threshold = /bits/ 8 <0x10>;
> >                               snps,usb3_lpm_capable;
> > +
> > +                             usb-role-switch;
> > +
> > +                             ports {
> > +                                     #address-cells = <1>;
> > +                                     #size-cells = <0>;
> > +
> > +                                     port@0 {
> > +                                             reg = <0>;
> > +
> > +                                             usb_dwc3_hs: endpoint {
> > +                                             };
> > +                                     };
> > +
> > +                                     port@1 {
> > +                                             reg = <1>;
> > +
> > +                                             usb_dwc3_ss: endpoint {
> > +                                                     remote-endpoint = <&usb_qmpphy_usb_ss_in>;
> > +                                             };
> > +                                     };
> > +                             };
> >                       };
> >               };
> >
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
