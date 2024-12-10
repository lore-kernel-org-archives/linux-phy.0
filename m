Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95561E7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 15:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jssHm/XHaZiHrfnu/gjdpjcGujWSTkbNWQ3wen1CTTY=; b=lnhZlWFNEzUetT
	tqhq1M29efSAxSPIWdAuOTtU+mn0ysmtJ5/N2BmpwnOxAd87S2C0htkMqlSw7rFzx8j7dMt0KpBG7
	3twXX6ejKaOJuedFd9k09lPQZ9x+vbKQiHko9dEnwB5yAa2EOZLqlNbaxdPPgkCscK3sRTGxjCl+e
	pfLRLiAfSlJtQdESSB1iZjpjKYpVVCqh98uMTqaJ9JynXRPiShccc5Uv4tgsKTTK8/ZBhzBjFkEed
	qbRT9HRaGUjcni8gQdzdgX/6bkvNxX9qo04LHWTPqwnmovyzW1m9w8g8n7TLhfeCASaU5PTExV50U
	clFWBH0Pwsy7N5SQNKaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL28P-0000000Bwcg-0Teo;
	Tue, 10 Dec 2024 15:26:49 +0000
Received: from mail-qk1-f174.google.com ([209.85.222.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL28M-0000000BwcL-3BXA
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 15:26:47 +0000
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7b6d6fe8b16so182185385a.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:26:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733844404; x=1734449204;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/51Xpip0bvwhxe0bHtn5CyXkx64XHH0EaeR3ajv+NY8=;
        b=MQXCvrEsgkATKl/+7cLgltTHEgvD2V0m7G8Wt0CTBUld+GvSrxb5zBr7REkqhdGIoZ
         A00mhsnG65QmvXCX314D3eYI0ANVgIadF/7XnnlnWvEFWLyaDb5KTTSVxnGULXEGspL7
         XdB107VhUX7OAZY7Xu/3UaOQbwpt5XlgDMHjBKUc45/1naA0oc94bwZIIeVQR/Zg9NYR
         i+B0fAUFm/D1jr1JQSNfz1UVLC8W86AJTl7NvXR7NzZpguvr8UFCWIo0gOnnxrvp8pJZ
         zvm8cyWdvkIsnT3PJJsUVPVfXpIfxs1PA4Lk+/L7xZAbRM2rxpkXfbjXgnBrIkJ8tNIj
         8L8g==
X-Forwarded-Encrypted: i=1; AJvYcCW/JL2Pab/xsx/13wXYJb0oSIPQyNyyNAs6KcLZf7u+c3FtDi5wXyhpksg+2UXsA9lUWqD/hhjcsPU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwQZLa0bs85si57BR9AN+IxQMwdX/8OhoVf+ipEiiHLp2JYhREQ
	W8l4mhIADfUOZTU0v/pFZSkkURANJDwZ93ZUrrDz4IntPikascOKFQbHe5uN
X-Gm-Gg: ASbGncuiStWEdXEkPDJlhLfHGOj7FkBwUm751iQ5dHngcB0cyno45ceBoP0Itf0Nc6n
	R7ZSo+9zydcXFsjCi1KXh340SszKWlcBg/Dsm9b1pZi4sKS25msb09Deyvmk5wVsUdCS49QF+lP
	DXazjs4nL4kagpKf2ZOxHwWSchhE46QN9eB0NUPP++RzTI03A5Fk9jeVqjgE7h6mGAM6z4D5s+q
	SdrnI9FId6/6h+H9MM3gz7RL9OlHcEKpCp28d2Su0JRVuPZ2p59xMlu1vBzp7MY5y2+GkGiWxHC
	ugS7UjH1Gc6oWsgUsw9F
X-Google-Smtp-Source: AGHT+IFp2EfoUg+piKFAuZOzbSswtGXBmzQbSZuFU8MgYjUo5zrVmwq5F45hnmU4ZQmHdHTQCKK7eQ==
X-Received: by 2002:a05:620a:2a06:b0:7b1:e0f:bf9b with SMTP id af79cd13be357-7b6dce8d4d4mr805965085a.45.1733844404109;
        Tue, 10 Dec 2024 07:26:44 -0800 (PST)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com. [209.85.222.178])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b6dacde3a5sm143188985a.121.2024.12.10.07.26.43
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Dec 2024 07:26:43 -0800 (PST)
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7b6d6fe8b16so182181485a.1
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 07:26:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXv7hnxUXpcqv/Cd+5M0LOImB7+SWD+JYcQute7DMRH2wln2TXPkb3NZiZKPtQZn3GEuVjXNGR44Fw=@lists.infradead.org
X-Received: by 2002:a05:620a:1aa4:b0:7b1:4f5c:6e86 with SMTP id
 af79cd13be357-7b6dce08f67mr713469785a.17.1733844403272; Tue, 10 Dec 2024
 07:26:43 -0800 (PST)
MIME-Version: 1.0
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com> <20241126092050.1825607-12-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241126092050.1825607-12-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 10 Dec 2024 16:26:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWqBEL-12CVakOYqEgwBMeoe=dTy=2=z3WbQGpTWriMQQ@mail.gmail.com>
Message-ID: <CAMuHMdWqBEL-12CVakOYqEgwBMeoe=dTy=2=z3WbQGpTWriMQQ@mail.gmail.com>
Subject: Re: [PATCH v2 11/15] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3S support
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, magnus.damm@gmail.com, 
	gregkh@linuxfoundation.org, yoshihiro.shimoda.uh@renesas.com, 
	christophe.jaillet@wanadoo.fr, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_072646_792766_0CFE48E8 
X-CRM114-Status: GOOD (  14.60  )
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

T24gVHVlLCBOb3YgMjYsIDIwMjQgYXQgMTA6MjHigK9BTSBDbGF1ZGl1IDxjbGF1ZGl1LmJlem5l
YUB0dXhvbi5kZXY+IHdyb3RlOgo+IEZyb206IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5l
YS51akBicC5yZW5lc2FzLmNvbT4KPgo+IFRoZSBSZW5lc2FzIFJaL0czUyBVU0IgUEhZIGNvbnRy
b2wgYmxvY2sgaXMgc2ltaWxhciB3aXRoIHRoZSBvbmUgZm91bmQgb24KPiB0aGUgUmVuZXNhcyBS
Wi9HMkwuIEFkZCBkb2N1bWVudGF0aW9uIGZvciBpdC4KPgo+IFNpZ25lZC1vZmYtYnk6IENsYXVk
aXUgQmV6bmVhIDxjbGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KClJldmlld2VkLWJ5
OiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgoKR3J7b2V0amUs
ZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRl
cmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGlu
dXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVv
cGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3Vy
bmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0Lgog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
