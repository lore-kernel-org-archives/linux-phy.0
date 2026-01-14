Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9562ED30CF8
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNSWB1NHg6GllLfVyIavPt1FUMrcRJLFRqlupkdeE2k=; b=lcyRotOEoRkqRd
	rZ0nGutwJiuNvYCv+tfZB0IRkqENyaV9YG+QUbqTgbPHIZOWf13PgNsGMo1SQvAVspgZYVevJWrBQ
	p23zvTJMxKJdQSPjOCvgNzqFuniBJ2OD3P/7tUS3xh0RYr+jMc2hIMi3wTJ4dpbl4JruS5qoisy/C
	bv6NAOAZqzX0WMtdbmGKFy8xk2mxP3xBfFW8xOX7qIW7QkuLIOb/ncemZ4rMgobrNVvNhSEsnh+BG
	PTT+w22PFzXAxlr2idg8JWqdQqE475KH+B/tw4Q8vFZdowf8pW9UR8GyMXW8yXHMAi4gOplmZbXki
	Ql7xnCYfpjuUs76O1Ztg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfy1c-00000008lOF-2rbw;
	Wed, 14 Jan 2026 10:22:53 +0000
Received: from mail-vs1-f53.google.com ([209.85.217.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfy1Z-00000008lMc-3kPK
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 10:22:51 +0000
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5eea31b5cb7so2075457137.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 02:22:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768386168; x=1768990968;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PQb4APq8JZCf6vJkgFja2UsHU1/oiSPOSOYM2wa7H1g=;
        b=RIA6AYsiiqBlg+/tiozdO7t24aQwY3LARaIEdVBr3eKtizod/nJvT6eSrS1goieKpd
         yQRH//z3C+pKGr5mQnwYfZy97ZKPkZRw0aSCwerl8wviyAGBRciyZz3ezbY51Z0McX5N
         rElKmVg/XmfHHtnKFIp+8OqlQmMPfCI46QWy6FxKFM1REbxrmvYPOKd2jacwtkB/DTau
         AB2lm3wVHR83j6Hyd1v14DW9vwPzaZLNRr+u5HWRamO4QY+uErTq7yfSAP38Tm/QDd15
         OqPo4BeTBfZgICCNgx9Yez+hv2NedfLslBT24BuBW387naLkfFpB8Co4lXXw2UHBWL6I
         WYqg==
X-Forwarded-Encrypted: i=1; AJvYcCX0y75u64bJw9qE3PO18lTY+eFg1P4E+f2JCItjXwb+iDAgU8NZbXTy9ULN2Cz7U7VfS9xGbgccRh0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxALmn6hys0O4he+vKKeZyiq2J5i7STLEoRsbBHK+d+Af2oYXbY
	cgBXLc94ts0OlwZXl5OCBG3fQjs4qJBVug/w3+Inst0KMJtUAHuv5c9K5n4nXiq2
X-Gm-Gg: AY/fxX4cOWEJ7hu7OBVTlcLj/VM6foZvSyD1mYYHw96AsXZYI5eX3iqZzZyPYAQ1QYD
	6XCFE8e0hQtNZOjnoJop5UtTK3Unjg0uMWGA9tDRHp7x1aExYd67z8xW2ziOUtPZpVJiyinLlQG
	oD1teLJCCxoNaECOmnK14YCPJE1pMeubzsuNw96agQPblWFzegpd0q4ceyhAiAqteeUA0fFOr6j
	GdPhYpGMD/56Afk+M1id4EQ044d7POYf1CYDNiFrRQkiZzv9BrlO0HmHvBaeCwHrSaCwLPbs1l2
	Ppx3zhIfFTEuCntuF3XQ6NXlMGTHmeSZHckzywOu0OOYOC+Xms+Kd+834d0epcxYBweaXu56F6j
	rdCGnHjQZNfSwMugXlpgIx4SNT5mX0u2nghL3xiLYrx9w9pEwmrxFrpxecw5c6Y3QtzfNxw1vbX
	vgw1CXhsxpMXecPx0z0JkU1WhgMl3z/WWIFR0Q8x4ZIawTqwob
X-Received: by 2002:a05:6102:cd1:b0:5db:3cda:cc3b with SMTP id ada2fe7eead31-5f183bdd496mr468948137.34.1768386167531;
        Wed, 14 Jan 2026 02:22:47 -0800 (PST)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ed091d93f8sm21250900137.9.2026.01.14.02.22.47
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 02:22:47 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-944199736ebso2597859241.2
        for <linux-phy@lists.infradead.org>; Wed, 14 Jan 2026 02:22:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUK6aUmN6OcQFmTNBYGpPcd/VdgYGhtWS37rO1rsOYz2YMR/ruiMhZPzH5Bz3RmGSsLRUFp4ShEYt4=@lists.infradead.org
X-Received: by 2002:a05:6102:50a6:b0:5ee:a93d:2cdd with SMTP id
 ada2fe7eead31-5f183c02702mr366472137.40.1768386167018; Wed, 14 Jan 2026
 02:22:47 -0800 (PST)
MIME-Version: 1.0
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org> <20260101203938.159161-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260101203938.159161-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 11:22:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWZzL7nUCv6LnDaDhpMwfrnJp3ZYPAqQtDJ3BsZyH9k6g@mail.gmail.com>
X-Gm-Features: AZwV_Qi-Eu9-CR2_DSC2JlXjPpAlkxhHqejeDJ45jkp3qmHmsOBPHJManLtOH4I
Message-ID: <CAMuHMdWZzL7nUCv6LnDaDhpMwfrnJp3ZYPAqQtDJ3BsZyH9k6g@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: phy: renesas: usb3-phy: add r8a77990 support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_022249_931196_6D5CE12F 
X-CRM114-Status: GOOD (  18.07  )
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

Hi Marek,

On Thu, 1 Jan 2026 at 21:39, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> This patch adds support for r8a77990 (R-Car E3).
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/renesas,usb3-phy.yaml
> @@ -20,6 +20,7 @@ properties:
>            - renesas,r8a7796-usb3-phy  # R-Car M3-W
>            - renesas,r8a77961-usb3-phy # R-Car M3-W+
>            - renesas,r8a77965-usb3-phy # R-Car M3-N
> +          - renesas,r8a77990-usb3-phy # R-Car E3
>        - const: renesas,rcar-gen3-usb3-phy
>
>    reg:

According to Section 76.1.3.5 ("PHY Register Configuration"), the
USB3.0 PHY register block is only present on R-Car H3, M3-W, M3-W+,
and M3-N, but not on R-Car E3?

Likewise, Figure 76.1 ("Clock Distribution [R-Car H3, H3-N, M3-W,
M3-W+, M3-N]") does not cover R-Car E3. Unfortunately there is no
separate picture for R-Car E3.

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
