Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A37CFC43217
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 12:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/l0IltxxeLwam4k1zZtXtGZOwOwF3N2/T2L/EbrrnE0=; b=WBc2nWE8ynkF4s
	aTcPHsewSgIRAQ1jpWgovUI0bLVgH/2VEv7IgcuQiAeC22dV8Sih5Or8lVtHQ3s/vc9UwuQzPXLuH
	jdGqPXn9kQ1aPnnokRUxyRGRq5qOB9K84EJBVr8EHm4sQVjpbLc7oraNsLDryb4EKMc3f5fmxYO/O
	MXb0Lpnwc+h60ET35JuVmFxZ0GZ3ClTAj+QN+72SdAKGPMLyrzLHoGjm1KPoGluCrfelcXWTkBuju
	7CEYcnza+326lDd2XhrEgOqDQlKHmkKlDY0+bBF+D5rSL2soSrQNMFFZXvXohheN1bOH8V0MXJ0m3
	Q8kDHz87VjQcFob3yUpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyYCz-00GWm5-1i; Fri, 25 Nov 2022 12:53:33 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyYCv-00GWkm-Qr
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 12:53:32 +0000
Received: by mail-ed1-x533.google.com with SMTP id z63so6292504ede.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Nov 2022 04:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MW9qEDvEypwtmNeKhaakCVB5v+cR7tGbD9IvNzHyZUw=;
        b=CkqYr0u3f2/Rsjhv3hBUgSdVzrg7HoivocSQLG3BJFUAhERGyTNQM9Z0O8DyC+jcs0
         BFXPwet7kB3qJav0qH4qmYfHWZY78q6nPwAr1urIKpSQsAYds2h6Tw1EpTrd/jmtaUEd
         gPEsO/gOmVusl80JUhD7bdMFhJRbC9rl0KRLqLs3ShT6Q/aQHwmK5ZFEMfDXEjm38Fq1
         SNaSx/FWpqf4ditIO3cD+D105r8mo9djiEfY1bWtvn3vPVpkmMNg3Nh6tLZj4/wn1XJO
         H31CqjLhMdHg30Qniv1RaJARPw3fPROKl8/4+mlvJTlQasH0gbx9bxJaPnLFKNONaQYZ
         JkfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MW9qEDvEypwtmNeKhaakCVB5v+cR7tGbD9IvNzHyZUw=;
        b=255Dl2sAi2f8MM6TAWEmp1mLa6JytjcEVvzO+DM8i0u79gAFralOjrgtoFUvhB26eU
         TtQYPxxbW9XUS+kTYaQbP+lCNTkrNzZNT+eDKxQJ8P/AMDXn+JCUw5BrHi5ryZpmeBwh
         1n1rUR5tL8REwUsrV7JooxryN2u2RE0a1OMu9L8myr7eGOXWrvCtjccvRDrHJZop9/h0
         wje/szIpEg/g5p7s4zHkO3evxVPY6yHW9rhc14JtIq4DDaXvMChA0+6+TBze+FJVxkl6
         ETX8Iuv8uFN9X7U/4SGy4X3Ab8d1cCzLM880CFZGFCq1oep6qO25kV2/PcXhtZrOArts
         Dfbw==
X-Gm-Message-State: ANoB5pmXjgl+x4OxVGjP8AQnxmycJ+BHf+YUGHN3xcDBpuOiouoUTmxP
	AAa+FPzJMkhTty3vguHBNSnwxg==
X-Google-Smtp-Source: AA0mqf5DIHq5RVrb3cKy2+JrviZoyXnxfbejTJMHZXd1JAsHQOIw50ZjTBwxibzDDFX+TcPP7ZqnMg==
X-Received: by 2002:a05:6402:4515:b0:461:cf2b:627b with SMTP id ez21-20020a056402451500b00461cf2b627bmr33936125edb.73.1669380806834;
        Fri, 25 Nov 2022 04:53:26 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id gu21-20020a170906f29500b007ad86f86b4fsm1525631ejb.69.2022.11.25.04.53.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 04:53:26 -0800 (PST)
Mime-Version: 1.0
Date: Fri, 25 Nov 2022 13:53:25 +0100
Message-Id: <COLE3UWQCQ8R.XY36EY07DDDK@otso>
Cc: <linux-arm-msm@vger.kernel.org>,
 <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Andy Gross" <agross@kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [RFC PATCH v2 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add
 sm6350 compatible
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Johan Hovold" <johan@kernel.org>
X-Mailer: aerc 0.13.0
References: <20221125092749.46073-1-luca.weiss@fairphone.com>
 <Y4CP9fwhDXsLu57Q@hovoldconsulting.com> <COLABNHBQ1DG.1PB8SDY3FW1YY@otso>
 <Y4CWoT52Q8jnm/dF@hovoldconsulting.com>
In-Reply-To: <Y4CWoT52Q8jnm/dF@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_045329_894830_5D8B9644 
X-CRM114-Status: GOOD (  36.63  )
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

On Fri Nov 25, 2022 at 11:19 AM CET, Johan Hovold wrote:
> On Fri, Nov 25, 2022 at 10:55:31AM +0100, Luca Weiss wrote:
> > Hi Johan,
> > 
> > On Fri Nov 25, 2022 at 10:50 AM CET, Johan Hovold wrote:
> > > On Fri, Nov 25, 2022 at 10:27:47AM +0100, Luca Weiss wrote:
> > > > Add the compatible describing the combo phy found on SM6350.
> > > > 
> > > > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > > > ---
> > > > @Johan Hovold, I've sent this v2 as RFC because there are several things
> > > > where I have questions on how it should be done.
> > > > 
> > > > In this patch, you can see there's cfg_ahb (&xo_board) and power-domains
> > > > is not set. In msm-4.19 &gcc_usb30_prim_gdsc is only used in the
> > > > ssusb@a600000 node, or should I also add it to qmpphy?
> > >
> > > Yeah, you may need to add a platform specific section of the clocks,
> > > which appear to be different, even if I'm not sure they are currently
> > > described correctly (xo_board as cfg_ahb and "QLINK" as ref). How are
> > > they named in the vendor's dts?
> > 
> > This is the msm-4.19 dts:
> > https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/lagoon-usb.dtsi#354
>
> 		clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> 			<&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>,
> 			<&rpmhcc RPMH_QLINK_CLK>,
> 			<&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> 			<&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> 		clock-names = "aux_clk", "pipe_clk", "ref_clk_src",
> 				"ref_clk", "com_aux_clk";
>
> So it looks like you don't need update the binding for the clocks as the
> above matches sc8280xp:
>
> 	aux
> 	ref
> 	com_aux
> 	usb3_pipe

Thanks for checking!

>
> Parent clocks (ref_clk_src) should not be included in the binding, but
> rather be handled by the clock driver. For example, see:
>
> 	https://lore.kernel.org/all/20221121085058.31213-4-johan+linaro@kernel.org/
> 	https://lore.kernel.org/all/20221115152956.21677-1-quic_shazhuss@quicinc.com/

So I assume you mean that I shouldn't do this:

clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
     <&rpmhcc RPMH_QLINK_CLK>,
     <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
     <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
clock-names = "aux", "ref", "com_aux", "usb3_pipe";

But for "ref" use GCC_USB3_PRIM_CLKREF_CLK? That also seems to work
fine, also if RPMH_QLINK_CLK is not used from Linux-side (checked in
debugfs).


And for the driver patch, I've discovered that this phy doesn't have
separate txa/tbx region, so dts was also wrong there. Do you know if
there's a way to test DP phy initialization without having all the USB-C
plumbing in place? Might be good to validate at least phy init works if
we're already touching all of this.

Regards
Luca

>
> > > >  .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 5 +++--
> > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > > index 6f31693d9868..3e39e3e0504d 100644
> > > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > > @@ -17,16 +17,18 @@ properties:
> > > >    compatible:
> > > >      enum:
> > > >        - qcom,sc8280xp-qmp-usb43dp-phy
> > > > +      - qcom,sm6350-qmp-usb3-dp-phy
> > > >  
> > > >    reg:
> > > >      maxItems: 1
> > > >  
> > > >    clocks:
> > > > -    maxItems: 4
> > > > +    maxItems: 5
> > > >  
> > > >    clock-names:
> > > >      items:
> > > >        - const: aux
> > > > +      - const: cfg_ahb
> > > >        - const: ref
> > > >        - const: com_aux
> > > >        - const: usb3_pipe
> > >
> > > So this would need to be moved to an allOf: construct at the end with
> > > one section each for sc8280xp and sm6350.
> > 
> > Ack.
>
> So no need to change this it seems.
>
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
