Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1808EC77B75
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 08:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WmV7QExGDcFXO4b5ltA5Iw9F1DbJkBV1fZp/zGvKqk=; b=mD3GD0t8LXiY0E
	+V8udm/Fhrj9f0ggRBzotqD2MmxxXvESIihMViVvn0Tt1I8YKjy5XuqpeDuUkj8vZ4z/zcswVeq8E
	KZhY9i0eLqiJL4rHl3/BP2dfqztWBN0IeObMoNxQhdX9MyN9+o6TB2SsgScsKZGzo4dF8l2Bpafu4
	iqiUQhw/jkjJviue5BnjMT5Hlpq2gRR0qkkEu/AyuGRvhbJySdvT4GC++RakFKwdyaukzSkMADdSu
	1ZL8qK5DXWq3r7N121cbUohB4V1EEYSlAbqpHTgsi53gE51jvpABS62SAHue0eCn0emSX1QNEqEas
	6KLS1wjj2TKH5OuSnwew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvwh0-0001yy-2L;
	Mon, 08 May 2023 08:58:02 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvwgx-0001wg-2P;
	Mon, 08 May 2023 08:58:01 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-3f19afc4fd8so26510455e9.2;
        Mon, 08 May 2023 01:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683536277; x=1686128277;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KzHUT4dMhUomj9pYklJ/WypYxlz27FOOjWTbVoGXtz0=;
        b=fej1Xepp9nHCOCYnfpfdA05bfp/+104VWtVbbSMcv2+ouIaA9GRx3O72HvkWURJv3g
         xlThRar7lBA2+15Ij1TwfCkz0Jpcw6TJsm3QqkBYhBqQ+jMwo6r9A2SWN7zqbDD9/GQj
         nJz3PNGoDHbSyF0mbnbsQtUvNaL1Qyok0R/13VRt1U2EHfeP9B+AsY59mv28udMT611D
         L59OZOkuwZWolFuLXI1aIjzq6vwzWuDCMGVAe1ca6f28rwZ86/+p0sTIGHroVATk0nQy
         NhNgrjLLmbyVmRHQc/7vF8glvnpSvl4BXUlnEq2a9auUs7d362eQqj1qsaV24ppCDiqe
         GWTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683536277; x=1686128277;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KzHUT4dMhUomj9pYklJ/WypYxlz27FOOjWTbVoGXtz0=;
        b=DpsHTZBqTDzvQIQvQ1k2BiOY5q06eshOR+xXwvmf5mLsgh6fxlh7tow9/t9mziBhT3
         ir1QRJynPGx2VDmLdnyRiDuANbI1+ry+AccMvvBnJJZpLRrwVtpUwGw6cnTmh5zUe3Rv
         2g5qp2O3uClNDXVgLhp1HuoPxK2XYw5IlKeILDHtYYm+IthCvrykaB1rBr/DnW4qdlpa
         2UZwrxEivTHCsSEzusJYOKvnLLfW8UJficL6icrLodBZyxdjt+mC9BNmvSZg+7GyH0Wh
         2yIxQJEu7PM8Jw+1HYCy/00GwQLaRK2jTwe5AIUJl3UIAZy7NCbTIfQdoDPvGmMd3PIc
         GO/Q==
X-Gm-Message-State: AC+VfDxg1j822v6MVj3D6qSFmnhap2YWezbMAh4IbNb/QupfyguQpM3V
	v9+ZtYW/NTL14i362zENcOM=
X-Google-Smtp-Source: ACHHUZ7Yy2EGyep+kRBOOMf4Z5d4p6mnHevZ3uzj+i4tMljsaPea7VybNsMEu+P5XamexGlD/yma4w==
X-Received: by 2002:a7b:cd15:0:b0:3f1:94fe:65e2 with SMTP id f21-20020a7bcd15000000b003f194fe65e2mr6555964wmj.33.1683536277594;
        Mon, 08 May 2023 01:57:57 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id c3-20020a7bc843000000b003f42314832fsm4186303wml.18.2023.05.08.01.57.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 01:57:56 -0700 (PDT)
Message-ID: <0cdd2d49-a2a0-4968-a978-3c3caa5741f8@gmail.com>
Date: Mon, 8 May 2023 10:57:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US, ca-ES, es-ES
To: Tom Rix <trix@redhat.com>, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, angelogioacchino.delregno@collabora.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230502145005.2927101-1-trix@redhat.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH v2] phy: mediatek: rework the floating point comparisons
 to fixed point
In-Reply-To: <20230502145005.2927101-1-trix@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_015759_781680_BD6143C7 
X-CRM114-Status: GOOD (  16.19  )
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

CgpPbiAwMi8wNS8yMDIzIDE2OjUwLCBUb20gUml4IHdyb3RlOgo+IGdjYyBvbiBhYXJjaDY0IHJl
cG9ydHMKPiBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmM6IEluIGZ1
bmN0aW9uIOKAmG10a19oZG1pX3BsbF9zZXRfcmF0ZeKAmToKPiBkcml2ZXJzL3BoeS9tZWRpYXRl
ay9waHktbXRrLWhkbWktbXQ4MTk1LmM6MjQwOjUyOiBlcnJvcjog4oCYLW1nZW5lcmFsLXJlZ3Mt
b25seeKAmQo+ICAgIGlzIGluY29tcGF0aWJsZSB3aXRoIHRoZSB1c2Ugb2YgZmxvYXRpbmctcG9p
bnQgdHlwZXMKPiAgICAyNDAgfCAgICAgICAgIGVsc2UgaWYgKHRtZHNfY2xrID49IDU0ICogTUVH
QSAmJiB0bWRzX2NsayA8IDE0OC4zNSAqIE1FR0EpCj4gCj4gRmxvYXRpbmcgcG9pbnQgc2hvdWxk
IG5vdCBiZSB1c2VkLCBzbyByZXdvcmsgdGhlIGZsb2F0aW5nIHBvaW50IGNvbXBhcmlzb25zCj4g
dG8gZml4ZWQgcG9pbnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogVG9tIFJpeCA8dHJpeEByZWRoYXQu
Y29tPgoKSSB0aGluayB0aGlzIGlzIHdvcnRoIGEgZml4ZXMgdGFnLgoKUmVnYXJkcywKTWF0dGhp
YXMKCj4gLS0tCj4gdjI6IHNpbGVuY2Ugcm9ib3QgYnkgY2FzdGluZyB0eXBlcyB0byB1NjQKPiAK
PiAtLS0KPiBkcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmMgfCAxMCAr
KysrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWkt
bXQ4MTk1LmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmMKPiBp
bmRleCBhYmZjMDc3ZmIwYTguLjA5M2M0ZDFkYTU1NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Bo
eS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmMKPiArKysgYi9kcml2ZXJzL3BoeS9tZWRp
YXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmMKPiBAQCAtMjM3LDExICsyMzcsMTEgQEAgc3RhdGlj
IGludCBtdGtfaGRtaV9wbGxfY2FsYyhzdHJ1Y3QgbXRrX2hkbWlfcGh5ICpoZG1pX3BoeSwgc3Ry
dWN0IGNsa19odyAqaHcsCj4gICAJICovCj4gICAJaWYgKHRtZHNfY2xrIDwgNTQgKiBNRUdBKQo+
ICAgCQl0eHBvc2RpdiA9IDg7Cj4gLQllbHNlIGlmICh0bWRzX2NsayA+PSA1NCAqIE1FR0EgJiYg
dG1kc19jbGsgPCAxNDguMzUgKiBNRUdBKQo+ICsJZWxzZSBpZiAodG1kc19jbGsgPj0gNTQgKiBN
RUdBICYmICh0bWRzX2NsayAqIDEwMCkgPCAxNDgzNSAqIE1FR0EpCj4gICAJCXR4cG9zZGl2ID0g
NDsKPiAtCWVsc2UgaWYgKHRtZHNfY2xrID49IDE0OC4zNSAqIE1FR0EgJiYgdG1kc19jbGsgPCAy
OTYuNyAqIE1FR0EpCj4gKwllbHNlIGlmICgodG1kc19jbGsgKiAxMDApID49IDE0ODM1ICogTUVH
QSAmJiAodG1kc19jbGsgKiAxMCkgPCAyOTY3ICogTUVHQSkKPiAgIAkJdHhwb3NkaXYgPSAyOwo+
IC0JZWxzZSBpZiAodG1kc19jbGsgPj0gMjk2LjcgKiBNRUdBICYmIHRtZHNfY2xrIDw9IDU5NCAq
IE1FR0EpCj4gKwllbHNlIGlmICgodG1kc19jbGsgKiAxMCkgPj0gMjk2NyAqIE1FR0EgJiYgdG1k
c19jbGsgPD0gNTk0ICogTUVHQSkKPiAgIAkJdHhwb3NkaXYgPSAxOwo+ICAgCWVsc2UKPiAgIAkJ
cmV0dXJuIC1FSU5WQUw7Cj4gQEAgLTMyOCwxMiArMzI4LDEyIEBAIHN0YXRpYyBpbnQgbXRrX2hk
bWlfcGxsX2Rydl9zZXR0aW5nKHN0cnVjdCBjbGtfaHcgKmh3KQo+ICAgCQljbGtfY2hhbm5lbF9i
aWFzID0gMHgzNDsgLyogMjBtQSAqLwo+ICAgCQlpbXBlZGFuY2VfZW4gPSAweGY7Cj4gICAJCWlt
cGVkYW5jZSA9IDB4MzY7IC8qIDEwMG9obSAqLwo+IC0JfSBlbHNlIGlmIChwaXhlbF9jbGsgPj0g
NzQuMTc1ICogTUVHQSAmJiBwaXhlbF9jbGsgPD0gMzAwICogTUVHQSkgewo+ICsJfSBlbHNlIGlm
ICgoKHU2NClwaXhlbF9jbGsgKiAxMDAwKSA+PSA3NDE3NSAqIE1FR0EgJiYgcGl4ZWxfY2xrIDw9
IDMwMCAqIE1FR0EpIHsKPiAgIAkJZGF0YV9jaGFubmVsX2JpYXMgPSAweDM0OyAvKiAyMG1BICov
Cj4gICAJCWNsa19jaGFubmVsX2JpYXMgPSAweDJjOyAvKiAxNm1BICovCj4gICAJCWltcGVkYW5j
ZV9lbiA9IDB4ZjsKPiAgIAkJaW1wZWRhbmNlID0gMHgzNjsgLyogMTAwb2htICovCj4gLQl9IGVs
c2UgaWYgKHBpeGVsX2NsayA+PSAyNyAqIE1FR0EgJiYgcGl4ZWxfY2xrIDwgNzQuMTc1ICogTUVH
QSkgewo+ICsJfSBlbHNlIGlmIChwaXhlbF9jbGsgPj0gMjcgKiBNRUdBICYmICgodTY0KXBpeGVs
X2NsayAqIDEwMDApIDwgNzQxNzUgKiBNRUdBKSB7Cj4gICAJCWRhdGFfY2hhbm5lbF9iaWFzID0g
MHgxNDsgLyogMTBtQSAqLwo+ICAgCQljbGtfY2hhbm5lbF9iaWFzID0gMHgxNDsgLyogMTBtQSAq
Lwo+ICAgCQlpbXBlZGFuY2VfZW4gPSAweDA7CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
