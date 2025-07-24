Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF2F5C83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 13:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guTTCL+0090P3zBw0h5p73kzs6Lc/0Jl6SrwhX/Iq20=; b=bWl2W9PxKZeBlX
	3lSJ+DLAHn+grBl0MM4HDiuabYNkAL1k3UsJk8bC4oUoiPPRHBOb7dAYx0eBa6SgsX6uc/dFwZCZv
	tT9WeAw6IFyoxLAVVfgZ+d8Z5HJ7TRyq0U7NQVhOsxgAP/jnlN0ObPQgJG0TK5FsWSA1O8CmrKN3e
	NFEcSnnolddUEh9HkcBrUOaIw81nevyZj7wGmBVy3LYViysWJhDmIEBsfXz7I1nn99jMaosN8pQS5
	NuD6yqgtRdIjM5Mlxy6J4a5EGnH/+kRCtRd8GB4B7X+zej3ttNFJTvAncOmnFWRez6Fpmw3E+Fc2v
	/exPh4PCalqkdoMjrjvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewMX-00000007YMH-0936;
	Thu, 24 Jul 2025 13:51:57 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesZZ-000000076pI-0Lfl
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 09:49:11 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-553b5165cf5so936569e87.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 02:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753350547; x=1753955347; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L9FQ9e+6QrSgFWR/zL+SarceeBtqf3W8b4WkgK0vUaU=;
        b=nUbu2/mK0vAXBCOZRH/Py/PDimtwsSWEaHDlgT7vp5jhxjMq7LYCmjcHTwdLS0Vef5
         F28g+Yffl1k+f6LwuhWH0fRMxFz7bIBygF/KvQ33yFfaMYYejkOgaAmGBjFc0Z20isy2
         Zwdz/TX9RzoEgkJPF/aq/jvshYgZIts8sbcLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753350547; x=1753955347;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L9FQ9e+6QrSgFWR/zL+SarceeBtqf3W8b4WkgK0vUaU=;
        b=xFWvZG5OuC7eut4OAeTlqYBEv8D2opKokj3oTPqcQnIeWvhbKXWO14vx3n+7RsujSR
         tkL7TpBrja/SofrDI9wfveVezONg2szTzmpp2dfziW0QwBpEyJsClbcZEZpmwhi/YvX+
         PG4Nj1vw7yWvOuzo1vKaCTF0UaHDva3yxPsOkIkQZMw1xpPpILyuX7wpBCeEV6ojvPv6
         Z/U55pXX/ZQqU+maFo8nUNZJlwlP7iy61nqHaPC1D7K82lqR17lH3LDmx5r+oKLMFkr2
         wwv5ubTMYJ3/xQ+/vGHNOkwHWw5gCynBkFGAbemMVILpv6YvU3jiMtSmVMD2xWrtIRnY
         gxJA==
X-Forwarded-Encrypted: i=1; AJvYcCXuOkcnZ40YqZAkKFeVueEmGED4GrCrMqgp9SweW9aSl+bTqHjJMpXVg/p3EYUNK8B7bQpDt3pL1Us=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUATCvAXNejb0jx68Ea2P3Xi356kT1uZ7fzVW+DLeAKUUn7yJu
	/7VvvTz1V6IRyHtu6JlQSKgA75QTqZiVGO0GwKhPZ27sT89nABVj7fjl7BgSAxL3LOB25Jy/AWI
	vxZRBeso+aws4U3uKfwvXzp3WvsocUbLRAN2WQoxo
X-Gm-Gg: ASbGncvr5xKHsLH2XAfr5USh1FFAh9iQpeH/DQuf1Encdi2ZmsBY9CSVzPqRB12Taq6
	zQERgFYdi2iCgi1e20BunlHzd0EPa8/K5G0kLfoT7671AkfKBZQAkjHx7xbq8U+1syRUy60yNuN
	mQTq4uapwBYxKu+B4ki/eritbQXyLdcJgRAeR/RSLDfNj4tq/xrkxbq3cKgGlCQYij/DlBe+epu
	sCY+1ZGvsu30pzX5fsRLdk6K5kGRCHXUNM=
X-Google-Smtp-Source: AGHT+IGzfXywNqkl7ab0cE9pUdYYCcgre/IBfX1N5nV04X+BJ3rA6VLZb3GDp2uT00oIYqG6uR1IPA8f6Im9wahsv0o=
X-Received: by 2002:a05:6512:3084:b0:558:f694:a65e with SMTP id
 2adb3069b0e04-55a513b2e09mr1933097e87.34.1753350547115; Thu, 24 Jul 2025
 02:49:07 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-29-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-29-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:48:56 +0800
X-Gm-Features: Ac12FXyvTWPQD4hmzcW0ijsxU85GUvKBlnETlBmcYtQk6_oa7dGsCrwzhdueCNE
Message-ID: <CAGXv+5FvqKNB5Ufx65p5QnueKgEYwNW20tahVPg-kG5N3t+WGQ@mail.gmail.com>
Subject: Re: [PATCH 28/38] arm64: dts: mediatek: mt8173: Fix pinctrl node
 names and cleanup
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
X-CRM114-CacheID: sfid-20250724_024909_148200_00F66BDD 
X-CRM114-Status: GOOD (  18.12  )
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
Rml4IHRoZSBwaW5jdHJsIG5vZGUgbmFtZXMgdG8gYWRoZXJlIHRvIHRoZSBiaW5kaW5ncywgYXMg
dGhlIG1haW4KPiBwaW4gbm9kZSBpcyBzdXBwb3NlZCB0byBiZSBuYW1lZCBsaWtlICJ1YXJ0MC1w
aW5zIiBhbmQgdGhlIHBpbm11eAo+IG5vZGUgbmFtZWQgbGlrZSAicGlucy1idXMiLgo+Cj4gV2hp
bGUgYXQgaXQsIGFsc28gY2xlYW51cCBhbGwgb2YgdGhlIE1US19EUklWRV8oeCltQSBieSBjaGFu
Z2luZwo+IHRoYXQgdG8ganVzdCB0aGUgKHgpIG51bWJlci4KPgo+IFNpZ25lZC1vZmYtYnk6IEFu
Z2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxh
Ym9yYS5jb20+Cj4gLS0tCj4gIC4uLi9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMtZWxtLWhhbmEu
ZHRzaSAgICB8ICAzNCArKy0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE3
My1lbG0uZHRzaSAgfCAxMzggKysrKysrKysrLS0tLS0tLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvbWVkaWF0ZWsvbXQ4MTczLWV2Yi5kdHMgICB8ICA2MCArKysrLS0tLQo+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL21lZGlhdGVrL210ODE3My5kdHNpICAgICAgfCAgMjggKystLQo+ICA0IGZpbGVz
IGNoYW5nZWQsIDEyOCBpbnNlcnRpb25zKCspLCAxMzIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMtZWxtLWhhbmEuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTczLWVsbS1oYW5hLmR0c2kKPiBpbmRl
eCBkZmM1YzJmMGRkZWYuLjEwMDRlYjhlYTUyYyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL21lZGlhdGVrL210ODE3My1lbG0taGFuYS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9tZWRpYXRlay9tdDgxNzMtZWxtLWhhbmEuZHRzaQo+IEBAIC01LDYgKzUsMTQgQEAK
Pgo+ICAjaW5jbHVkZSAibXQ4MTczLWVsbS5kdHNpIgo+Cj4gKyZoZG1pX211eF9waW5zIHsKPiAr
ICAgICAgIHBpbnMtbXV4IHsKPiArICAgICAgICAgICAgICAgcGlubXV4ID0gPE1UODE3M19QSU5f
OThfVVJUUzFfX0ZVTkNfR1BJTzk4PjsKPiArICAgICAgICAgICAgICAgYmlhcy1wdWxsLXVwOwo+
ICsgICAgICAgICAgICAgICBvdXRwdXQtaGlnaDsKPiArICAgICAgIH07Cj4gK307Cj4gKwoKU2hv
dWxkIHByb2JhYmx5IG1lbnRpb24gdGhhdCBhIGR1cGxpY2F0ZSBwYXRoIHJlZmVyZW5jZSB3YXMg
Zml4ZWQuCgo+ICAmaTJjMCB7Cj4gICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MjAwMDAwPjsK
PiAgfTsKPiBAQCAtNjcsMjYgKzc1LDE2IEBAIHRyYWNrcGFkMjogdHJhY2twYWRAMmMgewo+ICAg
ICAgICAgfTsKPiAgfTsKPgo+IC0mbW1jMSB7Cj4gLSAgICAgICB3cC1ncGlvcyA9IDwmcGlvIDQy
IEdQSU9fQUNUSVZFX0hJR0g+Owo+IC19Owo+IC0KPiAtJnBpbyB7Cj4gLSAgICAgICBoZG1pX211
eF9waW5zOiBoZG1pX211eF9waW5zIHsKPiAtICAgICAgICAgICAgICAgcGluczIgewo+IC0gICAg
ICAgICAgICAgICAgICAgICAgIHBpbm11eCA9IDxNVDgxNzNfUElOXzk4X1VSVFMxX19GVU5DX0dQ
SU85OD47Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgYmlhcy1wdWxsLXVwOwo+IC0gICAgICAg
ICAgICAgICAgICAgICAgIG91dHB1dC1oaWdoOwo+IC0gICAgICAgICAgICAgICB9Owo+ICsmbW1j
MV9waW5zX2RlZmF1bHQgewo+ICsgICAgICAgcGlucy13cCB7Cj4gKyAgICAgICAgICAgICAgIHBp
bm11eCA9IDxNVDgxNzNfUElOXzQyX0RTSV9URV9fRlVOQ19HUElPNDI+Owo+ICsgICAgICAgICAg
ICAgICBpbnB1dC1lbmFibGU7Cj4gKyAgICAgICAgICAgICAgIGJpYXMtcHVsbC11cDsKPiAgICAg
ICAgIH07Cj4gK307Cj4KPiAtICAgICAgIG1tYzFfcGluc19kZWZhdWx0OiBtbWMxZGVmYXVsdCB7
Cj4gLSAgICAgICAgICAgICAgIHBpbnNfd3Agewo+IC0gICAgICAgICAgICAgICAgICAgICAgIHBp
bm11eCA9IDxNVDgxNzNfUElOXzQyX0RTSV9URV9fRlVOQ19HUElPNDI+Owo+IC0gICAgICAgICAg
ICAgICAgICAgICAgIGlucHV0LWVuYWJsZTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBiaWFz
LXB1bGwtdXA7Cj4gLSAgICAgICAgICAgICAgIH07Cj4gLSAgICAgICB9Owo+ICsmbW1jMSB7Cj4g
KyAgICAgICB3cC1ncGlvcyA9IDwmcGlvIDQyIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICB9Owo+Cj4g
ICZ0b3VjaHNjcmVlbiB7Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0
ZWsvbXQ4MTczLWVsbS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMt
ZWxtLmR0c2kKPiBpbmRleCAwZDk5NWIzNDJkNDYuLjllYzkzMDA1OGI5MiAxMDA2NDQKPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE3My1lbG0uZHRzaQo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ4MTczLWVsbS5kdHNpCgpbLi4uXQoKPiAtICAg
ICAgIGJ0X3dha2VfcGluczogYnRfd2FrZV9waW5zIHsKPiAtICAgICAgICAgICAgICAgcGluczEg
ewo+ICsgICAgICAgYnRfd2FrZV9waW5zOiBidC1waW5zIHsKCk5pdDogSSB0aGluayB0aGUgb3Jp
Z2luYWwgbmFtZSBpcyBiZXR0ZXIsIGJlY2F1c2UgSUlSQyB0aGlzIGlzCnVzaW5nIHRoZSBSWCBw
aW4gYXMgYSBHUElPIGludGVycnVwdCB0byB3YWtlIHRoZSBzeXN0ZW0gZnJvbSBzdXNwZW5kLgoK
PiArICAgICAgICAgICAgICAgcGlucy13YWtlIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBw
aW5tdXggPSA8TVQ4MTczX1BJTl8xMTlfS1BST1cwX19GVU5DX0dQSU8xMTk+Owo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGJpYXMtcHVsbC11cDsKPiAgICAgICAgICAgICAgICAgfTsKPiAgICAg
ICAgIH07Cj4KClsuLi5dCgo+Cj4gLSAgICAgICAgICAgICAgIHBpbnNfZHMgewo+ICsgICAgICAg
ICAgICAgICBwaW5zLWRzIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBwaW5tdXggPSA8TVQ4
MTczX1BJTl82N19NU0RDMF9EU0xfX0ZVTkNfTVNEQzBfRFNMPjsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICBkcml2ZS1zdHJlbmd0aCA9IDxNVEtfRFJJVkVfMTBtQT47CgpNaXNzZWQgb25lIGhl
cmUuCgo+ICAgICAgICAgICAgICAgICAgICAgICAgIGJpYXMtcHVsbC1kb3duID0gPE1US19QVVBE
X1NFVF9SMVIwXzAxPjsKPiAgICAgICAgICAgICAgICAgfTsKClsuLi5dCgo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE3My1ldmIuZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMtZXZiLmR0cwo+IGluZGV4IDlmZmZlZDBlZjRiZi4u
NTExMThhNDE0OWQ4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsv
bXQ4MTczLWV2Yi5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE3
My1ldmIuZHRzCgpbLi4uXQoKPiBAQCAtMjQ1LDIwICsyNDUsMjkgQEAgcGluc19jbWRfZGF0IHsK
PiAgICAgICAgICAgICAgICAgICAgICAgICBiaWFzLXB1bGwtdXAgPSA8TVRLX1BVUERfU0VUX1Ix
UjBfMDE+Owo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gLSAgICAgICAgICAgICAgIHBpbnNfY2xr
IHsKPiArICAgICAgICAgICAgICAgcGlucy1jbGsgewo+ICAgICAgICAgICAgICAgICAgICAgICAg
IHBpbm11eCA9IDxNVDgxNzNfUElOXzY1X01TREMwX0NMS19fRlVOQ19NU0RDMF9DTEs+Owo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIGRyaXZlLXN0cmVuZ3RoID0gPDI+Owo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGJpYXMtcHVsbC1kb3duID0gPE1US19QVVBEX1NFVF9SMVIwXzAxPjsKPiAg
ICAgICAgICAgICAgICAgfTsKPgo+IC0gICAgICAgICAgICAgICBwaW5zX3JzdCB7Cj4gKyAgICAg
ICAgICAgICAgIHBpbnMtcnN0IHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBwaW5tdXggPSA8
TVQ4MTczX1BJTl82OF9NU0RDMF9SU1RfX19GVU5DX01TREMwX1JTVEI+Owo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGJpYXMtcHVsbC11cDsKPiAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAg
IH07Cj4KPiAtICAgICAgIG1tYzFfcGluc191aHM6IG1tYzEgewo+IC0gICAgICAgICAgICAgICBw
aW5zX2NtZF9kYXQgewo+ICsgICAgICAgc3BpX3BpbnNfYTogc3BpMC1waW5zIHsKPiArICAgICAg
ICAgICAgICAgcGlucy1idXMgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHBpbm11eCA9IDxN
VDgxNzNfUElOXzY5X1NQSV9DS19fRlVOQ19TUElfQ0tfMF8+LAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPE1UODE3M19QSU5fNzBfU1BJX01JX19GVU5DX1NQSV9NSV8wXz4sCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8TVQ4MTczX1BJTl83MV9TUElfTU9fX0ZV
TkNfU1BJX01PXzBfPiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxNVDgxNzNf
UElOXzcyX1NQSV9DU19fRlVOQ19TUElfQ1NfMF8+Owo+ICsgICAgICAgICAgICAgICB9Owo+ICsg
ICAgICAgfTsKPiArCj4gKyAgICAgICBtbWMxX3BpbnNfdWhzOiBtbWMxLXVocy1waW5zIHsKCldy
b25nIG9yZGVyPwoKPiArICAgICAgICAgICAgICAgcGlucy1jbWQtZGF0IHsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBwaW5tdXggPSA8TVQ4MTczX1BJTl83M19NU0RDMV9EQVQwX19GVU5DX01T
REMxX0RBVDA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxNVDgxNzNfUElO
Xzc0X01TREMxX0RBVDFfX0ZVTkNfTVNEQzFfREFUMT4sCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgPE1UODE3M19QSU5fNzVfTVNEQzFfREFUMl9fRlVOQ19NU0RDMV9EQVQyPiwK
ClsuLi5dCgpPbmNlIGZpeGVkLAoKUmV2aWV3ZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc3RAY2hy
b21pdW0ub3JnPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
