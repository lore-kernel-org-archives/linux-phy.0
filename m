Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50244C87FCE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEjGVoUVNaNcbCOwmbhEGu1wVCv3904YDVRjdSWhZ5g=; b=hHNChfPxTrpTCy
	2FrTFYFQdysZy6akwPnULm3wtp2UFTx9qM5rjeT1qByr/aAqRkWa96On9sGeTw/+NYrx99/TZPVwJ
	Gu8dMbS2DHYKF8z1KRi8KHE9AOtNs9vv5WyuCnjnQD4Q5+zJF9Cr8y7G4tNEWMg5d6Rq/i8dQYP8Q
	gGUHNqc5EzzAo0YRorswdQRIZ78PsUF8I4KzqXCikZp6ANFq9ylwqPzR9xkbPR2gNVFR13zeJ2U69
	4ToHkoVvWLxACtUV7qfgQeT+YU1ROnHFIq2ZtXn1vsscIXFSiy9+KWyPh8KYEYPv9ZJBdhOBmNBAY
	zsZlQtYbC578sngXaK1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufHNU-00000009nme-08dG;
	Fri, 25 Jul 2025 12:18:20 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufH4x-00000009ldH-08cF
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:59:12 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-4ab3d08dd53so18795001cf.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753444750; x=1754049550; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IaRYlYWMnL5FdToAvFBY21N9TEhebXI6JAmJStjizl0=;
        b=kQXEPXTF2WV9ds8aMQ29nC76tnllbYgCk1Kon6EgfsOmTkVecH8udd1gY5w9sQ9aQ8
         IxtU4Rrp+zEGnGOdH/bKp1V6s4oVyfgJZLT+X8l2u8qVY/zR888ZlYKbWR+AhaVE5tsO
         U+cnnyukKjYn8OMIfoV9FozfNdxtUs3c53XBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753444750; x=1754049550;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IaRYlYWMnL5FdToAvFBY21N9TEhebXI6JAmJStjizl0=;
        b=C/KsncxIR8dRkVkhM50U04Rxkf4pJYJzLgRJebbDUc6eus+YKV7s74LnTnElsnXqZi
         YllYBJ5RcAt858l+sKaLzzGqlxN/s/ycw8hlGptFFh7GWGS7E9LaO3ACqLy9RWEB7Eeu
         gvcZN+8eU4qD73ReduJyJcoR5iGncS8KV/Xm+pkBHJL4iij0f2nTJWqpLlHycIMyo7wg
         epLR6G1/ERJWTTSeyMASI3s/GNuETssqdesqhV7K8WWM8wUCB2oiMZHDvpecgKSNyDkN
         qYoqqZJMSOIw7XXOIWeMFx3bQzpvIXoYOlzHrnQ4K855t7h/vLYeASho6kaNjATbOYOW
         p9XA==
X-Forwarded-Encrypted: i=1; AJvYcCXYBlnlFGkpJhHuoprbFQN1O8dHWJKz20mD0zRy0L8/7KYAZkBgcsNBAwBx/HMJs4DusbtJBJEdxW8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyrUhlOI6qdFKi5uN0HvM3EKEwIj8+DkT2xnkvje27osJnhfQEk
	HsfrGbI3hJ4uMfG7+XTkMRIm6ZSZQvyB6QePQvtiewELWQY1eEjmZZR1A9fofTwZ3mw6R2flR6W
	MD5g=
X-Gm-Gg: ASbGnctU5ieo983FXStf/HmvrmziSfnvAyf15sMAPJDClLIy+k6r0jR7UuCgWUZTNXv
	u9otIxHOU5gJG/aIKAa0u4sC3duhuNrFEr0a1WVnc6YnsUyL842ZqTs2jnjEmwcIOqDbGF3swS0
	AnPNjzoLcoq+m+1MszB9wPJ2hW/4vBqg6VoLwiAmQMKDbwnQ+239Pq4EXVZ5l7dWenqSQSCfhwX
	xIUqinJGwndIrAuwqAJta+Agn7SJaOYYVgjyNOLRusOzoIsF2jEpGzxWjhhc0wVTMM6mtQQAdHv
	IK7K6ORzIofaaOXn1PD1HWW/lK+hHQDXrZQGlH8x3Se+ycQ0SPRd9i24J6/ieMPRIT7/qARb9aj
	6PEAdCnmvqyKS1XbdHEycGWpDhwaf7ywg6gwUbhxR3X4SbKoCnYahK8WKyo1cJA==
X-Google-Smtp-Source: AGHT+IHu58mZJVKii2U6/N88syBFo5r/lgcjGT1MO5k5u+RYSjU/c6dsiLW5GdiUEBAf8Z+7bGI4bQ==
X-Received: by 2002:a05:6214:da8:b0:702:b1a5:dbba with SMTP id 6a1803df08f44-7072053c3c0mr21060496d6.14.1753444748564;
        Fri, 25 Jul 2025 04:59:08 -0700 (PDT)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com. [209.85.222.174])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7070faec0aesm25135966d6.8.2025.07.25.04.59.08
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:59:08 -0700 (PDT)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-7e62a1cbf83so193318885a.1
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:59:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVk+7slPxdabJiiY8tf7HZ0rArCvyQE/dzR25ll/HNyMoqOucyZmr4SFwqhOZO9A3fCh4uqUyefeIE=@lists.infradead.org
X-Received: by 2002:a05:6102:cce:b0:4e6:4e64:baeb with SMTP id
 ada2fe7eead31-4fa3ff55fbamr323634137.17.1753441040390; Fri, 25 Jul 2025
 03:57:20 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-18-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-18-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:56:44 +0800
X-Gmail-Original-Message-ID: <CAC=S1nh5bF6kZe7TFA_EGPGt8Xp_rfuc-rkeXgjRCU=QEtZQiw@mail.gmail.com>
X-Gm-Features: Ac12FXw-hSTS0fHSbHXeHNK-nhzfyTLOXfpWf3gYQQXz8LA0IhEjugCIp682sPw
Message-ID: <CAC=S1nh5bF6kZe7TFA_EGPGt8Xp_rfuc-rkeXgjRCU=QEtZQiw@mail.gmail.com>
Subject: Re: [PATCH 17/38] arm64: dts: mediatek: mt6797: Fix pinctrl node names
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
X-CRM114-CacheID: sfid-20250725_045911_068691_35D83C43 
X-CRM114-Status: GOOD (  11.76  )
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
Q2hhbmdlIHRoZSBwaW5jdHJsIG5vZGUgbmFtZXMgdG8gYWRoZXJlIHRvIHRoZSBiaW5kaW5nOiB0
aGUgbWFpbgo+IG5vZGVzIGFyZSBub3cgbmFtZWQgbGlrZSAidWFydDAtcGlucyIgYW5kIHRoZSBj
aGlsZHJlbiAicGlucy1idXMiLgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBE
ZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KClJldmll
d2VkLWJ5OiBGZWkgU2hhbyA8ZnNoYW9AY2hyb21pdW0ub3JnPgoKPiAtLS0KPiAgYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTcuZHRzaSB8IDQwICsrKysrKysrKysrKy0tLS0tLS0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTcuZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk3LmR0c2kKPiBpbmRleCAwZTlk
MTFiNDU4NWIuLmJlNDAxNjE3ZGZkOCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L21lZGlhdGVrL210Njc5Ny5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRl
ay9tdDY3OTcuZHRzaQo+IEBAIC0xMzUsNzEgKzEzNSw3MSBAQCBwaW86IHBpbmN0cmxAMTAwMDUw
MDAgewo+ICAgICAgICAgICAgICAgICBncGlvLWNvbnRyb2xsZXI7Cj4gICAgICAgICAgICAgICAg
ICNncGlvLWNlbGxzID0gPDI+Owo+Cj4gLSAgICAgICAgICAgICAgIHVhcnQwX3BpbnNfYTogdWFy
dDAgewo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBpbnMwIHsKPiArICAgICAgICAgICAgICAg
dWFydDBfcGluc19hOiB1YXJ0MC1waW5zIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBwaW5z
LWJ1cyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5tdXggPSA8TVQ2Nzk3
X0dQSU8yMzRfX0ZVTkNfVVRYRDA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgPE1UNjc5N19HUElPMjM1X19GVU5DX1VSWEQwPjsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICB9Owo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAgIHVhcnQx
X3BpbnNfYTogdWFydDEgewo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBpbnMxIHsKPiArICAg
ICAgICAgICAgICAgdWFydDFfcGluc19hOiB1YXJ0MS1waW5zIHsKPiArICAgICAgICAgICAgICAg
ICAgICAgICBwaW5zLWJ1cyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5t
dXggPSA8TVQ2Nzk3X0dQSU8yMzJfX0ZVTkNfVVJYRDE+LAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgPE1UNjc5N19HUElPMjMzX19GVU5DX1VUWEQxPjsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAg
ICAgICAgIGkyYzBfcGluc19hOiBpMmMwIHsKPiAtICAgICAgICAgICAgICAgICAgICAgICBwaW5z
MCB7Cj4gKyAgICAgICAgICAgICAgIGkyYzBfcGluc19hOiBpMmMwLXBpbnMgewo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHBpbnMtYnVzIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHBpbm11eCA9IDxNVDY3OTdfR1BJTzM3X19GVU5DX1NDTDBfMD4sCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8TVQ2Nzk3X0dQSU8zOF9fRlVOQ19TREEwXzA+
Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gICAgICAgICAgICAgICAgIH07Cj4KPiAt
ICAgICAgICAgICAgICAgaTJjMV9waW5zX2E6IGkyYzEgewo+IC0gICAgICAgICAgICAgICAgICAg
ICAgIHBpbnMxIHsKPiArICAgICAgICAgICAgICAgaTJjMV9waW5zX2E6IGkyYzEtcGlucyB7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgcGlucy1idXMgewo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcGlubXV4ID0gPE1UNjc5N19HUElPNTVfX0ZVTkNfU0NMMV8wPiwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxNVDY3OTdfR1BJTzU2X19GVU5D
X1NEQTFfMD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICAgICAgICAg
fTsKPgo+IC0gICAgICAgICAgICAgICBpMmMyX3BpbnNfYTogaTJjMiB7Cj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgcGluczIgewo+ICsgICAgICAgICAgICAgICBpMmMyX3BpbnNfYTogaTJjMi1w
aW5zIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBwaW5zLWJ1cyB7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBwaW5tdXggPSA8TVQ2Nzk3X0dQSU85Nl9fRlVOQ19TQ0wyXzA+
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPE1UNjc5N19HUElP
OTVfX0ZVTkNfU0RBMl8wPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAg
ICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAgIGkyYzNfcGluc19hOiBpMmMzIHsKPiAtICAg
ICAgICAgICAgICAgICAgICAgICBwaW5zMyB7Cj4gKyAgICAgICAgICAgICAgIGkyYzNfcGluc19h
OiBpMmMzLXBpbnMgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbnMtYnVzIHsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbm11eCA9IDxNVDY3OTdfR1BJTzc1X19GVU5D
X1NEQTNfMD4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8TVQ2
Nzk3X0dQSU83NF9fRlVOQ19TQ0wzXzA+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4g
ICAgICAgICAgICAgICAgIH07Cj4KPiAtICAgICAgICAgICAgICAgaTJjNF9waW5zX2E6IGkyYzQg
ewo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBpbnM0IHsKPiArICAgICAgICAgICAgICAgaTJj
NF9waW5zX2E6IGkyYzQtcGlucyB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcGlucy1idXMg
ewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGlubXV4ID0gPE1UNjc5N19HUElP
MjM4X19GVU5DX1NEQTRfMD4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA8TVQ2Nzk3X0dQSU8yMzlfX0ZVTkNfU0NMNF8wPjsKPiAgICAgICAgICAgICAgICAgICAg
ICAgICB9Owo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAgIGkyYzVfcGlu
c19hOiBpMmM1IHsKPiAtICAgICAgICAgICAgICAgICAgICAgICBwaW5zNSB7Cj4gKyAgICAgICAg
ICAgICAgIGkyYzVfcGluc19hOiBpMmM1LXBpbnMgewo+ICsgICAgICAgICAgICAgICAgICAgICAg
IHBpbnMtYnVzIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBpbm11eCA9IDxN
VDY3OTdfR1BJTzI0MF9fRlVOQ19TREE1XzA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPE1UNjc5N19HUElPMjQxX19GVU5DX1NDTDVfMD47Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICAgICAgICAgfTsKPgo+IC0gICAgICAgICAgICAg
ICBpMmM2X3BpbnNfYTogaTJjNiB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcGluczYgewo+
ICsgICAgICAgICAgICAgICBpMmM2X3BpbnNfYTogaTJjNi1waW5zIHsKPiArICAgICAgICAgICAg
ICAgICAgICAgICBwaW5zLWJ1cyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBw
aW5tdXggPSA8TVQ2Nzk3X0dQSU8xNTJfX0ZVTkNfU0RBNl8wPiwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDxNVDY3OTdfR1BJTzE1MV9fRlVOQ19TQ0w2XzA+Owo+
ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gICAgICAgICAgICAgICAgIH07Cj4KPiAtICAg
ICAgICAgICAgICAgaTJjN19waW5zX2E6IGkyYzcgewo+IC0gICAgICAgICAgICAgICAgICAgICAg
IHBpbnM3IHsKPiArICAgICAgICAgICAgICAgaTJjN19waW5zX2E6IGkyYzctcGlucyB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgcGlucy1idXMgewo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcGlubXV4ID0gPE1UNjc5N19HUElPMTU0X19GVU5DX1NEQTdfMD4sCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8TVQ2Nzk3X0dQSU8xNTNfX0ZVTkNf
U0NMN18wPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+IC0tCj4gMi41MC4xCj4KPgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
