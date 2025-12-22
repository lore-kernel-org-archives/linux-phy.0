Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4CE8E67482
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 11:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4G5QlzbMakSApxaKbNYD/IxUPI9P3AqVEjNMG23oet4=; b=ujRwZe0dKvaqSP
	uevFLGmgWg5ZwgqoOOQUzbUTO/7Hh3R+/6vGTkYVgeTsithplpqHh9TI4KlXBB3FOveWLSYEHI4ou
	2saaBk7FCIPtUoORnb1yXnOJa7waJ9hEeZsQPevsDFTrT6PYNuqCJemoGi0jCIWsixyKwKobpPaMl
	0iE8fZ3sllGsmVD+YazSD7Ooq1EV4T+zXelBzEeqIos9oxH0mrIuPkTZFh95qaoIVoLlAIHLH5oz4
	a7VgGa8tnk/mWFUD/XrqFmmIcrDA/DcNE7fxwn8g8cj6izZTGhrTTg4hN5lAzd70lKmzeUF8IFKt8
	1hEDjaK3lT0mHlRoUJLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXdl9-0000000Df76-1hBh;
	Mon, 22 Dec 2025 11:07:27 +0000
Received: from mail-oo1-f41.google.com ([209.85.161.41])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXdl6-0000000Df6i-3mUE
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 11:07:26 +0000
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-65d0441b6feso2206571eaf.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 03:07:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766401643; x=1767006443;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Er9fT5sSTO9v6Ol7FhPUI+D4OHHff+0Re947MEjlztA=;
        b=WngWicr0OyntSTEiC9iDjYctzvv9HCgISo+6yJCo2GiZv+0BMs6tfMeiAnr38gJQmX
         aA1qdWulL+hApmjls16fE+k5yQdd5z0GCCHZYvG2q48IHaf43dDD70feum+NJJAMxx+i
         z/vJGoADCQ/KeWcI/x6pKj5cXTLPy33i7YP7ehyxcLw+QDQbVqzS6w3LW6U/EKQbw8L7
         n+9ylLINfDtGZuXHztR13bPLI2ENoQUocUXowWMI3tsqfMS5434nZV4EgCqvz/MpMADv
         bO8m5Wt49SaKz9S0DsiwFzIpc/MzggriZYhO+AS/L7ynZNcDKJG67J6nWqKroih96tq1
         8tNA==
X-Forwarded-Encrypted: i=1; AJvYcCXIcdsOZCy/zfJa+D9ADHcFDFKJtXdPAm5WuLIiFpq3TFg/+pkhaqU93UKqHSsPckXupfgxc2J3Xp4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0hHE9JYZZK19pQmzyR4LQq54nGh0WnVCmLV5I7hQ+vNiebRjX
	ya6MphGd3r8IwddVROcu5GTsWz0GW86Tm0HmdbrIbCih4wZp54n6LbRRjl606HVQ
X-Gm-Gg: AY/fxX4mRmfdUqbhOgKCc/bCBn/FLlT5LjEqsun6B1OU9rh8y2OW+1UFgNV5zQvmuzR
	745ce5J1hVWwwAd0nX3tw9qnjPsHxJl4LG7i1wj7gIv7F72ncmnbL5atrhGSMgmuZVigxSQrRTQ
	R7KGfyXkiSgUDRuubIVhUNV24wi3rWr39u3E6xflsvZzDKTr1JAAF5V8yAdx3CRMyXMT4WpMr8B
	J7dtVJQOspxMnLVAkiztiB06gou6ZXKzhWojB4iQHMZHFJ0xaw2AAA9bjYoU6nMjnVoXbwxrYUi
	Lmi02j1wn4xF7/X7N9+JNqpPHBKvbR8IuNdgJss4w4nEeue5EZ7TrAIxfdUfn5jNwzcFCvNb+Wg
	e2P2bMic2WKH+1Eq5BJo7y3WTZ8eO5Xk/Y6CBsDV/nteqcZ07YOtOILju/vWwJm+lKrbvkmqd1j
	9maSNIuE/1sxQGNsFC9MM3Z2JMkjHiH8nZQ9Y2lA3HL6wVjUln
X-Google-Smtp-Source: AGHT+IHxxaaG/krnRA4Psz5KwGek5fDemfOvprCAvzYwAwby9xA4Err/4y3aGJvZ37ApEAj8XmNf4g==
X-Received: by 2002:a05:6820:2288:b0:659:7c9a:942d with SMTP id 006d021491bc7-65d0e6c390amr4641402eaf.0.1766401643154;
        Mon, 22 Dec 2025 03:07:23 -0800 (PST)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com. [209.85.160.49])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65d0f515721sm6672430eaf.8.2025.12.22.03.07.22
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 03:07:22 -0800 (PST)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-3ec3cdcda4eso2875286fac.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 03:07:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV4YqeerDBsmeZQOm/IMUYEO+bY7pDCIMFLt318C+gGI+ocjC1A34lyQGK6IdyG7XrKbEeHFXL1WC0=@lists.infradead.org
X-Received: by 2002:a05:6102:e0e:b0:5e5:5ed7:60ae with SMTP id
 ada2fe7eead31-5eb1a817635mr3544923137.31.1766401227460; Mon, 22 Dec 2025
 03:00:27 -0800 (PST)
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com> <20251210-rz-sdio-mux-v3-3-ca628db56d60@solid-run.com>
In-Reply-To: <20251210-rz-sdio-mux-v3-3-ca628db56d60@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 12:00:16 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXmKPe6AyfAeD9nObqVhofZ4a5559_=DbDZzJ57A7=k9g@mail.gmail.com>
X-Gm-Features: AQt7F2qYMU-2Y0vKWd5gUo3SltdOK-02OVX3vIl9B9fuc7xPsFnO8gx3yQGyGmE
Message-ID: <CAMuHMdXmKPe6AyfAeD9nObqVhofZ4a5559_=DbDZzJ57A7=k9g@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] phy: can-transceiver: drop temporary helper
 getting optional mux-state
To: Josua Mayer <josua@solid-run.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Vignesh R <vigneshr@ti.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_030725_018287_C9025AF9 
X-CRM114-Status: GOOD (  16.46  )
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

On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
> Multiplexer subsystem has now added helpers for getting managed optional
> mux-state.
>
> Switch to the new devm_mux_state_get_optional helper.
>
> This change is only compile-tested.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

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
