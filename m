Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ECC3C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 26 Feb 2022 19:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9Ep7RK2+Trimgo+C0YtdOUFtrgxMuQG7nQQ2PswDrk=; b=M5aIEJkulKto/Q
	evb7yE/wSki8hesc4C252ubkzVBbimPTRVhHKmVVRZCzKRcS2D99nVMCtTbu/99n/FG1NI6mLG0UY
	gCmK7OVYcGSXCh9kCb7jgCgeppsobIQpQpXVqJAfVuXZtJXIy4P0xFaMcpM08XczX2aa8Yxv29t+K
	CeBjia0M2BAzuNGJCJZNZecNt9Ava93JFjPO3tEdKjE5AJZ/bW5TUcc/N1IR0EEAtd8ufd0OQMYcU
	EVBTPUJrkJjm+KwFaO831Y3Y7WBpWb3GQCV3CNrIzkMWx/1jL1jgQDyuPc01N6MOowDvEBIdjj4kD
	LnojMeMFkWxrJH3OEXGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO30p-008SZ8-Gj; Sat, 26 Feb 2022 19:45:51 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO30m-008SYh-1T
 for linux-phy@lists.infradead.org; Sat, 26 Feb 2022 19:45:49 +0000
Received: by mail-oi1-x236.google.com with SMTP id ay7so10232272oib.8
 for <linux-phy@lists.infradead.org>; Sat, 26 Feb 2022 11:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G0LikWpQrgCEVAd/hghIBEOt7qAlJsmKHlkOI041WVQ=;
 b=JuziWhM42LSaP7+BUHxkNfGKuKIjZDXDNL1XEpuTYTW7oe2SdnYhEU0AySdOvp6JMC
 ruIMP3EnxeWKVeiJF+4C9E8b/sAAsGTa3Oy/IMwWkHspp0cDRtARxb08FKXZMybX95fe
 AO2pfTGQdRJG7iji+fehbHt+8VBIN7sg4Q4PdXx7LCI1s6ww1CVjKTrbRb/M2A09mR2I
 M1/kBcqgCHCHKFGdiT+Bw63M6cXy+LZFLGqgZCIbeKa+WqwTF9QVblH7TKam/B1/davv
 p3hVBhOnqkBeYQqPRelTIxY8gj45/QYX24Uy4U4euZLcab7xtVyoG55tl4IRv2yhB9nt
 kBsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G0LikWpQrgCEVAd/hghIBEOt7qAlJsmKHlkOI041WVQ=;
 b=bbdaaNTTx4c02DHadPOQMpV2ZKXbInXuAr8VY4e9mSB6jHRBkZgerfikPM22R4S4A3
 PH74LFY4lvQ50oVdnr2r2fWmbSl57Ur/IEdLx9pBYvY1QX8ovJt2PRU56tUrj96j15PM
 hTsK5iNYVHP0OXNB/kXMiPgldqEmcOiHvAwR78nZZmsLvNMrshh7BKRPzj9VbZGltxk6
 IkHPSeHghKn95Q2Bcb7yeyeUvemVLC1gd9KqmqfBQUSGHKXNpRYgqilXFXgSeBS9HKok
 KENPI0yYczb1Vvu3ZNR5jaLuV6BfbHrdz4hG68vFpJ++cZM57fg+s5aGLO/90Jd1kplk
 8yuw==
X-Gm-Message-State: AOAM5334WK3x/7sjytD7fze+5BjnsODL26EU1vL5rxAw1JUOoFKbpIdg
 53Dfh8ye5b9PGm/8nASLTSv3SQjAN1i5Rl6AytAaDw==
X-Google-Smtp-Source: ABdhPJz786dnCnXNbTmV4p7Lmn17CQKnslbaJbIHJHc3Hu4lN30zOMD6daZAI1f/AcIyRbYaTykSNVg2TOhmALI/MYY=
X-Received: by 2002:a54:4494:0:b0:2d7:652b:287 with SMTP id
 v20-20020a544494000000b002d7652b0287mr3117288oiv.126.1645904746192; Sat, 26
 Feb 2022 11:45:46 -0800 (PST)
MIME-Version: 1.0
References: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
 <20220224123248.67073-2-bhupesh.sharma@linaro.org>
 <1645711159.080022.2923124.nullmailer@robh.at.kernel.org>
 <Yhk3NYfTlGqBJiz7@robh.at.kernel.org>
In-Reply-To: <Yhk3NYfTlGqBJiz7@robh.at.kernel.org>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Sun, 27 Feb 2022 01:15:35 +0530
Message-ID: <CAH=2Ntzyd3=fh5PDhHDrUAFTX9GJ6NtNubdPFHqddo3PzyY4xA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: phy: qcom,qmp: Describe
 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
To: Rob Herring <robh@kernel.org>
Cc: agross@kernel.org, bhupesh.linux@gmail.com, 
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_114548_182991_1284F71E 
X-CRM114-Status: GOOD (  19.84  )
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

Hi Rob,

On Sat, 26 Feb 2022 at 01:38, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Feb 24, 2022 at 07:59:19AM -0600, Rob Herring wrote:
> > On Thu, 24 Feb 2022 18:02:48 +0530, Bhupesh Sharma wrote:
> > > Since a few boards based on QCoM qmp phy use the
> > > 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> > > describe the ufs phy nodes, add them to the dt-bindings doc as well.
> > >
> > > This fixes the following '$ make dtbs_check' warning(s):
> > >
> > > sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
> > >   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
> > >    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> > >
> > > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > Cc: Vinod Koul <vkoul@kernel.org>
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > > ---
> > >  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > >
> >
> > Running 'make dtbs_check' with the schema in this patch gives the
> > following warnings. Consider if they are expected or the schema is
> > incorrect. These may not be new warnings.
> >
> > Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> > This will change in the future.
> >
> > Full log is available here: https://patchwork.ozlabs.org/patch/1597137
> >
> >
> > phy@1c07000: 'lanes@1c06000' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> >       arch/arm/boot/dts/qcom-sdx55-mtp.dt.yaml
> >       arch/arm/boot/dts/qcom-sdx55-t55.dt.yaml
> >       arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dt.yaml
> >
> > phy@1c0e000: 'lanes@1c0e200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> >       arch/arm64/boot/dts/qcom/sc7280-crd.dt.yaml
> >       arch/arm64/boot/dts/qcom/sc7280-herobrine.dt.yaml
> >       arch/arm64/boot/dts/qcom/sc7280-idp2.dt.yaml
> >       arch/arm64/boot/dts/qcom/sc7280-idp.dt.yaml
> >
> > phy@1d87000: 'lanes@1d87400' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> >       arch/arm64/boot/dts/qcom/sm8450-qrd.dt.yaml
> >
> > phy@627000: 'vdda-phy-max-microamp', 'vddp-ref-clk-always-on', 'vddp-ref-clk-max-microamp' do not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> >       arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dt.yaml
> >       arch/arm64/boot/dts/qcom/msm8996-xiaomi-scorpio.dt.yaml
>
> I'm curious why these are not fixed too?

Seems I missed this one. Will fix this in v2.
Thanks for pointing it out.

Regards,
Bhupesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
