Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D643C021B3
	for <linux-phy@archiver.kernel.org>; Fri, 21 Feb 2025 07:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/6SSmzbgtzpG3fCYUFfUkWNNLxEBCRe2lJNZRvD/Bo=; b=Hc2UP7or3NnTg/
	wuuSXrWiSbmQc4Kby9cMgeULLNunH+Tm3vHW3olsD6bh0/pPqHb5gb4vZXd0CTks8EHtOQ4H/bZi9
	3sdxgpVQhYglILP4razAxqwmncHTC2nOd35HMeJowFYtSIVRMyr+epxEO54YPHPw12Gu55jjxmhFi
	slC1tBoElJ2ZPekE8RNxYuNgXTTuGv0eIm+tI3YrwiELtizV8MNQaRAX4oHVg5ayE9DZwHsLcqumU
	rqLfO5NeCA4EEQ8j5UG5YaxvQP5LWk40Bt9k18NxhQyVyO/jqQCknF/P4kfo5AAwTLJXm701bZ9b7
	9ozZwMzBdATFuRAQdMVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlNrq-00000004arU-0uzc;
	Fri, 21 Feb 2025 07:54:38 +0000
Received: from mail-ua1-f49.google.com ([209.85.222.49])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlNoI-00000004a3z-3rN0
	for linux-phy@lists.infradead.org;
	Fri, 21 Feb 2025 07:51:00 +0000
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-868da0af0fcso535181241.2
        for <linux-phy@lists.infradead.org>; Thu, 20 Feb 2025 23:50:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740124256; x=1740729056;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qxSgNBs1pQnNkNjgay4FGLNT4AcgrE/QPtbdFr16wxs=;
        b=nLHjaat02oEyEXUIdbd1xojD4bkF0wjvGEAemirE1C2/K7LUWTXY1vwGzymo7TyZiP
         dggDZFnzkAMbmlQh057v2uiXRjEKXJ0ZzwaTU/REZl2V/RuwLqUCZi+YBcw+4hEtcMmB
         41HCH5Cl4QxPPXxflP3EgbYLAPClXJDLucs5GoyI3CcRZNWUgFg/8cGszl+Lb/4Ou7eE
         itLRsYToc/B+dsjMbYX70pYsqA/OWbjnqV29lZORm5OhGsK4hpvUkAEbXSb6i2PQaVZT
         9yFGJDoihaq/nLb1Nwi6NinL35XrRghxMzb3Mwd6qDgwPj+76p2flZgHtXMxnx+NyaOQ
         Daog==
X-Forwarded-Encrypted: i=1; AJvYcCXO5xvALnlr/mQUE4ZbdgnKUVkIhGyhNKR0GcfhdFTzs7fZbc42GF+QMdXjdtOuBzsuJUPMYKevwdE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxH0zjqXV6uF8pmBl5VIDbYiqj2s83MSP4WWQitmNIfJnM+ajW6
	9ntJNAiNbKs2F9iNcRpyJJ98HtlIFD450YxErrthRBVSc5IJJVwscvZM87pI
X-Gm-Gg: ASbGncsGA7dfNzu90Wuz8Ml/u/IP4B8JAXj1aq39BC4C40Zhp/qEIq+pYgrzc1xTQbG
	9KuRLjcY1bd4ssLaUZ4FO1lqNGg7zWjnM8YYnoMemEF49sQAWFOOn+WSVNM3vFsPnQU8Ds6MjmR
	pintpDaIIxfERXFq1aBec43f2j6qYIvF6AWfqmtLJi3RZcb3Zn2ARZNnBM+egMXtM7JgUfpXFjx
	xumfVqWH1ia65NpvIapOGgeFgGWr6JwGh8roo5F0IGCwtw6q4RTWLIoguON/zspcsFeDdoGjkJP
	+dDLU1NV9nsuuc3ANX+SJO3yg+1qmGmUbmbwUTd6uOAtZPH67BmcRzehm8pwl/5g
X-Google-Smtp-Source: AGHT+IGEeVtyVSLoor4J85ZAoUxgNiEGCoy+mhlcb9FdwGoekhe5rGxjub2CEDA/rq4ccnpdiInUug==
X-Received: by 2002:a05:6102:3e04:b0:4bb:baa0:371d with SMTP id ada2fe7eead31-4bfc022c858mr1876798137.24.1740124256132;
        Thu, 20 Feb 2025 23:50:56 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-868e859975asm3482407241.19.2025.02.20.23.50.55
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Feb 2025 23:50:55 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-86911fd168dso544947241.1
        for <linux-phy@lists.infradead.org>; Thu, 20 Feb 2025 23:50:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV4Ql9WcBdMPZeiCjGqHLMZaaXWOhNyG1fUzbCfrIuU/lTtoa2Zk0n9Qlw0Es9pvB5tzC70MnceVYQ=@lists.infradead.org
X-Received: by 2002:a05:6122:1b84:b0:520:5a87:66eb with SMTP id
 71dfb90a1353d-521ee236fd1mr1320633e0c.3.1740124255544; Thu, 20 Feb 2025
 23:50:55 -0800 (PST)
MIME-Version: 1.0
References: <20250219160749.1750797-1-claudiu.beznea.uj@bp.renesas.com>
 <20250219160749.1750797-3-claudiu.beznea.uj@bp.renesas.com> <TYCPR01MB11040051BFF6ECA0F45FD6038D8C72@TYCPR01MB11040.jpnprd01.prod.outlook.com>
In-Reply-To: <TYCPR01MB11040051BFF6ECA0F45FD6038D8C72@TYCPR01MB11040.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Feb 2025 08:50:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVkf67sGpQt=SKi+3xUMyKRErFdrhtf7XOvoUnCE2XnCw@mail.gmail.com>
X-Gm-Features: AWEUYZmvzCpq9TZOHHJ9beRJMa9M-uoWiYwVWT145YSTckgBloLWjlMkRAXbI_Y
Message-ID: <CAMuHMdVkf67sGpQt=SKi+3xUMyKRErFdrhtf7XOvoUnCE2XnCw@mail.gmail.com>
Subject: Re: [PATCH RFT 2/5] phy: renesas: rcar-gen3-usb2: Move IRQ request in probe
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: "Claudiu.Beznea" <claudiu.beznea@tuxon.dev>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"kishon@kernel.org" <kishon@kernel.org>, 
	"horms+renesas@verge.net.au" <horms+renesas@verge.net.au>, 
	"fabrizio.castro@bp.renesas.com" <fabrizio.castro@bp.renesas.com>, "robh@kernel.org" <robh@kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_235058_954326_A97F90BF 
X-CRM114-Status: GOOD (  19.05  )
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

On Fri, 21 Feb 2025 at 03:11, Yoshihiro Shimoda
<yoshihiro.shimoda.uh@renesas.com> wrote:
> > From: Claudiu, Sent: Thursday, February 20, 2025 1:08 AM
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Commit 08b0ad375ca6 ("phy: renesas: rcar-gen3-usb2: move IRQ registration
> > to init") moved the IRQ request operation from probe to
>
> I don't know why the checkpatch.pl said the following ERROR though,
> as I sent my Reviewed-by on the top of this email thread, this patch is good,
> I think.
> ---
> ERROR: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'Commit 08b0ad375ca6 ("phy: renesas: rcar-gen3-usb2: move irq registration to init")'
> #6:
> Commit 08b0ad375ca6 ("phy: renesas: rcar-gen3-usb2: move IRQ registration
> to init") moved the IRQ request operation from probe to

Checkpatch complains because the quoted commit description (the part
between '("' and '")') is split across two lines. As this is in flowed
text, and not in tag, it is a false positive, and can be ignored.

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
