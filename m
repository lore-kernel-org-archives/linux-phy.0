Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A358C87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxc89VLKELOUgNJvb00t3jZqJkpd4F0qS7uWhcvSZaw=; b=yGz+fud5tqGv7o
	bMN3st1LkDt6zxOthVcIdb7P4bCV15sAHk1T3T8RSFbX6mNtSCKDxOS3S6LXfgV4hQ/Kefn+agHB5
	E/Vs9dbi01N5JYMLMbYYc1qnGD8JmB9TH65/3oGqxE8slhgDWXUay7mr53oSrvhMMV5ibFbmVlISo
	FE1+dJlYGLsWEAP0qU1e95r/Ie8c4jMnianJ34rGO3x/zU7rzbfEmfIsPymWiA4a+1wbDaZUpu5it
	FqvvbffL0W9ukpWyrh6AvTUBRTts2fggH0INDIxq0FEUSuYBhETk5iNDiFdYJSQJeHXN38JRwGEuw
	CtPWSgnkF4+ezOy+xbLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufHIb-00000009nFM-06lm;
	Fri, 25 Jul 2025 12:13:17 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGtj-00000009kd1-2UQU
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:47:36 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-6fac7147cb8so27047566d6.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753444054; x=1754048854; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=liSvRWA4OuPhKZFuMFSYIULFcTNts/JUeGi4znSdmNM=;
        b=oSwHkA7gMtyMIrkvX9ATb0bk+4cBnLrwxHokj9u5/iITyxEQMd5orpW333RSOisnE7
         l2FadSTLLtSvTXoeta/8kHBe3WzbyMrUkuouOMjYCfItpZ9T0BrK5/AfJRHGmjIlC4um
         ZGvQ+JR5rvVTlHb3130fEUTgVWJHJ4VE+CYmw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753444054; x=1754048854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=liSvRWA4OuPhKZFuMFSYIULFcTNts/JUeGi4znSdmNM=;
        b=hDswHBBxZTDb26VxNGy3LczLltr/DMTjGny7zKfqyq0tD7RLjiA07b8x44Gt83o2Ie
         mXAFiigeyxRok+S77K2mQqNLs+WLkk65cF4b3T79latIpjHWXQJc8nxq171N8fNLQLUL
         rV1xJ09Qd3gOUV+s2BIsMookqAri0sbYw3b5rKIgukWnyAsWfLKrZ91rA8clPmt6DOq8
         pCjds87QSvUYWOGGxI48ROku2wkBGjF62DSHC8aQCwUcVKIv1uxlKu5fkmLCRSFc80Pj
         Bv6Uy63F/4XeV44fGg3WmvVQrFEZP7HAGsFVqD0Z/F9mBxYJ89vhvRaRQR/n3TCLvhZq
         NjRw==
X-Forwarded-Encrypted: i=1; AJvYcCUq5GXhXYVnf8uB9CwO+FwzcgmsIah+oAMBOqNi5em0M/vbbWtIGo5VEfNfXi/hAp2ImnxSpM9/Iqg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzrmu/HLCifHUdK4KTOL4i6YiWbp4x1kv4JmUcXKULQvueWLiYj
	8364l+ddg09Wjnk2jzHBnqVG797dDJoIP2MBh/IZ89P6j1owrHemnEwW4JBnoXsD1Qzec4wnoWL
	EMpDkUA==
X-Gm-Gg: ASbGnctvsfY+pm5kYBHPno5wQ5E2QkZJsuqitEa8KmHhcItE6xd5EveYVs5Q6bJgWbJ
	CE0f4kerbAw2GGAAj8gpyc+WpW0f9v31R3X/Lg2fMpGLM9gjRb8gteKV6ESlk+bHkGB9FPEbs5/
	NJVKN5YhNb/Tg+qwD6rafJy4ebaRQT1QpyHDEIqjr4y7ndvqPoRedr0+z60BwrctgbiravGZl0u
	C5yOZf8mb5sFE78M91G3pRRYQl0dMJetZU+3W5lx8zhv8C/weJcHxihwFmBDWL7alwTGbvxbyMB
	H73qjOw3VVt6zMPXw7wn7dYaVe4N2pjiU3Ro4s9UFmLENZHhjIzkyoPs5XSI/Khz0Jr8F0qCgd1
	lqe+FlI9tv5Ve/Jm8F05sAE/TsQnAtr7/R27x8puER6hItDQzXaVeoozCcQ==
X-Google-Smtp-Source: AGHT+IHRF1bYrdHW/PCFd740Tw9Gb/jQD3PamG5sRUkjSuBb+N7HXHiWOWKQRgLzggGID7bmVEYCuA==
X-Received: by 2002:a05:6214:19cc:b0:702:d1aa:46e6 with SMTP id 6a1803df08f44-707205a74bcmr20892606d6.28.1753444054222;
        Fri, 25 Jul 2025 04:47:34 -0700 (PDT)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com. [209.85.219.45])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7070fb36cd4sm24942056d6.25.2025.07.25.04.47.34
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:47:34 -0700 (PDT)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-700c7e4c048so30215856d6.3
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:47:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWE0xrnW0ZOrzn/qooKfQAFzWfA3KJhF8nILxDIAYTtqhmFkzN30/R5sCGvahfyls2FV44tb6o/Gsc=@lists.infradead.org
X-Received: by 2002:a05:6102:6891:b0:4dd:b82d:e0de with SMTP id
 ada2fe7eead31-4fa3ff44195mr308667137.17.1753440019738; Fri, 25 Jul 2025
 03:40:19 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-38-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-38-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:39:43 +0800
X-Gmail-Original-Message-ID: <CAC=S1njv7qrL0LyhZsp=HVdxxDo2bA7FbCkMVqJ9R9qpg-0hMw@mail.gmail.com>
X-Gm-Features: Ac12FXzAeqGgOrEJjRR1J4ryO0U3L8RJWv4_H_TyT4RYPsIpmGY3ViSbTr41uno
Message-ID: <CAC=S1njv7qrL0LyhZsp=HVdxxDo2bA7FbCkMVqJ9R9qpg-0hMw@mail.gmail.com>
Subject: Re: [PATCH 37/38] arm64: dts: mediatek: mt8395-kontron-i1200: Fix
 MT6360 regulator nodes
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
X-CRM114-CacheID: sfid-20250725_044735_631170_2509FD22 
X-CRM114-Status: GOOD (  14.15  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNTo1MeKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
QWxsIG9mIHRoZSBNVDYzNjAgcmVndWxhdG9yIG5vZGVzIHdlcmUgd3JvbmcgYW5kIHdvdWxkIG5v
dCBwcm9iZQo+IGJlY2F1c2UgdGhlIHJlZ3VsYXRvciBuYW1lcyBhcmUgc3VwcG9zZWQgdG8gYmUg
bG93ZXIgY2FzZSwgYnV0Cj4gdGhleSBhcmUgdXBwZXIgY2FzZSBpbiB0aGlzIGRldmljZXRyZWUu
Cj4KPiBDaGFuZ2UgYWxsIG5vZGVzIHRvIGJlIGxvd2VyIGNhc2UgdG8gZ2V0IHdvcmtpbmcgcmVn
dWxhdG9ycy4KPgo+IEZpeGVzOiA5NGFhZjc5YTZhZjUgKCJhcm02NDogZHRzOiBtZWRpYXRlazog
YWRkIEtvbnRyb24gMy41Ii1TQkMtaTEyMDAiKQo+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2Fj
Y2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+
CgpSZXZpZXdlZC1ieTogRmVpIFNoYW8gPGZzaGFvQGNocm9taXVtLm9yZz4KCj4gLS0tCj4gIC4u
Li9tZWRpYXRlay9tdDgzOTUta29udHJvbi0zLTUtc2JjLWkxMjAwLmR0cyAgICB8IDE2ICsrKysr
KysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODM5
NS1rb250cm9uLTMtNS1zYmMtaTEyMDAuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRl
ay9tdDgzOTUta29udHJvbi0zLTUtc2JjLWkxMjAwLmR0cwo+IGluZGV4IDQ5ODViNjU5MjVhOS4u
ZDE2ZjU0NWNiYmIyIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsv
bXQ4Mzk1LWtvbnRyb24tMy01LXNiYy1pMTIwMC5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL21lZGlhdGVrL210ODM5NS1rb250cm9uLTMtNS1zYmMtaTEyMDAuZHRzCj4gQEAgLTM1Miw3
ICszNTIsNyBAQCByZWd1bGF0b3Igewo+ICAgICAgICAgICAgICAgICAgICAgICAgIExET19WSU4y
LXN1cHBseSA9IDwmdnN5cz47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgTERPX1ZJTjMtc3Vw
cGx5ID0gPCZ2c3lzPjsKPgo+IC0gICAgICAgICAgICAgICAgICAgICAgIG10NjM2MF9idWNrMTog
QlVDSzEgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIG10NjM2MF9idWNrMTogYnVjazEgewo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAiZW1pX3Zk
ZDIiOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8NjAwMDAwPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+IEBAIC0zNjIsNyArMzYyLDcgQEAgTVQ2
MzYwX09QTU9ERV9MUAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9y
LWFsd2F5cy1vbjsKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgbXQ2MzYwX2J1Y2syOiBCVUNLMiB7Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgbXQ2MzYwX2J1Y2syOiBidWNrMiB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZWd1bGF0b3ItbmFtZSA9ICJlbWlfdmRkcSI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMDAwMDA+Owo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTMwMDAwMD47
Cj4gQEAgLTM3Miw3ICszNzIsNyBAQCBNVDYzNjBfT1BNT0RFX0xQCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIH07Cj4KPiAtICAgICAgICAgICAgICAgICAgICAgICBtdDYzNjBfbGRvMTogTERPMSB7
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgbXQ2MzYwX2xkbzE6IGxkbzEgewo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAibXQ2MzYwX2xkbzEiOyAv
KiBUZXN0IHBvaW50ICovCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwxMjAwMDAwPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDM2MDAwMDA+Owo+IEBAIC0zODAsNyAr
MzgwLDcgQEAgbXQ2MzYwX2xkbzE6IExETzEgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTVQ2MzYwX09QTU9ERV9MUD47Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgfTsKPgo+IC0gICAgICAgICAgICAgICAgICAgICAgIG10NjM2
MF9sZG8yOiBMRE8yIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBtdDYzNjBfbGRvMjogbGRv
MiB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJw
YW5lbDFfcDF2OCI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3It
bWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+IEBAIC0zODgsNyArMzg4
LDcgQEAgbXQ2MzYwX2xkbzI6IExETzIgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTVQ2MzYwX09QTU9ERV9MUD47Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgfTsKPgo+IC0gICAgICAgICAgICAgICAgICAgICAgIG10NjM2MF9s
ZG8zOiBMRE8zIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBtdDYzNjBfbGRvMzogbGRvMyB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2bWNf
cG11IjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWlj
cm92b2x0ID0gPDE4MDAwMDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gQEAgLTM5Niw3ICszOTYsNyBAQCBt
dDYzNjBfbGRvMzogTERPMyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBNVDYzNjBfT1BNT0RFX0xQPjsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgbXQ2MzYwX2xkbzU6IExE
TzUgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIG10NjM2MF9sZG81OiBsZG81IHsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZtY2hfcG11IjsK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0
ID0gPDMzMDAwMDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gQEAgLTQwNCw3ICs0MDQsNyBAQCBtdDYzNjBf
bGRvNTogTERPNSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBNVDYzNjBfT1BNT0RFX0xQPjsKPiAgICAgICAgICAgICAgICAgICAg
ICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgbXQ2MzYwX2xkbzY6IExETzYgewo+
ICsgICAgICAgICAgICAgICAgICAgICAgIG10NjM2MF9sZG82OiBsZG82IHsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gIm10NjM2MF9sZG82IjsgLyog
VGVzdCBwb2ludCAqLwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDIxMDAwMDA+Owo+IEBAIC00MTIsNyArNDEy
LDcgQEAgbXQ2MzYwX2xkbzY6IExETzYgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTVQ2MzYwX09QTU9ERV9MUD47Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgfTsKPgo+IC0gICAgICAgICAgICAgICAgICAgICAgIG10NjM2MF9s
ZG83OiBMRE83IHsKPiArICAgICAgICAgICAgICAgICAgICAgICBtdDYzNjBfbGRvNzogbGRvNyB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJlbWlf
dm1kZHJfZW4iOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1p
bi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiAtLQo+IDIuNTAuMQo+Cj4K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
