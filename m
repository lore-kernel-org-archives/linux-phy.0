Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5584AE8FDB1
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 10:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSQNvhfy0+VUrP/1V/BF2RnwYCmBGg8uSgy4zhhtEU0=; b=YRuSfKpllbqvQh
	b8WK3V+3KCU0Ts17QDK0sYouzohb3ZvmZTbP2NPJPfOr4g370sDT6/8zs72/IV0lvNxaS0UtfPb0w
	C4ha1dtaR8H3DaF4ABIydQDMfIwEx2j27kNnQssPEoRKRhHt6QfPkKiEGGQL3Cjc2aNVkjG4z0r7p
	d2U/gsbNbWLhP2LCF8aqjI55s6Ab6bltUMc70XKACaOz7oYW4ZlZUZuVVAPHNyNd8w+0WnK/uqTMw
	r78XitENjtFMVEg1zqe0//XRJZvym/VXQ47rB6xcIGmWkCL9Jdu0MGI6wd4AvG4nUVRsCf3fEdDha
	zy+BR/OzFl7hYG4dtGTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaASv-00000003ZXF-0PYo;
	Mon, 29 Dec 2025 10:27:05 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaASr-00000003ZWY-3l8P
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 10:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767004020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+gTURj67hUtoANoYmcW+tjm4QyZ/4RAo5MqihnzdnVQ=;
	b=Y9F0ckMHSY+CvC6E0wkBgfFyb+R4FDJdLGX+oCfRhQqJoPSVCdjjELw6uBMq5UnpaNCap/
	917bVB1U6dhcHSKIqC3lW6pztO+j27icTuS2iKh17YphyR85tGwCTpVFDg2POfUGh0ClmF
	v5Kj5TFq0/ccg6S0DZKKT2FQiwbr54E=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-99-QsTBNeDWMr-xIyPkzWfBGA-1; Mon, 29 Dec 2025 05:26:59 -0500
X-MC-Unique: QsTBNeDWMr-xIyPkzWfBGA-1
X-Mimecast-MFC-AGG-ID: QsTBNeDWMr-xIyPkzWfBGA_1767004018
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-47d28e7960fso32249735e9.0
        for <linux-phy@lists.infradead.org>; Mon, 29 Dec 2025 02:26:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767004018; x=1767608818;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+gTURj67hUtoANoYmcW+tjm4QyZ/4RAo5MqihnzdnVQ=;
        b=AZ5kFJpHl4oPMfB6sCJyyOKm7Z71BraWewRltGviE0JbTYuYVbvX7aWHsTKjJxYLjz
         eblHu+7zewxRygxykDZiH6jcIHcgD46pLn7vARtuufKcEygb2Cq5kCp1DadZVs2TA/2H
         4WVcNKvuy9vB1xiioaqgfn88QZKX+gCyYBWK++H3QukIokuLSXQ21LOKBILU10z6sy4J
         z/dVLr0HVTVMJwG/U7S69zweLhk5wXJoHxwJ5BJe5Nw7whLJrSDqAT9MjDfoL4PcSm48
         gfDhNckUpaHkwQFeV9P319GZg0PGWwwBUy8EVK36Wf8e0gq/bN7mUrWarri0uRRdjdam
         0Tcg==
X-Forwarded-Encrypted: i=1; AJvYcCW7NJYpUoCQ3M2xVRveQ4g2q+kMIiWCayzJs4E9EuaVQ48jAXGH1ziSsv/ngRl07X5P7ZQ3mR8ATmg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwD7w+lMfQDxjCQFBoIR47KBcwvG0A7ltqGcR6FVgLNXmV4TCTC
	vfxbpgAYTP+7bY0I0tEsJ2q7z7A6Z8yKgB9g9xHy71VYIqUTZ0y3Cpeme1ET3OlofBmuLvhjR3D
	mnW6ueEJL3KGDmz761HbVVPEI5yG/MALxup0OYEvhY4/tq1gs+nU9BAKr3I/KlkSCsX0=
X-Gm-Gg: AY/fxX6ypQkJxu+jUHWDszSBo8u1KLyYe2gieJbwSpqDzGzre2gt18vgkLRlocSJeYx
	A8TmvoV+GjYBvEHwAXiVN2Sqv/0ciMHcinoFCkC7cgM+Y7mtX451x8g6xObF3XL4d7U7FQpn/Yx
	AmbFGGnrHRWPA7L88c0Dpws35vqCxqBCUULNk9Cd29Sob9WDGHBLJJ1ek7398xGf+ASznBVr6XZ
	sRMBYPvTGVXsK7pdN5kLFgydJyGU7lrCSOaVRgQXMuMDbmAnKg76LpDjtw+qk8xtdIuN5SOK1fF
	p0JLsSmjyuyuzR8qDk56/97Jc4JKq12oumxOTLx/vJ42K3Em492QvkVlVDDDlq9sCywn7LOJJMH
	+Hi8tnU+hSN6TlG/oUiK2ybIU88NG1c3PTEN5+auZkEbGRGM1LpnIasmmbepXbzWdStA1
X-Received: by 2002:a05:600c:1d0b:b0:479:2a0b:180d with SMTP id 5b1f17b1804b1-47d1954a5f7mr342815155e9.11.1767004018157;
        Mon, 29 Dec 2025 02:26:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCLr8RQ/kQaLCzAKU4XinX/5NPXh7J4eFNQbJHL+v0sAPDycbmoLCRLQ+zzlU/e+HX1KBdsg==
X-Received: by 2002:a05:600c:1d0b:b0:479:2a0b:180d with SMTP id 5b1f17b1804b1-47d1954a5f7mr342814785e9.11.1767004017733;
        Mon, 29 Dec 2025 02:26:57 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d28bede16sm170253275e9.20.2025.12.29.02.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:26:56 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Alex Elder <elder@riscstar.com>, vkoul@kernel.org,
 neil.armstrong@linaro.org
Cc: dlan@gentoo.org, pjw@kernel.org, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, guodong@riscstar.com,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, kernel test
 robot <lkp@intel.com>
Subject: Re: [PATCH] phy: Kconfig: spacemit: add COMMON_CLK dependency
In-Reply-To: <20251226173228.2020411-1-elder@riscstar.com>
References: <20251226173228.2020411-1-elder@riscstar.com>
Date: Mon, 29 Dec 2025 11:26:55 +0100
Message-ID: <87wm25fus0.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: MteUImM8fuRe8hsv72M3AV3UmpfPxC9AQzYFrw2HpV0_1767004018
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_022702_034056_F427BB46 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
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

Alex Elder <elder@riscstar.com> writes:

Hello Alex,

> The SpacemiT PCIe PHY driver depends on the common clock framework.
> Not specifying that led to a failure when doing a COMPILE_TEST build
> for the SPARC architecture.
>
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202512251903.sTVZgg6c-lkp@intel.com/
> Signed-off-by: Alex Elder <elder@riscstar.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
