Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BAC1106B522
	for <linux-phy@archiver.kernel.org>; Wed, 25 Mar 2026 12:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfaADA2lPXRmeXpDCZ3fZp1cLpiv87KXbCPpm2JvisM=; b=4zefSk0/93GStk
	2QhAFBBEH6euO+xV6OVGe3sk0Vd10nRXu2ydOQOpWUS7teztVd09SOgfRaaLaGHF3mGa0gxid/BXq
	9mGMZi8cUmkFmoRQZRHwfUSQj6NkqHzDYuioNMVi5xuSExSMqPBQLkxcIP18a4H1/la/gyHnSvsxc
	plc8gyyOYDk26UK9BTjgxT2Q8LP6CSEXstyVhqg+O6lBVxpMHyXObWZkhADmn943zWbl1LqI1JWNW
	/1stHeSzr8AcGQ8wr4B5pfVs256O3Ho56OIIGY93QgLixtbCIDODiX0ZSzxE264WbpB/kObdv8z4b
	PQRNuwdFLJUTriNQ+llA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5NNR-00000003NER-0x8Q;
	Wed, 25 Mar 2026 12:30:25 +0000
Received: from mail-vs1-f52.google.com ([209.85.217.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5NNO-00000003NE4-1r3k
	for linux-phy@lists.infradead.org;
	Wed, 25 Mar 2026 12:30:24 +0000
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-60318fdfd25so662105137.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 05:30:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774441821; x=1775046621;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MagvQBlfcuzFnX7huBL5/4v4ny2T/Dp0z42O+1ynv88=;
        b=QSPrn0T0On+X6nbY2JztKllUc/AoddSGU/3+MFF47ATtOOehz4+y/jfe6Wfz3v+lgj
         vy+xMt8myh2d5wG3h9RAZTnpGl+MebWa8EBYDove3REEdJQX2Xp/1ODkZQFG4jUYCsBV
         Urd8piivlWX8Ds2uAGfs2yznhVL2MK2l+XQu8XnGbtu7k6WHv8eqMtPu5nK47xDVv0bM
         d7e4JHdfmBmDRUNsjkcEpjP6WwV0zevNwhP6zv7GbqjS6ClJqd+K/ololknlniKc3yhz
         59bGoupEdVJwMQWsd85YTWTcBcbRhAxXty/oK45xpTT4PUK/N/CODodqwqxPeFk2oaM7
         lN3A==
X-Forwarded-Encrypted: i=1; AJvYcCUE05B0YMI0W6yUzjQE4AU2xhVBww0HEkW6LrAh3uv1mYs4TU6XmvIaCn5nOejJFeSqzVUViQt3KHU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDMl81x8kfTZotyylOjbxSnbowwFfB1wxmzrA6ZbabBQGDhddB
	IO5/tbvfgAa8coNpK7tjGJNN94NO0mkHr3g8FTaLQZY1kk0gue78tNm5jJPoXGmQUnU=
X-Gm-Gg: ATEYQzykcC+ulIep+mhWSdMC3c5WqCfZsXUmnjB2cmjlucMncp/6DgTi2Xj5133gsuD
	i/fb7274z66BalZQxg0ppRk8sVd18uxJnwos13mkGBsAKNenwXU+pPuRBzdOuB3MOc1Pmzboi5V
	2wrnCgvJKmkDQNs2JwbvQe1LF/KmV9m7zLBpooT8CdJDOhVbI15qDhZB4OQBT8ZnfxygjaJIOYy
	kPPFe9ap4bZcO9CHGHVcHPHez168helMEJHl/o1jOhC6ct8pqY6/ISj1aTJw2YHRzgeO6l57+nb
	FZoaCCMnHBpZNk3fhFtFTF8l82QKArRUsbb4nBuYXgq3CJk5DHXFy50hcX2EftQ8mILy2u8OcGq
	UoMRfgcSg0kUH9Hu1C1nGVqfmT2Gdm5d/MVqST9AbQDCDjJXvX5BtgHczWioSlMUSrCc/3UTkoC
	Nfs1hW59aoTO6tPUdR8LomTyy6PU6LuF9B22zc7KVL+0VDe754JbZNgF5cID/TN5Px
X-Received: by 2002:a05:6102:508b:b0:5ff:a4e0:193d with SMTP id ada2fe7eead31-60379001ddamr1568254137.2.1774441820808;
        Wed, 25 Mar 2026 05:30:20 -0700 (PDT)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-602af5ea90esm13804286137.0.2026.03.25.05.30.19
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2026 05:30:19 -0700 (PDT)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-56cc6fe8815so2818244e0c.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Mar 2026 05:30:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVqcE5gpkOAejGCH/nApFnysIweGEwLYBbSZhrEQ+B58bHN2HzX1xgbIvnpFF6EVSoBN6O0t/tROvQ=@lists.infradead.org
X-Received: by 2002:a05:6102:508b:b0:5ff:a4e0:193d with SMTP id
 ada2fe7eead31-60379001ddamr1568201137.2.1774441819157; Wed, 25 Mar 2026
 05:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260325112039.464992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260325112039.464992-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 25 Mar 2026 13:30:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUV_UDHW6-CvoWz2av_YMVzA65K9rKs-kUUfsJ2sJoPKQ@mail.gmail.com>
X-Gm-Features: AQROBzAIcY15L6Naxddr5yUVr1T2XZAbydwo78ZmXjWvOA-eeKK6ZT76WMUzHz4
Message-ID: <CAMuHMdUV_UDHW6-CvoWz2av_YMVzA65K9rKs-kUUfsJ2sJoPKQ@mail.gmail.com>
Subject: Re: [PATCH v2] phy: renesas: rcar-gen3-usb2: Simplify ID/VBUS
 detection logic
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Pavel Machek <pavel@nabladev.com>, linux-renesas-soc@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_053022_510689_C39F63F1 
X-CRM114-Status: GOOD (  19.34  )
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

On Wed, 25 Mar 2026 at 12:20, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Read USB2_ADPCTRL once in rcar_gen3_check_id() instead of issuing
> multiple MMIO reads, and derive both IDDIG and VBUSVALID from the same
> value.
>
> Drop the redundant !! operator, as assigning a masked u32 value to a
> bool already performs the required normalization. Simplify the logic by
> comparing the ID and VBUS status directly, which is equivalent to the
> previous conditional but easier to follow.
>
> Reported-by: Pavel Machek <pavel@nabladev.com>
> Closes: https://lore.kernel.org/all/acJVCOdlchLiSe5n@duo.ucw.cz/
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v1->v2:
> - Rebased on top of latest next-20260324
> - Combined variable declarations and assignments and dropped
>   redundant !! operator
> - Updated commit message
> - Corrected the link for closes tag

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
