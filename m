Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C938CC36000
	for <linux-phy@archiver.kernel.org>; Thu, 20 Mar 2025 10:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7YBZWaatwSiZInef1yLuSWdOup7pGwfk+s+FRCE0bJ4=; b=bKfzdFEAj5iJ+h
	TQpV8rtTm4HWUmLoAh1m0s5n28zgQkGbWzRekQDG3SJrunR2GuwRtDQ38SW5mZb1TI5CEXwf7OzPs
	04pC+y72CisPLZvZApWVrvg4pWWZmJN4L5dEyTiL40EusjnVTADePbzjYz02p2uX7Aofpp8S5dRgl
	GWyFLIfDHeupUxbpwEW6wQogNaAA3tZEmfwa6q/lnN6iHnQgB5hixnQcyFqy2O/ZibItvbZzg+2xN
	NRuvhqLIUrmFUMNCrX04aZKKHfSglcLIwq4B01OPrX4gmBFt15Zaw+WO/cuOJYsES1Owy8YCy1G27
	zE6miBsuXaWvATWj7WGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvD5v-0000000Bo6q-1iZG;
	Thu, 20 Mar 2025 10:25:47 +0000
Received: from mail-vk1-f179.google.com ([209.85.221.179])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvD5s-0000000Bo6P-19QG
	for linux-phy@lists.infradead.org;
	Thu, 20 Mar 2025 10:25:45 +0000
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-52410fb2afeso616208e0c.3
        for <linux-phy@lists.infradead.org>; Thu, 20 Mar 2025 03:25:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742466342; x=1743071142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d9Vl8stWRp4XCmhjIQ4x29/EadE6k2Y0g/CcM3o/k34=;
        b=LBYvE0bqOFc0AU+OIOghBAA4h6WRoSqrVIa5NfOa9OLK4JJ/i9unS5XiknqbvXmDSZ
         erJHNcSHQI4BD5GsbOm2e0fFEn2vEV8CMLd3eX2t3Zw4K2qhEKmxR8++b/RWz7AMPfMi
         j/d93qY07hXW0MDNWD8Eiyu1bgqwkqZpBeGPhTdjtonF3Z7P4RZjDVNveHdmbo0RZf9g
         3a9u8Y/53OBn8kBlsV4AbwxEG0fEKhGvBvVLditwFhU0vUS0M+IGwUA+XC34oUb1omjY
         wLS1Pddl1D+fkh/v0qnvuDr/P/w9ojpDYWCFAsKNXk4O6b75alWRj/LP3+sbZt4Yiabb
         kVJA==
X-Forwarded-Encrypted: i=1; AJvYcCUlnpcMSqL1YyjjRbSJBGyy++gaKlIScOXz7eLqF8qKW6L1AOcq7wdLH0lkWocYtNw8YN1IJhMMCqc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yymt9K9YJZA6yVv7+1KlG9s3md8MKcdHaPcgrxJPNniBCR4aKwS
	k3HaDB294867i511srUgZHXUTh414QsvEF1F7rH5frdYRx8QJyH1yDFVH8fu
X-Gm-Gg: ASbGncsGpt3a+9gIuBAC5UPV74jXKzz6qEqIXY1mBDNncVA7tO4XSIwbZ/cPHnS91kq
	YHGTzybrQxAM15A3GK2aZ/ME6Iej85xI4kUZQyoaWO3QFBQs3EVmtHoxwhFdrWFsEJsSc0bLT7C
	Pn7YvHfgK5XXeluXoWQTbYGIdQCz0tr6o/Qg396qqaM9WWpcCv5cHhTCWX09Wjc58vEeHyh5Big
	XmHFQGoJymA7DAWVcorcozj3F3mfCBYcyQcyLzJsjGcWktYJZ5XBIB0Cqh6IkKNSVDgYKKANTPm
	ProjKUZKmdbrxC6TS90WqPYfRt1Cli7so+RpA3WO6Njtz9lRR1WM0RNWfNMTIkT0BjRSNTgZRHv
	N4G3SvcSMI4Xq6MoC8w==
X-Google-Smtp-Source: AGHT+IHifQGdCmWIq3kx7jnkyiraoX0Xj5eg5cGndwNdtwRFTeuFNE+6o1x08BfiiTwtQd/qcHLRew==
X-Received: by 2002:a05:6102:4a85:b0:4c1:83c4:8562 with SMTP id ada2fe7eead31-4c4fcd97c2bmr1792761137.13.1742466341929;
        Thu, 20 Mar 2025 03:25:41 -0700 (PDT)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4c37546544fsm2665015137.30.2025.03.20.03.25.41
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 03:25:41 -0700 (PDT)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-86d3ac0fec0so561138241.1
        for <linux-phy@lists.infradead.org>; Thu, 20 Mar 2025 03:25:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVj5f0UruiUvpPn4XqaQYA/88mOWwQ3PDXCDgBp7PVDpnei0dmSGcnJP/g2PjFRgK2j4cgwhAG4ULQ=@lists.infradead.org
X-Received: by 2002:a05:6102:5e8b:b0:4c4:e451:6f24 with SMTP id
 ada2fe7eead31-4c4fce5a0b8mr1981078137.22.1742466340794; Thu, 20 Mar 2025
 03:25:40 -0700 (PDT)
MIME-Version: 1.0
References: <6bcfde63b3a6b25640a56be2e24a357e41f8400f.1742390569.git.geert+renesas@glider.be>
 <9875d99a-4e16-4f0e-9249-69f0acc4c890@wanadoo.fr>
In-Reply-To: <9875d99a-4e16-4f0e-9249-69f0acc4c890@wanadoo.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 20 Mar 2025 11:25:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVCmchuN1LyHGoE6A0TEpc9R1unXi2KNYO94cmT1WwOHA@mail.gmail.com>
X-Gm-Features: AQ5f1JoPHL7qu1sdjzScQ0pkORkgvrvYYtjHhU4AbcOVfFrVPVM4tJGLITEYQz0
Message-ID: <CAMuHMdVCmchuN1LyHGoE6A0TEpc9R1unXi2KNYO94cmT1WwOHA@mail.gmail.com>
Subject: Re: [PATCH] phy: can-transceiver: Re-instate "mux-states" property
 presence check
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Aswath Govindraju <a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_032544_311735_E45A2DC3 
X-CRM114-Status: GOOD (  30.07  )
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

Hi Vincent,

On Wed, 19 Mar 2025 at 15:07, Vincent Mailhol
<mailhol.vincent@wanadoo.fr> wrote:
> For some reasons, I received your message twice (with a two minutes
> interval between both messages). These look identical. I am answering

My scripting didn't handle the comment in Rob's address correctly,
so I resent the patch with the fixed address.

> the most recent. :)

Good ;-)

> On 19/03/2025 at 22:27, Geert Uytterhoeven wrote:
> > On the Renesas Gray Hawk Single development board:
> >
> >     can-transceiver-phy can-phy0: /can-phy0: failed to get mux-state (0)
> >
> > "mux-states" is an optional property for CAN transceivers.  However,
> > mux_get() always prints an error message in case of an error, including
> > when the property is not present, confusing the user.
>
> Hmmm, I understand why you are doing this patch. But on the long term,
> wouldn't it make more sense to have a devm_mux_state_get_optional()? Or
> maybe add a property somewhere to inform devm_mux_state_get() that this
> is optional?
>
> Regardless, just see this as an open question. I am OK with the approach
> of your patch.

Alternatively, we can be proactive and add a temporary local wrapper:

    /* Dummy wrapper until optional muxes are supported */
    static inline struct mux_state *
    devm_mux_state_get_optional(struct device *dev, const char *mux_name)
    {
            if (!of_property_present(dev->of_node, "mux-states"))
                    return NULL;

            return devm_mux_state_get(dev, mux_name);
    }

and call that instead?  Then the probe function needs no future changes
when the real devm_mux_state_get_optional() arrives.

> > Fix this by re-instating the property presence check.
> >
> > This is bascially a revert of commit d02dfd4ceb2e9f34 ("phy:
> > can-transceiver: Drop unnecessary "mux-states" property presence
> > check"), with two changes:
> >   1. Use the proper API for checking whether a property is present,
> >   2. Do not print an error message, as the mux core already takes care
> >      of that.
> >
> > Fixes: d02dfd4ceb2e9f34 ("phy: can-transceiver: Drop unnecessary "mux-states" property presence check")> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Notwithstanding of above comment:
>
> Reviewed-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>

Thanks!

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
