Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B813C87FCE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScMuJykBjDujHFd4n3gxQcrHY7HKWJnmTM3IQ40gXXM=; b=tKiETu2hZOIOp6
	12DJwvQ8ihK+nfmwHyNpIIuOa654ypWxYfLGz45ZvUV06Ag67S6qTBYcaEA0ohwDsDJhqKTRxuhuz
	ilw5C/vJMdg2TYgDYol2bfDYRtkZOv2CmpzCAUhb36sopi7Ko72SrQKShV7QH8E8YevS4GqikpJ9T
	sIkIQ0mfqrKPNw9B6kpcdRgXWdTOB2pd8jTDQpz/CEJvGhflB2kHPFH8voOwYqv5yxXnnc2uzRjuh
	HhGX+Ep1pxdGunHJgK7IeQ8PnAK6uB5sf87E0WK20tqvKO8CdO6LKjvU5456ND31d2lE+Xeg+5uic
	b6hSmv7LQvJmgUUb1YRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufHIZ-00000009nEA-3L52;
	Fri, 25 Jul 2025 12:13:15 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGqx-00000009kMN-0bJf
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:44:44 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-7072628404dso1925746d6.2
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753443882; x=1754048682; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PlkE41QL6s4x1GqYESsGC6jimQ+2xKl71+VqMJsnR/Q=;
        b=EHcU2TvrAXQKXdnetmrbH5LpMkrPnQEDg+DF80eFwKbH7wkGDL02SPNA3RzqFWVLYz
         O8+zsMwVd/zkiYoxKBI42eERW6GjQr2lz0oZySdj2UIHPzhRgik3Y1S9WHAyXo1IJXeT
         EcA4q8QAGR9GsnybXeUTvIZ/CMpbe54wY8yOk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753443882; x=1754048682;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PlkE41QL6s4x1GqYESsGC6jimQ+2xKl71+VqMJsnR/Q=;
        b=Epg0/tiKj2AnNEokEDFrUniO0/m5jmW9+e9+NvZqXqVkFsrcXj3WEkWk7yaQvSfqkd
         cvcY05NCL8zfYmitM5ixSMX/vvQ2HvuO7flfNfzeY7eOluOwJ5aZB0NgVy0Bc/N6adHH
         /3LDGIxgdR0Ix/Bp4UIPOGYYW0ukXAxIGceuc1LW5rE1Rt4DZ3vEPzN2cBRmqbMYA/sY
         4df4U2kvUhS6CGrCA7N5jsM/zPnClo7+4HKDnX0L5b5tWB9vJH8ACNM2tCIkwDWlfOrH
         b6mA8QhDpXqX8uir57Y8Vt4BfX/NUnAeEmV3MKDHTn0yCz2eMm33HL3SyuI6BEltFZpU
         ndyA==
X-Forwarded-Encrypted: i=1; AJvYcCXYblDpe/uMnfXVRYNqRQgtqk1qWoYKSA5py/HeAlx6fiDMY0UzFxBF6dbmdKxpq8YGWJF9+IWvsgU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwATwSAkTAx9wqbKBkS39QuKQiA6lZjhc/M4XTzBgRXSfZHCRy3
	JGDejEr0a+sAFvMoGhznnZtRAkTZp5O2K8JkwoqYc0fvYcZz6Y2rEDEd0rl6KjG9S3QERvuAJeS
	BWfo0SugL
X-Gm-Gg: ASbGncsP7EpLoUrGYyVzWxzoXmZUR6fCqO/a0wsBVN8ff4IHGUF+m82Ra/G4B4r1Za9
	Z5/mxMcLU0SIsaQtOgyjQdXJjCk+9FSSgjNg+1UKBOqhSf7viXfZA8InJtrASpzGBK5XLGCXTSb
	Sxx4nG4FerdK75eTt+noUNCkRJVMMGoXBpFHxrSMVnNWgK9e0DeLZHiIM1Fkibgoto1cS5Kp9N8
	7cTOjNsoHvpN/zvY5dhsORlZOJjPUPadTm+VhZlYSgxweLK1LhHWauxvKYplyCJ3hpBpDsSm/EH
	MUe8DhJfKu9DroRfSf8aiS0nwPPPsXu5W5cKfFA34KRlknNG6H6xmj5cZu2Zyf4ts5nBuvAAGyw
	jIvqEqHzAtAtSjcGRlrocW6rAG6ZyNFNYuQsHbM/F0Gj8lk0rNj8mszLSWA==
X-Google-Smtp-Source: AGHT+IFhw/7SdRwUt3wrhZEBwdharuLgGzGOI5EumxMfdtyv7BHagEk/raWOcTfwZbVZMVJ1cxsIJQ==
X-Received: by 2002:a05:6214:1c05:b0:706:c5fe:f9fc with SMTP id 6a1803df08f44-707205ef652mr15291396d6.44.1753443881723;
        Fri, 25 Jul 2025 04:44:41 -0700 (PDT)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com. [209.85.219.41])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7070fceb8c9sm25352336d6.101.2025.07.25.04.44.41
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:44:41 -0700 (PDT)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-700c7e4c048so30181156d6.3
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:44:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXC/oegGLBh5GBMoc/uV9A5/JIQezgClvHZkoAJc1grE/d6jYml/6DXdC194URAKNP9qTG95Lcro8A=@lists.infradead.org
X-Received: by 2002:a05:6102:4a8f:b0:4e9:a2bd:b456 with SMTP id
 ada2fe7eead31-4fa3feb1976mr334393137.12.1753439957846; Fri, 25 Jul 2025
 03:39:17 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-39-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-39-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:38:40 +0800
X-Gmail-Original-Message-ID: <CAC=S1njc7_+EhDA_HrVsPfhYsrFEmeb5TQ55X+YOKE=NrpoCaA@mail.gmail.com>
X-Gm-Features: Ac12FXzORC58mPF_B982fHDjnhtiL_-5O2nAq5PI4bkUJDNwvq8vw0VlaVEnRW8
Message-ID: <CAC=S1njc7_+EhDA_HrVsPfhYsrFEmeb5TQ55X+YOKE=NrpoCaA@mail.gmail.com>
Subject: Re: [PATCH 38/38] arm64: dts: mediatek: mt8516-pumpkin: Fix machine compatible
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
X-CRM114-CacheID: sfid-20250725_044443_174360_8DD961B2 
X-CRM114-Status: GOOD (  14.17  )
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
VGhpcyBkZXZpY2V0cmVlIGNvbnRhaW5lZCBvbmx5IHRoZSBTb0MgY29tcGF0aWJsZSBidXQgbGFj
a2VkIHRoZQo+IG1hY2hpbmUgc3BlY2lmaWMgb25lOiBhZGQgYSAibWVkaWF0ZWssbXQ4NTE2LXB1
bXBraW4iIGNvbXBhdGlibGUKPiB0byB0aGUgbGlzdCB0byBmaXggZHRic19jaGVjayB3YXJuaW5n
cy4KPgo+IEZpeGVzOiA5OTgzODIyYzhjZjkgKCJhcm02NDogZHRzOiBtZWRpYXRlazogYWRkIHB1
bXBraW4gYm9hcmQgZHRzIikKPiBTaWduZWQtb2ZmLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBS
ZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQt
Ynk6IEZlaSBTaGFvIDxmc2hhb0BjaHJvbWl1bS5vcmc+Cgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jv
b3QvZHRzL21lZGlhdGVrL210ODUxNi1wdW1wa2luLmR0cyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9tZWRpYXRlay9tdDg1MTYtcHVtcGtpbi5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL21lZGlhdGVrL210ODUxNi1wdW1wa2luLmR0cwo+IGluZGV4IGNjZTY0MmM1MzgxMi4u
M2QzZGIzM2E2NGRjIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsv
bXQ4NTE2LXB1bXBraW4uZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9t
dDg1MTYtcHVtcGtpbi5kdHMKPiBAQCAtMTEsNyArMTEsNyBAQAo+Cj4gIC8gewo+ICAgICAgICAg
bW9kZWwgPSAiUHVtcGtpbiBNVDg1MTYiOwo+IC0gICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRl
ayxtdDg1MTYiOwo+ICsgICAgICAgY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDg1MTYtcHVtcGtp
biIsICJtZWRpYXRlayxtdDg1MTYiOwo+Cj4gICAgICAgICBtZW1vcnlANDAwMDAwMDAgewo+ICAg
ICAgICAgICAgICAgICBkZXZpY2VfdHlwZSA9ICJtZW1vcnkiOwo+IC0tCj4gMi41MC4xCj4KPgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
