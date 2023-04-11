Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C43A0C76196
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 12:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sj/VPcjdl5nrUeLi4+ZhbZR8z3CDac8UHlDFzLRDdLw=; b=SGdvkxuHGWdZXn
	mCZbSzp2e3fa5cbPLZ45D2+8fsnN33UmUZZipnjYvwsEwcwgDPIteoCWuSa8Y+zCOUCer3ovWOeFv
	kcBKlZh/m6p3ibvu0v6txK1LYaCjj7zbLay2soBmUXG1FrpfbHw1ZfOXfa3uhLHOD3C2gh8nAmvA1
	kSr5LwozPFFBiHPvcPeffT235mM3luQzprSortwymAzQOi+vwmK+Q/pH5kuU8tiz5sRCDk4Fw8J7m
	4CbjDeSFzrsgTH2Zkktc2ps9dIDC2yXwmX6cb7J75CCUlKmPAFqF00TzwYDN7es5lTGatXfGPav+p
	FdlQ1jaxmFcP5tw+E3+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCx6-00HX9x-18;
	Tue, 11 Apr 2023 12:18:24 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmCx2-00HX87-2n
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 12:18:22 +0000
Received: by mail-wr1-x430.google.com with SMTP id d9so7425716wrb.11
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 05:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681215496;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yTbe9HH7xla6IvjRVE3v3xEBDdpxshSlvWbj4cS90Gk=;
        b=NqHZHD13ntWU5e6VyVam9mCyrS5k8Y4NKP0lr+rag6Xjb0C8Asx1enZ7kpqL+1j4Zd
         386YcghzO6m1bmsbqGIj3hmAilDLAuTfLkjlpGrxkgUKksAMcwiBNwXMp3CwZMmZj8kc
         F0/qTHDHg6A4UWr/yZjuv8mNM+CyiPUnASh3jzaCya0pmsjroHamTZxIwtR7o6Ywr/nD
         +cgrhhDc+zucfxatHWl8QIz55DygdfCxrYGsI6R9gqjBIDuhsg0o2qJqEr49ZAskpr2d
         rMee9bi7Ijarw60kde53s04UNldExxJMTP7RnijfX+qpNtF0rMTkJ5qghko1QYEPdiwV
         8VMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681215496;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yTbe9HH7xla6IvjRVE3v3xEBDdpxshSlvWbj4cS90Gk=;
        b=s8b+1jQRv5t/9FDQgEYqLZBBQOCv50EjP7Y5H6KS6EL8eoV8qWOmQWY+NTNAErk8Qw
         zv1kVavWPIychq3pP+2wiZlwAkHw1Yd9+OaIXx1WIWuSt7G9lLV3EuhD0/oiZ6x98ely
         g2lEbf9jFT7XhsAwv8XcHiuHg6fswarKkro0gEdFQubQkvIMPE5eV1J54R79t7Y5h7Md
         Wff/oYQw8YhmtM2/Z/vSkBJPzYIZiQn45Q687Un2rA5m5ZDPn4vqC1CtWXl5/OrbpGSJ
         AKTCUO0MLvTTv9WMLdyR7fuyot9HMivZww2dTmOX6Hk8zP9obhigfYHBmUlrzPNu/9c3
         FdEA==
X-Gm-Message-State: AAQBX9eVzZGBLpHFwk6ChpBIC46n3dzV5yp3sPXnzcyAec/EYBZUh26c
	z7OA/ilNOpVAJqs8kpcg04twrWj8cJSthY5HsNm9RQ==
X-Google-Smtp-Source: AKy350bLQi36jed5Ek4eZ4RzvvzDDrND4VBtxswzbOaeoUFpSR+5mkf0SKQoMzYmDUPKd6b6Oyrx6sJ7/PrjlaJjtlY=
X-Received: by 2002:a05:6000:144b:b0:2d7:9771:fc4b with SMTP id
 v11-20020a056000144b00b002d79771fc4bmr4255886wrx.5.1681215495950; Tue, 11 Apr
 2023 05:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
 <20230410171010.2561393-3-bhupesh.sharma@linaro.org> <1552aad0-4b84-b508-bc05-610edb3cccff@linaro.org>
In-Reply-To: <1552aad0-4b84-b508-bc05-610edb3cccff@linaro.org>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Tue, 11 Apr 2023 17:48:04 +0530
Message-ID: <CAH=2NtyP8zkOetnH-i8TLBGBQnjH4f569PxjzW_84HZXeCFGNw@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_051820_905552_2E9B8924 
X-CRM114-Status: GOOD (  19.13  )
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

On Tue, 11 Apr 2023 at 13:17, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 10/04/2023 20:10, Bhupesh Sharma wrote:
> > Add USB superspeed qmp phy node to dtsi.
> >
> > Make sure that the various board dts files (which include sm4250.dtsi file)
> > continue to work as intended.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
> >   arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
> >   .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
> >   3 files changed, 33 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > index a1f0622db5a0..75951fd439df 100644
> > --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > @@ -242,6 +242,9 @@ &usb {
> >   &usb_dwc3 {
> >       maximum-speed = "high-speed";
> >       dr_mode = "peripheral";
> > +
> > +     phys = <&usb_hsphy>;
> > +     phy-names = "usb2-phy";
> >   };
> >
> >   &usb_hsphy {
> > diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > index 2505c815c65a..b2ea8f13e827 100644
> > --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > @@ -651,6 +651,31 @@ usb_hsphy: phy@1613000 {
> >                       status = "disabled";
> >               };
> >
> > +             usb_qmpphy: phy@1615000 {
> > +                     compatible = "qcom,sm6115-qmp-usb3-phy";
> > +                     reg = <0x0 0x01615000 0x0 0x200>;
> > +
> > +                     clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
> > +                              <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> > +                              <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> > +                              <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > +                     clock-names = "cfg_ahb",
> > +                                   "ref",
> > +                                   "com_aux",
> > +                                   "pipe";
> > +
> > +                     resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
> > +                              <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
> > +                     reset-names = "phy", "phy_phy";
> > +
> > +                     #clock-cells = <0>;
> > +                     clock-output-names = "usb3_phy_pipe_clk_src";
> > +
> > +                     #phy-cells = <0>;
> > +
> > +                     status = "disabled";
>
>
> Please excuse me if I'm wrong, but this will not work with the current
> PHY driver. It was not updated to handle new bindings. Please provide
> relevant driver patches too.

Oh.. from your previous emails, I got the feeling that you were
already reworking the existing PHY driver as part of enabling it for
newer bindings.

No issues, I will send the PHY patches as well in the next version.

Thanks,
Bhupesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
