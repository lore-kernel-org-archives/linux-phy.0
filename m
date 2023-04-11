Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85593C76196
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 12:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wi8Eq8QaPtRt7zKqgEFMwdYoI7uKFH1t5a30Fms6TIM=; b=krY7am1mvLApj3
	lqhYrRpo3xBdIoLldkzToQo3KQHDkUIf+JGW0paNsLeXstsx9q9ZG6xzDTIGNwxfcPynHXPF9isvR
	wnE3zK4r9wYF9QUWNgj1J6rdoXvyRkFFvmNQ7Rip1MuWZw4HJcr9mLLNDUTl+ipgGhuNWqqheTCld
	+8ZddgA/YixXKAuOroIIn4o15IvswfKZ5crXlh4Z31IuG+AChC3Ps4zP5cWumC4h68bTF2uyAbDTd
	p1laA+tuu4aQfzTvaTWRiMiNvPMRlkibF955lGSzzRGTuop1vfy2mBC7cXxe++wIuijmYHQcVtoL7
	XKolSmR/inDCiQkUTnbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDV4-0000nD-07;
	Tue, 11 Apr 2023 12:53:30 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDV1-0000mh-2N
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 12:53:29 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-54c12009c30so263092077b3.9
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 05:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681217606;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fFv74P1KCayojYjxtK5/a2IFMIj+yPaoo8Ew1qIsSEg=;
        b=sMWRCSjOMPVp5si/XP2v82kjVrx83Nszx7XXfiUQ+4WWfr+Aun0q5zNh0TbCkLLrmv
         55qBvqAizK9Ib/ushXLC3pixTWaCqBTWRq2OghKIZKAO3c8aB4NXecWVCi46LhnivDh6
         rEH/S76ZH7I/zoDt9n95RFEryypfxnLPpohemb+RndwF3uYLOUa10SqfseE95Ih5aFwL
         J5cBuiYPpSO3NPLjGDX4umb2eLJqU+lzKEcPPkgYspNOJm9bDJduGJCQUHTYKyr1wo0i
         FOvd8m51xCg7kwV16LK3iJ7VO4v2z5el1fDOH4sWMg3kSwSvmhHg/f+WnFhkFhOwmdxm
         INqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681217606;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fFv74P1KCayojYjxtK5/a2IFMIj+yPaoo8Ew1qIsSEg=;
        b=3bDq9Mmj13cZ74t6RTXQ+cAvT6581ap9l9Q0ivFTg1cq7NhGQRdko7Jh5gLmH7BQTh
         rLwXiw6mp++PqeVHTPAEtBWFcN3CCfRNZBiqrqRUvglusnZnT33NXTq2Bd+qGdm8GSkz
         EhLWU5bq467QhGcrOsxnynyxP4fs4xjWs+ulVNOtCkQ2EFn1NPtioLRp1HAd3WUd6lK+
         Vn2ySU86PQ6gvU/JOqH+WQLrN2ujjYvfwIDkdY5h3+MbdfEYXHjJVUtxdoxjq4zn38Ai
         SIKMIMmK1y/sFcHgVA7uh9E25NdcEhyHxGVAINnCPNxDgw9BoLR3oX4Qrt6cx6jTsoXx
         argw==
X-Gm-Message-State: AAQBX9fgf+zARDqFJBa4/1+0NKG9g8leIJsy78CRpL5pJ38n/vAebQNy
	aMQ/kjTLMHqLG3ZfHOxx9Q3RGlSxvITv8G0XipKdSg==
X-Google-Smtp-Source: AKy350Y4X7sWd/sMQ10PeBq1usb+QKgdwjKDQyYcRyuD5lp1mmERKPgxY9L+t5XfRBFRr6SmHLi0cZYny6S114tUDXA=
X-Received: by 2002:a81:ca53:0:b0:54c:a67:90b with SMTP id y19-20020a81ca53000000b0054c0a67090bmr8186037ywk.5.1681217605731;
 Tue, 11 Apr 2023 05:53:25 -0700 (PDT)
MIME-Version: 1.0
References: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
 <20230410171010.2561393-3-bhupesh.sharma@linaro.org> <1552aad0-4b84-b508-bc05-610edb3cccff@linaro.org>
 <CAH=2NtyP8zkOetnH-i8TLBGBQnjH4f569PxjzW_84HZXeCFGNw@mail.gmail.com>
In-Reply-To: <CAH=2NtyP8zkOetnH-i8TLBGBQnjH4f569PxjzW_84HZXeCFGNw@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 11 Apr 2023 15:53:14 +0300
Message-ID: <CAA8EJprCUSvtC4Os0X==E418ZyPB1sBDP18Z5Ng-zPE0=+1rXQ@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_055327_782389_0584176D 
X-CRM114-Status: GOOD (  20.69  )
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

On Tue, 11 Apr 2023 at 15:18, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
>
> On Tue, 11 Apr 2023 at 13:17, Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On 10/04/2023 20:10, Bhupesh Sharma wrote:
> > > Add USB superspeed qmp phy node to dtsi.
> > >
> > > Make sure that the various board dts files (which include sm4250.dtsi file)
> > > continue to work as intended.
> > >
> > > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > > ---
> > >   .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
> > >   arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
> > >   .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
> > >   3 files changed, 33 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > > index a1f0622db5a0..75951fd439df 100644
> > > --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > > +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > > @@ -242,6 +242,9 @@ &usb {
> > >   &usb_dwc3 {
> > >       maximum-speed = "high-speed";
> > >       dr_mode = "peripheral";
> > > +
> > > +     phys = <&usb_hsphy>;
> > > +     phy-names = "usb2-phy";
> > >   };
> > >
> > >   &usb_hsphy {
> > > diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > > index 2505c815c65a..b2ea8f13e827 100644
> > > --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > > @@ -651,6 +651,31 @@ usb_hsphy: phy@1613000 {
> > >                       status = "disabled";
> > >               };
> > >
> > > +             usb_qmpphy: phy@1615000 {
> > > +                     compatible = "qcom,sm6115-qmp-usb3-phy";
> > > +                     reg = <0x0 0x01615000 0x0 0x200>;
> > > +
> > > +                     clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
> > > +                              <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> > > +                              <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> > > +                              <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > > +                     clock-names = "cfg_ahb",
> > > +                                   "ref",
> > > +                                   "com_aux",
> > > +                                   "pipe";
> > > +
> > > +                     resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
> > > +                              <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
> > > +                     reset-names = "phy", "phy_phy";
> > > +
> > > +                     #clock-cells = <0>;
> > > +                     clock-output-names = "usb3_phy_pipe_clk_src";
> > > +
> > > +                     #phy-cells = <0>;
> > > +
> > > +                     status = "disabled";
> >
> >
> > Please excuse me if I'm wrong, but this will not work with the current
> > PHY driver. It was not updated to handle new bindings. Please provide
> > relevant driver patches too.
>
> Oh.. from your previous emails, I got the feeling that you were
> already reworking the existing PHY driver as part of enabling it for
> newer bindings.
>
> No issues, I will send the PHY patches as well in the next version.

Then this dependency should have been declared in the cover letter.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
