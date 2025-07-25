Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED41FC87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHXmPDTNYlTE+pEoBgcAnqfhOo7gss7VmpSzsS0ww7o=; b=riL7ZXUeLPh10K
	y8kdIJ1WavKzGL3gQiSldB+9VrBPk+XqJtzZbYeHkgcmHgZICdrysrRvrZlVpGfRbCojFoizfDPPP
	+Mr1Uqn7qheCrCUsvEon7Yu7XCh1EH7iQkir13k73p+gEH1zkV3roJ8BcQh2jC8U8HQIGekVLqcWN
	y8Kfi7oP9x7dKenIzCFvAkrnG7XB/VB4x5Ha5kWKyiZhseD4Metua6+Zv8hzG8it7VtLEJD1Xru4L
	MbalHfgIp3+HC+ns0Q87a6iY5n2ysD7UJ+v31gZ4B8oL+qbLgV1n/b9pAJq8N+m1Kkhf3xmRZTlRw
	Zb2bz0DvfZnWP4eiZ8fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufHNT-00000009nm1-2wvo;
	Fri, 25 Jul 2025 12:18:19 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufH4R-00000009lb1-06RW
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:58:40 +0000
Received: by mail-vk1-xa30.google.com with SMTP id 71dfb90a1353d-5346b405d1aso1231818e0c.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753444718; x=1754049518; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOvBSwwtmNG8Z+SjWPY5aek+Y4mrxHqGqroX/bR/8SM=;
        b=UuraorcgH2oalYnFXchauMpcIhIdP0Ao8xYFJ83+rAwP0RQo0VzPTAzuStMOD13mS1
         VunY45tYfp9LtlcoJiSFEd/uwMa+wsTyS2Xv2J6JZExoI3qQKw6tT6DdnFVaSFtbZyXF
         Qz81rVhf/D8E+BRwe96vmRLjsRk0JbXy9/ohU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753444718; x=1754049518;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nOvBSwwtmNG8Z+SjWPY5aek+Y4mrxHqGqroX/bR/8SM=;
        b=HqpiLE1982uOGD15qwqatdus5U5CPjZ/2fDQuZrwj6jv7FJ+RNv7979xTcXbE5/6nA
         /0kTScACVdYTyFAKzI4kx9lPbe/G0Vf3XNR6qGiJZEhFHgcwlnY6ssVthpBVIOOiq58f
         ODxj5LLIneNv1yBIPQ1T2Tkj8pZpF8cScJhTX6msALMpuh9455s2B9JVAbwslxl4HM2P
         m05drQfYiIVW7D2n45OXX/O+G7lVpgpWT3bvEW9Ojp3KLQoOn5JmNNzw+wUvTTcJb38+
         zqkQi6WWUiz7a4LbfhtvnnWfT3Z5X4FPQjLodsFrL/9JkxiDAqSbv265T2V+AWoPynD6
         xh1g==
X-Forwarded-Encrypted: i=1; AJvYcCWTKO/aRgVECx4WTWUKSY1VVF9REVwzFQ+Xr2wEYQXeospVzda96u4xIQuceKtZkUy14SaS9/AQkP0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmMRM6HTi/ME87vFHfiq9hEurX667TqhzM/AQTYmBM1UXAp27n
	4PzqK12PUpEpx+S6AGxAwpEW5yTviWmgNSuX9FFSKKuoKyJVzoBTpo9L0yLPSdRqipfAP0ndQcF
	sY14=
X-Gm-Gg: ASbGncs0iWDXmsNlvpVfXb8Zv/iMIuxj/5YKAhjUEuWY/gVGM0L4UndbUcUeu9RFaY4
	7WohAIRiSvEphXH1EZEppYR+MVhpGSr1/zZ7no+ZE2xVWZU6qOhpUHmTOvddNPUvP+SUyPEPmH/
	px0pRF4ot6aS5RJZqhgxJZASQw3Yhck88nOXP7Xtm5e1i4kiGp6vLd2qv35EsI3YlRSb6Vz59pv
	x2mg4Ka3P2NtlSfvEmO9Wfns24Gpzs5sG/CzPt0V9mqLdfh+R1B7MoyZf9ZOiL9Yl59idOrwhke
	2MYCb1K1fEUhod40w1Un4cRLxyAWEleyAMy1CQa2Ek+3fMlb3EPqvKkowV1j9iwwvCRErFdIb27
	JdZ3AZvtdBtl8o8ExLF4JvWCYr6/BRCmBQXgmxQ4eBCkhaY2Ot7WfPInOUQ==
X-Google-Smtp-Source: AGHT+IEMCd7doidaCTP2FL+cZKVxKmCSodwm1R2v0r/mQInCHak1BC+x/NSHN4fgc7j0LfkVVo3Dpg==
X-Received: by 2002:a05:6122:82a5:b0:537:3e51:f868 with SMTP id 71dfb90a1353d-538db603d5bmr394822e0c.12.1753444717548;
        Fri, 25 Jul 2025 04:58:37 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-537bf8d65bcsm916401e0c.37.2025.07.25.04.58.37
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:58:37 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-88131f0badcso1449406241.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:58:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXmKfTps98scpSQlx2VurEMnNo1KT/leiP01qK+HCbma7n7aO71akkt54O+WjOeL5odFbnfRxJyDxU=@lists.infradead.org
X-Received: by 2002:a05:6102:358c:b0:4e4:5df7:a10a with SMTP id
 ada2fe7eead31-4fa3fc6be93mr374132137.16.1753440996607; Fri, 25 Jul 2025
 03:56:36 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-17-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-17-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:55:59 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhwrq60q-=jMZQ2u8TwwG9HHnQFWrFRx58VF2K6Xi16XA@mail.gmail.com>
X-Gm-Features: Ac12FXy6b-EYxcfTGxWYM-OfSnpWrsOFjS6YFWPk3kTV_ZIdvcSVvNebJ1JSwHk
Message-ID: <CAC=S1nhwrq60q-=jMZQ2u8TwwG9HHnQFWrFRx58VF2K6Xi16XA@mail.gmail.com>
Subject: Re: [PATCH 16/38] arm64: dts: mediatek: mt6331: Fix pmic, regulators,
 rtc, keys node names
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
X-CRM114-CacheID: sfid-20250725_045839_073527_8DEF10B1 
X-CRM114-Status: GOOD (  13.78  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNTo0OOKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
VGhlIG5vZGUgbmFtZXMgZm9yICJwbWljIiwgInJlZ3VsYXRvcnMiLCAicnRjIiwgYW5kICJrZXlz
IiBhcmUKPiBkaWN0YXRlZCBieSB0aGUgUE1JQyBNRkQgYmluZGluZzogY2hhbmdlIHRob3NlIHRv
IGFkaGVyZSB0byBpdC4KPgo+IEZpeGVzOiBhZWY3ODNmM2UwY2EgKCJhcm02NDogZHRzOiBtZWRp
YXRlazogQWRkIE1UNjMzMSBQTUlDIGRldmljZXRyZWUiKQo+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vs
b0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9y
YS5jb20+CgpSZXZpZXdlZC1ieTogRmVpIFNoYW8gPGZzaGFvQGNocm9taXVtLm9yZz4KCj4gLS0t
Cj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2MzMxLmR0c2kgfCAxMCArKysrKy0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDYzMzEuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2MzMxLmR0c2kKPiBpbmRleCBkODk4NThj
NzNhYjEuLjI0M2FmYmZmYTIxZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21l
ZGlhdGVrL210NjMzMS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9t
dDYzMzEuZHRzaQo+IEBAIC02LDEyICs2LDEyIEBACj4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9p
bnB1dC9pbnB1dC5oPgo+Cj4gICZwd3JhcCB7Cj4gLSAgICAgICBwbWljOiBtdDYzMzEgewo+ICsg
ICAgICAgcG1pYzogcG1pYyB7Cj4gICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0
ZWssbXQ2MzMxIjsKPiAgICAgICAgICAgICAgICAgaW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4gICAg
ICAgICAgICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47Cj4KPiAtICAgICAgICAgICAgICAg
bXQ2MzMxcmVndWxhdG9yOiBtdDYzMzFyZWd1bGF0b3Igewo+ICsgICAgICAgICAgICAgICBtdDYz
MzFyZWd1bGF0b3I6IHJlZ3VsYXRvcnMgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAibWVkaWF0ZWssbXQ2MzMxLXJlZ3VsYXRvciI7Cj4KPiAgICAgICAgICAgICAgICAg
ICAgICAgICBtdDYzMzFfdmR2ZnMxMV9yZWc6IGJ1Y2stdmR2ZnMxMSB7Cj4gQEAgLTI1OCw3ICsy
NTgsNyBAQCBtdDYzMzFfdnJ0Y19yZWc6IGxkby12cnRjIHsKPiAgICAgICAgICAgICAgICAgICAg
ICAgICB9Owo+Cj4gICAgICAgICAgICAgICAgICAgICAgICAgbXQ2MzMxX3ZkaWcxOF9yZWc6IGxk
by12ZGlnMTggewo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5h
bWUgPSAiZHZkZDE4X2RpZyI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1
bGF0b3ItbmFtZSA9ICJ2ZGlnMTgiOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1yYW1wLWRlbGF5ID0gPDA+Owo+
IEBAIC0yNjYsMTEgKzI2NiwxMSBAQCBtdDYzMzFfdmRpZzE4X3JlZzogbGRvLXZkaWcxOCB7Cj4g
ICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICAgICAgICAgfTsKPgo+IC0gICAg
ICAgICAgICAgICBtdDYzMzFydGM6IG10NjMzMXJ0YyB7Cj4gKyAgICAgICAgICAgICAgIG10NjMz
MXJ0YzogcnRjIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlh
dGVrLG10NjMzMS1ydGMiOwo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAg
IG10NjMzMWtleXM6IG10NjMzMWtleXMgewo+ICsgICAgICAgICAgICAgICBtdDYzMzFrZXlzOiBr
ZXlzIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm1lZGlhdGVrLG10
NjMzMS1rZXlzIjsKPiAgICAgICAgICAgICAgICAgICAgICAgICBwb3dlciB7Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBsaW51eCxrZXljb2RlcyA9IDxLRVlfUE9XRVI+Owo+IC0t
Cj4gMi41MC4xCj4KPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
