Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D32D2D74EC5
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxPXwtjbzfqyUmb9fLm7QuX+yoznUyCQc3jYGFvgFao=; b=grE3ynBG9jTuVA
	EMS6l/rw7O2brBMIDoVNAfs0dpeI6qjhhYF3APGOoLfAcq508Tkeyn59PaOlUAr33j65b4rtipPV6
	UmzP2cBxkfNhaMJkhB86KBhxCHaN/9K2p1maHbG8fPFWnzPRVzrB/qZL8Jm9yFrhpfUYcnotCeRCe
	tsVw9Yf2yKUkLmQgtSAEpWYeRLTSwx8kqJadPPmJyHRpP93JqW3LKJo8Ji64YCLYOeJcYZGC8S3mL
	Z86yH/+pPtOXQLqe6ZEVXyUok6GMSeRWSz24LMgKWYqoebmlkAWyTcBc6nL9RZPcaenaKiUb2byKu
	eA7bxY1G5T4o5Ev/DVDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHGL-00000008y66-2VMn;
	Fri, 23 Jan 2026 13:31:45 +0000
Received: from mail-vk1-f175.google.com ([209.85.221.175])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHGJ-00000008y4q-2aYP
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:31:44 +0000
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-5664393d409so177812e0c.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:31:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175102; x=1769779902;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uRZVas5P6xxkBpdwTHJQR+xs1A0EdTWP84ona+zohk=;
        b=d9BHHQkXE0dhXX1f8KvcQZL63w8wnlxCqZ7MJB1pM5HQUNOS26zjgvYInE/oPnzFb5
         jA7CXvY6Uywhm2yQyFxI+D7/Ib1dO39OKfwRifrcCKnAIUSujrPCf1DcEPMMgoh0gywg
         8Iv1naHsZhFLor4mGqIzCKrBJiwt4rP+T+cWh6Wi6go4XXespUa3nA4u2ZyPwEmMfx07
         Na5bv7/hKlK+4rBNUWNerAVIml/WwKDSzMf/hzhnwJqb0UhkFQuTa3QBvxgq8okky+Vb
         zpeCHdwUYfsBAReEXAfixtzuaSHZReIZSG0HUNyeAwKAkv1dOkiPpu9JkzdegUVNagp6
         ufxQ==
X-Forwarded-Encrypted: i=1; AJvYcCU12pFAnrmqkwkn/uf9iJqCMQmyucjMXhPnUliqzS2uMHc/LLSvAaXIFKZ1+YugAH5X/n9l+KCsTM8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxxk8KYNejk2nf6xsXH7fwShDBwLP4PAMKPDiQraDM1h3zMZbB/
	095ri1zPBzK9EjkodN7EWn5UyBaOyTWfjcYWvmPtE3fucCWvOFsH3juFqDDHz362
X-Gm-Gg: AZuq6aJG6XyDo9Nfaf9a3yfzCr1CZB67sis/RGcoNtw7NZuZeEayYOs1NNWCIg7LiIT
	ck5woddTGzRVGnoIm4SKgu4VPP0zCVLg6jlW6y3EWWMBZtwSF1wyJTR358ZMwdB/GRIZ1B8+ofR
	O1g6L7IfF8gB/DFkQgIaGwBKN2YbNRXC9/BftfL6AjygvbtH9FHGHDRdo+kW/Ysh+AsZxyVzrah
	FEIxOyG0IF/hAU/la8WmNFJ0r7h3PSNvbUauln/4jT5J258Qvwa5+dL1Q9hNh291OuO4eGRmW5c
	aU1NaurtTwMOgKx1/lidTyCiC/WBPvNRTIfyBa45yhzFqYo49Hblx10ftWlWnW7BpwWyKmO9Jeo
	IRZXNoLyE5q3riJcTYYEpCjSOroz0J56qhJ12tHEJCOf2Lw5nkJwz3oG+vLDsFG9PdU/zbebi/y
	W0EVOii9MJe4XStBcgXMr0VDzWAZWrzHgW9W/dEbn5u7sxHhdy
X-Received: by 2002:a05:6122:65a9:b0:566:24c0:716b with SMTP id 71dfb90a1353d-56645b26d40mr403843e0c.3.1769175102122;
        Fri, 23 Jan 2026 05:31:42 -0800 (PST)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fb591f9sm475728e0c.10.2026.01.23.05.31.29
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:31:31 -0800 (PST)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-94240659ceaso565469241.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:31:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXHlavLFxVAhpeF1IM3UXfSPpl7pyV4P6sGuHRLOF4TxNb6aqx5Abxj5VOu5DNAEgZOiJZHGxacMaE=@lists.infradead.org
X-Received: by 2002:a05:6102:41a9:b0:5e5:5ed7:60b6 with SMTP id
 ada2fe7eead31-5f5587483e4mr261455137.39.1769175088847; Fri, 23 Jan 2026
 05:31:28 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-5-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-5-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:31:17 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWZoJX6P9VEMoFRaPfwQUEtr65f0dE4djfP-SGp3MGEfA@mail.gmail.com>
X-Gm-Features: AZwV_QgVgI8LRuqulRD9turw-2cvtSAPBn2muYug1d2m7BRf781VDBF4OGiC5Ms
Message-ID: <CAMuHMdWZoJX6P9VEMoFRaPfwQUEtr65f0dE4djfP-SGp3MGEfA@mail.gmail.com>
Subject: Re: [PATCH v2 4/9] arm64: dts: renesas: r8a77965: Describe PCIe root ports
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_053143_657790_16281661 
X-CRM114-Status: GOOD (  15.58  )
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

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add nodes which describe the root ports in the PCIe controller DT nodes.
> This can be used together with the pwrctrl driver to control clock and
> power supply to a PCIe slot.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

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
