Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C11FD74EC2
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxPXwtjbzfqyUmb9fLm7QuX+yoznUyCQc3jYGFvgFao=; b=uy0EeZrNEB/gvb
	ojkjyvzOTqERmmhFRb8npgAM2sYT1nH3/4VJf2/k1vtTiz/FypKfAhTv1cSluIPRVNYzFIseGeTVc
	Ayz8C/OYDn86VwlWweTKGatYJDUqbp/pxfuYEHPZRX5wB9v4Gw8F3lGncWmuWS1eSomdz2kU1i4gB
	eU2l/Z5uSlg5DjeJfb3HylZQCxpJM1BSwreVAF6NUgI0vwWQ9nfQ34qcor45xHXVBJQWrl6tBj5A2
	OlGxiFWlQleiLi7EI+Zkc2ejuOawPd8rgqBdjILpcu3n/19C0rsK/IByNzjbhovx9hEWNg/criY9p
	te/v5yxSPbOSThPn0nzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHEN-00000008xpa-0D9B;
	Fri, 23 Jan 2026 13:29:43 +0000
Received: from mail-vk1-f181.google.com ([209.85.221.181])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHEK-00000008xoe-2Lz4
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:29:41 +0000
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5662c2937fdso2085750e0c.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:29:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769174979; x=1769779779;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uRZVas5P6xxkBpdwTHJQR+xs1A0EdTWP84ona+zohk=;
        b=TF1xhPuHQQfg5TjSdGpoeoUvsWPoSPp474IQqI+/ZZLoaPTkFH+JzkJimD6cTtOgSL
         lNssC4VSiD7MZn/vl1Sss5zPr8TRPBek9wP83PqN/6P3kNOF5q0vGNYuwmwL4O6zCb8E
         rPgiRFAlAhwNwPSBBYCgQx+YFfm+28NoAJ73zTjydJEcfLb/gJNEE7/MH7k9933MvxXf
         10nDE3xDpjsP4h91TVV+M2Q/PMlX+oLrLxgCAcVigfy2KgE3zktNuMK0BR2SKuAHYk4W
         XQvX70M0WvfssGFUzt+ZsWtN5ZF5Eq4F2T9Iw8SrySWxLDIGZjWGjy99gFo/v6lbDrMf
         BloA==
X-Forwarded-Encrypted: i=1; AJvYcCXcf7KvadThy+V7Q8Tddt2M7Lbr7rcWsyi3Opl3gzkSXL7v5IlCrY4kaZfI3/VWAEVF94bfQ+8n4s8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6hlo8/wDFt49snFr4vfqOv/Yoxe9xCFlX0V8DypAJEMsN+Qdp
	h4yKgQx0oiQZbJnVYwwkmDAFH+B0N0aGMEODEACBdWZfIsP341TinykDqDF0uokZ
X-Gm-Gg: AZuq6aIeLt/MLrVwz5yz9gSL0rV97HvUG7BWjOt58Jv+0wd4dZtkLl1zRX1BExkU2zn
	6ghE0XUUt9sY1pICWoPjMuEiaWpTnj4bXBqfeaU0cvDrmMzwf+8kuEosO2Cgmv6XW9JtlYnq8lR
	1TBNG06lZ1XOHTzckFDstog+ABG8b7sjs0uJ0ze1erxLuoPj75cFOAIyO6RKQlZmQn6ohCQgZqw
	ozb0UDvOxlPkbQCR2uDwlOgj6ihpItx35peSEB0e4inHOhJOLmOBPK/Pqi5iDa5lYHjjNnMBrQk
	f1OUn+enicMN+HqVY/XSHXHwGvXv/ogbw7tDtJyb8UxX3CtVYa7yLj4wSsg0+1GmaKvpgasUO7n
	LxvBy3PtqhDS33zz1jHQqITs8zDb4XeOAuEzcdS8Rxj74Drl+7GlSAt2VcgdGe+AFP5ugkVrI38
	tr9801w5ISfzV/2+8cxzl2EYGrOTefWmA9FpfkYBJ3Iymoczom
X-Received: by 2002:a05:6122:a0c:b0:55b:9bf6:da7d with SMTP id 71dfb90a1353d-5663f6eb8dcmr749472e0c.2.1769174979149;
        Fri, 23 Jan 2026 05:29:39 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fa634cesm462031e0c.3.2026.01.23.05.29.38
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:29:38 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-9480078b2fbso2245749241.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:29:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXSH5TG37iIWfrjhExuApB2m813h2AJ1T5HJeZGVoLpJ+D1IuVzDMxe1/bwcgywIsMpMZWzvK24Pc8=@lists.infradead.org
X-Received: by 2002:a05:6102:3752:b0:5ef:a3c1:86e1 with SMTP id
 ada2fe7eead31-5f532e93002mr1974929137.11.1769174978693; Fri, 23 Jan 2026
 05:29:38 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-3-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-3-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:29:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW9XAn1RfkFpof0yUeYhfmQOnZMSNBAA1rQFBNX_Z3TMQ@mail.gmail.com>
X-Gm-Features: AZwV_Qi8xIqx9SrRtjX9A1sHdg0UhI1C_69Cyb2P2OJhm9AIJr1Yv60yV3PReM0
Message-ID: <CAMuHMdW9XAn1RfkFpof0yUeYhfmQOnZMSNBAA1rQFBNX_Z3TMQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] arm64: dts: renesas: r8a77960: Describe PCIe root ports
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_052940_597997_82D8C0FE 
X-CRM114-Status: GOOD (  15.79  )
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
