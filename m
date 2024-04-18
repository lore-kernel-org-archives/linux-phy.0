Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0721C4345F
	for <linux-phy@archiver.kernel.org>; Thu, 18 Apr 2024 13:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hp+10HinwtP3TW1HjMPOtrbcqrSApnRmVJB6vzi8PEU=; b=mlTijSM8aW6dv9
	3M8rbb9dV1fMycY0gSHsRRii8A65KejuIKUNRraaJz5JCezSHzpWJnAr/QOA7p5IClDtpy4T0R4pO
	ZAgVBdHIKUYOjk63zop9i+BI4NlB2GPOSAyqT86bzWl1w943fLWsDir5XBLQ5/WBpyGkt8sU4Hz5z
	zBq+LqZCCWIfBsS3gzQItxDk68XvDdjCGWbIjORduUgVDVFP/+Xm1xazNJb/z2bci7gPBz7ANmV38
	8ZV+r72RRXKUJnOZ7egz4BFPUCJ7qlcCaIRLbg6wkP9aodGQekHa0SyeHNlmF99HgtPIwdcOJDn4+
	+PQCvyVajPi8ioEq3uSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxRgr-00000002Lsz-13xL;
	Thu, 18 Apr 2024 13:20:37 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxRgi-00000002Lp5-3qy7
	for linux-phy@lists.infradead.org;
	Thu, 18 Apr 2024 13:20:35 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-5aa17c29ba0so470179eaf.3
        for <linux-phy@lists.infradead.org>; Thu, 18 Apr 2024 06:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713446426; x=1714051226; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kv/eRlfqI9fnVJrlsdInFKVMVhQmcxt9AimltQ38bU4=;
        b=SjaYWlDN3kENcF8S9ZjSbGbEFMtIkUiy6oxk72FmGvm9NsgGwM6NEjJ1jqLiRZJRhg
         zyFYijM/Nc0+cRmV0edC0fQUSpcndX9mOqiHq2j4oU4OC7tXUp9pHOxAHZLXkXuMbgkG
         TVPpL+ih8jjc7tNkO/utUZz4yuousLb7Qsfc8F4f9SsqLbZ7Qix1YNVIMx+Kxv7nGRvl
         hzMlxx8+pWFhIs7kdgvmVtVrgFsdb+P1dntUWMxAoxFiNr6xuIWC3316ceQO2z4bmE+9
         oJloDlL6BHqK8hfJpFzPwUZk6M7LJ1gDDxx3L5pyWGCsG6sG59dcQLHdb8OtndeOCXbA
         6eNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713446426; x=1714051226;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kv/eRlfqI9fnVJrlsdInFKVMVhQmcxt9AimltQ38bU4=;
        b=SPbgC8Wd4Eo7vQc3LLvigQzv5jj7CaZelg0Q9PCHzwzVWhV3qldf6Uunc3pvleEu5m
         mM4RquPSFsPJEyfEoWnEJc/NOJAkYnPOvhaiJA+O40iu7mQSX2v/aO/mzUzUHNNeancY
         8TmTwxDpva6dLSQyCcKZXgWGujR1UwCZlaGsZl28EO/wbQNwcOdN+EtPuva1rsUCXlnZ
         9Frk1rpPOI7HXST3YCVyNmFrMXGYEliEnZZTl/W86/BQa3w/OdbCqJh/lj7HPwoEkewo
         8I/egyy6ICTPyDCyTCGWVpiJgn1m+eQrSukHQvS/cqt+WyJGgCWH2LK7PB2sQxqhK9Ty
         T1bQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxH0jH5xkJBTe2iWImLIglYiGnQBRfRnr29YfMq5u94HwIG5REnPklgHSKcDLrxxD/KzHqq/BlNbnyo6Bjqux1kZTEzAfgAQJo5eB3Vw==
X-Gm-Message-State: AOJu0Yzaa4HoJqn3I9uLDJIVq1fB5gghWrGYXaAyeOZbcgdTtkqPo4In
	94fmnLuCiWnBV4avoBIMCNvPfBl8G4WPTAfG7S4jcsf9F1YE01JkUGI8Df0fUkryxIkqjzPOUSs
	l8aNBnl2O07r+RwwARP5dyHN0tgSPPnYzJ/JXvA==
X-Google-Smtp-Source: AGHT+IHb/MdViNDEYLGDlZta2cUpYEdAdq/Zq5yJhTp7tH/XZ2cMCev0RXDqyzn43o1+A8jwrKM5rxrFUIw8Q5yDYVo=
X-Received: by 2002:a4a:ac89:0:b0:5aa:676e:9ad9 with SMTP id
 b9-20020a4aac89000000b005aa676e9ad9mr3474499oon.2.1713446426269; Thu, 18 Apr
 2024 06:20:26 -0700 (PDT)
MIME-Version: 1.0
References: <20240404122559.898930-1-peter.griffin@linaro.org>
 <20240404122559.898930-8-peter.griffin@linaro.org> <4ed72378-672e-46d6-9f29-fa118f598739@kernel.org>
In-Reply-To: <4ed72378-672e-46d6-9f29-fa118f598739@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 18 Apr 2024 14:20:15 +0100
Message-ID: <CADrjBPpaR86R6FMwMqos7ojVfDpGxS=ygW50UBCy1DTsoXHJgQ@mail.gmail.com>
Subject: Re: [PATCH 07/17] arm64: dts: exynos: gs101: Add ufs, ufs-phy and ufs
 regulator dt nodes
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org, 
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com, 
	martin.petersen@oracle.com, chanho61.park@samsung.com, ebiggers@kernel.org, 
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	andre.draszik@linaro.org, saravanak@google.com, willmcvicker@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_062029_108682_EFCF431E 
X-CRM114-Status: GOOD (  21.00  )
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

Hi Krzysztof,

Thanks for your review feedback.

On Fri, 5 Apr 2024 at 08:53, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 04/04/2024 14:25, Peter Griffin wrote:
> > Enable the ufs controller, ufs phy and ufs regulator in device tree.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../boot/dts/exynos/google/gs101-oriole.dts   | 17 +++++++++
> >  arch/arm64/boot/dts/exynos/google/gs101.dtsi  | 35 +++++++++++++++++++
>
> If you wish you can split DTSI and DTS into separate patches. Up to you.

Thanks for the heads up
>
> >  2 files changed, 52 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
> > index 6be15e990b65..986eb5c9898a 100644
> > --- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
> > +++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
> > @@ -53,6 +53,14 @@ button-power {
> >                       wakeup-source;
> >               };
> >       };
> > +
> > +     ufs_0_fixed_vcc_reg: regulator-0 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "ufs-vcc";
> > +             gpio = <&gpp0 1 0>;
>
> Use defines for GPIO flags,

Will fix in v2

> but more important: are you sure this is not
> coming from a PMIC? What's the voltage? It looks like a stub for missing
> PMIC, because UFS voltages are usually provided by PMIC.

UFS vcc is 1.2v. The gpio signal from gs101 SoC is called BOOTLD0, and
it is connected to slave pmic (S2MPG11) UFS_EN signal which is a gpio
enabled voltage rail for UFS (LDO8S).

The downstream driver code declares the UFS supply as regulator-fixed
even though it has a fully featured regulator driver for the pmic,
with the LDO8S regulator exposed. Checking the DT for the pmic the min
and max volt are different, so using regulator-fixed seems wrong for
downstream.

s_ldo8_reg: LDO8S {
    regulator-name = "S2MPG11_LDO8";
    regulator-min-microvolt = <1127800>;
    regulator-max-microvolt = <1278600>;
    regulator-always-on;
    regulator-initial-mode = <SEC_OPMODE_SUSPEND>;
    channel-mux-selection = <0x28>;
    schematic-name = "L8S_UFS_VCCQ";
    subsys-name = "UFS";
 };

So I think you're correct this is a stub pending full pmic support. I
propose in v2 to add a comment similar to what we have in
exynos850-e850-96.dts today above the regulator-fixed node like /*
TODO: Remove this once PMIC is implemented  */?

regards,

Peter.




>
> > +             regulator-boot-on;
> > +             enable-active-high;
> > +     };
> >  };
> >
> >  &ext_24_5m {
> > @@ -106,6 +114,15 @@ &serial_0 {
> >       status = "okay";
> >  };
> >
> > +&ufs_0 {
> > +     status = "okay";
> > +     vcc-supply = <&ufs_0_fixed_vcc_reg>;
> > +};
> > +
> > +&ufs_0_phy {
> > +     status = "okay";
> > +};
> > +
> >  &usi_uart {
> >       samsung,clkreq-on; /* needed for UART mode */
> >       status = "okay";
> > diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > index 608369cec47b..9c94829bf14c 100644
> > --- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > +++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
> > @@ -1277,6 +1277,41 @@ pinctrl_hsi2: pinctrl@14440000 {
> >                       interrupts = <GIC_SPI 503 IRQ_TYPE_LEVEL_HIGH 0>;
> >               };
> >
> > +             ufs_0_phy: phy@17e04000 {
> > +                     compatible = "google,gs101-ufs-phy";
> > +                     reg = <0x14704000 0x3000>;
> > +                     reg-names = "phy-pma";
> > +                     samsung,pmu-syscon = <&pmu_system_controller>;
> > +                     #phy-cells = <0>;
> > +                     clocks = <&ext_24_5m>;
> > +                     clock-names = "ref_clk";
> > +                     status = "disabled";
> > +             };
> > +
> > +             ufs_0: ufs@14700000 {
> > +                     compatible = "google,gs101-ufs";
> > +
>
> Drop blank line.
>
> > +                     reg = <0x14700000 0x200>,
> > +                           <0x14701100 0x200>,
> > +                           <0x14780000 0xa000>,
> > +                           <0x14600000 0x100>;
>
>
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
