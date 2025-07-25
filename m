Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E6A5C87FCF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgutPgtlyJmToU8bZGnmp9TCfsTJUTIMe64HrKlZMSc=; b=vjg7eTZ5FRjlyS
	KmhmgZ3kBv6OcDW9sLOGvijEOlSHiLmmnCEFEsxVNlZeB0SPTuE/irubynftaP5vvrY+NXdri/fCU
	NmGZl71ZHjfbH1Who/1Xt9cu1Dqip62j2AEt0BhzL/piBoFwsLIiqJKsGjHb7wrXpIiE8hEUIlIkN
	f4nAeOlWjfJH63CnrI2Z+FrJo8RERmWYg1gVCmkZT51OiNxvLFA45KD2iz061Da4lJ9cMuKLht7y1
	xQPV5aacRt2hOBgO+bJIfEaQyeYAuzoMG8AIsr1djPQd1VSbCDaH0DbuLcJ6LIWZv28RGQp/GEYJi
	ABjwKdduw8rDUOiOGqCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufHIZ-00000009nDx-2DHz;
	Fri, 25 Jul 2025 12:13:15 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGpq-00000009k88-45gG
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:43:36 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-41cbc8da42aso1084078b6e.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753443814; x=1754048614; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29HDb0CStjqCTbdMTaT8ki881uLabi0viRhzF0Cw5Io=;
        b=CsCgWFNlrXazBDfXAabQ/kILWMProq05CBN0wSoPu2QGP5+rcLNKQmUZ9eQQGIMZsZ
         qIJScVQ/YhoLKFqB0f7waR6hvb8ou14bDaj7gUgK28pUqDgLXbelv5Ib0vWJabGE6TbE
         mFv9p29vAEof13Vv0CO4iIFkzRhQp4TjgIH+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753443814; x=1754048614;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=29HDb0CStjqCTbdMTaT8ki881uLabi0viRhzF0Cw5Io=;
        b=DYfMqwXFQlNaWL08LsG1yg9QTKwRMW0oTZMLVYw8YZdQqLnzjJnhXWEIakO4lxl14f
         iNoeIeFryx3EcBBW6X6Sbsx9tOvjM3li4crhlEhwKn7hUB7fqREV8MIAz808etp/KQR+
         GQt/nImDiYQs+zTH+i54w3goav+K8CYsJnWGbM78xKuqwGVBuT7nLjN1ZTucxZc51Heq
         9ExlQ35GNcN/IUabJjFHQc4k04D28WA/1XCmGuA3MKv8sBsrpcT3UDDkDJENmdb4VkUg
         DxyQi5yRaycaBLHc8nlUipUE98jMJYeCH4DMkLccdC6XZPEbg2iYqsmT32gwFZ8xe00U
         ctiA==
X-Forwarded-Encrypted: i=1; AJvYcCX3eT5kjpAbDkBX+CPVa8vQT0MIjR2hvt9SgpsRMkKdb31NkUf3hrCE0NxPU/5AuUhE2Npu8E/0lzY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGyi0zbAZ7BdW1Bn6S3JTapncbVtgcDnrSj+75vfsTwSH/p2qc
	IljXdPyDTJ6idiVbth6jSTfXK9keIQeTEgoJXQxel8n6O0/3kDcTaexpStJQyrcYk1eMYmh1PfY
	/QZ8puA==
X-Gm-Gg: ASbGncs35sSywbrPI2Jh58GrOKDiqgrYwljE6NLQz6L3DdnmrGs3nHqmeSrnjnExqCv
	mYvSpA7fB+AI5NZvOwAVSiHSHFTY8a+BAW/OZL5zwht3w902xbsYdRtcNchRdOkGWr4L6Wx9Kls
	OiQ18Ku5AcYksAUY2wZyFiqiTImCwpGVtSgkS2RQv6fDlNgAMKwCbuExj22Y9n+zUITxxGjalSF
	HtLUegh2eiMtRJC6Z8hJPjpYg/bkrIcp2mHncTKDJGKS71NiKllpBTWod7LzkO6Cm49KDK4KEAB
	K2etmKzdXyNXb19tKDAAQv7Ma4ejeidnvoOveY/jX2YdeR8bD9RHATpgNhPQRYlCWjNRH0eW4g/
	+q77PzafaCv9nNiB03DzgOk7rsjZq709ojDLRf/vWYZEHYyIfZuD5XR466Q==
X-Google-Smtp-Source: AGHT+IHFXv8o3Jse3CEjdv5CXDCnkhKlAWQKjCa3jemnvEurZHHEWJ5JHv++eIFZMBmWcaZLwU2Xwg==
X-Received: by 2002:a05:6808:f0b:b0:425:767e:9ca2 with SMTP id 5614622812f47-42bb79cd130mr737389b6e.1.1753443813730;
        Fri, 25 Jul 2025 04:43:33 -0700 (PDT)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com. [209.85.161.54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-42a33a48dbfsm594168b6e.42.2025.07.25.04.43.33
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:43:33 -0700 (PDT)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-61591e51092so981238eaf.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:43:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWfYyzxjq5F8xOixmCROfe811NT4ID8PZt0MeJNICDsISkIalBE5jf6hygO4rBDydEENkwas/hqN8Y=@lists.infradead.org
X-Received: by 2002:a05:6102:5799:b0:4e5:ade7:eb7c with SMTP id
 ada2fe7eead31-4fa3fac29femr330925137.12.1753439652105; Fri, 25 Jul 2025
 03:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-35-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-35-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:33:36 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhfg_qD044bO8EOV=MckoNVtJXQ47XBeDFMPwJ9goHg-A@mail.gmail.com>
X-Gm-Features: Ac12FXyYX3cOTb6n6096sUC59Z8DCV1ifB6_qbpW9gH46tmstAs2fiwwoJYhrGs
Message-ID: <CAC=S1nhfg_qD044bO8EOV=MckoNVtJXQ47XBeDFMPwJ9goHg-A@mail.gmail.com>
Subject: Re: [PATCH 34/38] arm64: dts: mediatek: mt8195: Fix ranges for jpeg
 enc/decoder nodes
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
X-CRM114-CacheID: sfid-20250725_044335_030938_B2B2CD98 
X-CRM114-Status: GOOD (  15.20  )
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
VGhlIGpwZWcgZGVjb2RlciBtYWluIG5vZGUgaXMgdW5kZXIgdGhlIHNvYyBidXMgYnV0IGN1cnJl
bnRseSBoYXMKPiBubyByYW5nZXMgb3IgcmVnIHNwZWNpZmllZCwgd2hpbGUgdGhlIGNoaWxkcmVu
IGRvLCBhbmQgdGhpcyBpcwo+IHdyb25nIGluIG11bHRpcGxlIGFzcGVjdHMuCj4KPiBUaGUgdmVy
eSBzYW1lIGlzIGFsc28gdmFsaWQgZm9yIHRoZSBqcGVnIGVuY29kZXIgbm9kZS4KPgo+IFJlbmFt
ZSB0aGUgZGVjb2RlciBhbmQgZW5jb2RlciBub2RlcyB0byAianBlZy1kZWNvZGVyQDFhMDQwMDAw
Igo+IGFuZCB0byAianBlZy1lbmNvZGVyQDFhMDMwMDAwIiByZXNwZWN0aXZlbHksIGFuZCBjaGFu
Z2UgdGhlaXIKPiBjaGlsZHJlbiB0byB1c2UgdGhlIG5ld2x5IGRlZmluZWQgcmFuZ2VzLgo+Cj4g
U2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hp
bm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCkRlc3BpdGUgbm93IGpwZWctZW5jb2RlciBpc24n
dCBzb3J0ZWQgaW4gb3JkZXIsIEkgZ3Vlc3Mgd2UgYWxsIGFncmVlCml0J3MgbXVjaCBlYXNpZXIg
dG8gcmVhZCBpbiB0aGlzIHdheSwgc28KClJldmlld2VkLWJ5OiBGZWkgU2hhbyA8ZnNoYW9AY2hy
b21pdW0ub3JnPgoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxOTUu
ZHRzaSB8IDMwICsrKysrKysrKysrKystLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYg
aW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDgxOTUuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVk
aWF0ZWsvbXQ4MTk1LmR0c2kKPiBpbmRleCBkZDA2NWIxYmY5NGEuLjM1YjEwMDgyYmI4OSAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE5NS5kdHNpCj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxOTUuZHRzaQo+IEBAIC0zMDE0LDcg
KzMwMTQsNyBAQCB2ZW5jOiB2aWRlby1jb2RlY0AxYTAyMDAwMCB7Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4gICAgICAgICAgICAgICAgIH07Cj4KPiAtICAg
ICAgICAgICAgICAganBnZGVjLW1hc3RlciB7Cj4gKyAgICAgICAgICAgICAgIGpwZWctZGVjb2Rl
ckAxYTA0MDAwMCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtZWRp
YXRlayxtdDgxOTUtanBnZGVjIjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1kb21h
aW5zID0gPCZzcG0gTVQ4MTk1X1BPV0VSX0RPTUFJTl9WREVDMT47Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgaW9tbXVzID0gPCZpb21tdV92ZG8gTTRVX1BPUlRfTDE5X0pQR0RFQ19XRE1BMD4s
Cj4gQEAgLTMwMjUsMTEgKzMwMjUsMTIgQEAganBnZGVjLW1hc3RlciB7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgPCZpb21tdV92ZG8gTTRVX1BPUlRfTDE5X0pQR0RFQ19CVUZG
X09GRlNFVDA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+
Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+IC0gICAgICAg
ICAgICAgICAgICAgICAgIHJhbmdlczsKPiArICAgICAgICAgICAgICAgICAgICAgICByYW5nZXMg
PSA8MCAwIDAgMHgxYTA0MDAwMCAwIDB4MjAwMDA+LAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwxIDAgMCAweDFiMDQwMDAwIDAgMHgxMDAwMD47Cj4KPiAtICAgICAgICAgICAg
ICAgICAgICAgICBqcGdkZWNAMWEwNDAwMDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGpw
Z2RlY0AwLDAgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJtZWRpYXRlayxtdDgxOTUtanBnZGVjLWh3IjsKPiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHJlZyA9IDwwIDB4MWEwNDAwMDAgMCAweDEwMDAwPjsvKiBKUEdERUNfQzAgKi8KPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwIDAgMCAweDEwMDAwPjsvKiBK
UEdERUNfQzAgKi8KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlvbW11cyA9IDwm
aW9tbXVfdmRvIE00VV9QT1JUX0wxOV9KUEdERUNfV0RNQTA+LAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPCZpb21tdV92ZG8gTTRVX1BPUlRfTDE5X0pQR0RFQ19C
U0RNQTA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZpb21t
dV92ZG8gTTRVX1BPUlRfTDE5X0pQR0RFQ19XRE1BMT4sCj4gQEAgLTMwNDIsOSArMzA0Myw5IEBA
IGpwZ2RlY0AxYTA0MDAwMCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb3dl
ci1kb21haW5zID0gPCZzcG0gTVQ4MTk1X1BPV0VSX0RPTUFJTl9WREVDMD47Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgfTsKPgo+IC0gICAgICAgICAgICAgICAgICAgICAgIGpwZ2RlY0AxYTA1
MDAwMCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAganBnZGVjQDAsMTAwMDAgewo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDgxOTUt
anBnZGVjLWh3IjsKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwwIDB4
MWEwNTAwMDAgMCAweDEwMDAwPjsvKiBKUEdERUNfQzEgKi8KPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHJlZyA9IDwwIDAgMHgxMDAwMCAweDEwMDAwPjsvKiBKUEdERUNfQzEgKi8K
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlvbW11cyA9IDwmaW9tbXVfdmRvIE00
VV9QT1JUX0wxOV9KUEdERUNfV0RNQTA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPCZpb21tdV92ZG8gTTRVX1BPUlRfTDE5X0pQR0RFQ19CU0RNQTA+LAo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZpb21tdV92ZG8gTTRVX1BP
UlRfTDE5X0pQR0RFQ19XRE1BMT4sCj4gQEAgLTMwNTcsOSArMzA1OCw5IEBAIGpwZ2RlY0AxYTA1
MDAwMCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0g
PCZzcG0gTVQ4MTk1X1BPV0VSX0RPTUFJTl9WREVDMT47Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgfTsKPgo+IC0gICAgICAgICAgICAgICAgICAgICAgIGpwZ2RlY0AxYjA0MDAwMCB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAganBnZGVjQDEsMCB7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10ODE5NS1qcGdkZWMtaHciOwo+IC0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHgxYjA0MDAwMCAwIDB4MTAw
MDA+Oy8qIEpQR0RFQ19DMiAqLwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVn
ID0gPDEgMCAwIDB4MTAwMDA+Oy8qIEpQR0RFQ19DMiAqLwo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgaW9tbXVzID0gPCZpb21tdV92cHAgTTRVX1BPUlRfTDIwX0pQR0RFQ19XRE1B
MD4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JmlvbW11X3Zw
cCBNNFVfUE9SVF9MMjBfSlBHREVDX0JTRE1BMD4sCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA8JmlvbW11X3ZwcCBNNFVfUE9SVF9MMjBfSlBHREVDX1dETUExPiwK
PiBAQCAtMzA4OCw3ICszMDg5LDcgQEAgdmRvc3lzMDogc3lzY29uQDFjMDFhMDAwIHsKPiAgICAg
ICAgICAgICAgICAgfTsKPgo+Cj4gLSAgICAgICAgICAgICAgIGpwZ2VuYy1tYXN0ZXIgewo+ICsg
ICAgICAgICAgICAgICBqcGVnLWVuY29kZXJAMWEwMzAwMDAgewo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTk1LWpwZ2VuYyI7Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmc3BtIE1UODE5NV9QT1dFUl9ET01BSU5f
VkVOQ19DT1JFMT47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgaW9tbXVzID0gPCZpb21tdV92
cHAgTTRVX1BPUlRfTDIwX0pQR0VOQ19ZX1JETUE+LAo+IEBAIC0zMDk3LDExICszMDk4LDEyIEBA
IGpwZ2VuYy1tYXN0ZXIgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8JmlvbW11X3ZwcCBNNFVfUE9SVF9MMjBfSlBHRU5DX0JTRE1BPjsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAjc2l6ZS1jZWxscyA9IDwyPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICByYW5nZXM7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgcmFuZ2VzID0gPDAgMCAwIDB4MWEwMzAwMDAgMCAweDEw
MDAwPiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MSAwIDAgMHgxYjAzMDAw
MCAwIDB4MTAwMDA+Owo+Cj4gLSAgICAgICAgICAgICAgICAgICAgICAganBnZW5jQDFhMDMwMDAw
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICBqcGdlbmNAMCwwIHsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTk1LWpwZ2VuYy1o
dyI7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MCAweDFhMDMwMDAw
IDAgMHgxMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MCAw
IDAgMHgxMDAwMD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpb21tdXMgPSA8
JmlvbW11X3ZkbyBNNFVfUE9SVF9MMTlfSlBHRU5DX1lfUkRNQT4sCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZpb21tdV92ZG8gTTRVX1BPUlRfTDE5
X0pQR0VOQ19DX1JETUE+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwmaW9tbXVfdmRvIE00VV9QT1JUX0wxOV9KUEdFTkNfUV9UQUJMRT4sCj4gQEAg
LTMxMTIsOSArMzExNCw5IEBAIGpwZ2VuY0AxYTAzMDAwMCB7Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZzcG0gTVQ4MTk1X1BPV0VSX0RPTUFJTl9W
RU5DPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAgICAg
ICAgICAganBnZW5jQDFiMDMwMDAwIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBqcGdlbmNA
MSwwIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibWVk
aWF0ZWssbXQ4MTk1LWpwZ2VuYy1odyI7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICByZWcgPSA8MCAweDFiMDMwMDAwIDAgMHgxMDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZWcgPSA8MSAwIDAgMHgxMDAwMD47Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBpb21tdXMgPSA8JmlvbW11X3ZwcCBNNFVfUE9SVF9MMjBfSlBHRU5DX1lfUkRN
QT4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZp
b21tdV92cHAgTTRVX1BPUlRfTDIwX0pQR0VOQ19DX1JETUE+LAo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmaW9tbXVfdnBwIE00VV9QT1JUX0wyMF9K
UEdFTkNfUV9UQUJMRT4sCj4gLS0KPiAyLjUwLjEKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
