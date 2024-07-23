Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35530C3DA49
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jul 2024 19:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCeUChhemNNeGDxU2Ul5BU9bLitS3M0irmHj9X6hnWM=; b=Uevs5u3FjyoLhI
	l4vLHWYNpNVojvLK+ATtXA6qssY4DtrOo180VwdUG4oLVPF8PW5hWJJVza/7eSmTZ8G6By+2ArJDX
	Fcb5s0ZGbHCwJzjVo48EwjxpYEDWbzqU4TxaYnhLh9Na1JwFshSxsT8oNcn1hufMZ7bg1i9A0KUUk
	Y9il9852LyOnbTmMpXTJ9hJSBqwyltehXSO/PQSIgf/L6yQZzc5ngxTXxe4fhDV85oJkF1m+r2gD7
	/m6Zas79wV+mlu0IHAcuc1b3zR9D3ljMIXVGaPQLL+Kc41SWAAVtSTLej8Kmk3uISL+nzM9KiWo07
	YR1AbWomBtdfa/y69Ctw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbi-0000000DNb0-3gF9;
	Tue, 23 Jul 2024 19:55:34 +0000
Received: from mail-yw1-x1133.google.com ([2607:f8b0:4864:20::1133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbf-0000000DNaA-0OmM
	for linux-phy@lists.infradead.org;
	Tue, 23 Jul 2024 19:55:32 +0000
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-65f9e25fffaso62419397b3.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jul 2024 12:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721764529; x=1722369329; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=etaAck1fX9Dd1SjvfDtSdQJAv2GP2QxAbK5wmmmFTuQ=;
        b=bdnuVwMFiYLv5KoY709+beA/807d75L71+Hcm5bCsPPNPOpKBdneW1bCHvFyW9Y13P
         jCF/Sg6NtPOvAvf6b0XacTscnNd4wszi4hb/Wu1oDJtBno47eNgAYbzoWPn7E+yk7H9J
         kK7vx2HKIg8kyHHmJeWzjFc+bblvVs6D1e5AOu7DMBqs/7pvJfoPKxEJUwPvclVg67nP
         W00N+oS6TPiLDD0F6H+HbN/23iKiKtrlgLn0dsMx5zwkslKBu87hTL8C9kCWm3pDSaAw
         aZd40On0rJ2W0TnW0rL7S9gocGFOTjNkV20f2oU2H5G7WK9qucE9KenQDVeRWvQlFEBa
         TrBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721764529; x=1722369329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=etaAck1fX9Dd1SjvfDtSdQJAv2GP2QxAbK5wmmmFTuQ=;
        b=tZaDS97F8PYklc+2nN4oro5rt/RK/ht0hQVKJ/RmCX5BM2oJZHjbsgwBwg23AWtdNi
         /DF3ufZFOakWB4zxXVWSfRl+gefc7HGw927BQjg0U1z2EpkSJuAvAMM2C3oIIzuAcz9M
         0SNONjq0ShrJEIIz4t7vy0X6yBKM+5hez6TCJBQpoVyrXr9Uc1DBEZk4LfJz9FxojLMj
         CK5ZqsZzr+MAbaIzy7PstTPVVeKbHkLnocDQAatqByr7+SLAR9+bGDVFxqUDTgsBPdsd
         chOYAZ009J9x48OKGlHCXA+99rrIcl0sgwKA6rTcFfQyF8kmecPbnKExaekbpmm5wDS3
         //Lw==
X-Forwarded-Encrypted: i=1; AJvYcCXSks9TvbrmNV5N8fRrFiBKYYyjCJXL4kU20cp5WVQHtzCDyWmEQudEwRGfJS1S9vlO/CKFY4+EM9QH64mJjgLLx25RrB35mxqEJmlphw==
X-Gm-Message-State: AOJu0Yyxa4nKd4PG5isxm08IfhPsXFSYQIKGJzD1TUM6oL4RJZll3o+w
	J8I/rtWuJpfas2umrQLvH4mfWQ2Y2mZ+HJEq6F6+LLlitWxp2NT/KORu75x6QpjIeAD4eLAGdX6
	raOeRjCm7mfDNxHeKCtXi4vXio3o=
X-Google-Smtp-Source: AGHT+IFXvl3OlgZ1GZmz0h0FPNpsPWMbHtygJfT9wCAu2tZOOz5UEQgu6RPgr0wwBKIqLTB+vdVKhSAS7wRFrH0i9mA=
X-Received: by 2002:a05:690c:4505:b0:649:4256:9d49 with SMTP id
 00721157ae682-6727e151e2amr13147b3.42.1721764528911; Tue, 23 Jul 2024
 12:55:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240718210322.37492-1-ilordash02@gmail.com> <20240718210322.37492-2-ilordash02@gmail.com>
 <20240719-ahead-kiwi-995e52bf3e74@spud> <CAGCz5HkF_WNZBVpY2SWVf071Pi896BvKFk0jnfNAYX5AKx2Zcw@mail.gmail.com>
 <20240723-dinginess-john-608d0b28293b@spud>
In-Reply-To: <20240723-dinginess-john-608d0b28293b@spud>
From: Ilya Orazov <ilordash02@gmail.com>
Date: Tue, 23 Jul 2024 22:55:17 +0300
Message-ID: <CAGCz5H=Gncw+Tr0XaQQhhGWQER5Rs1BcxbkPaJwx9jJ-8j7LGQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561
To: Conor Dooley <conor@kernel.org>
Cc: geert+renesas@glider.be, mkl@pengutronix.de, mailhol.vincent@wanadoo.fr, 
	vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	a-govindraju@ti.com, linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125531_158059_C30ACCD4 
X-CRM114-Status: GOOD (  32.26  )
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

On Tue, 23 Jul 2024 at 21:50, Conor Dooley <conor@kernel.org> wrote:
>
> On Tue, Jul 23, 2024 at 08:20:04PM +0300, IlorDash wrote:
> > On Fri, 19 Jul 2024 at 18:07, Conor Dooley <conor@kernel.org> wrote:
> > >
> > > On Fri, Jul 19, 2024 at 12:03:21AM +0300, Ilya Orazov wrote:
> > > > Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> > > > It is pin-compatible with TI TCAN1042.
> > > >
> > > > Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > index 79dad3e89aa6..03de361849d2 100644
> > > > --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> > > > @@ -18,6 +18,7 @@ properties:
> > > >        - nxp,tjr1443
> > > >        - ti,tcan1042
> > > >        - ti,tcan1043
> > > > +      - microchip,ata6561
> > >
> > > Given that your driver patch has
> > > | diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
> > > | index ee4ce4249698..dbcd99213ba1 100644
> > > | --- a/drivers/phy/phy-can-transceiver.c
> > > | +++ b/drivers/phy/phy-can-transceiver.c
> > > | @@ -89,6 +89,10 @@ static const struct of_device_id can_transceiver_phy_ids[] = {
> > > |                 .compatible = "nxp,tjr1443",
> > > |                 .data = &tcan1043_drvdata
> > > |         },
> > > | +       {
> > > | +               .compatible = "microchip,ata6561",
> > > | +               .data = &tcan1042_drvdata
> > > | +       },
> > > |         { }
> > > |  };
> > >
> > > the driver patch is actually not needed at all, and you just need to
> > > allow ti,tcan1042 as fallback compatible in the binding, so something
> > > like:
> > >
> > >   compatible:
> > >     oneOf:
> > >       - enum:
> > >           - nxp,tjr1443
> > >           - ti,tcan1042
> > >           - ti,tcan1043
> > >       - items:
> > >           - const: microchip,ata6561
> > >           - const: ti,tcan1042
> > >
> > >    '#phy-cells':
> > >      const: 0
> >
> > I tested the build with fallback compatible:
> >
> > compatible:
> >   oneOf:
> >     - items:
> >       - enum:
> >         - microchip,ata6561
> >       - const: ti,tcan1042
> >     - items:
> >       - enum:
> >         - nxp,tjr1443
> >       - const: ti,tcan1043
> >
> > and modified compatible property in DTS:
> >
> > compatible = "microchip,ata6561", "ti,tcan1042";
> >
> > Build succeeded, phy-can-transceiver driver was used. So I would like
> > to add a fallback compatible for both "microchip,ata6561" and
> > "nxp,tjr1443" in this binding and modify other DTS files with
> > compatible = "nxp,tjr1443". What do you think?
>
> This is wrong on two counts. Firstly, were what you have correct, you
> should
> squash the two:
>      - items:
>          - enum:
>            - nxp,tjr1443
>            - microchip,ata6561
>          - const: ti,tcan1042
>
> However, that does not allow the TI compatibles in isolation, so you
> still need to allow that for the actual TI devices, so you need:
>
>    oneOf:
>      - items:
>          - enum:
>            - microchip,ata6561
>            - nxp,tjr1443
>            - ti,tcan1043
>          - const: ti,tcan1042
>      - const: ti,tcan1042
>
> There's probably some devicetrees that would need to be fixed up. I'm
> just not convinced that this is worth retrofitting however.

But nxp,tjr1443 is pin compatible with ti,tcan1043, so it should
fallback only to ti,tcan1043 and not ti,tcan1042. That's why I decided
to split them into different enums.

I made my patch according to a similar one that adds support for
nxp,tjr1443. You can find it's conversation on
https://lore.kernel.org/all/6ee5e2ce00019bd3f77d6a702b38bab1a45f3bb0.1674037830.git.geert+renesas@glider.be/t/#u.
I thought we want to hold all PHY chip names in one compatible enum
and each in its own of_device_id struct in driver and extend them
where appropriate.

-- 
Best regards,
Ilya Orazov

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
