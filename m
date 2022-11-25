Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9AE0C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 10:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZMhH86gyIGNrO9M9//c7XoEmzjlZQ6hfqBEFN2N5H4=; b=d/pXufOs/VOfVn
	UkgL5NS8CH0XR6b72PooQ3eBly9f2z4c8aleoNjNK/diz5yGfAn4H5StYr0+HXN3/zqiAsa6PKPpE
	qZ87Tw7Iau67lmaahpJ6to0A7j702Ir94OJ2r/9V2zwFLm3vNw/rPceVTfcx81PYDzKW3lIGT/ohY
	aiFUKdwtGvCQZk9jLoDuqm/zmhOU+wUfR7XJwvKJsqNWAI9v/kdPgzgROfE2RU424JOa4jVlfi7AC
	BE8yFhfOQUaI/M3faBt113cFJKpjmAXu1XPVlpOpxPLYweZJUwkMEJTChx75zIcmOtdZtRfaPIkPk
	KA897VW1vs+2NIGdTdtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVpR-00FLOO-5T; Fri, 25 Nov 2022 10:21:05 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyVQr-00F9Xa-5s
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 09:55:42 +0000
Received: by mail-ed1-x52b.google.com with SMTP id l11so5693502edb.4
        for <linux-phy@lists.infradead.org>; Fri, 25 Nov 2022 01:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5gBtKZ9zx2Pm/QswfVM6U5FT5WCTySCzVA2lRu0vZYg=;
        b=3JXZ9i2lxLnQM0cikC8NLREGele7lN/5iPmgqRvmomvdJVd3s1P/7UI9EQqxvvYwBE
         oBJSlQNCRIXmr5I5hxZQR64jdXkpc9MGz811/HU+zsLeqMMJakrZozPCtn5rQnwIA1aV
         nt0ml934Gk+/97Q0m10njwYQcAI4aJDu37TymEtxLGCuFYDUN2pCG70SELy7KD4fMDve
         lfXddNnCv7FxahMPjdYDESyYgOS9udT4V/EeNHAuiYdmKOawyu4l+i/BLGFjS6x/XKF3
         dWLU0zuE6Z7/yVTjH5sfMuP/y0ODr0gSXWKD9LffW3FHscv/Vs7QqCG+z8EOm6h56Tuu
         L+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5gBtKZ9zx2Pm/QswfVM6U5FT5WCTySCzVA2lRu0vZYg=;
        b=Yk42cgevEGVY7Gl5vmtb456JKLPGWqe7m/NXbiqB0YDTVT20rlltKHl575EPlB4XVx
         /VI9Zm7UtUY7tx4PP0GbSB3LM+Tnhifg5QJdupY37F6RDKbseWzRwJPoF34DPbPKexpn
         ATQFB9UtvRWPs7vc1MlVpReSWraSOtzG48PTG+fRNxTpG4CoUbrTHrd3qKDok6DBeAXL
         /WAtlDyqkY5o5P8e2ictk1rdhdWRXPljJr8CDpPYqCJ3HTcKflGXO1fQtyjaqlLpmapl
         8tbJCfZffSKwjeft5LXlE2+/HUu8PGtjsazjRWx3iNgw5lOBqlN99QbeBrcK+i+JhW4A
         Fqpw==
X-Gm-Message-State: ANoB5pmbbq9FpzrQAs+zOXiVyM7e+nWsolmELTQa5Zn9pEeOmgGdR0RT
	IdkqIJfZb8HYoDh2M0PguuGsRQ==
X-Google-Smtp-Source: AA0mqf6hz+jLPZkAJZJ35vx8mMN7LAoU9iZsAgiOtesJBekuIWWL3NO2uwsFi3tIZRuuLGXsc09FIw==
X-Received: by 2002:aa7:cc8a:0:b0:464:1296:d5d4 with SMTP id p10-20020aa7cc8a000000b004641296d5d4mr33388969edt.83.1669370133372;
        Fri, 25 Nov 2022 01:55:33 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id c17-20020aa7c991000000b004619f024864sm1568627edt.81.2022.11.25.01.55.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 01:55:32 -0800 (PST)
Mime-Version: 1.0
Date: Fri, 25 Nov 2022 10:55:31 +0100
Message-Id: <COLABNHBQ1DG.1PB8SDY3FW1YY@otso>
To: "Johan Hovold" <johan@kernel.org>
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
X-Mailer: aerc 0.13.0
References: <20221125092749.46073-1-luca.weiss@fairphone.com>
 <Y4CP9fwhDXsLu57Q@hovoldconsulting.com>
In-Reply-To: <Y4CP9fwhDXsLu57Q@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_015541_304752_57BE6B4C 
X-CRM114-Status: GOOD (  25.44  )
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

Hi Johan,

On Fri Nov 25, 2022 at 10:50 AM CET, Johan Hovold wrote:
> On Fri, Nov 25, 2022 at 10:27:47AM +0100, Luca Weiss wrote:
> > Add the compatible describing the combo phy found on SM6350.
> > 
> > Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> > ---
> > @Johan Hovold, I've sent this v2 as RFC because there are several things
> > where I have questions on how it should be done.
> > 
> > In this patch, you can see there's cfg_ahb (&xo_board) and power-domains
> > is not set. In msm-4.19 &gcc_usb30_prim_gdsc is only used in the
> > ssusb@a600000 node, or should I also add it to qmpphy?
>
> Yeah, you may need to add a platform specific section of the clocks,
> which appear to be different, even if I'm not sure they are currently
> described correctly (xo_board as cfg_ahb and "QLINK" as ref). How are
> they named in the vendor's dts?

This is the msm-4.19 dts:
https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/lagoon-usb.dtsi#354

>
> It should be OK to include the power-domain also for the PHY node.

Ack.

>
> >  .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > index 6f31693d9868..3e39e3e0504d 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > @@ -17,16 +17,18 @@ properties:
> >    compatible:
> >      enum:
> >        - qcom,sc8280xp-qmp-usb43dp-phy
> > +      - qcom,sm6350-qmp-usb3-dp-phy
> >  
> >    reg:
> >      maxItems: 1
> >  
> >    clocks:
> > -    maxItems: 4
> > +    maxItems: 5
> >  
> >    clock-names:
> >      items:
> >        - const: aux
> > +      - const: cfg_ahb
> >        - const: ref
> >        - const: com_aux
> >        - const: usb3_pipe
>
> So this would need to be moved to an allOf: construct at the end with
> one section each for sc8280xp and sm6350.

Ack.

Thanks for the quick response!

Regards,
Luca

>
> > @@ -61,7 +63,6 @@ required:
> >    - reg
> >    - clocks
> >    - clock-names
> > -  - power-domains
> >    - resets
> >    - reset-names
> >    - vdda-phy-supply
>
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
