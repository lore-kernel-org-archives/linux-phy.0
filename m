Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CB2BC83F12
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 12:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uadc75G6faYGFVUGCU3DaHlviiRg+jTacmkfinnC14g=; b=jPH2YrFq6PzMyP
	YzJjnDjrJX7lLk/1Qk3YJ/z3IIM/J8aVZ4Pt7FJY3QPJECmhTboUs1R7ucOQaTR2AjdojGltUnOiO
	OxOrQDspnolrVMjgDwbgOtNNyIRiWqjY20Jd4pT0s/IXDXjze3V7RBrRLYEpN78kvOLXpQNqIDfKY
	SUzG0DMAyLvJ/A9AwvRnJ9oYV9UnULVZbyftnQYpne/637QJNPlaSZjYV5SH+usStsouA1LrFNYCG
	NrXAvaSGt96RC68eg7VZFBFy45pWiw6tN6ZnMdXJXlRCea6+hvaKKCoF43fX+UtPFAIAtGFcz1WFH
	dEUMWbwDkeQv3bt4nPIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeNP-00000001xFA-1Lmz;
	Thu, 29 Aug 2024 12:35:47 +0000
Received: from mail-yw1-f180.google.com ([209.85.128.180])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeMu-00000001x7d-0tta;
	Thu, 29 Aug 2024 12:35:17 +0000
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-6c3f1939d12so5680107b3.2;
        Thu, 29 Aug 2024 05:35:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724934913; x=1725539713;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=14V/EDucvcd+1DCus2mW3U6ZJ9nuoR181aW3vtTOiJw=;
        b=PEXcirjc67TrvmEchgWHLQP9dUWL+TslnSxwjStGzDgl89vHQSdE8QQ9z2UweKJtp5
         FAUGNu2l9USAX6HTl7iyVeeh5N4hXNGh9Bxr1WIxPl8IooZgj0m3/iVTk/zX+p8pL0eT
         PPb7LN6BFVu9JmYTmEdFf3elfkHdEg0hhe5kqelKaHYopjjMbjq0ntvBHC22/P9jVB0A
         ABS4sh2afDbsw6QRjy5gUzmMtKzcaaiszWfaRdTtGbwwj4eyAj3Sh9MYs+xKyvx+LOp2
         THIxoa6kafaXqbzUgpKgvHR2TJ64R3tX3Z7Uh72fd2v3+3VZXsdMCGHNodE45CDBqQYO
         QY/g==
X-Forwarded-Encrypted: i=1; AJvYcCUvDKht2LlSg7Iy72RVX+4h8xeESIYEmnEQIHq3YOLVNEcasX9SZDHfgycp0OwTHdjUM5NvERrEMbRh@lists.infradead.org, AJvYcCWvh5CCUDOSYwWRVS/vLlMlyZHrKQnM+fsAZkC7sllGemTwUwgwnZ63O/L9DCdfGlYLJy7AEl7GffrQRKUCAZvd@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6Mx84jZC4CLFFyxyDP+n7qiSTr6op2wZlIsrWPgviuReFbZax
	8MCbm3JyRVb7SY1jJswFFuOKk/U5iv3P8HNKKUm0/Z7KOzwu/85MQsr1PSyw
X-Google-Smtp-Source: AGHT+IEUMwhh/S1XnxMPfE96+OisYTu2C1OVCwlYiTsNNN3KRs6dIDRzwerznz1jgw6zY0+eNBpbbQ==
X-Received: by 2002:a05:690c:3142:b0:6ae:2f25:8bc4 with SMTP id 00721157ae682-6d276404fc0mr22386747b3.16.1724934913437;
        Thu, 29 Aug 2024 05:35:13 -0700 (PDT)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com. [209.85.128.172])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6d2d5ea55a3sm2203507b3.128.2024.08.29.05.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2024 05:35:13 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6b8d96aa4c3so5373387b3.1;
        Thu, 29 Aug 2024 05:35:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU0NzuEO97b7O28iJAfYt9DSSm7Yj5KIuGC0N0ZXKhi0s7ls43m6o1nmCGHHGGvugV6vN1UR3UhhTpx@lists.infradead.org, AJvYcCWHPibb4PEVmYfJStQ473YH6FnbDqvxiUY0O+E5UBKPFkPMIlAYfdDBTcmc60CoMtPDZQNHmsUXC8WpvNxN7rHi@lists.infradead.org
X-Received: by 2002:a05:690c:fc4:b0:62f:4149:7604 with SMTP id
 00721157ae682-6d275e33545mr31207767b3.4.1724934912929; Thu, 29 Aug 2024
 05:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-2-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-2-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 29 Aug 2024 14:35:01 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUV04PO2Rak9fLxWNFSEoqVp+gAKj36NcHhEKhqqRRL=Q@mail.gmail.com>
Message-ID: <CAMuHMdUV04PO2Rak9fLxWNFSEoqVp+gAKj36NcHhEKhqqRRL=Q@mail.gmail.com>
Subject: Re: [PATCH 01/16] clk: renesas: r9a08g045: Add clocks, resets and
 power domains for USB
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com, 
	ulf.hansson@linaro.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_053516_288653_5093F4F3 
X-CRM114-Status: GOOD (  14.23  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBBdWcgMjIsIDIwMjQgYXQgNToyOOKAr1BNIENsYXVkaXUgPGNsYXVkaXUuYmV6bmVh
QHR1eG9uLmRldj4gd3JvdGU6Cj4gRnJvbTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVh
LnVqQGJwLnJlbmVzYXMuY29tPgo+Cj4gQWRkIGNsb2NrcywgcmVzZXRzIGFuZCBwb3dlciBkb21h
aW5zIGZvciBVU0IgbW9kdWxlcyBhdmFpbGFibGUgb24gdGhlCj4gUmVuZXNhcyBSWi9HM1MgU29D
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6bmVhLnVqQGJw
LnJlbmVzYXMuY29tPgoKUmV2aWV3ZWQtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVu
ZXNhc0BnbGlkZXIuYmU+CmkuZS4gd2lsbCBxdWV1ZSBpbiByZW5lc2FzLWNsayBmb3IgdjYuMTIu
CgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgoKLS0K
R2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAt
LSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRl
Y2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxr
aW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBs
aWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFs
ZHMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
