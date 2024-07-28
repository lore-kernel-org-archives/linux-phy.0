Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E3CCC3DA49
	for <linux-phy@archiver.kernel.org>; Sun, 28 Jul 2024 08:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFndZrkm76wLlF+rDMWQmQYV1vY6/EJDbl2Rki07p8w=; b=AePJ5CQQsPDomc
	TghDYn8WS9aIOe/NgLwAaCfF5Yi+KLS3/dOjSB8eh7GWZ98GppE0DF2aKJqUd76OF9J6aGZu00CFL
	WxxQHaVm0xfwI3rNOQhds2m79PQdteRFkaE6Cj35AH/CjT+TCsmWsfSyNmY0Eq4AfC1kAOaTFOHKV
	6z8dsrCBe3m5abvfUxneIpzDYZcKxKU7vBH4wflAIYgZYThYQgt/kk9cR+jb29H272KS0bgGwwExR
	3wu76QJTBboPU5vD1EUAVZ1azoLBwjYt03vdKxfSzOhgbCnAJu3lls4JcJPJAMHrS4udjcELxtV4T
	qTlAvBfw7I+mrfFhRYNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXze3-00000008AlC-2s5J;
	Sun, 28 Jul 2024 08:52:47 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXze0-00000008Akd-3KAh
	for linux-phy@lists.infradead.org;
	Sun, 28 Jul 2024 08:52:46 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-66599ca3470so9552537b3.2
        for <linux-phy@lists.infradead.org>; Sun, 28 Jul 2024 01:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722156763; x=1722761563; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b50kQg9CcOfPljkM2el62+Gp/5HcSGg+41XNn2C/3x4=;
        b=IN0FrSx9tF8J98i1RYDrGBMOhfFYVGybY1FNc9pzToAc7U3Je8M2jkbQynRCsy0yjA
         m4aV9UQq93Q0IgmFkp7eCAQgFVjAbNV/nj1DS81vze9kefssLRGhsXYtDGMnDq5G4FqL
         /rAMmcbjul1o0tdGJGK17+to622Fkxdl3btNq/z88VP2Ee5zWUT4DY5WuoDXkBtlBPHe
         /FkSUKtMfBYZWTsaFhh1/NrnS3GoIzwOCxHVb1Sjb4B+lLoSAw5tJKm9PI2kFiFDf6j3
         FGIY9NRhlVmo6UJZQV7KJpuTnf5lN8KxyHPji24UtTosaWUZtGLbnruIcfe4mnWMGYMm
         Rqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722156763; x=1722761563;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b50kQg9CcOfPljkM2el62+Gp/5HcSGg+41XNn2C/3x4=;
        b=vi11/GMk22s175RtieKiEE+9ZF+bgSQQF7TlSqFKsnLOTCok3GDRtpcTBNthmfAMk+
         JtN9y4gcfzsh9Xn5mLrbkYYQtolDCmFyLTMEv9jwaDAlVi2byotICjt9jY84rZF638rf
         go+O/WuhfYLsDq9hf6c/V4MeHsPFHtP3EdQUnlELzWORgvj2CfDws8v2Noz8F09nnCOi
         dwNScsb3W0m6zWfX6zkhzJC4bztgGrvHgnM4jy6yPllOzcN14Jaoz5dY7rmpD/3fr1M5
         uT8/9E1ArheQFwAdDlmvPHsPccTC1ov6qXMNTb99HRIS3gWPqKPWktwT8cLB8+oJicFH
         /qmg==
X-Forwarded-Encrypted: i=1; AJvYcCWXjWiYKpEJ8htkiqgD6Tbk7L1oDXn0BKHmZ90fCR0bZ8tvtDDVBjhYTR7/G0QGMPs0u0JzBCZdzTT6k5dPRASsWEv2pS+UEqw9VQunFg==
X-Gm-Message-State: AOJu0YxoYbjqDhbxdQwOC+t9qa2xmf/006HH0ElQbSHNRrzf+SNieAjm
	Ve+OhHgEfOF0gP/M6Zf1UnIe7WcbPgz+6QgTewbIBOZ0FC4UkoW6rb5CJ3omj0ut7T+nQWhaS6F
	+EkKdUWnQyqxoPWlsVv5w1L5FWqI=
X-Google-Smtp-Source: AGHT+IFxPxC4Ng6BBPJ48T04Y3ihU8aK+aGafUQKzzm/XI0/Mws3uR/xLo9Uwm/f7iZEJNeBJn29rXvYEXrH93XwLTE=
X-Received: by 2002:a0d:ea0e:0:b0:67a:f3d4:d9d2 with SMTP id
 00721157ae682-67af3d4e244mr38363277b3.39.1722156762788; Sun, 28 Jul 2024
 01:52:42 -0700 (PDT)
MIME-Version: 1.0
References: <20240718210322.37492-1-ilordash02@gmail.com> <20240718210322.37492-2-ilordash02@gmail.com>
 <20240719-ahead-kiwi-995e52bf3e74@spud> <CAGCz5HkF_WNZBVpY2SWVf071Pi896BvKFk0jnfNAYX5AKx2Zcw@mail.gmail.com>
 <20240723-dinginess-john-608d0b28293b@spud> <CAGCz5H=Gncw+Tr0XaQQhhGWQER5Rs1BcxbkPaJwx9jJ-8j7LGQ@mail.gmail.com>
 <20240723-municipal-snowy-136b08b6db90@spud>
In-Reply-To: <20240723-municipal-snowy-136b08b6db90@spud>
From: Ilya Orazov <ilordash02@gmail.com>
Date: Sun, 28 Jul 2024 11:52:31 +0300
Message-ID: <CAGCz5HnJKjNj7A0YD2fw20m-NrEs3MoCLwox86mC11Kudq8xbg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
To: Conor Dooley <conor@kernel.org>, geert+renesas@glider.be
Cc: mkl@pengutronix.de, mailhol.vincent@wanadoo.fr, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, a-govindraju@ti.com, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_015244_859746_0A7D705D 
X-CRM114-Status: GOOD (  43.02  )
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

Thank you for your detailed explanation. I support the decision to use
fallback compatible.

However, I am curious as to why the NXP CAN PHY transceiver was not
included as fallback compatible. Geert, could you please share your
thoughts on this matter?

On Tue, 23 Jul 2024 at 23:14, Conor Dooley <conor@kernel.org> wrote:
>
> On Tue, Jul 23, 2024 at 10:55:17PM +0300, Ilya Orazov wrote:
> > On Tue, 23 Jul 2024 at 21:50, Conor Dooley <conor@kernel.org> wrote:
> > >
> > > On Tue, Jul 23, 2024 at 08:20:04PM +0300, IlorDash wrote:
> > > > On Fri, 19 Jul 2024 at 18:07, Conor Dooley <conor@kernel.org> wrote:
> > > > >
> > > > > On Fri, Jul 19, 2024 at 12:03:21AM +0300, Ilya Orazov wrote:
> > > > > > Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> > > > > > It is pin-compatible with TI TCAN1042.
> > > > > >
> > > > > > Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> > > > > > ---
> > > > > >  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
> > > > > >  1 file changed, 1 insertion(+)
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > > > index 79dad3e89aa6..03de361849d2 100644
> > > > > > --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > > > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > > > @@ -18,6 +18,7 @@ properties:
> > > > > >        - nxp,tjr1443
> > > > > >        - ti,tcan1042
> > > > > >        - ti,tcan1043
> > > > > > +      - microchip,ata6561
> > > > >
> > > > > Given that your driver patch has
> > > > > | diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
> > > > > | index ee4ce4249698..dbcd99213ba1 100644
> > > > > | --- a/drivers/phy/phy-can-transceiver.c
> > > > > | +++ b/drivers/phy/phy-can-transceiver.c
> > > > > | @@ -89,6 +89,10 @@ static const struct of_device_id can_transceiver_phy_ids[] = {
> > > > > |                 .compatible = "nxp,tjr1443",
> > > > > |                 .data = &tcan1043_drvdata
> > > > > |         },
> > > > > | +       {
> > > > > | +               .compatible = "microchip,ata6561",
> > > > > | +               .data = &tcan1042_drvdata
> > > > > | +       },
> > > > > |         { }
> > > > > |  };
> > > > >
> > > > > the driver patch is actually not needed at all, and you just need to
> > > > > allow ti,tcan1042 as fallback compatible in the binding, so something
> > > > > like:
> > > > >
> > > > >   compatible:
> > > > >     oneOf:
> > > > >       - enum:
> > > > >           - nxp,tjr1443
> > > > >           - ti,tcan1042
> > > > >           - ti,tcan1043
> > > > >       - items:
> > > > >           - const: microchip,ata6561
> > > > >           - const: ti,tcan1042
> > > > >
> > > > >    '#phy-cells':
> > > > >      const: 0
> > > >
> > > > I tested the build with fallback compatible:
> > > >
> > > > compatible:
> > > >   oneOf:
> > > >     - items:
> > > >       - enum:
> > > >         - microchip,ata6561
> > > >       - const: ti,tcan1042
> > > >     - items:
> > > >       - enum:
> > > >         - nxp,tjr1443
> > > >       - const: ti,tcan1043
> > > >
> > > > and modified compatible property in DTS:
> > > >
> > > > compatible = "microchip,ata6561", "ti,tcan1042";
> > > >
> > > > Build succeeded, phy-can-transceiver driver was used. So I would like
> > > > to add a fallback compatible for both "microchip,ata6561" and
> > > > "nxp,tjr1443" in this binding and modify other DTS files with
> > > > compatible = "nxp,tjr1443". What do you think?
> > >
> > > This is wrong on two counts. Firstly, were what you have correct, you
> > > should
> > > squash the two:
> > >      - items:
> > >          - enum:
> > >            - nxp,tjr1443
> > >            - microchip,ata6561
> > >          - const: ti,tcan1042
> > >
> > > However, that does not allow the TI compatibles in isolation, so you
> > > still need to allow that for the actual TI devices, so you need:
> > >
> > >    oneOf:
> > >      - items:
> > >          - enum:
> > >            - microchip,ata6561
> > >            - nxp,tjr1443
> > >            - ti,tcan1043
> > >          - const: ti,tcan1042
> > >      - const: ti,tcan1042
> > >
> > > There's probably some devicetrees that would need to be fixed up. I'm
> > > just not convinced that this is worth retrofitting however.
> >
> > But nxp,tjr1443 is pin compatible with ti,tcan1043, so it should
> > fallback only to ti,tcan1043 and not ti,tcan1042. That's why I decided
> > to split them into different enums.
>
> Ah, sorry I missed that. I misread the match data. Then you need:
>   compatible:
>     oneOf:
>       - items:
>         - enum:
>           - microchip,ata6561
>         - const: ti,tcan1042
>       - items:
>         - enum:
>           - nxp,tjr1443
>         - const: ti,tcan1043
>       - enum:
>           const: ti,tcan1042
>           const: ti,tcan1043
>
> because the TI devices exist and we still need to be able to
> differentiate the TI and NXP devices. If you have
>   compatible = "nxp,tjr1443", "ti,tcan1042";
> that means the device is an nxp,tjr1443. If you have
>   compatible = "ti,tcan1042";
> then that's a tcan1042.
>
> > I made my patch according to a similar one that adds support for
> > nxp,tjr1443. You can find it's conversation on
> > https://lore.kernel.org/all/6ee5e2ce00019bd3f77d6a702b38bab1a45f3bb0.1674037830.git.geert+renesas@glider.be/t/#u.
>
> > I thought we want to hold all PHY chip names in one compatible enum
> > and each in its own of_device_id struct in driver and extend them
> > where appropriate.
>
> Nah, fallbacks are preferred when the programming model is either
> identical or a "compatible superset" of an existing device. New
> of_device_id structs should only be used where we need to account for
> differences in the programming model.
>
> Cheers,
> Conor.



-- 
Best regards,
Ilya Orazov

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
