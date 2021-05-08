Return-Path: <SRS0=tTY/=KD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EB9C433B4
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:41:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA2E161464
	for <linux-phy@archiver.kernel.org>; Sat,  8 May 2021 06:41:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EA2E161464
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OEpkPLMyp2GS9FfN5k0tdu5lkVVCCGwpmexMkB+QdUA=; b=SLk1RWlVLGO59w3vM+zxM4L7/
	UrVIB5P6a6qnphugtem6aqk3cwAynLieTXXhQmDGtMfab6gcKYPhbHsfrWH6eE/8HtM1hJ/PKHK8X
	bE4uUnM8bLa6mGWnWaS9mzQOfgGjwHN47UGIGYZTvrxSjPQsKWIPQhgOx9G0eTSs2wK8tMr3UJxKU
	y0Igpqwp/HKs8K88qSLEHqCxR4L+Z86+Aj/KbKNn0vBphINnYsUXcZLCb6iIb5q2i4sxWumWi+Dp8
	wzq8gFG/I2snjNXtidHcRwvYbHmag40A7HC8nTj0AGf9letbpG3rNqIpOwZIpjiDNz4GYJBmceW6H
	u3EmplUSg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfGeH-008zE7-Ik; Sat, 08 May 2021 06:41:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGe1-008zCz-Gm
 for linux-phy@desiato.infradead.org; Sat, 08 May 2021 06:41:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=xX1is4SChHjrs4j+7h4A1M2iT4Pn7Fk4B4vamTtYWNg=; b=kctgbEorG56WUCcMz3wrkAyElc
 npkMPP9OYaQvkugy4t48JGO8ZFrem0UQIpwfCNdrfyY5VTs4srvLOT6pxmZ9ypCP8UK5i9065i8JQ
 6jTxWAncCB2o35MDA+rVWQzm6v6bva6vrm/lY9D/N+hP2KpLFi5ms0rPxUCL9gHdBLNmqsDtS8HIV
 gtLh0ctFH4wC7CdeTx8MU0m6uh+zkdpHaZNLpYLp0BgVXJPeG8afnEALGjLEAQtABzgMw5EPwizlE
 9mZNnihDdJof7aD4YJACUiYvrU/e2VrnFmN/D3TpnynN+8bWPVWXPgoqcfa/W0PdONJ/sBMTIo6Sr
 Nzkr10xg==;
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfGdy-007P8g-JW
 for linux-phy@lists.infradead.org; Sat, 08 May 2021 06:40:56 +0000
Received: by mail-oi1-x22f.google.com with SMTP id k25so10868636oic.4
 for <linux-phy@lists.infradead.org>; Fri, 07 May 2021 23:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xX1is4SChHjrs4j+7h4A1M2iT4Pn7Fk4B4vamTtYWNg=;
 b=Imz8wSLlAusRO73bwSesFa8LgAzl8kdck2RliwjGaTk0RPj7pTEoOUYeIcdnkzZwOA
 SjBg9mby8dpHeUC0piMKcKEPha8K3oJ0UWysG7TjOaJFGohLsWmjv6awScr48i60MUxV
 JwAd8n1Von368QV3ApB+8ocb+i7cMHe1d1dxrzs/0RJqNYa2b/oz7S0p9uT6+tJnm57K
 ACmd3ZG1A+9Wdk3dt1pRH1imrojRAm2upBFOMsO/0vCPxRW3nHacS6YP8+AkiBPKCdum
 bGTtAufpQekTCpTS4t1DPYBl8vlfau4YHt+4+GF+Xf6AKOLqkwwNLrosSSRz/4LYlpaG
 jbuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xX1is4SChHjrs4j+7h4A1M2iT4Pn7Fk4B4vamTtYWNg=;
 b=duhk9jcrRC24UVFakxVErwevxckYK5Sg+2UILl+9YEX3lg30IXdX52r6AVWn4bPfWn
 YTob9uUoVe0mEeY9TJtys7zSNCVrrS6BT0jVu5LB0QaVzNOKxwHYSErA7BIfSOcyoUiz
 KZprG/REOasW0e4N1QSAkc7bSpYpF90xqEIGMhToXUiPP7+xoPV/m2TtftT9dQbzUTZs
 1fAUOqgA9+53guoT6ldG3xfJXubUyeON56XTph8Ptw/GlISgoX/3VzZ7GsNSMHG0LfWy
 r2RyCw7svqkFNogu5NTEZMPPE6RXoXQRJu42PKlEzLpoy24CsNIXeUQxFQ2tlgMbFKfe
 UEHA==
X-Gm-Message-State: AOAM533Y0jdw7mHsVFePMvUBKBxoqwsWGrob297MQ0H9Ppw/QkNvtdY/
 tS/TmIV95Tvs1ElbjXjA8hnRd+mDqDxooI8qba4=
X-Google-Smtp-Source: ABdhPJwAyGss2cNFyssIhfj5RZk/SL9XXRRmz0u6ykjl2Fblq8Iiz/GgYCUu65PFCmus8x9Wk7PHoX5r1mvRSIO7EwA=
X-Received: by 2002:aca:2813:: with SMTP id 19mr18254142oix.23.1620456052653; 
 Fri, 07 May 2021 23:40:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210506111531.21978-1-sergio.paracuellos@gmail.com>
 <20210506111531.21978-3-sergio.paracuellos@gmail.com>
 <20210507221200.GA2984128@robh.at.kernel.org>
In-Reply-To: <20210507221200.GA2984128@robh.at.kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 8 May 2021 08:40:41 +0200
Message-ID: <CAMhs-H8MF+EpcutEN=maCNMReFXaTXejfScMK8N9cKz3oaM15w@mail.gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: phy: mediatek,
 mt7621-pci-phy: add clock entries
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org, 
 Kishon Vijay Abraham I <kishon@ti.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
 linux-staging@lists.linux.dev, Greg KH <gregkh@linuxfoundation.org>, 
 NeilBrown <neil@brown.name>, Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_234054_688852_25308268 
X-CRM114-Status: GOOD (  25.36  )
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

On Sat, May 8, 2021 at 12:12 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, May 06, 2021 at 01:15:28PM +0200, Sergio Paracuellos wrote:
> > MT7621 SoC clock driver has already mainlined in
> > 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> > Hence update schema with the add of the entries related to
> > clock.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  .../bindings/phy/mediatek,mt7621-pci-phy.yaml        | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
> > index 0ccaded3f245..d8614ef8995c 100644
> > --- a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
> > @@ -16,6 +16,14 @@ properties:
> >    reg:
> >      maxItems: 1
> >
> > +  clocks:
> > +    maxItems: 1
> > +    description:
> > +      PHY reference clock. Must contain an entry in clock-names.
> > +
> > +  clock-names:
> > +    const: sys_clk
>
> You don't really need -names when there is only 1.

Ok, I will drop this property then and
>
> > +
> >    "#phy-cells":
> >      const: 1
> >      description: selects if the phy is dual-ported
> > @@ -23,6 +31,8 @@ properties:
> >  required:
> >    - compatible
> >    - reg
> > +  - clocks
> > +  - clock-names
>
> Technically, you can't add new properties and make them required as that
> breaks the ABI. If that's okay here, explain it in the commit message.

So until now no clock driver existed and things were not properly
being done in driver code directly accessing registers to get the
clock frequency to properly configure the phy. Since the new clock
driver enters into the scene, make this mandatory force to update both
driver and dtb, which is something pretty normal when upgrading the
kind of devices using this SoC. So I think it should be finde to make
this a requirement.

>
> >    - "#phy-cells"
> >
> >  additionalProperties: false
> > @@ -32,5 +42,7 @@ examples:
> >      pcie0_phy: pcie-phy@1e149000 {
> >        compatible = "mediatek,mt7621-pci-phy";
> >        reg = <0x1e149000 0x0700>;
> > +      clocks = <&sysc 0>;
> > +      clock-names = "sys_clk";
> >        #phy-cells = <1>;
> >      };
> > --
> > 2.25.1
> >

Best regards,
    Sergio Paracuellos

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
