Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 069C3C87FD2
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 11:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2we0DWvwrqz9toKNyk9Wkd385ot8O/tQj4iD7UPVfsI=; b=GVKU6JdPvz6AhM
	dtjVx/a5UbzkeRBokwaGnB3kCiFRLx5wdxhmxarXTtM5iHnLcoKvins1DJ4mxYszJ1Wv9yeYG5rF8
	qhK1izaCY68JYWfKg+wOxvFRsBPBNwDetK1mYOnjXmXkwAtNJzGapkQ3JGSxfKYqRn2CoytMr1tTZ
	WpHGFSBYMJRQJfhWyDNUgGFl3GijRlhi660syAQFXs3Nr0yxyKEw+l4W66JZykG3JTEtfwo9mcUMG
	uoUOX9IGcqpoqIdpudMMbqqeX8YDfQWWX9yg02K+UL/RXXfAeo1bxqHoiLk0iEKfXOqQxPGmYQSJh
	MTnx/TgKh19T0Q0pe4yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGOU-00000009gqr-3DsM;
	Fri, 25 Jul 2025 11:15:18 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufFbY-00000009aGN-2RHY
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 10:24:45 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-2cc89c59cc0so1841682fac.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 03:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753439083; x=1754043883; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s9CPe4n6W7cHa+GL0hIjIVMWtvIyx6LwWGjspV/N2Ok=;
        b=cjNtioca/g1Zih+ZuEHrZ6hMxB4EHHthAoBO7997bN8w+3CDERq50iHcv5AoIDE1a9
         9xcKocoJCRVrH9qY5CjB3BDZ7EEs5CmnWnMi121SFF/7ImoLge5mkl0I0vXtxTYLUcDd
         DjInegSRhEIG2VUuS+aiLubJaUw2tZXOmzTSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753439083; x=1754043883;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s9CPe4n6W7cHa+GL0hIjIVMWtvIyx6LwWGjspV/N2Ok=;
        b=I445X+SnzojBh0IYP999BipCwQnOiTORR40CKLe6uquTOtJ7SfrPeC0FKu6GFpAOel
         qVH2i1aniNJ+K/tyCChImhUHTbj0+VPDUdc7qdgJfp4LKgt6JfHOf3C46svDHx5vwCOb
         iM7NF//rRfemFkqPDNNM1oDEbokiuUUd3O5BX4Ilfj3PSqvVn9oUhLPYpQZE5c/0Ep7p
         nEgRj/PjgJPpi+YU+vd3WzEEZJ9ezPajmaBSnHK1+U4aWT7wk4iZON+dWP8Qud0vcgnT
         fvzV6boMbPD0qR/Ux7g8RNuVvX00HfYt/dJZPlEeEGEWbkcw7kgTGqvOswjMmmMDrzZc
         Kmig==
X-Forwarded-Encrypted: i=1; AJvYcCVU/7NCG1XiMl1FSFQkYeuxvqUO8KE7Gjnqf2e625wqGHFjHPnVzlZAYgl6ih9CBAJz6BdaPvNwZBI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwaVNKZPTHkWPpGMIS/ilOZU98fBOO6j1+1TRaw8+jlUXve26+Y
	81bLVWt2/f1bI+CtUGFoIa+rulGH26a2Gnh+/jwiaz2HcoqHMUSWZ8fMUZ3rWCg0gokL7FPcIvj
	BAoc=
X-Gm-Gg: ASbGncst/m+aWACps2NoPG6HzyLmMYI538fu/NV4X3oRfkSb8/snJT8pPjiMn0GBh4k
	9aU7QCJqirwrQh5Ot2Su1JlLK5VD7Dv35E2D/TbYDVXT9RESBWiunURlFGISGSgEuk74UMexP5L
	PwJkOGXW3hpX66dQ1gAOpCrtAF+4OQT/92YdXwsO4DC1/GnbFTvaKnL67TQgxTFd6qFbkx/T+95
	OaYfUfKziXYHqJEtd6D1MVauLJHdix//kJhJULEBxhlLZTjn06pXId+pxZKGLicCWMXNwWSimc2
	cX+UQCD07mx2F6dW1GYocu3ih2O29kpc+M/eM8I0XuBX7BwsEDZ3BNn54AmFM0hTX+Mgl78YjEl
	c9IZXvHQOwkyqbKbZrBBHdBdhpHMPSIuEEoDuduIMYi5ArtX65c7xJRkJ1Q==
X-Google-Smtp-Source: AGHT+IGDuKNo3r+6Q1GQcq27jEqYmTDDwh6LlmWo8MT6O5tPmS6tmDrmCCJkaPOKbVtzGR0jYUD3tg==
X-Received: by 2002:a05:6871:a202:b0:2ef:88fa:e0c3 with SMTP id 586e51a60fabf-306e84055ecmr2507047fac.13.1753439083262;
        Fri, 25 Jul 2025 03:24:43 -0700 (PDT)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com. [209.85.210.54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-306e1f19b48sm983022fac.31.2025.07.25.03.24.43
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 03:24:43 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-73e57de73b8so1036472a34.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 03:24:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVCexz/SnX2MdejjL+uZ8WkJihXrp/ANLIsis/57CEzBsfwKtPs5a0V19Vprns0zpkcsnJUxFAXtN8=@lists.infradead.org
X-Received: by 2002:a05:6102:1623:b0:4fa:dd4:6877 with SMTP id
 ada2fe7eead31-4fa2eb0ce5dmr2502816137.4.1753438693359; Fri, 25 Jul 2025
 03:18:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-31-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-31-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:17:35 +0800
X-Gmail-Original-Message-ID: <CAC=S1niM4ddPSaOM9uMRQuUS8HwPw+gtxe9kGUggWQx6uio5eA@mail.gmail.com>
X-Gm-Features: Ac12FXzF0-E5XCOaIf5MFeMvqjYMvWSzSdwqzh1uEwhsUpfXPcd-rqBecXNopmU
Message-ID: <CAC=S1niM4ddPSaOM9uMRQuUS8HwPw+gtxe9kGUggWQx6uio5eA@mail.gmail.com>
Subject: Re: [PATCH 30/38] arm64: dts: mediatek: pumpkin-common: Fix pinctrl
 node names
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
X-CRM114-CacheID: sfid-20250725_032444_614742_9F92F978 
X-CRM114-Status: GOOD (  12.34  )
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
Rml4IHRoZSBwaW5jdHJsIG5vZGUgbmFtZXMgdG8gYWRoZXJlIHRvIHRoZSBiaW5kaW5ncywgYXMg
dGhlIG1haW4KPiBwaW4gbm9kZSBpcyBzdXBwb3NlZCB0byBiZSBuYW1lZCBsaWtlICJ1YXJ0MC1w
aW5zIiBhbmQgdGhlIHBpbm11eAo+IG5vZGUgbmFtZWQgbGlrZSAicGlucy1idXMiLgo+Cj4gU2ln
bmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8u
ZGVscmVnbm9AY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBGZWkgU2hhbyA8ZnNoYW9AY2hy
b21pdW0ub3JnPgoKPiAtLS0KPiAgLi4uL2Jvb3QvZHRzL21lZGlhdGVrL3B1bXBraW4tY29tbW9u
LmR0c2kgICAgICB8IDE4ICsrKysrKysrKy0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvbWVkaWF0ZWsvcHVtcGtpbi1jb21tb24uZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvbWVkaWF0ZWsvcHVtcGtpbi1jb21tb24uZHRzaQo+IGluZGV4IGEzNTZkYjVmY2M1Zi4uODA1
ZmI4MjEzOGE4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvcHVt
cGtpbi1jb21tb24uZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvcHVt
cGtpbi1jb21tb24uZHRzaQo+IEBAIC0xOTgsOCArMTk4LDggQEAgJnVzYl9waHkgewo+ICB9Owo+
Cj4gICZwaW8gewo+IC0gICAgICAgZ3Bpb19rZXlzX2RlZmF1bHQ6IGdwaW9kZWZhdWx0IHsKPiAt
ICAgICAgICAgICAgICAgcGluc19jbWRfZGF0IHsKPiArICAgICAgIGdwaW9fa2V5c19kZWZhdWx0
OiBncGlvLWtleXMtcGlucyB7Cj4gKyAgICAgICAgICAgICAgIHBpbnMtY21kLWRhdCB7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgcGlubXV4ID0gPE1UODUxNl9QSU5fNDJfS1BDT0wwX19GVU5D
X0dQSU80Mj4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPE1UODUxNl9QSU5f
NDNfS1BDT0wxX19GVU5DX0dQSU80Mz47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgYmlhcy1w
dWxsLXVwOwo+IEBAIC0yMDcsNyArMjA3LDcgQEAgcGluc19jbWRfZGF0IHsKPiAgICAgICAgICAg
ICAgICAgfTsKPiAgICAgICAgIH07Cj4KPiAtICAgICAgIGkyYzBfcGluc19hOiBpMmMwIHsKPiAr
ICAgICAgIGkyYzBfcGluc19hOiBpMmMwLXBpbnMgewo+ICAgICAgICAgICAgICAgICBwaW5zMSB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcGlubXV4ID0gPE1UODUxNl9QSU5fNThfU0RBMF9f
RlVOQ19TREEwXzA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxNVDg1MTZf
UElOXzU5X1NDTDBfX0ZVTkNfU0NMMF8wPjsKPiBAQCAtMjE1LDcgKzIxNSw3IEBAIHBpbnMxIHsK
PiAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgIH07Cj4KPiAtICAgICAgIGkyYzJfcGluc19h
OiBpMmMyIHsKPiArICAgICAgIGkyYzJfcGluc19hOiBpMmMyLXBpbnMgewo+ICAgICAgICAgICAg
ICAgICBwaW5zMSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcGlubXV4ID0gPE1UODUxNl9Q
SU5fNjBfU0RBMl9fRlVOQ19TREEyXzA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDxNVDg1MTZfUElOXzYxX1NDTDJfX0ZVTkNfU0NMMl8wPjsKPiBAQCAtMjIzLDIxICsyMjMs
MjEgQEAgcGluczEgewo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgfTsKPgo+IC0gICAg
ICAgdGNhNjQxNl9waW5zOiBwaW5tdXhfdGNhNjQxNl9waW5zIHsKPiAtICAgICAgICAgICAgICAg
Z3Bpb19tdXhfcnN0X25fcGluIHsKPiArICAgICAgIHRjYTY0MTZfcGluczogdGNhNjQxNi1waW5z
IHsKPiArICAgICAgICAgICAgICAgcGlucy1tdXgtcnN0biB7Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgcGlubXV4ID0gPE1UODUxNl9QSU5fNjVfVVRYRDFfX0ZVTkNfR1BJTzY1PjsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBvdXRwdXQtaGlnaDsKPiAgICAgICAgICAgICAgICAgfTsKPgo+
IC0gICAgICAgICAgICAgICBncGlvX211eF9pbnRfbl9waW4gewo+ICsgICAgICAgICAgICAgICBw
aW5zLW11eC1pbnRuIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBwaW5tdXggPSA8TVQ4NTE2
X1BJTl82NF9VUlhEMV9fRlVOQ19HUElPNjQ+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIGlu
cHV0LWVuYWJsZTsKPiAgICAgICAgICAgICAgICAgICAgICAgICBiaWFzLXB1bGwtdXA7Cj4gICAg
ICAgICAgICAgICAgIH07Cj4gICAgICAgICB9Owo+Cj4gLSAgICAgICBldGhlcm5ldF9waW5zX2Rl
ZmF1bHQ6IGV0aGVybmV0IHsKPiAtICAgICAgICAgICAgICAgcGluc19ldGhlcm5ldCB7Cj4gKyAg
ICAgICBldGhlcm5ldF9waW5zX2RlZmF1bHQ6IGV0aGVybmV0LXBpbnMgewo+ICsgICAgICAgICAg
ICAgICBwaW5zLWV0aCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcGlubXV4ID0gPE1UODUx
Nl9QSU5fMF9FSU5UMF9fRlVOQ19FWFRfVFhEMD4sCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPE1UODUxNl9QSU5fMV9FSU5UMV9fRlVOQ19FWFRfVFhEMT4sCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPE1UODUxNl9QSU5fNV9FSU5UNV9fRlVOQ19FWFRfUlhF
Uj4sCj4gLS0KPiAyLjUwLjEKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
