Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDBFAE6748D
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 11:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/yjBaBc2iPUISq3EPkH8CAYFpSjXjE4Y0VKM5D1ZxQ=; b=NevNWo5AQfIZc/
	8TpVZ6MB5ZJ578LBtk8AU7YiSLao/9bmZFUX8zzbC/Dq7N0CNnX3sFmo8TxUJVutO6BVcbti83XCZ
	Y5Ua3CelY6xMlzR0FIHGiWJkmUfGXHIPeTaPwGnkMI3a4BlJxaGaBX6Sra/tu6DZZx9Qs80y/i2yW
	TotHSoF7GgKs1nWcBs7DTvGTixx+YYf0ukw9tNPkJLllAeFBqKCDWEOLOl2NjJSG5XIDmk4Cq+33o
	SYUBkuPSa6Mr6ru9gbAnGqhUbBZVfxFM88PcrR3e06ZGy521+/Vn2zSQJ7aEuqWq9vphLjvgsxJ89
	Xvf5+dbP1S/jRJCqjZxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXddw-0000000Degu-1PTE;
	Mon, 22 Dec 2025 11:00:00 +0000
Received: from mail-vk1-f169.google.com ([209.85.221.169])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXddt-0000000Deg6-0zUX
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 10:59:58 +0000
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-55b22d3b2a6so2429737e0c.1
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 02:59:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766401195; x=1767005995;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iVlS5J1HzuVScBDeCBX0VxoypelfY5sXHRtDOTQInFQ=;
        b=PEtQjg1TIgd/qBAY+rnWnxbaUAos1DU8kT6X7TpfI8hRWyETHlz3nB6FfHL5ssqajm
         rwN410Y4IaE3QTA63W7B6e9r3LfGJAMzvZnhvx8RiCS2OAmHdCSZNJAJrsp8hn/LSqa3
         Ctn/rFTiWxK43YE3aazHJehJJgSVp8o4d1MG0rOAS3L/QcyvuoMfJPjGoehka/OzK40v
         AclvGm+RppPHWF2c1MZUpg95BxciDtoqQDY9FBa9vRQfUluJ4AAQ274LpIBT2dvXXRRL
         hgP0PHp9i8c5bdKJkwn4olRDAvOR3zlvxYJ/mZA2BdUllHgVNmnbODPRShbZtikfErCn
         6FeA==
X-Forwarded-Encrypted: i=1; AJvYcCUzbmHzDhpJOrgFX0NeLlFEDnJCxXp6uys1tpZT3s6uCaXU3wWWw/5jpYJnQkkMXUZwSSztCW+n7Mw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+iOVQGYdGKVvQSOk8tCAKg2MGxaVsfjKjYbPBEZl27u6FZcNn
	GRuwbIl1NhhSuoPcK8JXMSEFC79vF675inv6NNA7I7RUoVuOPRDW9IUwTueVurCQ
X-Gm-Gg: AY/fxX6BvqaTx/ZkA2MWfTzvG2cTMvZX9Va8S25ZgePmGatWLWRwejkh2mi1EOIqpPz
	3nYRD23LPd6FJe/HLpwLvnqOUamdPGzwpe8Bca21dGNy1/y5WIhYBr3oi0cF0Gi8r9by5ZOmtRZ
	TEKL5Ko0kEcVFdAkUkvdlVcDNN/7jiwU0MKv3WKdLNmNrPE9PxexaglsvcSOBJvnpIe6xBd0tJ1
	uEMLAKZWfoVH2FeZv7OjfAKcAs6myXroub4e+AHgaPp9lkJYUTfC+pgKx8l0nqhhc3Vy6HOcn4T
	teAwBJJekYp2Oy9cg+F/OyK58K6fW9iwz7K3Ag7B9Rlp/HIshjfBILBfW5JTPF6dOZAQBbMhcFE
	xGiSdtQTjW/zSy/1j5CHFq84fvk9ckGMkNCS2cKAynj0iOlTnIa5/I4QWCvrASMa5x1IHVqerzS
	OwfsB5VLy/MFhcd8pAabe5PJkCryrBwY/w48UFvddtKtE90jhPkYb3
X-Google-Smtp-Source: AGHT+IESE27rppHb537p05+livzSJ6Q8JMwqpi1vsOOK4dKizQ9h3VcleLXEuvW0Ic23NbimfYeeTg==
X-Received: by 2002:a05:6122:6b15:b0:55b:9bef:2530 with SMTP id 71dfb90a1353d-5614f75d7femr4469551e0c.6.1766401195597;
        Mon, 22 Dec 2025 02:59:55 -0800 (PST)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d060bf4sm3482229e0c.7.2025.12.22.02.59.54
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 02:59:54 -0800 (PST)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-55b0d4b560aso3188562e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 02:59:54 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVuQTGBvuvV4Q/Gc83h6AjOFlTwrto74u+dEbUAwbPd4W+jN4ZlwPI/fb9ozwzfZNgww+FZFqlvIUo=@lists.infradead.org
X-Received: by 2002:a05:6122:6790:b0:559:7faf:a276 with SMTP id
 71dfb90a1353d-5614f7ae2d0mr3069797e0c.7.1766401194470; Mon, 22 Dec 2025
 02:59:54 -0800 (PST)
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com> <20251210-rz-sdio-mux-v3-1-ca628db56d60@solid-run.com>
In-Reply-To: <20251210-rz-sdio-mux-v3-1-ca628db56d60@solid-run.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 11:59:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVqSPQ_rCY1mPxyAw1=WwK2VX9bxMKQQuVEe75u5hTvsg@mail.gmail.com>
X-Gm-Features: AQt7F2qvtAFJTZWBdh_71wFZZJPHL2v6ti7TTVpa1qQd7XzzszUS-LtvxMifYms
Message-ID: <CAMuHMdVqSPQ_rCY1mPxyAw1=WwK2VX9bxMKQQuVEe75u5hTvsg@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] phy: can-transceiver: rename temporary helper
 function to avoid conflict
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
X-CRM114-CacheID: sfid-20251222_025957_299350_6A6FF5DA 
X-CRM114-Status: GOOD (  14.87  )
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
> Rename the temporary devm_mux_state_get_optional function to avoid
> conflict with upcoming implementation in multiplexer subsystem.
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
