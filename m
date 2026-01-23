Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28C00D74ECB
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkasz0lkcjhzoWL1AGj7gt0E6Ee5vipYwKt+Emf2+ts=; b=vsWmXJzQDZVX8o
	e2Y4QBI5OTteNKNhYIyQghmWw2U7lAAy7mzMxVh+KP82tEJWBGtjvOpWPogCgOS1svOTmANkr4ql4
	e/NzlK8rb/XfXhT+JuWduhkiiNSN9fSnnidpGSkqbvQRNUqusMSE/7Br0UwbdmdTtf+5nzRQqX2Mu
	u1ZEZS8zsa48Z5pVknBKG8qWnwwNy+rYoxUeUtXqp2dnzn7MJunWrVquaYSOWSDkYP1q37EOqvstu
	D4TV105nHJrLOKmPtO2j8ZTjOb8rPCIDjoVQmh+UvsLYD9hDrosCJWxSHRQvzLxu7/3YpBEysjXV+
	5gcfNlSXvp1yuCwAY4ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHHA-00000008yIS-3mnp;
	Fri, 23 Jan 2026 13:32:36 +0000
Received: from mail-vs1-f44.google.com ([209.85.217.44])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHH7-00000008yGV-1Q6X
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:32:34 +0000
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5ec87b1f525so1285894137.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:32:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175152; x=1769779952;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZFcVCUbs6+A4DjohoDcTbMd4NWYz6AemlNmvZZNsXj8=;
        b=tQQnJLsoUAr0ygN0UFpCptx2nmDfn1WxT8wvdpxpr21bLzx/4Hhg9Mfxn6o0xGoGwa
         zZk3yFs/ZGotmi/5wD18N083ew8yqLO0zYhO2rX0sYb34Nz/+CaJWGj8m9ELVW3nUe2w
         pOd+p3zVZg0XkK+r/mJg5UohNghvwIM0t4kAAqxKP10MHzfcDd6PA/2CF9teNockPRbd
         bR2yMljlfFmQo3DNmEC9NpNDd//S1i/s/tHQnMVZtqi4dNvmSATimj6H72mSXAzT4DLM
         sYt+sqrO7XnCmn/LUKZNC5l39rzeRUdimUHMSTtNe7GhF+gDGLSqhH17TeDQUtGfu2HM
         kdaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWM+m0HL7wSwJ7dQgw4ckJMjUcSoOW6tE+i90OY/JuGpuTNXXW0LeqE1Wkf/H8aEPQFcCw4Ue7TzBs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvSCD3UeHyAqYmwPecwLDpWtUNG3J3tG5Bcpjylef3jxqNOTZY
	M4jsbBqS4gKv68+OL2IJj4SN7fmbYf0EEq82b3w7sq1hxlSiB8L7oDrENwefkVb0
X-Gm-Gg: AZuq6aKAq6cMutBY7Y6/MJ2d0bkJ4PoEraTH5AqjkCRshHLve6UT/Sbk3mW+7u3B0S4
	BJY+UbqWFNpac7Ior2E6fyLHuTOh+tr6CxI+V02Ktix3zuduUcuEBMeV3Cz9BGPt566o7s+8A1Q
	3GAV3vWOnOPHyFqyhSNrMPtjS+WSKVztSHtDmdQCGNA+AcXQQzzipOssweaH3fpjoRAMV08wzLC
	cLAH4Rc0ZFQGZbejHSod9KLMaNwqvhstBz+cwWhjqBWSWGqIX9turTmrCADcfR+r3GfeNIX8wQ8
	EXbziGV3C/TmFKqn3sWIbhAiBUuIQigCjY3OgauLAvNwzk0KjeRuqb3Fv+CZvUoekixIP4kj+Nz
	jT70qQXY+a9lZc9aFgCcD54qWM2Fcl0k0mFdNbOyNlocBCwJVG7leY4nW4BFe0pLWhjdSqd6wTu
	VR32jsGqUyyCGp0An5psk+0KX2VtQPLUeHtOOzBl2mdy6SmxS2Ounh
X-Received: by 2002:a67:eb56:0:b0:5f5:4f68:9f7e with SMTP id ada2fe7eead31-5f54f689ffamr497533137.8.1769175152267;
        Fri, 23 Jan 2026 05:32:32 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f54d62ce3fsm548499137.9.2026.01.23.05.32.30
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:32:31 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-56641b5a471so1023088e0c.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:32:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVuYAEKTeYcX7G/Y+mqlM146bDQ5bQk6cW+ZhS9MGA4xq9dXtXoosPaFkYlbsAfdoeNIy54JSH2lSU=@lists.infradead.org
X-Received: by 2002:a05:6102:f14:b0:5ef:a9fb:f1f3 with SMTP id
 ada2fe7eead31-5f54bae7a41mr1054952137.11.1769175150254; Fri, 23 Jan 2026
 05:32:30 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-7-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-7-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:32:18 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUaPJCdzx5nGgmO4=z5TL6UYiYDaEgL1ezWABh6vPJOCA@mail.gmail.com>
X-Gm-Features: AZwV_QiSLMv1d8wTOd_fggCZcAN0A0pAIafduPy_jaGRkU9OQ3Tlbc0VC45o0gg
Message-ID: <CAMuHMdUaPJCdzx5nGgmO4=z5TL6UYiYDaEgL1ezWABh6vPJOCA@mail.gmail.com>
Subject: Re: [PATCH v2 6/9] arm64: dts: renesas: r8a77990: Add USB 3.0 PHY and
 USB3S0 clock nodes
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_053233_374240_5CE7C866 
X-CRM114-Status: GOOD (  17.30  )
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

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add USB 3.0 PHY and PHY clock node for R8877990 E3 . The PHY node is
> different in that it does not have control registers and extal clock,
> which are not routed to the SoC pads on E3, therefore describe the
> PHY as usb-nop-xceiv simple PHY. Add USB3S0 clock pad fixed-clock
> node, the frequency has to be overridden at board level.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

> V2: Describe PHY as usb-nop-xceiv and update commit message

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

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
