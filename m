Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41983CAC5B0
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 12:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BU2wWY7NxXGPFvGfgo6ybDbwUfvO/Gi1jCobnNd0GJA=; b=MRaqis615eFb40
	Exomu6VwC8Xv8WUSvvK9yzxyTU5lJm4nqtaSuS2ryHR1xfss5Y2ogn5w1obecyokHjW3rEX91KRnD
	5FfUvbPpgI3znl7qfAuAjlqMoC6LomoRRPaWn61+ERItn1XIIIFFusg4i9F9OKfXhDcqPBvj220Hi
	OpvoOe3MIwbpdCrl6NGonDq9NOzflqr5T2Nwxrk+khD7XZ7rwX4Zh8s9o71ENDxvkvJ79yX1pkwU4
	a6jKHy9v4Wbv77sC0HcO1tk2lR1hqJTDZwHq7cd2ql1+Gjd0D8rl4C/MZj/jKexHMsYOos4qSm2kv
	MVDNR0GALMKfmJMpdFTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1OVp-0000000HKr0-3peH;
	Wed, 24 Sep 2025 12:22:21 +0000
Received: from mail-vk1-f177.google.com ([209.85.221.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1OVn-0000000HKo7-0Fux
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 12:22:20 +0000
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-54a7bf06edfso4387801e0c.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 05:22:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758716537; x=1759321337;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3tAtYXWN7ryUB5vWJvXtt7rrilhjlT2dOX7k08gBfcc=;
        b=mdfjhlrFA6O/gLkWiiLGmj8ZK6xqkD7NK7jW61AtFtIvvEd0co6O+AQKPm/c7KKGF3
         ZTmyeK7kzOaqNhIc9bIDuiBmjtxH56XvNSiOH8GTaqXRpO5jxk78rFnJaUNSBQnv33pS
         1RLSHGU80LXBTKG+QCsvSp9OAaHetqq68/XLblgGNsHoF2DTe40OxeoqrY5zrsNHXatX
         /D3xUefhAzbvRT11qg0uSUg+dTN4tlWgJhO608aTR6R9RyfVw95rhShPHdjIg3IUdoHd
         24sYjkUzBsgX6uIPf5mOrIHG2uB4/3h1czOL2bLyTjXK/KwunQ5bcB958fvnncujOaVm
         ih/w==
X-Forwarded-Encrypted: i=1; AJvYcCWrFINpGAjIWDHRpL4HTP1xutEf/WEZF1VgyWt9FVgtJGVkhloYOT0au2vFI6udk4wJ+WcLPEUw4oc=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywn/L5eGiitbIJnI+wTuZNC0XzrDHXbe5w3Y6yy6IetkK8zVBvu
	amlNZCWCPWdqufkL/m5dGepTG7dDinJ4QxlacQkFjOJcVpO38doynraAsozo/2F5
X-Gm-Gg: ASbGncuWn2nex3Pa7PKDlvjYhCinUC/vGECu77EfG9GPQLXBVv5oNckFynScTFWmJ+6
	46PtDqcb2ORTT3kc7TIdrkisBCrVDv5QvDsJrWNQPd+fBTFUfM9AbBS+pw144qKY/v9TYPFQKVF
	ZfNtz7fC2RO803Yhc0fjbdDqF55PHUBNRlfbU+LzFL0JiiZ11jIIW50tIYTVFojMD2d3O6jazcM
	wzGowD/HkMSH7hUsLxDOD5TaUYASnbPw5cG10+RG2mdLNNUM0bzPhxFaXayBdiZEtbuU5LAMCaq
	/b+WRbOf/12StUFh9q9QY6tG918o3bEno7mTTNIK/eI/eMi4v8Tp6x36H/q4Z4xzlSPeW4tcfij
	iLQuZI1DqSSd0Lbh1ptDbKJKF/NlGz53EZFXgwXr+q3CMBJRR43gbjMuLfKebcr5fZWFGQ2Y=
X-Google-Smtp-Source: AGHT+IEjGMIIsvOu80ONUiuQQG9+N0nsx+xu2Ygwm4E0tdeesKUKasQvbTK7Smcjj7PofMF1RzGYig==
X-Received: by 2002:a05:6122:2517:b0:54a:9fc0:40ab with SMTP id 71dfb90a1353d-54bcae279b2mr2184859e0c.2.1758716536871;
        Wed, 24 Sep 2025 05:22:16 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a8685e515sm3298996e0c.21.2025.09.24.05.22.15
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 05:22:15 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-580144a31b0so3043240137.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 05:22:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXBwjRerx8PsltqqS7z7bb5e3deyIbwNlBT+Rv/0LSNmsNW2PmbWqjiKUbc+08KM0HqIGzatwljMZY=@lists.infradead.org
X-Received: by 2002:a05:6102:292a:b0:51f:66fc:53af with SMTP id
 ada2fe7eead31-5a582ed6587mr2478165137.34.1758716535525; Wed, 24 Sep 2025
 05:22:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com> <20250916150255.4231-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20250916150255.4231-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 14:22:04 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWgjgsAG5my_vDYF+2692NyFOuDqMXH9F-1zE_KXVzigQ@mail.gmail.com>
X-Gm-Features: AS18NWD96xgwB4aeZ6Vi7llmU6wbBVQwbgzGfR5YAigBPMea8x1UL6uuirF4Jr4
Message-ID: <CAMuHMdWgjgsAG5my_vDYF+2692NyFOuDqMXH9F-1zE_KXVzigQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/9] dt-bindings: phy: renesas: Document Renesas RZ/G3E
 USB3.0 PHY
To: Biju <biju.das.au@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Conor Dooley <conor.dooley@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_052219_102289_01C77C6B 
X-CRM114-Status: GOOD (  16.05  )
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

On Tue, 16 Sept 2025 at 17:03, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Document Renesas RZ/G3E USB3.0 PHY. This IP is connected between
> USB3HOST and PHY module. The main functions of the module are
> as follows:
>  - Reset control
>  - Control of PHY input pins
>  - Monitoring of PHY output pins
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

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
