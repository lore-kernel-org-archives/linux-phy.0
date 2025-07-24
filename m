Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31455C83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 10:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOX7rbY03pOxdhflrpyQWQCwrIM6DiQDSReAgvjyNw8=; b=InWiEmxBpOqyZk
	+uPMx49kKd7tEI1dhsAUZiDv7E5YqyufZNtyhG4qsKhHvar8PGZivomFBYj2xNlIw7f9WlaIGMQyT
	CiHRF3R4Ka0HUVZa/bHGwTZJb1nC0sa77uSzJvsuwB+/3p/TanZloRtq8NzcNtOf7us9m7Zf/800M
	bL2o9iH+02wsEQNySdlcR7E1i4zkUfhsyoAeCUAhtmxbnVjHdC37Ym3EwcR/2rl2AjRzrl/7zyzgC
	NsFhSvIgrjKTwkJf/VMAy1ovIe3/FHHpjyw3T9mW94QHHmW32ilFmqzQzN2dDJBfjW0gPIQmbAhPf
	SdiAflqSNmhPjdBSn6gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uetaS-00000007GRL-3uqB;
	Thu, 24 Jul 2025 10:54:08 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesLN-000000073df-1gXM
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 09:34:30 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-55628eaec6cso735257e87.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 02:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753349668; x=1753954468; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4BiDDqrD6a5pZkcMdx9/g3Y4QyPCSLekJ/xiBVz6j3w=;
        b=QTGRy9ENFX8w2iI2r7AiRaTfiqVVOYAEk6fJHYVqGAqxUW+ykr3bs+OaLzRc13Z2Ru
         0+/qO4226eq6Q9iXcgMOrbnY+j08/uehjKMpcXsKR77doPR+pUZgbJRiUXGcB2ButvKt
         Jms/7qYbU+VZzO8OOUc5C6RceUdYNDrtl/34c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753349668; x=1753954468;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4BiDDqrD6a5pZkcMdx9/g3Y4QyPCSLekJ/xiBVz6j3w=;
        b=ZuSKfLZom3KdjXCjtJ02HoACZ1vONq33c/EgeaMan9eL/ImbbrTHpB0ohRlHeCRTgK
         rA0OwYaIHSNrJRF3aqRopanzhKbKZ0rw82SDXq6UU1q41HwrTH5FxkadlXyjUTGApm51
         j/E0gkiFvdQU+2i9Neuv6BZv8A2wbNOx3rXy5VO11exG+pG/p09hhBw81xgvPgY7n/+2
         v7ivKBJaHqF0WT7CoXF7FYQjBvSvAu2LNfgpK028u5IAmUrQnpJoZofE6HMZSPpmKI3S
         dppiDsnj/CcCkR/KMq4Y7gUzmvleU3YuQDXVvi67rq3yRnviLE4h3JAkPzFuGW8/9cz5
         w4+A==
X-Forwarded-Encrypted: i=1; AJvYcCVtR1HOLtsITXnlFylJuzTEBmH1d06f/mH/IKtOXmhr4ZzuEUZzVoDg35Kjg5iUgQpcI5bNi73T/6g=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTcGpIQhhNBLJHnpkyIr90a0lyiEs/HGINAzsrcpvZNzwUkcrQ
	2IJ7s0LWuShr367scKCj9FxFRQF8p9IOpBPhQqbWq8kICkWKJGvpv0dvmP39fMdHq+iLBmgL4NL
	AEHQtL+1MqdCfQt9zF31FmzXZjL4TbBJYMZk8PtxY
X-Gm-Gg: ASbGncsZT6OVDrkiXp5KCNtOSPZs3FG2/AUlyt4j0Y+nysG2KAcf14fz6a3wbLNr9iS
	ney+gQOWiWseP/JeoDeo/xH7MhmdIeE0AJPwyZO82+3a6GwK0TN6a9JWl9KT90fWutokiY0PS92
	q7Ug+fKmlJvaEVhhP5P6XPyZmE8xR3lMUV5VFY5Gb1PDbrZt5p/wOdaMzA3zOY+SVRZHl/LCyth
	Dfpr0H0Csb7vli05TUmylVrNNZtKgMXEe0=
X-Google-Smtp-Source: AGHT+IGbQGAzYrZuGKb7ZyVDVB2IA3/m7/1T14ShQ1gB/s052YEW14kETsBT1/6F7qIVfTgZAU3RoBMdAKdnokA3DJc=
X-Received: by 2002:a05:6512:2391:b0:553:65bc:4232 with SMTP id
 2adb3069b0e04-55a513bf799mr2287118e87.31.1753349667560; Thu, 24 Jul 2025
 02:34:27 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-34-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-34-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:34:15 +0800
X-Gm-Features: Ac12FXx-dC7GqsweL9em8IYbzr7gdu7h7TRc-hJouMaDYtIUw_U2Osb1ZV53HA8
Message-ID: <CAGXv+5ECM53Q4ndZ49Xa71mamy=GhGqdOMQYXydH6cEeT=0EgA@mail.gmail.com>
Subject: Re: [PATCH 33/38] arm64: dts: mediatek: mt8183-kukui: Move DSI panel
 node to machine dtsis
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com, 
	mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com, 
	vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, houlong.wei@mediatek.com, 
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com, 
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com, 
	olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org, 
	arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com, 
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_023429_442568_6BF43DDE 
X-CRM114-Status: GOOD (  18.62  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNDo0MOKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
Tm90IGFsbCBvZiB0aGUga3VrdWkgbWFjaGluZXMgaGF2ZSBnb3QgYSByZWFsIERTSSBwYW5lbCwg
aW5mYWN0LAo+IHNvbWUgb2YgdGhvc2UgaGF2ZSBnb3QgYSBEU0kgdG8gZURQIGJyaWRnZSBpbnN0
ZWFkOiB0aGlzIG1lYW5zCj4gdGhhdCB0aGUgYWRkcmVzcyBhbmQgc2l6ZSBjZWxscyBhcmUgbmVj
ZXNzYXJ5IGluIHRoZSBmaXJzdCBjYXNlCj4gYnV0IHVubmVjZXNzYXJ5IGluIHRoZSBsYXR0ZXIu
Cj4KPiBJbnN0ZWFkIG9mIGFkZGluZyBhIGJ1bmNoIG9mIC9kZWxldGUtbm9kZS8gd2hpY2ggd291
bGQgaW1wYWN0IG9uCj4gaHVtYW4gcmVhZGFiaWxpdHksIG1vdmUgdGhlIGVudGlyZSBwYW5lbCBu
b2RlIGRlY2xhcmF0aW9uIHRvIGVhY2gKPiBvZiB0aGUgcmVsZXZhbnQgS3VrdWkgbWFjaGluZSBk
dHNpOiBldmVuIHRob3VnaCB0aGlzIGludHJvZHVjZXMKPiBzb21lIGR1cGxpY2F0aW9uLCB0aGUg
YWR2YW50YWdlcyBpbiByZWFkYWJpbGl0eSBzdXJjbGFzcyB0aGF0LgoKVGhpcyBpcyBqdXN0IGFu
IGFydGlmYWN0IG9mIHRoZSBsaW5lYWdlLiBLdWt1aSB0aGUgb3JpZ2luYWwgZGVzaWduCndhcyBh
IHRhYmxldCB3aXRoIE1JUEkgRFNJIHBhbmVscy4gVGhlbiB0aGUgSmFjdXp6aSBjbGFtc2hlbGwg
ZGVzaWduCndpdGggZURQIHBhbmVscyB3YXMgZGVyaXZlZCBmcm9tIHRoYXQuCgpJZiB3ZSByZWFs
bHkgZG9uJ3QgbGlrZSB0aGUgZHVwbGljYXRpb24sIG1heWJlIHdlIGNvdWxkIGludHJvZHVjZQph
IGBtdDgxODMta3VrdWktdGFibGV0LmR0c2lgIGZpbGUgZm9yIHRoZSBiaXRzIHRoYXQgYXJlIHNw
ZWNpZmljCnRvIHRoZSB0YWJsZXQgZGVzaWduLgoKPiBTaWduZWQtb2ZmLWJ5OiBBbmdlbG9HaW9h
Y2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29t
PgoKUmV2aWV3ZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc3RAY2hyb21pdW0ub3JnPgoKPiAtLS0K
PiAgLi4uL2R0cy9tZWRpYXRlay9tdDgxODMta3VrdWktamFjdXp6aS5kdHNpICAgIHwgIDUgLS0t
LQo+ICAuLi4vZHRzL21lZGlhdGVrL210ODE4My1rdWt1aS1rYWthZHUuZHRzaSAgICAgfCAyNyAr
KysrKysrKysrKysrKysrKysKPiAgLi4uL2R0cy9tZWRpYXRlay9tdDgxODMta3VrdWkta29kYW1h
LmR0c2kgICAgIHwgMjggKysrKysrKysrKysrKysrKysrKwo+ICAuLi4vYm9vdC9kdHMvbWVkaWF0
ZWsvbXQ4MTgzLWt1a3VpLWtyYW5lLmR0c2kgfCAyOCArKysrKysrKysrKysrKysrKysrCj4gIC4u
Li9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMta3VrdWkuZHRzaSB8IDIzIC0tLS0tLS0t
LS0tLS0tLQo+ICA1IGZpbGVzIGNoYW5nZWQsIDgzIGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgz
LWt1a3VpLWphY3V6emkuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgz
LWt1a3VpLWphY3V6emkuZHRzaQo+IGluZGV4IGYyYWZjYTYzYzc1YS4uMWI3NGVjMTcxYzEwIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLWt1a3VpLWph
Y3V6emkuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLWt1
a3VpLWphY3V6emkuZHRzaQo+IEBAIC05MywxMSArOTMsNiBAQCBjcm9zX2VjX3B3bTogcHdtIHsK
PiAgICAgICAgIH07Cj4gIH07Cj4KPiAtJmRzaTAgewo+IC0gICAgICAgc3RhdHVzID0gIm9rYXki
Owo+IC0gICAgICAgL2RlbGV0ZS1ub2RlL3BhbmVsQDA7Cj4gLX07Cj4gLQo+ICAmZHNpX291dCB7
Cj4gICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmFueDc2MjVfaW4+Owo+ICB9Owo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My1rdWt1aS1rYWthZHUu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLWt1a3VpLWtha2FkdS5k
dHNpCj4gaW5kZXggNDcyZDQ5ODc2MTVhLi5kNzE5NzJjOTRlNDIgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMta3VrdWkta2FrYWR1LmR0c2kKPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My1rdWt1aS1rYWthZHUuZHRzaQo+
IEBAIC02MSw2ICs2MSwzMyBAQCAmYmx1ZXRvb3RoIHsKPiAgICAgICAgIGZpcm13YXJlLW5hbWUg
PSAibnZtXzAwNDQwMzAyX2kyc19ldS5iaW4iOwo+ICB9Owo+Cj4gKyZkc2kwIHsKPiArICAgICAg
ICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ICsgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gKwo+
ICsgICAgICAgcGFuZWw6IHBhbmVsQDAgewo+ICsgICAgICAgICAgICAgICAvKiBjb21wYXRpYmxl
IHdpbGwgYmUgc2V0IGluIGJvYXJkIGR0cyAqLwo+ICsgICAgICAgICAgICAgICByZWcgPSA8MD47
Cj4gKyAgICAgICAgICAgICAgIGVuYWJsZS1ncGlvcyA9IDwmcGlvIDQ1IDA+Owo+ICsgICAgICAg
ICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsgICAgICAgICAgICAgICBwaW5j
dHJsLTAgPSA8JnBhbmVsX3BpbnNfZGVmYXVsdD47Cj4gKyAgICAgICAgICAgICAgIGF2ZGQtc3Vw
cGx5ID0gPCZwcHZhcm5fbGNkPjsKPiArICAgICAgICAgICAgICAgYXZlZS1zdXBwbHkgPSA8JnBw
dmFycF9sY2Q+Owo+ICsgICAgICAgICAgICAgICBwcDE4MDAtc3VwcGx5ID0gPCZwcDE4MDBfbGNk
PjsKPiArICAgICAgICAgICAgICAgYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHRfbGNkMD47Cj4gKyAg
ICAgICAgICAgICAgIHJvdGF0aW9uID0gPDI3MD47Cj4gKyAgICAgICAgICAgICAgIHBvcnQgewo+
ICsgICAgICAgICAgICAgICAgICAgICAgIHBhbmVsX2luOiBlbmRwb2ludCB7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmRzaV9vdXQ+Owo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICB9
Owo+ICt9Owo+ICsKPiArJmRzaV9vdXQgewo+ICsgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZw
YW5lbF9pbj47Cj4gK307Cj4gKwo+ICAmaTJjMCB7Cj4gICAgICAgICBzdGF0dXMgPSAib2theSI7
Cj4gIH07Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgz
LWt1a3VpLWtvZGFtYS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMt
a3VrdWkta29kYW1hLmR0c2kKPiBpbmRleCAxYjIxZTM5NTgwNjEuLmI3MDJmZjA2NjYzNiAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My1rdWt1aS1rb2Rh
bWEuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLWt1a3Vp
LWtvZGFtYS5kdHNpCj4gQEAgLTQyLDYgKzQyLDM0IEBAIHBwMTgwMF9sY2Q6IHBwMTgwMC1sY2Qg
ewo+ICAgICAgICAgfTsKPiAgfTsKPgo+ICsmZHNpMCB7Cj4gKyAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKPiArICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ICsgICAgICAgc3RhdHVzID0g
Im9rYXkiOwo+ICsKPiArICAgICAgIHBhbmVsOiBwYW5lbEAwIHsKPiArICAgICAgICAgICAgICAg
LyogY29tcGF0aWJsZSB3aWxsIGJlIHNldCBpbiBib2FyZCBkdHMgKi8KPiArICAgICAgICAgICAg
ICAgcmVnID0gPDA+Owo+ICsgICAgICAgICAgICAgICBlbmFibGUtZ3Bpb3MgPSA8JnBpbyA0NSAw
PjsKPiArICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArICAgICAg
ICAgICAgICAgcGluY3RybC0wID0gPCZwYW5lbF9waW5zX2RlZmF1bHQ+Owo+ICsgICAgICAgICAg
ICAgICBhdmRkLXN1cHBseSA9IDwmcHB2YXJuX2xjZD47Cj4gKyAgICAgICAgICAgICAgIGF2ZWUt
c3VwcGx5ID0gPCZwcHZhcnBfbGNkPjsKPiArICAgICAgICAgICAgICAgcHAxODAwLXN1cHBseSA9
IDwmcHAxODAwX2xjZD47Cj4gKyAgICAgICAgICAgICAgIGJhY2tsaWdodCA9IDwmYmFja2xpZ2h0
X2xjZDA+Owo+ICsgICAgICAgICAgICAgICByb3RhdGlvbiA9IDwyNzA+Owo+ICsgICAgICAgICAg
ICAgICBwb3J0IHsKPiArICAgICAgICAgICAgICAgICAgICAgICBwYW5lbF9pbjogZW5kcG9pbnQg
ewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZk
c2lfb3V0PjsKPiArICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgICAgICAgICB9
Owo+ICsgICAgICAgfTsKPiArfTsKPiArCj4gKyZkc2lfb3V0IHsKPiArICAgICAgIHJlbW90ZS1l
bmRwb2ludCA9IDwmcGFuZWxfaW4+Owo+ICt9Owo+ICsKPiAgJmkyYzAgewo+ICAgICAgICAgc3Rh
dHVzID0gIm9rYXkiOwo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0
ZWsvbXQ4MTgzLWt1a3VpLWtyYW5lLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVr
L210ODE4My1rdWt1aS1rcmFuZS5kdHNpCj4gaW5kZXggYTg1YzczYjQzMTk1Li5iNmNmY2FmZDhi
MDYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxODMta3Vr
dWkta3JhbmUuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgz
LWt1a3VpLWtyYW5lLmR0c2kKPiBAQCAtNDUsNiArNDUsMzQgQEAgJmJsdWV0b290aCB7Cj4gICAg
ICAgICBmaXJtd2FyZS1uYW1lID0gIm52bV8wMDQ0MDMwMl9pMnNfZXUuYmluIjsKPiAgfTsKPgo+
ICsmZHNpMCB7Cj4gKyAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArICAgICAgICNzaXpl
LWNlbGxzID0gPDA+Owo+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICsKPiArICAgICAgIHBh
bmVsOiBwYW5lbEAwIHsKPiArICAgICAgICAgICAgICAgLyogY29tcGF0aWJsZSB3aWxsIGJlIHNl
dCBpbiBib2FyZCBkdHMgKi8KPiArICAgICAgICAgICAgICAgcmVnID0gPDA+Owo+ICsgICAgICAg
ICAgICAgICBlbmFibGUtZ3Bpb3MgPSA8JnBpbyA0NSAwPjsKPiArICAgICAgICAgICAgICAgcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiArICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZw
YW5lbF9waW5zX2RlZmF1bHQ+Owo+ICsgICAgICAgICAgICAgICBhdmRkLXN1cHBseSA9IDwmcHB2
YXJuX2xjZD47Cj4gKyAgICAgICAgICAgICAgIGF2ZWUtc3VwcGx5ID0gPCZwcHZhcnBfbGNkPjsK
PiArICAgICAgICAgICAgICAgcHAxODAwLXN1cHBseSA9IDwmcHAxODAwX2xjZD47Cj4gKyAgICAg
ICAgICAgICAgIGJhY2tsaWdodCA9IDwmYmFja2xpZ2h0X2xjZDA+Owo+ICsgICAgICAgICAgICAg
ICByb3RhdGlvbiA9IDwyNzA+Owo+ICsgICAgICAgICAgICAgICBwb3J0IHsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBwYW5lbF9pbjogZW5kcG9pbnQgewo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZkc2lfb3V0PjsKPiArICAgICAgICAgICAg
ICAgICAgICAgICB9Owo+ICsgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgfTsKPiArfTsKPiAr
Cj4gKyZkc2lfb3V0IHsKPiArICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmcGFuZWxfaW4+Owo+
ICt9Owo+ICsKPiAgJmkyYzAgewo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Cj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTgzLWt1a3VpLmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE4My1rdWt1aS5kdHNpCj4gaW5kZXggOGYz
YTBlODViNGVkLi40YWMwYTYwZmRkMjQgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9tZWRpYXRlay9tdDgxODMta3VrdWkuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWVkaWF0ZWsvbXQ4MTgzLWt1a3VpLmR0c2kKPiBAQCAtMjUyLDI5ICsyNTIsNiBAQCAmY3B1NyB7
Cj4KPiAgJmRzaTAgewo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+IC0gICAgICAgI2FkZHJl
c3MtY2VsbHMgPSA8MT47Cj4gLSAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiAtICAgICAgIHBh
bmVsOiBwYW5lbEAwIHsKPiAtICAgICAgICAgICAgICAgLyogY29tcGF0aWJsZSB3aWxsIGJlIHNl
dCBpbiBib2FyZCBkdHMgKi8KPiAtICAgICAgICAgICAgICAgcmVnID0gPDA+Owo+IC0gICAgICAg
ICAgICAgICBlbmFibGUtZ3Bpb3MgPSA8JnBpbyA0NSAwPjsKPiAtICAgICAgICAgICAgICAgcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAtICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZw
YW5lbF9waW5zX2RlZmF1bHQ+Owo+IC0gICAgICAgICAgICAgICBhdmRkLXN1cHBseSA9IDwmcHB2
YXJuX2xjZD47Cj4gLSAgICAgICAgICAgICAgIGF2ZWUtc3VwcGx5ID0gPCZwcHZhcnBfbGNkPjsK
PiAtICAgICAgICAgICAgICAgcHAxODAwLXN1cHBseSA9IDwmcHAxODAwX2xjZD47Cj4gLSAgICAg
ICAgICAgICAgIGJhY2tsaWdodCA9IDwmYmFja2xpZ2h0X2xjZDA+Owo+IC0gICAgICAgICAgICAg
ICByb3RhdGlvbiA9IDwyNzA+Owo+IC0gICAgICAgICAgICAgICBwb3J0IHsKPiAtICAgICAgICAg
ICAgICAgICAgICAgICBwYW5lbF9pbjogZW5kcG9pbnQgewo+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZkc2lfb3V0PjsKPiAtICAgICAgICAgICAg
ICAgICAgICAgICB9Owo+IC0gICAgICAgICAgICAgICB9Owo+IC0gICAgICAgfTsKPiAtfTsKPiAt
Cj4gLSZkc2lfb3V0IHsKPiAtICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmcGFuZWxfaW4+Owo+
ICB9Owo+Cj4gICZnaWMgewo+IC0tCj4gMi41MC4xCj4KCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
