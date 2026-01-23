Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 466BDD74ECB
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxPXwtjbzfqyUmb9fLm7QuX+yoznUyCQc3jYGFvgFao=; b=SiMizld5WtJ51O
	iif2ETjB+8E4QKiA+KpTb4QxB/AkDRULGeyPbKxwWGn8oecr1RvBizM87ksyqES6WoV53rmdLN84s
	pcBfQoN5Bdl7suQ/RsyPQTkFSj1WtVg2ip0x1xDKHvYPczCVboyDeatPzz6hPBcB30iyiDOTAscLn
	L3i93AKZ1IVmflZDuYz1VK4fIvW1m32FzTV88GR0ZPylcflpeiFGWIyJ4vfDimmSQF7YUfxfCkMAQ
	L/YWB2+AD+4G8BwLUSwwuwmpULtMX4SeWRN7LwrX1Riyh/VvuOlIAeSYB3NWOONv1+4VE5T4L573M
	e3N6tVjl1ys3yz7O60oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHFo-00000008xz6-087n;
	Fri, 23 Jan 2026 13:31:12 +0000
Received: from mail-vk1-f170.google.com ([209.85.221.170])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHFk-00000008xy7-3iJE
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:31:11 +0000
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-5662c2937fdso2086837e0c.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:31:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175068; x=1769779868;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uRZVas5P6xxkBpdwTHJQR+xs1A0EdTWP84ona+zohk=;
        b=JtO00/zQaTXoVzYUNu6IGnVFE9Y5cHEyI6rH6wyjjaUiL+d8sgScxcA3dMjDFsRTpr
         a3T6FBD5QHoZHvrlDp575Qt/AHFeIJ0vVok0UPHSFTk0C3ThiQe/rbayyfFXAxkbfoA1
         XRREvWTmX7em7gu0kv+h2nxUiSUsR/QsmTtlHl1Lyox6JmWpDaEliYg2FlXjeRCuOCsP
         Z25nU8QXBMrylt4HUsIfqgGLMIX+vsUc/42JRmCorv8xI8mu3HnlZo20w4mWi23M2Fjy
         T5GfZVDR3kn4IQlS06zN13hqCIg69XVU9wcZ0JQEk7klwpAEfH5HlB8t7H9UnRMkzTNh
         BuXg==
X-Forwarded-Encrypted: i=1; AJvYcCUvk4as40mCB88qXYgXY0ALofGQhHPP4judjict459jU+wBsatNOGdBdxy9T1O3CXVBDFRvhpZlxjE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxjWl9WRuC8xOf1lIc2kwP6swxYSWDW1S26wGKX5BQtb3s2z/op
	sQA4PrcYbvSOQyxaboPoei3wdAVZ2eGnDzj9ZkDIZR6l9HdltU7Shr3Ix9n83qJO
X-Gm-Gg: AZuq6aLW5ugfJPkcpPTkwcmRPPTE11ZiAenxTnwRajaMyQmB0xj3grIuA9y2EAVwQ+T
	qpiNVhUr3sJo8zSBUjSvTRAhM+Odz5uNRHQCV3PkcX4bmSBoxE6pv+CXssecAD9iH/OdZeUbCUa
	GBWnt4tIp2vEFLwJIZljDVcE4o7yjbg1lF8aW1ldneVzG8sln+i6MnGsSQU270YmYbDlkaIZ6rb
	3kO08nbIHwwAsTysgdHOCcmD9csUEAwVXzjyp1EyKmAkLpbeMnXMP4fxSbekAGbfrqjHT08uYsE
	Zmyqo+M9mdvKrpLrokpZRNau/AFTYP5LXFH8bEUlU0nEVn6zp4czcg1FznuAmC/MnEhU5wjaHlW
	SsMgDVKLsjQVk3AJi1qCS0NAz98XwWaXzh36TDuSXVgTIP5zAayhCAowSuRllgze/Nr8e1VCWsH
	Vg2S8AGG0xKjoSDcpayZuLDps+ebj3AvBHWm9CJngXiBblbdGSB/wh
X-Received: by 2002:ac5:cb4b:0:b0:563:74af:9cb1 with SMTP id 71dfb90a1353d-5662cbeb7eemr1388243e0c.2.1769175065766;
        Fri, 23 Jan 2026 05:31:05 -0800 (PST)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9482e321450sm477876241.7.2026.01.23.05.31.05
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:31:05 -0800 (PST)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5636274b338so1613534e0c.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:31:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWbZVaOQdU4ZiLtSJJ1BSgmFH/yGqpxXvuG88/Dt1FIO67SHwgZsTroYu8P/xxkS0itAr78DiOaorQ=@lists.infradead.org
X-Received: by 2002:a05:6122:6414:b0:563:5bd7:3793 with SMTP id
 71dfb90a1353d-5662cc268e0mr1610597e0c.3.1769175065114; Fri, 23 Jan 2026
 05:31:05 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-4-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-4-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:30:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX7dKG5SQt0FKc5PCpa6Ew79e5Xm=GQw3KYvY+9OKLx2w@mail.gmail.com>
X-Gm-Features: AZwV_QgegGXBPtMl9ShTKxG3gBg_w4ZVsxp7J0NjCRso-dcFlW5sDr7DiMpG720
Message-ID: <CAMuHMdX7dKG5SQt0FKc5PCpa6Ew79e5Xm=GQw3KYvY+9OKLx2w@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] arm64: dts: renesas: r8a77961: Describe PCIe root ports
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_053109_471954_4707DA27 
X-CRM114-Status: GOOD (  15.87  )
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
