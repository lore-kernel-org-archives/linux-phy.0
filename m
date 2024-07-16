Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F973C3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jul 2024 16:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hm1/uN+KqI+cjIOAj3SMzQyfXxai+gWIAhRDjE6URT8=; b=XLPte4tR38bYSt
	ifLciHHD98FRhQUB/0dokJhYxuFrPuAv54osq61IYJQPphKnENLowKoMKPMzqNYArBY9fdXhv+RKu
	i0AwaI53kzkK/EQupwB6G/yPPUV/Z+qYXXU9bOKAFDpivj2gAQTpCnaRWHCQ1sQ+dRJMUTa6zO+L5
	EM16rKchD28PUjfui3SyExWR/XFkDA9yraDrWK14Ibu//IBlKCkYQQrQAkY2ZwdYYRAT+v6C4m4Pw
	0oPwdBcbwnUh02nJYB9rrKaDASFp54irzBovPJFt91p0k/FwbG0A61vOlIdIxS08sHN3dUjpcMl4C
	z1y+hLaB/0IH1IfHi+TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTlBj-0000000B3z5-1p3B;
	Tue, 16 Jul 2024 16:38:03 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTlBg-0000000B3yT-2L07
	for linux-phy@lists.infradead.org;
	Tue, 16 Jul 2024 16:38:01 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-65f852c82fcso31856927b3.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Jul 2024 09:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721147879; x=1721752679; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Inq9wHo9haYW+I9Tylrr0gohQZyxyP5BU7osayMiXTI=;
        b=M4a2r/L274A+7gis32NKHG5ab0Ns92G3K0ksU89f3sIvUFRU2iRb0Dqdjoeu69H/tA
         yHbSPKupGuaMuDPk6caimSR/+JpdESi7unXe4aZBK4liequazegyoqZFksjxN15r/qHd
         m3mG2d5fBPiucH5PTydOGsMZZvMGUHSxmbba/q6wE/Ay6MqByg4ggdWo3RFwha1mSeUR
         13JHOEoOQrwGF+hIZ7YFfg5/huWgP1VtdOf1bQsrc+64uzSjyIxUH2appqlMY3q1Oj+s
         BiPgJLHLM53qfbiP0m1JM1hlWm2JYMs2DrSErv80TDbqS1u6cpfNlv0IXR4fB6n1cnFv
         SNBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721147879; x=1721752679;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Inq9wHo9haYW+I9Tylrr0gohQZyxyP5BU7osayMiXTI=;
        b=N88A5qBWRIGVmhXjYh1B300ff+nE7FAYxfmrK/l3vt+r2va3mt4K1fyFxzz/Jy7Wz8
         7axieLp71zeoOP/Z3OEihWatP/sCIgCtFRihIZqyJUIsxCbfN6D3HN++cdshC5ZxMmSQ
         Pihq3CJYLseV5WZU4+awOKiCSc2qbCGAype9UOFb/2mM47CYWINm6KWYbnxxrfK8iwDC
         tm/RYUwaJKMQ+vyQpJAgtmpiyMtnfWgHGvBrAKOS7xrsbXGbtuUYW6XAo9O/XsibpekV
         bUYKTl6fVQa5ge2A58iBS3Pdj04KOb2G6nF/ikACG14qeBadAiVqfercxNY7UfAiQJbv
         AHVA==
X-Forwarded-Encrypted: i=1; AJvYcCVIFDaYaCuXQL0RMSCdY0yw+EgW1CQTGYYCtVa+Tlgt/qci5MK8UhNwurAX4Y1WjBaM/W9xUhwWzRsFuk1rP9ErNyGFqiAZxoOmAz+2Lw==
X-Gm-Message-State: AOJu0YzL8hZR3XWelSpOdfJsGLQU/orgtkbq5zeRvtkXGxIfeie4KM2U
	163aS2EtIS0M4HJy+dlUs1uJyIOJc+RkXibbqQGRJBLItK0/W2MJbbzkd0BnJ/fYuScoWl/0O71
	bTz98xamBXjrbCWWM5lO5TbKh5+I9URXpXOM7fA==
X-Google-Smtp-Source: AGHT+IE+6hxj9x884OAMB4VNRlYKsy/S+Y0o45dUnN/039E9rINPR7H3k9hGW0oD/pMtgKJEzaq/W5A/siUNC58eij4=
X-Received: by 2002:a81:b402:0:b0:61b:1f0e:10 with SMTP id 00721157ae682-66380f1304amr31569737b3.4.1721147878623;
 Tue, 16 Jul 2024 09:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-4-355d5c1fbc3c@freebox.fr> <d9898342-2439-4d3d-8e3d-5bf0a7a40245@linaro.org>
 <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr>
In-Reply-To: <b6f6c845-6094-44ce-8ad0-ed4f6d353cec@freebox.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jul 2024 19:37:47 +0300
Message-ID: <CAA8EJpqrAFKCr63JHEpZ3b3zdRfoNXoJP6SqKDOO4sqc=c6YdQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: add HDMI nodes for msm8998
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>, Jeffrey Hugo <quic_jhugo@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_093800_626115_E0CF4FC8 
X-CRM114-Status: GOOD (  21.94  )
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

On Tue, 16 Jul 2024 at 17:34, Marc Gonzalez <mgonzalez@freebox.fr> wrote:
>
> On 16/07/2024 15:11, Konrad Dybcio wrote:
>
> > On 27.06.2024 5:54 PM, Marc Gonzalez wrote:
> >
> >>  arch/arm64/boot/dts/qcom/msm8998.dtsi | 100 +++++++++++++++++++++++++++++++++-
> >>  1 file changed, 99 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> >> index ba5e873f0f35f..417c12534823f 100644
> >> --- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
> >> @@ -2785,7 +2785,7 @@ mmcc: clock-controller@c8c0000 {
> >>                               <&mdss_dsi0_phy 0>,
> >>                               <&mdss_dsi1_phy 1>,
> >>                               <&mdss_dsi1_phy 0>,
> >> -                             <0>,
> >> +                             <&hdmi_phy 0>,
> >>                               <0>,
> >>                               <0>,
> >>                               <&gcc GCC_MMSS_GPLL0_DIV_CLK>;
> >> @@ -2890,6 +2890,14 @@ dpu_intf2_out: endpoint {
> >>                                                      remote-endpoint = <&mdss_dsi1_in>;
> >>                                              };
> >>                                      };
> >> +
> >> +                                    port@2 {
> >> +                                            reg = <2>;
> >> +
> >> +                                            dpu_intf3_out: endpoint {
> >> +                                                    remote-endpoint = <&hdmi_in>;
> >> +                                            };
> >> +                                    };
> >>                              };
> >>                      };
> >>
> >> @@ -3045,6 +3053,96 @@ mdss_dsi1_phy: phy@c996400 {
> >>
> >>                              status = "disabled";
> >>                      };
> >> +
> >> +                    hdmi: hdmi-tx@c9a0000 {
> >
> > Please prefix the labels (hdmi: and hdmi_phy:) with mdss_
> >
> > Otherwise, this looks good
> >
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >
> >
> > One thing I noticed (testing on the 8998 MTP), enabling MDSS (not necessarily
> > HDMI, mdss and mdp is enough) results in SMMU lockups about 30% of the time..
> >
> > [    4.911422] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.913412] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> > [    4.923353] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> > [    4.927893] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.930647] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/display-controller@c901000
> > [    4.941928] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> > [    4.944438] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.952338] msm_hdmi_phy c9a0600.hdmi-phy: supply vddio not found, using dummy regulator
> > [    4.956013] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> > [    4.961055] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.967917] msm_hdmi_phy c9a0600.hdmi-phy: supply vcca not found, using dummy regulator
> > [    4.974565] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
> > [    4.977628] arm-smmu cd00000.iommu: FSR    = 00000402 [Format=2 TF], SID=0x0
> > [    4.984122] Bluetooth: hci0: setting up wcn399x
> > [    4.989670] arm-smmu cd00000.iommu: FSYNR0 = 00000021 [S1CBNDX=0 PNU PLVL=1]
>
> Interesting. I don't think I've noticed any lock-ups
> across multiple reboots.
>
> FWIW, I get similar warnings about "Fixed dependency cycle(s)" on my custom DT.
>
> [    0.055349] platform 1da4000.ufshc: Fixed dependency cycle(s) with /soc@0/phy@1da7000
> [    0.055525] platform 1da4000.ufshc: Fixed dependency cycle(s) with /soc@0/phy@1da7000
> [    0.055584] platform 1da7000.phy: Fixed dependency cycle(s) with /soc@0/ufshc@1da4000
> [    0.060279] platform c8c0000.clock-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-phy@c9a0600
> [    0.060494] platform c900000.display-subsystem: Fixed dependency cycle(s) with /soc@0/clock-controller@c8c0000
> [    0.062432] platform hdmi-out: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
> ...
> [   18.534346] adreno 5000000.gpu: Adding to iommu group 2
> [   18.540215] msm-mdss c900000.display-subsystem: Adding to iommu group 3
> [   18.544695] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> [   18.551239] platform c901000.display-controller: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> [   18.562685] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
> [   18.574122] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/display-controller@c901000
> [   18.617640] platform c9a0000.hdmi-tx: Fixed dependency cycle(s) with /soc@0/i2c@c1b5000/tdp158@5e
> [   18.618885] i2c 2-005e: Fixed dependency cycle(s) with /soc@0/display-subsystem@c900000/hdmi-tx@c9a0000
> [   18.627768] tdp158-bridge 2-005e: supply vcc not found, using dummy regulator
> [   18.636853] tdp158-bridge 2-005e: supply vdd not found, using dummy regulator
>
> It looks like some of these warnings were pre-existing,
> but some might have been added by my patches?
>
> Do they need looking into?
> I'm slightly confused.

No, that's fine. It is the SMMU issue that Konrad has been asking you
to take a look at.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
