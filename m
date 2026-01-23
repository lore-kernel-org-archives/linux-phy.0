Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90CD2D74EC5
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kb15QVZbZwpARnHikkuYmKfFt81g4fr8zRj28Vx7Otg=; b=PoqDm+p1+UoHtm
	zecZDINebKkjwjs/m7Q5g/EIAJ3XHeat2o5IEUIPtthzcFv5ZFO7xZDuFCjR/hVFoloprNG1FW8iM
	+si5HL5hJpflr3Ha55OZg0m+wl/quclnLmFzOw+iJkSPBjXF7oXmtKEgAkoCb5V3QuK+B8aEAFLXq
	zT7mlscKv1IHtIyiWpXWV2a/MANqmdHkjVd4kz+LGSA2CO24opT8p5/bcEo3xmslYYeuAdDyJAQWW
	gZhZM4nXjB1Btg9+S0CnBtb/G3IkTE9mpAH2zbb+tqQgsnS8OeQbsU2K4v7/udRi8RMgX98YyIPh/
	SdQdg95WjgbNeXMAZeLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHGa-00000008y8u-1KKW;
	Fri, 23 Jan 2026 13:32:00 +0000
Received: from mail-vk1-f173.google.com ([209.85.221.173])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHGY-00000008y7m-0SzJ
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:31:59 +0000
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-5664393d409so177872e0c.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:31:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175117; x=1769779917;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RpS2H3SdIy7+x5vUo7+a2x6ndejrFYA8bNDO09Q1vNI=;
        b=powNEHLk3Uj78dczj4V6VmYA84xibbX55lh8S7R6eYdYRIanL0gZIA80zBGtpfMGgS
         vUqNYNCxOM/XSkJrSY6fQDP7zo5FCQUzk2R45T6LXsb+yo6w2Eliw4MKyz96a0MsoZRg
         VNwUe7ItJTruSzcp+7QvIwJrpzBenNuObERoK+L+BYFW9xVPfosQYHvsZY3YPuWcCwGJ
         S8r+G/fizUJKCN/QEnYdyEDHDQSw+QZZK8GEVxoPJx8TuN2S9fDie9TL0ZYuzavYmYXi
         WxTJ62gakksGwtyEXnmXnJkW8MsJO+oJ0gope8xgWk6MsQHFu44hXvI6spS6eV0wihJP
         t61w==
X-Forwarded-Encrypted: i=1; AJvYcCWq4o9YvsD+trmAoLDBUydmIvqV0wh50t0V3pDWoaNZtR00GHZu+hvPGTo0/OvomEsvXe0qTo2fKrk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxcaxKy486JMEc1uJDSF9bxjDqbaJhRUKCHqsDXns5gt78JUe2r
	Xv7E1+xTR0i3zHLdo91fTJ/WLre2tS8h3ZYxlccx6ETAqOc4ojzeh0q+S8gX7rEH
X-Gm-Gg: AZuq6aJFvpX0qBPyqSCj68gkd4Sfn/m6FGlVAUzUDBZH9ruh+02K5GRGHBUNTaIcgj+
	VbQCvCWYezlnjuaYtew1a5GFuSVr2maepNJusZnYAYFdLJu/jkj3CgL9RrSco+sl4vPC5iC5mRW
	BvPsWm89lufoZQMWN2TfEwaigRB9hMxgO5IxEoLWnp1oGn7Gmrcb2wzdPDPhqS1w9SafBomhBdT
	n912JWSmdn1/wTgyjVQBChoPAOFNiexBUWMjAsNiHsB+yn4Ulau2GtNuIrMwfTrPGzjuH2toIq7
	dB2yHms5zTAHdYW+6Ub8DOevkkFwWy6km0A2OCvXJl4VPL9A3ugo6ZxOYHUlf09h++3XvVGC4gp
	t+neJrUP+KuQjTAl17RsFDhMaFuS7rl51q1AKlyn9BktXSOd6m3mFr8nEGXLfTVRLcf9Vx4h5Py
	tSINXGtw7ss8tybEfddKqqGhe8P1ei4AjXlV+R6VnKEFQPNege
X-Received: by 2002:a05:6122:2a47:b0:563:5f68:7a75 with SMTP id 71dfb90a1353d-56645deab9cmr303787e0c.20.1769175116727;
        Fri, 23 Jan 2026 05:31:56 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fa96675sm472918e0c.9.2026.01.23.05.31.55
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:31:55 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-9480c6f8b43so594241241.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:31:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWdx2PUuyHnJBxTEfQ+DJjtDZlQOIBPkBeRFaZI8hSsijuVjNfMsx1DO/57TQaMZXvtiLQv/wqH9jI=@lists.infradead.org
X-Received: by 2002:a05:6102:cd0:b0:5ea:67f4:c1ad with SMTP id
 ada2fe7eead31-5f5586773e5mr314116137.21.1769175115274; Fri, 23 Jan 2026
 05:31:55 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-6-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-6-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:31:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUFjfe-3YTBQ37bbfgH5xXf_1cQZ8_58vLCQNc=5caF1g@mail.gmail.com>
X-Gm-Features: AZwV_Qhn6Z025XcB1tu3nu-plKR7LvAJNMlqwBqF2kc7a-H-YRSLtx_zGjZz-tc
Message-ID: <CAMuHMdUFjfe-3YTBQ37bbfgH5xXf_1cQZ8_58vLCQNc=5caF1g@mail.gmail.com>
Subject: Re: [PATCH v2 5/9] arm64: dts: renesas: r8a77990: Describe PCIe root port
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_053158_150156_5A9BC1C5 
X-CRM114-Status: GOOD (  16.27  )
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
> Add node which describes the root port in the PCIe controller DT node.
> This can be used together with the pwrctrl driver to control clock and
> power supply to a PCIe slot.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

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
