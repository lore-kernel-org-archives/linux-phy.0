Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9241ECAC58E
	for <linux-phy@archiver.kernel.org>; Mon, 15 Sep 2025 07:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUVFNZzIhwx3bP3AqZ24GqEfZjiHw9FGKIYyRWwABQk=; b=1Oq9q+jo4X80MJ
	hORLhchLtR8gQoBSrRn7tCj1Nt819o8i2n5I8E8NX3NXsb/5KgIWKeSdOtTBJ8N2XRMWZWTPvOS1d
	yz18uQ9N/ayh2Qjw2Ny0beuDO6LN6x9VRMs+NeA8Pr23g5qXjyeG5hPpC9L6mA8M7J/Ed1CXVJnb/
	wEqB9XbUd+rReejMrV6p/bBtz1wImQEx/BPjwmxUwVQPpfj9+2EJ4o38G0OMyGTbkK5of7YhbZ9TM
	IHc9vyBSeNKEqzH9tjw6n16CEpr+aR1nsudQDJfr2ouTJE1cHe5nLh1xZ0qLg004JDbKMZyF2fUN3
	Vd9bcw9gBmasijYTTydw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy472-000000037v9-0Ss8;
	Mon, 15 Sep 2025 07:59:00 +0000
Received: from mail-vk1-f182.google.com ([209.85.221.182])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy470-000000037un-1EY5
	for linux-phy@lists.infradead.org;
	Mon, 15 Sep 2025 07:58:59 +0000
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-544cb520cbeso2462019e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 00:58:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757923137; x=1758527937;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EdEbGsEznj/+fcW4LYAFT5Nf2skbq2ng99E8wh/Fflw=;
        b=lp41nTZxTpMDiWhQRtiVKRFLNp8Sz8+/pXhiFlGA+j/aS+hxAIrv2ILY4lYtqoVS63
         nM7ZN3rGl4su8vRl2qSijF9f3eX2O05BpTa0mjo9R+6GrFc68iEo0Q2MfNUlqvSPQUAF
         ZVsSQORJ2LDaPOQq7jAt8PnIDWSyPRoQMVylOTpabIG8jSYOABPdC0/ZkGkEe9qjwe8T
         WutUQn9k3RAb07Jsd4P/+7CD0TPCihqWbRvo0aJy16Azr5CqwhgtV7BhF7gLIvdtcie+
         SxHWRUpA1AYBYL7hMFHjIVTSGyiD2Yfw0d46j7zfzNL4POCI+6RYGlghb1IP+hLayepC
         AXwQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9hsgfk8Ki8zHZM2Vizsbwrz6GURqSPzGV/wTOCu0q3VBv2nviwlX5BTflVAlwipruAE8L1A9Wau8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwX4X92xe3a34IynqD9q36patyyaCrxCAQ+FUMjv5k+nJAW0X6H
	tvWqv52ppPvxOoa/F3pv0gXmXCek4C3fuoF7olzzxOvorK3m55Gjvjdx3TDlQmvJ
X-Gm-Gg: ASbGncsZAR8nF4Lnu/u003BGlwBTfrhFLUn6pG6ls1G3aBR59/7TNlUva3zm/jg+hdf
	EFbnSNUgtcF+PfhbK+IBp1eyKNwFZEVIVzJ2ZEeM0i1HzEhfeXCjBbSUAyxDrpISl7Mopwfyzbl
	Cpq3QbvpF4dWr5zy2p+6SfOWfFwwd8WZAyC51oENwmaR/N677lH3llMQHH0xxD4hbHxIkKYtjIC
	TbbXzf419eWwZgnWyrjdY6ZCrq2S7natiQKxJil1IOMLf+ubafjpxO+SaZd1PDj18wPD0CJTIvU
	4UqOb9Xu2PAI5BXWLVE5CaWgRHqBhiGSgXYARjhJzsq0pZF9S+Srltqt73Le2WVZowcSOhL/A88
	LYnKoWoKbgFIIPGpM5xoXl7pXQFPGAl8bhl2Hm+Lny3e5zCHSSz0RED5fZks1
X-Google-Smtp-Source: AGHT+IEgXbl6WHy7M84QLVrWv5+gHDSteVXC7ATN5nSxjOB3qAuWoyJrZZmNxMRTu+f/ANyWl7Vhng==
X-Received: by 2002:a05:6122:a1b:b0:542:d782:2522 with SMTP id 71dfb90a1353d-54a16ce67a7mr4171490e0c.14.1757923136618;
        Mon, 15 Sep 2025 00:58:56 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a2da13859sm776153e0c.6.2025.09.15.00.58.55
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 00:58:56 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5570a77eabcso2065774137.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Sep 2025 00:58:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXPbiD5NKu5EifQazb0dVyB4qSMMe/a/8nE7ahNUkzyT5raetbe2BsUa7C4+V1vTTK2LlvuKLjGjHU=@lists.infradead.org
X-Received: by 2002:a05:6102:808f:b0:4fb:ebe1:7db1 with SMTP id
 ada2fe7eead31-5560bb47790mr4450426137.12.1757923135481; Mon, 15 Sep 2025
 00:58:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250912130911.185674-1-tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <20250912130911.185674-1-tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 15 Sep 2025 09:58:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWKu3X1tihsa-ouuoSpOaAhuKB-fOZMo8_CSN4fROeLmw@mail.gmail.com>
X-Gm-Features: AS18NWDKwSEGTsUnPuKBqop6XzqwZT8QTZhdu8_6I5VGZEgrXV10p4SrcksRn8s
Message-ID: <CAMuHMdWKu3X1tihsa-ouuoSpOaAhuKB-fOZMo8_CSN4fROeLmw@mail.gmail.com>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: Remove extra semicolon in rcar_gen3_phy_usb2_remove()
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_005858_341569_6D59F751 
X-CRM114-Status: GOOD (  15.84  )
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

On Fri, 12 Sept 2025 at 15:09, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Remove an extraneous semicolon after the closing brace of
> rcar_gen3_phy_usb2_remove().
> This has no functional impact, but cleans up the code style.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

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
