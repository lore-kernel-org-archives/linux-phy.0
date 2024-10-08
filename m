Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97860CEFC21
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 15:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzN7vt+Bg2GsVy9IkY4jpLH/EeR6YZSVe38uhZZba8c=; b=zD6zYA/9ZtJMby
	1XMrcdFzmXBR8Xd4E3843AZLGbgdJ/hxpfkj2mt5ssi/v4KQPSDyFjH/c8k9t089phpMS50nLxia+
	c5RQEpv/NaMamR3rxToOfsXvGBvdZjAkeGwt0SUVmJ4j8bcGQwytHiGokJeVju9IVmpBTl35XX+AC
	MCRAXPyiYv9HgN+PKbf6yoaLVmceqlR2OuXY2wJPVfVYhJEIFUpLripMwAYPP70h4R7WKPb1ZYiM/
	xnFinV+o4iqoBhjuzEgoVmOnsgZ3rGEETjAI1UPRKy9GEGh5k4ckd/XFwKulbb1YOZm0oyPJqeiBW
	tjdbmXwb+YoRqZWq2c/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBxP-00000006KgF-0dpo;
	Tue, 08 Oct 2024 15:17:03 +0000
Received: from mail-yw1-f172.google.com ([209.85.128.172])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBxN-00000006KfT-1U6C;
	Tue, 08 Oct 2024 15:17:02 +0000
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-6db20e22c85so45578027b3.0;
        Tue, 08 Oct 2024 08:17:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728400619; x=1729005419;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xNkp0597olvl4BH+GQsjOjO3dePD7p4cBzVhPvQBAu0=;
        b=GJ7FcIZg4ENZE/dlIKrg/qjBcRwbm/KcUuI0x5iYyojslMONivam7tc+85KngBRPzz
         PquIQmz6WlbnTGwri1J7Dhr8dVkcrSZ2sJtUYrsUk/YAS/PQxAVomb2F9krhOvMAwiI0
         fH7waVVNBFnIOKl6vyGqvu/Ypr+DCFDci2T63AC6pPiXSf/kCyPUL2XdGgpdPnX8GHxj
         jjl++pmuRzN1Ti73+3ygLCCxGw5mcIJtIwECwwG2+y/E0Gx4bmuCJlpM2MymPXYRZVKu
         lfN6ttJyHeJJoXdQVeUwBqx5Wz1AUgHE8+Ze1MMwu3VkNu0pEvCH22Le8EWZnnaT5ngN
         ptig==
X-Forwarded-Encrypted: i=1; AJvYcCWUrGwXd4HG4nOjQXU2TFnYngGXOQ8Qx9IR7D1lJK6+f9MZGyhwjLjKGbDdQO9FIOEmjzhZ/yXaewlF@lists.infradead.org, AJvYcCXfhI55XLxxgZnlBTY298B7u9GuPoVV6hdJIG1k8vouCRbbfhyBtAZRVi1xzwAve22VyZFy61aVkDLfbuTimKgG@lists.infradead.org
X-Gm-Message-State: AOJu0YxTg8fLHMsYL4Pc01KTciEUhqrGEI2mlWvduGN6f76SULK/gYUd
	gzzqcQKMAQnL0xof8AaPiGQe6zZ5fNwJf9qrWk9T6pIzK6/p+gQxiXp24V+q
X-Google-Smtp-Source: AGHT+IGLvDHXR1tCM6eiaWrVGgRfcljdq07jRXYYy+P8xaixcDktzFWvwa4sPlutPeaSUAjurbeKog==
X-Received: by 2002:a05:690c:ec5:b0:6e2:1626:fc4a with SMTP id 00721157ae682-6e2c6fdd16emr151083647b3.9.1728400614521;
        Tue, 08 Oct 2024 08:16:54 -0700 (PDT)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com. [209.85.128.173])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e2d93f8f43sm14443907b3.140.2024.10.08.08.16.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 08:16:53 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6e2ef9af517so21922997b3.1;
        Tue, 08 Oct 2024 08:16:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV/brFsOOgbhbxKqCdF/Rq/SplDQcMhqA94GizeMcwk9Nx60WZxD57LxBCfyUbsq22qgkdWMmOCgYpuSAw8HcwS@lists.infradead.org, AJvYcCWKIAp4TyPtKnbrlefMl2ZkkHoRKgJOn8MUOjMO42SzbYJN24Aly8uyEvbVx0K5++WJ/0ksEQo3qszE@lists.infradead.org
X-Received: by 2002:a05:690c:f88:b0:6e2:3e17:1849 with SMTP id
 00721157ae682-6e2ecb69a8amr76258537b3.2.1728400613366; Tue, 08 Oct 2024
 08:16:53 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com> <20240822152801.602318-16-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20240822152801.602318-16-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 8 Oct 2024 17:16:41 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXbNRO--0ZGO4owi3At5n1dTMMWo4PTaubyNWEkVnPFFA@mail.gmail.com>
Message-ID: <CAMuHMdXbNRO--0ZGO4owi3At5n1dTMMWo4PTaubyNWEkVnPFFA@mail.gmail.com>
Subject: Re: [PATCH 15/16] arm64: dts: renesas: rzg3s-smarc: Enable USB support
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
X-CRM114-CacheID: sfid-20241008_081701_413232_01420744 
X-CRM114-Status: GOOD (  18.60  )
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

SGkgQ2xhdWRpdSwKCk9uIFRodSwgQXVnIDIyLCAyMDI0IGF0IDU6MjjigK9QTSBDbGF1ZGl1IDxj
bGF1ZGl1LmJlem5lYUB0dXhvbi5kZXY+IHdyb3RlOgo+IEZyb206IENsYXVkaXUgQmV6bmVhIDxj
bGF1ZGl1LmJlem5lYS51akBicC5yZW5lc2FzLmNvbT4KPgo+IEVuYWJsZSBVU0Igc3VwcG9ydCAo
aG9zdCwgZGV2aWNlLCBVU0IgUEhZcyBhbmQgc3lzYykuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDbGF1
ZGl1IEJlem5lYSA8Y2xhdWRpdS5iZXpuZWEudWpAYnAucmVuZXNhcy5jb20+CgpUaGFua3MgZm9y
IHlvdXIgcGF0Y2ghCgo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVuZXNhcy9yemczcy1z
bWFyYy5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZW5lc2FzL3J6ZzNzLXNtYXJj
LmR0c2kKPiBAQCAtMTQ0LDMgKzE4OCwyMCBAQCAmc2RoaTEgewo+ICAgICAgICAgbWF4LWZyZXF1
ZW5jeSA9IDwxMjUwMDAwMDA+Owo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+ICsK
PiArJnN5c2Mgewo+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKClRvIGF2b2lk
IHJlZ3Jlc3Npb25zICgvc3lzL2RldmljZXMvc29jMC8gZGlzYXBwZWFyaW5nKSwgZW5hYmxpbmcg
c3lzYwppcyBhIGRlcGVuZGVuY3kgZm9yICJbUEFUQ0ggMDUvMTZdIHNvYzogcmVuZXNhczogc3lz
YzogTW92ZSBSWi9HM1MKU29DIGRldGVjdGlvbiBvbiBTWVNDIGRyaXZlciIsIHNvIEkgdGhpbmsg
aXQgbWFrZXMgc2Vuc2UgdG8gY2hhbmdlCml0cyBzdGF0dXMgdG8gIm9rYXkiIGluIHI5YTA4ZzA0
NS5kdHNpIGluc3RlYWQsIGFuZCBzcGluIHRoYXQgb2ZmIGludG8KaXRzIG93biBwYXRjaC4gIEkg
YW0gbm90IHN1cGVyLXdvcnJpZWQsIHNvIGRvaW5nIHRoZSBkcml2ZXIgYW5kIERUUwpjaGFuZ2Vz
IGluIHNlcGFyYXRlIHBhdGNoZXMgc2hvdWxkIGJlIGZpbmUsIGFzIGxvbmcgYXMgdGhleSBtZWV0
IGVhY2gKb3RoZXIgaW4gbmV4dCBvciB1cHN0cmVhbS4KClRoZSByZXN0IExHVE0uCgpHcntvZXRq
ZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0
dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBs
aW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBw
ZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpv
dXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQu
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
