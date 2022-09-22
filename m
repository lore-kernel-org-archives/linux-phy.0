Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 667C7C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 07:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7C4FkCt+i9Rs0y4X9A03YXyADxD+1aB16o2LZzkDCnQ=; b=pwepoX4oDRX8Y4
	dWlMyUePIANEcb3U1b/42KPfmPTTW/WBVQzIMkiteUXwyKiM45gyimHEG4JEU2yt8UDqwV1wKO93D
	tkRPEOcRxdzqGD+04zWSbUk4lpz0+TNA19zvGh2OblCESL222fBiouPzHgSC8HcU81u1YcvEWlk3f
	/GTpG+cvXJe/CQEO3/F4bcBgXOrF+NjBDpNA97zpOWewhLX+kYeiFc2S6kNM8ogroLHPpOgAQl6Kh
	GP3wXJaBCf/fwlPpdUeveAV/ZGmXPD9CV5cx57EyUYIYa8KS4MWCBbPpEnJV22DMX0OZ0Hk0F+3Ba
	q3Krdoxrr7GLn/2+5Aew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obH4J-00Dyij-Rz; Thu, 22 Sep 2022 07:56:23 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obH4H-00Dyhc-A4
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 07:56:22 +0000
Received: by mail-qk1-f178.google.com with SMTP id c19so5627531qkm.7
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:56:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=V7WeZATWUx2tE4MxoHQwI+QugNIBy3AvjYpUsXK7axg=;
        b=aaMXzXewQf2N7fcCo+ZnumA5wlIm7Qh1KSOwMGp18TGHiXC4NwS78oTog39Vie916v
         r8KywVS2uc09H/vU2ZqZ6103CH2GvG6Cfc1HH8lizuxDgtXEqD086KfHONPdRZptJMGf
         Ij62Zv8EQVRhZQePmmWf3LXL/Xe9RweBuF2a6QO/dJhL902QzOuFl1xpN/DxVWJe0vFe
         xdK9HNZJ7NuHvUnzV6pqgy6jwDXqeHEEmRWcgofz7V8tyl9AbmTAqckDgMpWv26rvqWp
         H/a2F6BGONgeiZYZT7krrL9ACd0qoUV9I3WEsJGSM7jczyH+MawjX/tLRE2CALNqwBUg
         bn8w==
X-Gm-Message-State: ACrzQf1RwecyCbDCiqY5yMNsz+QizQ/dcHS0xx4SDkL1dD3omwUnPd5Y
	1Uz8Jfqu35thw2YM+MebDIlrhTdlGGLbTTxi
X-Google-Smtp-Source: AMsMyM5K28AIluSbctLX4Xh5OlXvKErn+pvhYsSRWxrKrgFCKZyrNuaQ6Y5Wkzc0f9yKwzgJbn+Osg==
X-Received: by 2002:ae9:e8d4:0:b0:6cb:c44f:6c42 with SMTP id a203-20020ae9e8d4000000b006cbc44f6c42mr1221608qkg.440.1663833378509;
        Thu, 22 Sep 2022 00:56:18 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id r13-20020ac8794d000000b003438a8e842fsm3030132qtt.44.2022.09.22.00.56.17
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:56:18 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id 125so11544088ybt.12
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 00:56:17 -0700 (PDT)
X-Received: by 2002:a25:3851:0:b0:6ad:9cba:9708 with SMTP id
 f78-20020a253851000000b006ad9cba9708mr2393590yba.36.1663833377467; Thu, 22
 Sep 2022 00:56:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921084745.3355107-3-yoshihiro.shimoda.uh@renesas.com>
 <9b29ee3f-ed48-9d95-a262-7d9e23a20528@linaro.org> <TYBPR01MB534100D42EC0202CA8BEF04CD84E9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
In-Reply-To: <TYBPR01MB534100D42EC0202CA8BEF04CD84E9@TYBPR01MB5341.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 22 Sep 2022 09:56:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV=HECSXtLi6BFRVFiYZvjJ_t5RDUY3DckbSB4ozEtOgg@mail.gmail.com>
Message-ID: <CAMuHMdV=HECSXtLi6BFRVFiYZvjJ_t5RDUY3DckbSB4ozEtOgg@mail.gmail.com>
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: renesas: Document Renesas
 Ethernet SERDES
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "kishon@ti.com" <kishon@ti.com>, 
	"vkoul@kernel.org" <vkoul@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>, 
	"edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>, 
	"pabeni@redhat.com" <pabeni@redhat.com>, "richardcochran@gmail.com" <richardcochran@gmail.com>, 
	"robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "andrew@lunn.ch" <andrew@lunn.ch>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_005621_364367_4BD116CF 
X-CRM114-Status: GOOD (  22.34  )
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

Hi Shimoda-san,

On Thu, Sep 22, 2022 at 9:39 AM Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
> > From: Krzysztof Kozlowski, Sent: Thursday, September 22, 2022 4:29 PM
> > On 21/09/2022 10:47, Yoshihiro Shimoda wrote:
> > > Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).
> > >
> > > Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> > > ---
> > >  .../bindings/phy/renesas,ether-serdes.yaml    | 54 +++++++++++++++++++
> > >  1 file changed, 54 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> > b/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> > > new file mode 100644
> > > index 000000000000..04d650244a6a
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/renesas,ether-serdes.yaml
> >
> > Filename based on compatible, so renesas,r8a779f0-ether-serdes.yaml
>
> I got it. I'll rename the file.

Is this serdes present on other R-Car Gen4 SoCs, or is it (so far) only
found on R-Car S4-8?

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
