Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B53E5C87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncEWDFRkAVPzRC1PsM7PQ2cIRnEvM2pn5O4y/uZRL1A=; b=uXkUXBHQfHqIwS
	HohbFTiVd6S/5WiCGZqTRZB3LwPZnQG0SHlRUA66fT+iT2InpTG5XQO7OeR3c84cJj3BMGcGHw1HM
	TcU2FqT3TrV6/HnZ6oC8l8lqPTG+d9EC0JQ49fy/QKw1UlnXaNeR7mfdZC+VTZUTj0pMZ358+KBPF
	8brej0Yh3y6FmSmy3+StSWPJ2rziHk3UgaFVWmP+dMfflR1DNkibXFh/uG2UyXM/Wx5gWDUOqkJYi
	d1Gbuh682F8T2c6r7tqn8V0B3M8kp1X+0Dqwz+4UkpnKu5jQcROiCXakKpaxEeYAdQJzipcUmNSKJ
	oqQ2Jb2yaUFWvGLxNmjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufH8n-00000009mIe-23sb;
	Fri, 25 Jul 2025 12:03:09 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGm5-00000009jm7-2rs6
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:39:42 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-74931666cbcso1832222b3a.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753443580; x=1754048380; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t63BOHgVickClQUeVRs7VclE4TnB0fFJ8koSEGsWT2s=;
        b=Gdr8bYUqq+ukm1QFNkJ/Jpj/aFlr4fXZE7pAt5C9HxDVLw7z374JchSzFOanrcOYYk
         LqJgxPydJwPyGIWookgo5JLjpGbT9psMqMGpCSDxr1DuWkY2rK1PlO9EwfgQQsxPIsT8
         GPZ38PuSH/X5Tiw7+l5fiEB/8XwZhdL9nnWzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753443580; x=1754048380;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t63BOHgVickClQUeVRs7VclE4TnB0fFJ8koSEGsWT2s=;
        b=b2cqnbfOB348+LhEsSV4B8vzxwacS0liqlBKs3usEb0KK776tXBdevkZ0nXthI/YT5
         lIwaBqpWIiz9AIuA57esrQSehvSyn7rnTcI4DrqurEICxnERvPBwZE2/GmHPtaROUJ9n
         uWL6Y1CDifLCAABdY8GlrXN4IzSCHkjFWeC++knhLPrUDxlmTLv3RGjVwkzcL2dOoOVb
         /REXLmHfSY6fkLVjcRbDlGYV8kMYQFvxV491ri3OCvw+W9zdsXPzhUY8219apTFyWlIu
         QpPJn1b36q0K/+q6RNxuz3w9ju9uzSnjFkNgAK8CUVd+FW3O1fism9qUsd8Be8qux2SD
         8GFA==
X-Forwarded-Encrypted: i=1; AJvYcCUElN/fTSMdEIJi/9uGR4VMeuVGxhMbznPjwZEPVoO9awyD8jUkZnNGW7QVFar6iY4u8JGENdx3vUU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzRas7oky/jHt1J93VUuuJhATEKjHoYKniNSUIAEwLZD67xWW3C
	qi2L++ejgM4EH8IT5R6hPzWbxZPmICfYnUEMpINn4ff+H8J7zG0MGmqVzyf92NemP8sb4RWJ1cE
	2UIc65w==
X-Gm-Gg: ASbGnctUdqbx1R0DzPP4sDbX3Jn0eqsJt7nGMbnkmK3FDNIrC2JThPJ72O3GjmFpCab
	QxPJVY+tAyh2+zrS5FYbrtId+jPCTCckbsfibl02jj0SrPObY5t6D0383poMxCVgiykXn0UMLbi
	blNXhjPJQOBGcMBLobn4HeISNAcdDkqnphfzBMhGOaTo4Cug0RpUq6h/7QjSbd6mwmlgcC/CTV8
	bz9SmkS1jggsSkcLE3G7LEwrI3j/PkXZxoEbynMKlSPiAAfXlUX1Xn2LLBMcgzxqjPNinrpi0Jk
	SEl6/TvNRSXQnkvz2m+C5P0RFL5ZJUsesxXQb36HXOMGS9xa91VDtbqaBe/BJl3cXK7MZt3CFcU
	kOV+eCmLBlSywweGV+/Dtfy7lpLh3TgWlquahMjzxKbePG182jDjQoWFcfD9TtA==
X-Google-Smtp-Source: AGHT+IFnOarHI6+NFbFr/0/CnBlyuRTiudoOsGVu4A76JK2aD338pU/IZTQfdjs0Y+QzM2c9HZ+ntg==
X-Received: by 2002:a05:6a00:3a28:b0:748:e585:3c42 with SMTP id d2e1a72fcca58-763343da5dbmr2168743b3a.15.1753443580565;
        Fri, 25 Jul 2025 04:39:40 -0700 (PDT)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com. [209.85.215.182])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-761ae1584bfsm3503995b3a.38.2025.07.25.04.39.40
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:39:40 -0700 (PDT)
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b31c84b8052so2314088a12.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:39:40 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXaiqxnETjxrC9kCtAyIzLWFsLU/I/ECpq93UZmjDakw/Di+CGPk/MMAqbdUdYYDcQS7ksv71nD8Jc=@lists.infradead.org
X-Received: by 2002:a05:6102:3053:b0:4e6:67f6:e9af with SMTP id
 ada2fe7eead31-4fa3fa71860mr256656137.9.1753440125688; Fri, 25 Jul 2025
 03:42:05 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-27-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-27-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:41:29 +0800
X-Gmail-Original-Message-ID: <CAC=S1ni_6YRK0RWheKZJDgCknaZzPsde0J4dFdmkNhY7HMMD+w@mail.gmail.com>
X-Gm-Features: Ac12FXwspafB6XO0s33DaaDCIfXTapXC0TbPbPDsXvwxpmO6Wfy_iIb8kWhO-Rk
Message-ID: <CAC=S1ni_6YRK0RWheKZJDgCknaZzPsde0J4dFdmkNhY7HMMD+w@mail.gmail.com>
Subject: Re: [PATCH 26/38] arm64: dts: mediatek: acelink-ew-7886cax: Remove
 unnecessary cells in spi-nand
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_043941_721629_01AAFB07 
X-CRM114-Status: GOOD (  13.90  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNTo1MOKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
VGhlcmUgaXMgbm8gbmVlZCB0byBzcGVjaWZ5ICNhZGRyZXNzLWNlbGxzIGFuZCAjc2l6ZS1jZWxs
cyBpbiBhCj4gbm9kZSB0aGF0IGhhcyBvbmx5IG9uZSBub24tYWRkcmVzc2FibGUgc3Vibm9kZSwg
YW5kIHRoaXMgaXMgdGhlCj4gY2FzZSBvZiB0aGUgZmxhc2hAMCBub2RlIGluIHRoaXMgZGV2aWNl
dHJlZSwgYXMgaXQgaGFzIG9ubHkgb25lCj4gInBhcnRpdGlvbnMiIHN1Ym5vZGUuCj4KPiBSZW1v
dmUgdGhvc2UgdG8gc3VwcHJlc3MgYW4gYXZvaWRfdW5uZWNlc3NhcnlfYWRkcl9zaXplIHdhcm5p
bmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxv
Z2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEZlaSBTaGFv
IDxmc2hhb0BjaHJvbWl1bS5vcmc+Cgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlh
dGVrL210Nzk4NmEtYWNlbGluay1ldy03ODg2Y2F4LmR0cyB8IDIgLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9t
ZWRpYXRlay9tdDc5ODZhLWFjZWxpbmstZXctNzg4NmNheC5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL21lZGlhdGVrL210Nzk4NmEtYWNlbGluay1ldy03ODg2Y2F4LmR0cwo+IGluZGV4IDA4YjNi
MDgyNzQzNi4uMzA4MDVhNjEwMjYyIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWVkaWF0ZWsvbXQ3OTg2YS1hY2VsaW5rLWV3LTc4ODZjYXguZHRzCj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDc5ODZhLWFjZWxpbmstZXctNzg4NmNheC5kdHMKPiBAQCAt
OTgsOCArOTgsNiBAQCAmc3BpMCB7Cj4gICAgICAgICBmbGFzaEAwIHsKPiAgICAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJzcGktbmFuZCI7Cj4gICAgICAgICAgICAgICAgIHJlZyA9IDwwPjsK
PiAtICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gLSAgICAgICAgICAgICAg
ICNzaXplLWNlbGxzID0gPDE+Owo+ICAgICAgICAgICAgICAgICBzcGktbWF4LWZyZXF1ZW5jeSA9
IDw1MjAwMDAwMD47Cj4gICAgICAgICAgICAgICAgIHNwaS1yeC1idXMtd2lkdGggPSA8ND47Cj4g
ICAgICAgICAgICAgICAgIHNwaS10eC1idXMtd2lkdGggPSA8ND47Cj4gLS0KPiAyLjUwLjEKPgo+
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
