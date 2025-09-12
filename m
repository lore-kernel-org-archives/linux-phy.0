Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2AFCA101F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Sep 2025 14:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtAXmdcA0uq+JX8vdI2ABlQ4cmhQOGdf2NvK4qCO0E8=; b=0ZLzuEiHEtNtYX
	MlrGEjkGgyiNb/eGc3WF2OZX58RCGy1zmWy/DNNKA9aarCe+oYppaQGliz+lhhWM7dPJjLW7SXlJp
	ZOmQJxgnIiwDpqVV8wNQkV3g1SDS8WAUkaOv92+xUufIM8FsxJBxyISdnY0Ri59W95RvF3BoLvGpE
	W5JAoW5omSs9UBMFjuv9ADv4ZIzfyF03+clp8d4+LYotpieohgfi6AJpem6mps66ugWq2kcItJ/Is
	3a5sk2XniHHKXviV6jDPj7Tvbx4+Iu2VzCtPn8ZpiWcnMMdxwd037VwuFT28/kbFUgY4mF3PN52pJ
	Hh37PAraUcnSG3PepAWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4Mx-00000009isX-3xSa;
	Fri, 12 Sep 2025 14:03:19 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux4Mv-00000009iqI-0cL4
	for linux-phy@lists.infradead.org;
	Fri, 12 Sep 2025 14:03:18 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3dae49b117bso1562183f8f.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Sep 2025 07:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757685795; x=1758290595; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=uH+YHXFVH2K1mzrQAHIZiTdd0wND2UdYXw5OhP6ad/I=;
        b=DpsBnyxGRjv31XcEyGMu1qCnndPgDokwV3Tz1x3PIuJ0NIOqabuR7Tr55BuvTmOCzY
         jAFvnvOPkFO2dzQ5CitdB352jnYUrbpgTPGM+SrVwTIjAPXx1DNpmFnIzP4zPQAXSeFm
         hWGnQEabg3A7bIvv5OSOwcuLSeWRf9uYE5xZvDE8ydiI2QFtAuIxE1whSE+ZneYZJeKx
         4HF01T5iTGBlDLhMUp62YSYb6VvzHqXCyEVMgSRqwBAO89rNZwYWGukKtocHTu9hjHqc
         RJziI2jM8u2jnJH83865LULOekZapjRyYJ5jaQ4Yo2IPc558U+SHmAd4L21CzjrC2ttU
         HFfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757685795; x=1758290595;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uH+YHXFVH2K1mzrQAHIZiTdd0wND2UdYXw5OhP6ad/I=;
        b=bnn7acESxQGrCD4otG6GF/dWkr4SpSeYRpmwttFgQ/2s8vApLOv2dkcWUH/QpvQlNs
         Z08zo4+1Xag+67GPaY6twisAbXqv7LV24xPKy5KHWKJJ54KxSzqtA298VkO4r0q01uLZ
         Y/mvekQ+nyLY307SghjKsd3XRyO3u6u5Z7HdXRTYrAqe4/uXfCZui732cMYAt6XfOlnD
         HEtBNCy8RErirftFo+tAaeASetHyeK/R3+A9hGlJHeMPYrKWBvtz0hEfhii9N3BuUPpd
         ZuIgyz7eHfz76P3oxm3xz+tCTac9Zxd/YAb9vZb/z15OAFGhVRMhB4+NC61mFupUhPQ5
         peDg==
X-Forwarded-Encrypted: i=1; AJvYcCXUWvSJQtqPT4U0VRoV4PjjCn2KgItoc9UrZvSIHFk10oNAi8kzpxDA6ObcwMfMiQIwZK3X/bqT+3g=@lists.infradead.org
X-Gm-Message-State: AOJu0YxMKz7GfAYvA3ZkSQB4FUNEsSEOiVqkW+5syU0jC42N3iWKaA9f
	DKP4yReiuLCXOtPEUiP7S6XfHZa2lsY2PJHEIZlhVkoA5KJv7+5RpMxE
X-Gm-Gg: ASbGncsQikfO8J+Vy/hZM9SbBdeyfethFffU0XFRkBef73eEE/9POcuLnUuLWVqhIWG
	YmU4+t3Ac3o3S/T5+CX1U7i4+hWtouSi+2cHagctXYfodjdTJvEeIN2bIWiDE7u5t+ZJLOIXRz2
	97WH2LK6zGc9bFZeNDtvuWWXRalvHooRSLqT4eV6hbN5oDgQQOwpF5H0/FGoTqAAGVeCgpNcePC
	RK+kGhaDX5ObWHjRD09/rH4Ik9xf5smqvxRO20C1wNt07tPWv951yJtp4rhLLYNb4EXq2afkmuE
	zTd0GfnbCdX/8CMO9Jz4GAcXOlCfDb/Ww6COhY0RR5M8pCVzFmbXNXKESAcpm7RvyBSQixH+Go0
	F8lovF7axlNMYT7RGkOVOHpxbqNBGHvHbivzFa+d70WX03ljyyZDt
X-Google-Smtp-Source: AGHT+IHkpXgL67su2eP0NWVxDv0gnk9lbCDXLQlAVKtF0IvH2Kl70osZH/zbwKbUjcuxvdmzPdw9Pw==
X-Received: by 2002:a05:6000:61e:b0:3e7:4414:794b with SMTP id ffacd0b85a97d-3e765a018a5mr2537897f8f.50.1757685794754;
        Fri, 12 Sep 2025 07:03:14 -0700 (PDT)
Received: from [192.168.2.177] ([91.116.220.47])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e774a3fb5bsm2033837f8f.58.2025.09.12.07.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 07:03:13 -0700 (PDT)
Message-ID: <7765f224-60b2-4c92-a597-58c1c6bc5580@gmail.com>
Date: Fri, 12 Sep 2025 16:03:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/38] arm64: dts: mediatek: mt6795: Add mediatek,infracfg
 to iommu node
To: Fei Shao <fshao@chromium.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org,
 daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org,
 linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 olivia.wen@mediatek.com, shane.chien@mediatek.com,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 airlied@gmail.com, simona@ffwll.ch, herbert@gondor.apana.org.au,
 jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, andy.teng@mediatek.com,
 chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, chunkuang.hu@kernel.org,
 conor+dt@kernel.org, jitao.shi@mediatek.com, p.zabel@pengutronix.de,
 arnd@arndb.de, kishon@kernel.org, kyrie.wu@mediatek.corp-partner.google.com,
 maarten.lankhorst@linux.intel.com, tinghan.shen@mediatek.com,
 mripard@kernel.org, ck.hu@mediatek.com, broonie@kernel.org,
 eugen.hristev@linaro.org, houlong.wei@mediatek.com, tglx@linutronix.de,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 granquet@baylibre.com, sam.shih@mediatek.com, mathieu.poirier@linaro.org,
 fparent@baylibre.com, andersson@kernel.org, sean.wang@kernel.org,
 linux-sound@vger.kernel.org, lgirdwood@gmail.com, vkoul@kernel.org,
 linux-crypto@vger.kernel.org, tzimmermann@suse.de, atenart@kernel.org,
 krzk+dt@kernel.org, linux-media@vger.kernel.org, davem@davemloft.net
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-20-angelogioacchino.delregno@collabora.com>
 <CAC=S1nguRWyG3ubmSFE95_zgsCjjq4dxGWr5ErV9-Yu2+mTmpw@mail.gmail.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <CAC=S1nguRWyG3ubmSFE95_zgsCjjq4dxGWr5ErV9-Yu2+mTmpw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_070317_215104_8994C47F 
X-CRM114-Status: GOOD (  10.14  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiAyNS8wNy8yMDI1IDEyOjUyLCBGZWkgU2hhbyB3cm90ZToKPiBPbiBUaHUsIEp1bCAyNCwg
MjAyNSBhdCA1OjQ54oCvUE0gQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8KPiA8YW5nZWxvZ2lv
YWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4KPj4gVGhlICJNNFUiIElP
TU1VIHJlcXVpcmVzIGEgaGFuZGxlIHRvIHRoZSBpbmZyYWNmZyB0byBzd2l0Y2ggdG8KPj4gdGhl
IDRnYi9wYWUgYWRkcmVzc2luZyBtb2RlOiBhZGQgaXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFu
Z2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxh
Ym9yYS5jb20+Cj4gCj4gUmV2aWV3ZWQtYnk6IEZlaSBTaGFvIDxmc2hhb0BjaHJvbWl1bS5vcmc+
CgpBcHBsaWVkIHRoYW5rcwoKPiAKPj4gLS0tCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9tZWRp
YXRlay9tdDY3OTUuZHRzaSB8IDEgKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDY3OTUu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ2Nzk1LmR0c2kKPj4gaW5kZXgg
ZTVlMjY5YTY2MGIxLi4zOGY2NWFhZDI4MDIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvbWVkaWF0ZWsvbXQ2Nzk1LmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9t
ZWRpYXRlay9tdDY3OTUuZHRzaQo+PiBAQCAtNDI3LDYgKzQyNyw3IEBAIGlvbW11OiBpb21tdUAx
MDIwNTAwMCB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmluZnJhY2Zn
IENMS19JTkZSQV9NNFU+Owo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMg
PSAiYmNsayI7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19T
UEkgMTQ2IElSUV9UWVBFX0xFVkVMX0xPVz47Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIG1l
ZGlhdGVrLGluZnJhY2ZnID0gPCZpbmZyYWNmZz47Cj4+ICAgICAgICAgICAgICAgICAgICAgICAg
ICBtZWRpYXRlayxsYXJicyA9IDwmbGFyYjAgJmxhcmIxICZsYXJiMiAmbGFyYjM+Owo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmc3BtIE1UNjc5NV9QT1dFUl9E
T01BSU5fTU0+Owo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgI2lvbW11LWNlbGxzID0gPDE+
Owo+PiAtLQo+PiAyLjUwLjEKPj4KPj4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
