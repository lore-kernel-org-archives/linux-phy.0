Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87365C61CE8
	for <linux-phy@archiver.kernel.org>; Fri,  6 Jun 2025 11:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cwAZkN2ZoBaup5mVE4tmrnVmuzHuB1q74UePbV3ARM=; b=UcUP3/S4QDilt5
	E4+We24kqJWnKut9n0rDQNmjUx75nh9K4E4C6npZu2ixn8lXpnMO3vwgBlTHERS7G9BQcMB5H6kJ3
	h0yfH0lu0VPJOO1bhUroX+S/qX31DNbIzqTmmNTJVt40rNI/c3tpESUckq5eGQyYGqGjiibfTHHQM
	CvQNvYTGb1bXmmW27OuceNPLRFVzk4H28Joq8iBKiO2adO6SYvGjZmBitzMeU4m0esuXfpXC8m34d
	meHFbWdjfaju1pODFgwrYId3nO5pYJoQGys+hloG0EvuVkjB0Iu5dIF/NgX/a+iuSf28vqb8cGB+M
	PVExHb2aRw5EeYlaM4Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNViz-00000000B7n-3cQM;
	Fri, 06 Jun 2025 11:59:05 +0000
Received: from mail-vk1-f181.google.com ([209.85.221.181])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNVix-00000000B6T-23le
	for linux-phy@lists.infradead.org;
	Fri, 06 Jun 2025 11:59:05 +0000
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-53082f1ac34so696272e0c.3
        for <linux-phy@lists.infradead.org>; Fri, 06 Jun 2025 04:59:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749211141; x=1749815941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GkkIyvqOfr9ngi6miRPVbPTmpqHilBK6eOIDZuISEqs=;
        b=pNeUksGZlEB0K3Zl1JkWtqxNakTtdQdDwO9NQJ1qBp3UL+7teLzHprmct0TnpOQrUc
         vPkNEzZVNr3vD+l75zk8vr4FNp58iYOQaiOTcn6f60BZAFA8KFRN61VfxoWXgpgcMR7i
         /9QCFXRkhMGaEy5BZxC7JSt+HKHutYXw6PGxcjYzwqfMZIotidlSQahIZtfhBNO7OF4V
         158sfKY3Xan8Hl24yK6p6xlecu/qkbvJDew5EH9L5pyEevH1rUB4B2s1kvXfg7/jOETT
         MF2rd4oJ/CMk5Pky6ulW1QPfCkyM/xMlg/yLfmPDLUDy5izKgLDruEWQg+OYMI5K8rOp
         xBrA==
X-Forwarded-Encrypted: i=1; AJvYcCVQcgut8FZFFU91GPP78tI41DlWtDuwy3jmk27nW5FbD5d2O/eCtJgcutEl0PSH0597XfZfJ9kZxao=@lists.infradead.org
X-Gm-Message-State: AOJu0YxvRRj4K6y02xPV7AtdGhEuIKxqXWhTjQyJXR1jVp4Hljn2gc9J
	qOE8hGyxaGv0g3Q8fwTrfqt+on2Gais5UCfWAx3GRv0sprz/5lnQej73VE0n4rFW
X-Gm-Gg: ASbGncuo2zwjI6FQ7du+6/aIWGpTbW8AgMdXUitsJrz7CQ1AZel8tR/pG5+b06qtZ3X
	WIGVkTUrFyc3zlsoDDeyMsjCpTxq8Q5ItFC5rtPJoTzXGCbRhHFbjX7m36oq2DymehPkxm2ACjY
	JVfro2nmZ9PSeTSZZXQADqGKhEys3UMMR9IMtsZtM6faLRdetxZIpUH+YfLM/J4YuYvWj5Sfw1n
	tiUp/WIXER4v9ts6Fhx2C7XsKeffDCb6SiOH6kVTVxIRSN+VPouVfLayQQqwDBiyLRM9CFAZcQg
	qIFA9edBVtbGH8qZqoK9QAXlFTeZpJe591eX+h2f1zjQA9N50TM8zo5bY1HXnIeC5SFpv1094c1
	50j9h5Y0xNLb/Vr5cwttJVjM2
X-Google-Smtp-Source: AGHT+IGhG6S6UW/r5I8u6CIb/71iDTpvJFNDAQjdrghXy+W4zCaszbLgfNzjyNAqI7rWci1MqeHXPA==
X-Received: by 2002:a05:6122:1e14:b0:520:61ee:c815 with SMTP id 71dfb90a1353d-530e48c0441mr2353362e0c.10.1749211141194;
        Fri, 06 Jun 2025 04:59:01 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-530e62e6207sm977064e0c.11.2025.06.06.04.59.00
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Jun 2025 04:59:00 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-4e751947dd8so663541137.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Jun 2025 04:59:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVOCuFPyPuOYpDo6mjbhkC0AgDd7NFORa8IT9mJOHPrQ6uBBlRg22cFffWW70yTM7ZKAS+tHIv1oms=@lists.infradead.org
X-Received: by 2002:a05:6102:440e:b0:4df:84d5:543e with SMTP id
 ada2fe7eead31-4e772928b20mr2281122137.7.1749211140760; Fri, 06 Jun 2025
 04:59:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250528133858.168582-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250528133858.168582-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 6 Jun 2025 13:58:48 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXMEzPYfDvefSzSx9hZGY=4eyRY2MHHnr5JBHV3ujFdrg@mail.gmail.com>
X-Gm-Features: AX0GCFsl-TsxaSk2EijYe-2lJ04s7VyuySx5VPceo-nG7KhS3hWpW4y_WadxEEM
Message-ID: <CAMuHMdXMEzPYfDvefSzSx9hZGY=4eyRY2MHHnr5JBHV3ujFdrg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: phy: renesas,usb2-phy: Document RZ/V2N SoC support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_045903_524738_ABFE5141 
X-CRM114-Status: GOOD (  19.81  )
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

Hi Prabhakar,

On Wed, 28 May 2025 at 15:39, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Document support for the USB2.0 phy found on the Renesas RZ/V2N
> (R9A09G056) SoC. The USB2.0 phy is functionally identical to that on the
> RZ/V2H(P) SoC, so no driver changes are needed. The existing
> `renesas,usb2-phy-r9a09g057` compatible will be used as a fallback
> for the RZ/V2N SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

There seems to be some minor differences related to VBSTA interrupt
handling, but the documentation is far from clear in making clear what
that actually means, or is used for...

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
