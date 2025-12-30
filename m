Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58A37EE01FA
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 14:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2mzq8oopKlhRNZBCPIEgidP1TA5dt4Y3yhxo7Jq3AI=; b=B68NoSpTNhdDy9
	sD3aPwnoStSnQqsP0PQX2g33tAQwLdrdMVB5Lu7opYD+d8wxtQn07cYhJJ7iAZMk9vbbBRw51QXUR
	NKZsakQ8IIvgEji1NUdMs1Hgxkoj+m4riX7oLdCborlzbct7/Tk2xLItJvldxrF8UAI7nSJJuy41v
	LBnWs+mucjDF7/+i3TD5aLdw4r5rItK+rJEKEQO3ghg4MiSvz8W1Yp3MCRXbtqXErzfHfvagCeoCI
	4PcylsiBWUcyADh1SzJbwuY/E9cd6HxpG+gxY2kJuX5cRRmDmBl2/CHdBQSoN848WPW2SJlJl0rQ2
	vBIWt8UUsaJUVrogtw7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaahd-00000004w7V-0Jog;
	Tue, 30 Dec 2025 14:28:01 +0000
Received: from mail-ua1-f42.google.com ([209.85.222.42])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaahZ-00000004w76-1IrE
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 14:28:00 +0000
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-93f64ae67dbso1992731241.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 06:27:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767104876; x=1767709676;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVxAPYgKCcBeYHyKGPlSmqfJ6oQZ7MwjBy+J2gXmu+Q=;
        b=w+jmWdDH2UNrHBjpcBw4x+fftNDwFoOE0lOxWPGO+JPVAN2iI8Lg/Z/9s+uQsl1eXp
         y7XSf36VA3K0q2qIzGPfI9YAU484R/MgGFXhATQD9RHBRaZ/gkODFYptHG9uziTv+t50
         RWrEuQi+3Q0wLi41aJXTwvJj5geXRotekA4WrlVGlwMj/rDFCq8394carrWz5Ps+BprX
         m2i/1X/g8Xwkz5WuQLm3MsLHpBk+jaG2iJ0B8wvdFgr/3nGWU3b8/3kHN4BOIIc55zG3
         snebAY09QR8EXIw1LELl4dN7eH2LNepTDSMbudsYd96OD0m0aggmcU1ppdE9oOucpqM7
         xqaA==
X-Forwarded-Encrypted: i=1; AJvYcCV1kFBdJN/MqH2+/pc/dGbFbXR4ArU2Fp6LB0E7cYy/UGu/dolkkn3/Xguim7VXHZuUeLYeaQGdnGA=@lists.infradead.org
X-Gm-Message-State: AOJu0YznUwqacWVJWjelGk7vLSrQiJ0FoUWa3Xuj5JEdf5CCCka8cNLX
	NpDNVFmH6gBJj2kMDl4O30+1daKaFKZ8LImvkMR4l2LCNjvaXZGB5ERTQdcn06M3
X-Gm-Gg: AY/fxX77gd48m+1PLIqsi2yW7pus0RfUbClL7GncTiLcygtRhLtZ76U1ripYWqS0nYA
	9cSl1KpEkeBclR+7nVrUw4z/09sSzwpp7uy6DR5xA/NOHbzu56Miafr8/2io/3gxzbJw0mNiFJo
	iVXBfJKBe1ZAkVnrSVzpUkO+XjzobPODZrTBF554CYYCyEdNCVmpp2m26SJuRzvQ+uyU2mmnd67
	ViEL1XqumGLU2Dt7I9BkvZXIs466UtDywi91GYi5fqjhOF+7biKUwrs50S8nKxIGe0XVvIuF7IJ
	iR8PoZRVoR+CcVEnimduq4za8xcZPD/HoE3KnPwJSxZfBbJczocQl2wko3weGo6wEPbGjRSTrWp
	qEnC+g8kNU1BH48ZWSuy/wHeMXF+QozZonWZXEiF4yJLvANyZFUj+uyLBKcVIvsqApEPe+dMqwY
	hoiSf0uvb1IaBlS9aRiAwo9ix4cbTT2jWVXSosjVE+Z77+G3ug
X-Google-Smtp-Source: AGHT+IEymyzr5fuN/65C2b4pFV8gHhuvvxTMt1pBwNcWX/eRke/Gyj7z2iqYrerHhOrLvb+Uqnikkg==
X-Received: by 2002:a05:6102:3f09:b0:5e4:b844:24e8 with SMTP id ada2fe7eead31-5eb1a838090mr9707210137.42.1767104875685;
        Tue, 30 Dec 2025 06:27:55 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94341796a4dsm8882197241.12.2025.12.30.06.27.54
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 06:27:54 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9412cb281acso1993640241.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Dec 2025 06:27:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVsiDGo/a0rUXPPbgKV9Eiwrkn1qeE3FsWExQJ1j0ERp+iqxxgc9toUAT7bm3dfjX30atBhvqw9SJ8=@lists.infradead.org
X-Received: by 2002:a05:6102:148d:b0:5df:8f4:61e6 with SMTP id
 ada2fe7eead31-5eb1a8044f7mr10349292137.32.1767104873794; Tue, 30 Dec 2025
 06:27:53 -0800 (PST)
MIME-Version: 1.0
References: <20251230141050.93856-1-Julia.Lawall@inria.fr>
In-Reply-To: <20251230141050.93856-1-Julia.Lawall@inria.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Dec 2025 15:27:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVskYbe3sk3Bq7qLNLd9ahy6K3QOLHphQLBqpKvDjXQxg@mail.gmail.com>
X-Gm-Features: AQt7F2qG_yFtePzO29zvWHTP6nVtCgovG5NMsBrOll6Kioon3iC0k6mcBC7p-ms
Message-ID: <CAMuHMdVskYbe3sk3Bq7qLNLd9ahy6K3QOLHphQLBqpKvDjXQxg@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: phy-rcar-gen2: fix typo in function name reference
To: Julia Lawall <Julia.Lawall@inria.fr>
Cc: Vinod Koul <vkoul@kernel.org>, yunbolyu@smu.edu.sg, kexinsun@smail.nju.edu.cn, 
	ratnadiraw@smu.edu.sg, xutong.ma@inria.fr, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_062757_379989_6F7C9830 
X-CRM114-Status: GOOD (  14.46  )
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

On Tue, 30 Dec 2025 at 15:10, Julia Lawall <Julia.Lawall@inria.fr> wrote:
> Replace cmpxcgh by cmpxchg.
>
> Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
