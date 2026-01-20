Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D948AD2ED0F
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jan 2026 09:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=696FZudQSkM0ZHrpg0+WDuxbRbwFJav56xVurLTO9Zs=; b=Gr6VEXE50Pj5Qj
	uOsl39LYyBzhexTbGztDlN9SgRKD5r/Hm0H3+Qan3Kvj1o08g2y9zwmGnmgIQM4NQMLqYeCwU49q8
	tupmaXl5/qIAIyW470RCyZdSPMWK7iCfGjIa5qgxeYJowuN6nhUni1Awcs3M9/hKPtyrg5za/p8mU
	4JNWOCafx3u1vRyZP4PgsFYKuqiajhg3qoDvEHfF5aArKGnjfW9mVqDCx5MlL3xq88+KRELEfPccy
	MNOKG27vIC96Xk04+Tjn50uZCrAumqXetv//pXnbE6Dai0k30pfZ5rCdxJ/673LSFdCDRbA/zEiTI
	9dWbKqnIUELrh/eq8oxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Mv-00000003YoY-2bwm;
	Tue, 20 Jan 2026 09:49:49 +0000
Received: from mail-vk1-f196.google.com ([209.85.221.196])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi8Mr-00000003YoD-0pNn
	for linux-phy@lists.infradead.org;
	Tue, 20 Jan 2026 09:49:47 +0000
Received: by mail-vk1-f196.google.com with SMTP id 71dfb90a1353d-5636227a6e6so1456407e0c.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 01:49:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768902584; x=1769507384;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cMqHiB2kIqqBrLa59wdqxa2/T5exJBY1xL1A1svqwlE=;
        b=YFjeIbtTSBp5P6m3/4frBboF/cXFLR/ww93jx5qngq3LBQCghKb0m4GbmKEPpsmJ8+
         AcuwRqSUvqfhkJwykx7d7y/doUxs7bES+D7FzVRviy7gZG3NobuVMP3vdeii+Hh5xwDf
         A3O5fk3DUHpZwuNpZWIjbQXnJvCRVvYu19s2vuXseHFZ4eFfNxuessk1J/tqE+OhnjTn
         0/YAY7u34YYEsgxUxnft06p5qNb+z0Re6KyxHxuIIa72sBMAyqcoMRk4JNrY7hkF2Dqz
         ZVSiR3GEE8emM5CuyDshSWdamhjnwRfhbx5UbuLn4Bl59CNG8lD1ozRBcpSiNItzTCue
         yE0A==
X-Forwarded-Encrypted: i=1; AJvYcCXwFpzicjlb9HDb4zCdRYQFGs38QaOEvs8Z4uv0gDjFZJIwpwB2vas0xY/8H+zagr4RMkJCV4Zg6ow=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6PDKLN0aoP6Rsb+5vYqjBcmZfl7M/s0XX3X3/30z4em8XRUR9
	Ez5aPt+de+zhDOIpvPxOqBUNsOsKgw5AktufyeSMcfNJO05WzI/R3H0B9ejFHGoabZw=
X-Gm-Gg: AZuq6aKZC+HWfwTCL4kPw/7EqZFS89vaqC6OgEsfA7UYV+NThC7eJrwVDzrYQcvcrTq
	9hy8VsJARnBVoowGqy8GYLGhLKg9bx/Zdhm3KdumphTRvG+wFCvZq9i0gBpIE5RrUMj4jSZsnwh
	ECRKQHh7izx9s8N0PINNNwVPesyNKSdGPDcTm9aX7+TlqkgH0+z9hCovlWG1cptT3WpVEtBgy9S
	SPIkSBSIkWCpZMvnXDnUJ+d22Yqq5jOG41vsXiaBKmXW9K0HNw9pHamQg5qVTdEDV1IxWxvktZH
	Bt4FrfsNWdOdpk9e7S8dTy8DiVEdC+ugJn+bIIlONpH1voRk2Ww4x1HWJxlM1GuW8Io0jVycbMJ
	HsKKaWkeP05Pu3NMeEG/DPsowzooLKhN7v1vEUbjJZow03JfcjurYNj5RPpxVi56a3+HSQPxLln
	DITi/EhfkVRVIKw4K23q8DejI1Hhz2vm8KoSNWQ85+PxU5SoxlC6I5//51ZQ8=
X-Received: by 2002:a05:6122:1d4e:b0:55b:d85:507a with SMTP id 71dfb90a1353d-565d6f920afmr273080e0c.7.1768902583714;
        Tue, 20 Jan 2026 01:49:43 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-563b6fdaf9bsm3466172e0c.5.2026.01.20.01.49.43
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 01:49:43 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-948029fb1f2so146282241.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Jan 2026 01:49:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX6aVZw8TzF3T+DnYSDxwzkK1eLLjjO0goHEnqHT/JKLefFzdKXLpD12Mfbh98BGL89tx+mfVq6dOk=@lists.infradead.org
X-Received: by 2002:a05:6102:2928:b0:5db:f6ef:560 with SMTP id
 ada2fe7eead31-5f50ae0a099mr264663137.28.1768902583158; Tue, 20 Jan 2026
 01:49:43 -0800 (PST)
MIME-Version: 1.0
References: <20260118-rz-sdio-mux-v5-0-3c37e8872683@solid-run.com> <20260118-rz-sdio-mux-v5-7-3c37e8872683@solid-run.com>
In-Reply-To: <20260118-rz-sdio-mux-v5-7-3c37e8872683@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 20 Jan 2026 10:49:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU5shzYs27wO2A0SoisGBMo8RHf9DO-ubC6VrhWECEPCw@mail.gmail.com>
X-Gm-Features: AZwV_QjEUqevj8OUxZ5xnP3V3BgNbEzQSiuy0CgomAkdvyQGaaSlv633jCWavtA
Message-ID: <CAMuHMdU5shzYs27wO2A0SoisGBMo8RHf9DO-ubC6VrhWECEPCw@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] mmc: host: renesas_sdhi_core: support selecting an
 optional mux
To: Josua Mayer <josua@solid-run.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Rosin <peda@axentia.se>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, 
	Andi Shyti <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, linux-can@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-omap@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_014946_759027_FA261721 
X-CRM114-Status: GOOD (  19.57  )
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

On Sun, 18 Jan 2026 at 11:29, Josua Mayer <josua@solid-run.com> wrote:
> Some hardware designs route data or control signals through a mux to
> support multiple devices on a single sdhi controller.
>
> In particular SolidRun RZ/G2L/G2LC/V2L System on Module use a mux for
> switching between soldered eMMC and an optional microSD on a carrier
> board, e.g. for development or provisioning.
>
> SD/SDIO/eMMC are not well suited for runtime switching between different
> cards, however boot-time selection is possible and useful - in
> particular considering dt overlays.
>
> Add support for an optional SD/SDIO/eMMC mux defined in dt, and select
> it during probe.
>
> Similar functionality already exists in other places, e.g. i2c-omap.
>
> Signed-off-by: Josua Mayer <josua@solid-run.com>

LGTM, so
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
