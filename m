Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2901C43219
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 14:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRTz5R7KDhqsVTPHVaKcFrl5l1Ch2RPq6Do2nij80NI=; b=z2ir2spjJ87fTF
	5Qj5TTwQ+VG6wdHO9QVAdeC0klqL5CDg1X4OrNgyPJRu1jR8vwOIXwMfjpzpCowM22l4eFhd0TjgJ
	c6LXA5Pd+BxZepUnex5eMjMcGR3CeXDeor3PJwoElJFYXTzmHMZkDG2PsQBHLIbcGYf+GIyU1NRll
	gaNNKGJcduM7C90BnIAmpcVKIJHlLjhKpSyniH4Yvjd6gL3kCUhHXpyx4Ad27kcsR+jNlu8HXQ7m3
	F+6LhnDFBY71IDWm+BaGaRCTa99uiFMjVKXmBzkqnF+2PJdu995cORQVyDj77QZS0hKmB51MQebB6
	bktSrvGFPu9iURgIZWrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyZRR-00GvrK-0Y; Fri, 25 Nov 2022 14:12:33 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyZRO-00Gvo7-0V
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 14:12:31 +0000
Received: by mail-ed1-x536.google.com with SMTP id l11so6570254edb.4
        for <linux-phy@lists.infradead.org>; Fri, 25 Nov 2022 06:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rm7cR6ae+qOInD+66DgxiENpanQtPaQwJadOEH3Sp+I=;
        b=nVWakQVqW5tEZpFHHiKt0Psz1twbLwXTUSuYUj0W6+XMkAH0yLZYOcNvKrUcqZro0h
         acVL/kmiLOek1ZtQC+e1XVOLM9jJwQsPxhdyWJRVMa6JwI0n1TrMMcEXTeSbL3j5JsD+
         3NnSLoa1bjJG0cf7NrxG0WrhZ55LUKll9/IMgc+7oU9LDA1oG2CsbmAbuynewWZsePr5
         htR95SphAqEHdAGqWKnoGeFCR6p1D23GCh4eZvG9stI85P+p49y0q3XIg/1e4KoKZ7Y/
         exd9y9pBkr+QT7lYMOnjfv/IdIM6f5O+fgzrw+z6qx0TWK3dj4ZhTRjdyHCOHZkOK51u
         XS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rm7cR6ae+qOInD+66DgxiENpanQtPaQwJadOEH3Sp+I=;
        b=Qh0DzMeJGsr/ty992lkGtg0lwryBDj5gHW6sPETuQv82n3tprZwzqoE6ii4HGsjn7m
         pKxkhn4gYtJMUs7iu6rOIXnTmvA3GU+gBebO6hggRVIDhyMzdNdfpIsI0Zt0o2rN6y0D
         E47SHTSowWRXO4co7KoOjE4c0uwwy7s99S6QUqnfDtS7dBtJjQXhDiAkCEMbon+K+wYv
         /8CwgwEJVUcUzJvQGO+z7CY5kXcTzLIaPxabuAjePOYsAqb67FWZgSUR37hMbSlU2MJe
         04gWXFAAt5M3udCo62sQ2+PpQIu/Cnk79ugvz71nTsh9i/koKq1KjRS1jx/R3eJJNrrB
         fwiQ==
X-Gm-Message-State: ANoB5pnSbeR/8Q7klo2Qnccbc3jx1GBG72EAtMBowYakUp2/m1o+bweT
	29uDNDmkqhI4vEDMkLk6F519Uw==
X-Google-Smtp-Source: AA0mqf7x6SFiLyww87SyC8IGDI3uH4romvj+1/ZEa3aKkBGiDIMGQ9K99FuPICtZ1IRErGGVVqPvIw==
X-Received: by 2002:a05:6402:5011:b0:469:9c84:3bdd with SMTP id p17-20020a056402501100b004699c843bddmr22477624eda.302.1669385545972;
        Fri, 25 Nov 2022 06:12:25 -0800 (PST)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id p35-20020a056402502300b00463b9d47e1fsm1805512eda.71.2022.11.25.06.12.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 06:12:25 -0800 (PST)
Mime-Version: 1.0
Date: Fri, 25 Nov 2022 15:12:24 +0100
Message-Id: <COLFSBYDJQVH.1Q9V9ISPWR6ZX@otso>
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
 <Y4CP9fwhDXsLu57Q@hovoldconsulting.com> <COLABNHBQ1DG.1PB8SDY3FW1YY@otso>
 <Y4CWoT52Q8jnm/dF@hovoldconsulting.com> <COLE3UWQCQ8R.XY36EY07DDDK@otso>
 <Y4DImjwHQNlWPEKh@hovoldconsulting.com>
In-Reply-To: <Y4DImjwHQNlWPEKh@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221125_061230_131046_3D4A75AF 
X-CRM114-Status: GOOD (  23.82  )
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

On Fri Nov 25, 2022 at 2:52 PM CET, Johan Hovold wrote:
> On Fri, Nov 25, 2022 at 01:53:25PM +0100, Luca Weiss wrote:
> > > Parent clocks (ref_clk_src) should not be included in the binding, but
> > > rather be handled by the clock driver. For example, see:
> > >
> > > 	https://lore.kernel.org/all/20221121085058.31213-4-johan+linaro@kernel.org/
> > > 	https://lore.kernel.org/all/20221115152956.21677-1-quic_shazhuss@quicinc.com/
> > 
> > So I assume you mean that I shouldn't do this:
> > 
> > clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> >      <&rpmhcc RPMH_QLINK_CLK>,
> >      <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> >      <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > clock-names = "aux", "ref", "com_aux", "usb3_pipe";
> > 
> > But for "ref" use GCC_USB3_PRIM_CLKREF_CLK? That also seems to work
> > fine, also if RPMH_QLINK_CLK is not used from Linux-side (checked in
> > debugfs).
>
> Exactly. Since the vendor dts describes RPMH_QLINK_CLK as parent of ref,
> I'd suggest modelling that in the clock driver. Perhaps it has just been
> left on by the boot firmware. Someone with access to docs may be able
> explain how it is supposed to be used.

RPMH_QLINK_CLK is also in msm-4.19 ref_clk_src for
GCC_UFS_MEM_CLKREF_CLK (ufsphy_mem) and also ref_clk (ufshc_mem).

Honestly since it works fine without adding this to gcc driver and I
don't really know much about clk (and have no docs for this) would it be
okay to just ignore RPMH_QLINK_CLK?

>
> > And for the driver patch, I've discovered that this phy doesn't have
> > separate txa/tbx region, so dts was also wrong there. Do you know if
> > there's a way to test DP phy initialization without having all the USB-C
> > plumbing in place? Might be good to validate at least phy init works if
> > we're already touching all of this.
>
> Do you mean that it appears to work as sc8280xp with txa/txb shared by
> both the USB and DP parts?

Yes, looks like it. Can't find any evidence pointing in any other
direction at least, everything I've seen shows .txa = 0x1200 & .txb =
0x1600.

>
> I guess you need a proper setup to test it properly. Not sure what
> you'll be able to learn otherwise, apart from whether it passes basic
> smoke testing.

Currently it's not even smoke testing because dp phy is never getting
enabled because there's no consumer. That's why I guess it was never
noticed it's wrongly described in dts.

Regards
Luca

>
> Johan


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
