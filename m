Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E221C77B70
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 10:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9HlbrM1TsdpQ/K5fSDFA9iFSoPEcu8HznngjwciWw4=; b=J0yYj4pwTl2oWh
	/VOLdDKu++d5hun+CvIM+GezQAYpMDLDeV6FeISX7sT5aHZH0jnCyxOglJzCNacM5bK3gqhxZTg+l
	StVc9uyXxkVpMx+PSqkwK2WFAxi4S8i0u3vFMH+TZYoOKPvQptas//o1WT6cN0kUDnpORGwPZA6vG
	wj1eNNKtYLRMoLd/UDmZ55g3DWIRs3PoE7aH7U17cGmV2VwUEXnkORTLXEovYwaM8UHZrPzqm2Cuj
	lZGbV63uZ36fJoKe0iY2puoBXhN3Ak1X7h/Kgh0xGj47chNFrSb+0ghXoPOawQAPo+fK3Kn/9lbD/
	tOyKeYHsMovPTJ4c2zqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGiL-0099ao-30;
	Fri, 14 Apr 2023 10:31:33 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGiJ-0099Ym-09
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 10:31:32 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-50670cc3abfso1208313a12.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 03:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681468289; x=1684060289;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7A3jIFNX+D4elFTnhiKETmy1MLNeTbEEPtotnHqMGuQ=;
        b=ef8OHhmk/2tUpsrGW9BAs7ADG0qRkLcn6YKfX7e8PuFF8mPfZpawfAzggGfU432iXb
         CELESl9USoOKfAs7NQZKaf94BEN9o75rea8wrdalwVcBzwCVMxS4kko1MSgWw1yLfGhl
         UgW1E3kQAzdKOOUH8hSIwoZbk4iZO3+xbtQo8+gLc0she+IgxiyseuFCePqqBtwyhsh2
         Nl9lpxH3b73x8blbg5KJkcBBOS82RXTqHNgGG988oaRjZBjEVZZSINXDqTYbRDfNMSFq
         0M0nBwdhl3O3dApDGXn2EW+zEC5rg2vr4k6dGFkmCb5qNEipvzeEdzkbcDfTMU4fxN4W
         FChA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681468289; x=1684060289;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7A3jIFNX+D4elFTnhiKETmy1MLNeTbEEPtotnHqMGuQ=;
        b=DbObqZvnGxdUAq7wlhEqcCbBESGSe819YcEP9pSwOgFULzKiaEukiYlsrPkedGBijC
         GL82TtApspyWFdctannJLCEJVkI1rU8hcM3b6uK7RRfJWJM+1vyemGuChPhxQmXnv/Dy
         zVZZnqfNT5VlHy6DiniwPxxYUYvckmpOg4I1mcxctud7x3JXq5Ztw2hlUNLayqWp5ZGJ
         XZcXPaFc5cPsfqxy7r/koa0IGXRuZhEqEuT9yRMQYVTMY9lnm3fe4DkqvSWVPkykVqAQ
         0H8et3xhP4RuYkGUDd9DIUeVsTa+Iix6imrs9R9m6YwxRioJexyCJqD5fMnCbwsKNjQw
         UuFw==
X-Gm-Message-State: AAQBX9eWmwOHp0viCErnwlgB01MjeiDsUVaOAVvWjHA61gbg5NIIiNi8
	WH1Ja6gb+oT/MXr/1VDOs6i+MQ==
X-Google-Smtp-Source: AKy350Y077+BdBXdq1CcDQ8qonO9EVH5kYn/JqjMAYJj03p/5Gq3PVCVakbTgw4OSubyrs08ItiJ+A==
X-Received: by 2002:aa7:df0d:0:b0:4fd:29e4:ccfe with SMTP id c13-20020aa7df0d000000b004fd29e4ccfemr5082786edy.18.1681468289362;
        Fri, 14 Apr 2023 03:31:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:40b9:8c57:b112:651d? ([2a02:810d:15c0:828:40b9:8c57:b112:651d])
        by smtp.gmail.com with ESMTPSA id x9-20020aa7d6c9000000b004fa19f5ba99sm1957986edr.79.2023.04.14.03.31.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 03:31:28 -0700 (PDT)
Message-ID: <e7db1133-b23c-f196-547c-9deea94f0bfe@linaro.org>
Date: Fri, 14 Apr 2023 12:31:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 01/27] dt-bindings: pwm: Add compatible for MediaTek
 MT6795
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc: matthias.bgg@gmail.com, p.zabel@pengutronix.de, airlied@gmail.com,
 daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, chunkuang.hu@kernel.org,
 ck.hu@mediatek.com, jitao.shi@mediatek.com, xinlei.lee@mediatek.com,
 houlong.wei@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org,
 kernel@collabora.com, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-2-angelogioacchino.delregno@collabora.com>
 <aaeeb18d-f8e8-d6c1-1272-e5b797554b9e@linaro.org>
 <20230414083019.cpomx37tax4ibe5u@pengutronix.de>
 <f8a4fd52-52b6-dded-c8b7-864be549e2ad@linaro.org>
 <13fe3e54-caa5-098c-0a86-3d2f8475c23f@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <13fe3e54-caa5-098c-0a86-3d2f8475c23f@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_033131_096159_8B2BEB85 
X-CRM114-Status: GOOD (  16.61  )
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

T24gMTQvMDQvMjAyMyAxMjoyNSwgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4g
SWwgMTQvMDQvMjMgMTA6MzQsIEtyenlzenRvZiBLb3psb3dza2kgaGEgc2NyaXR0bzoKPj4gT24g
MTQvMDQvMjAyMyAxMDozMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4+PiBPbiBGcmksIEFw
ciAxNCwgMjAyMyBhdCAxMDoyMTowNUFNICswMjAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3Rl
Ogo+Pj4+IE9uIDEyLzA0LzIwMjMgMTM6MjcsIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIHdy
b3RlOgo+Pj4+PiBBZGQgYSBjb21wYXRpYmxlIHN0cmluZyBmb3IgTWVkaWFUZWsgSGVsaW8gWDEw
IE1UNjc5NSdzIGRpc3BsYXkgUFdNCj4+Pj4+IGJsb2NrOiB0aGlzIGlzIHRoZSBzYW1lIGFzIE1U
ODE3My4KPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVn
bm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPj4+Pj4gLS0tCj4+
Pj4+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRlayxwd20t
ZGlzcC55YW1sIHwgNCArKystCj4+Pj4+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1sIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRlayxwd20tZGlzcC55YW1sCj4+Pj4+
IGluZGV4IDAwODhiYzhlN2M1NC4uMTUzZTE0NmRmN2Q0IDEwMDY0NAo+Pj4+PiAtLS0gYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcHdtL21lZGlhdGVrLHB3bS1kaXNwLnlhbWwK
Pj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9tZWRpYXRl
ayxwd20tZGlzcC55YW1sCj4+Pj4+IEBAIC0yMiw3ICsyMiw5IEBAIHByb3BlcnRpZXM6Cj4+Pj4+
ICAgICAgICAgICAgIC0gbWVkaWF0ZWssbXQ4MTczLWRpc3AtcHdtCj4+Pj4+ICAgICAgICAgICAg
IC0gbWVkaWF0ZWssbXQ4MTgzLWRpc3AtcHdtCj4+Pj4+ICAgICAgICAgLSBpdGVtczoKPj4+Pj4g
LSAgICAgICAgICAtIGNvbnN0OiBtZWRpYXRlayxtdDgxNjctZGlzcC1wd20KPj4+Pj4gKyAgICAg
ICAgICAtIGVudW06Cj4+Pj4+ICsgICAgICAgICAgICAgIC0gbWVkaWF0ZWssbXQ2Nzk1LWRpc3At
cHdtCj4+Pj4+ICsgICAgICAgICAgICAgIC0gbWVkaWF0ZWssbXQ4MTY3LWRpc3AtcHdtCj4+Pj4K
Pj4+PiBUaGlzIGRvZXMgbm90IGxvb2sgY29ycmVjdC4gWW91IGRvIG5vdCBhZGQgY29tcGF0aWJs
ZSwgeW91IHJlcGxhY2UKPj4+PiBicmVha2luZyBhbGwgbXQ4MTY3LWRpc3AtcHdtLiBBdCBsZWFz
dCBpdCBsb29rcyBsaWtlIHRoaXMgZnJvbSBjb250ZXh0Lgo+Pj4KPj4+IEkgdGhvdWdodCB0aGUg
b2xkIHNlbWFudGljIHRvIGJlOgo+Pj4KPj4+IAkibWVkaWF0ZWssbXQ4MTY3LWRpc3AtcHdtIgo+
Pj4KPj4+IGFuZCB0aGUgbmV3Cj4+Pgo+Pj4gCSJtZWRpYXRlayxtdDY3OTUtZGlzcC1wd20iIG9y
ICJtZWRpYXRlayxtdDgxNjctZGlzcC1wd20iCj4+Pgo+Pj4gLiBXaGF0IGFtIEkgbWlzc2luZz8K
Pj4KPj4gVGhlIG5ldyBpcyBvayBmb3IgbXQ2Nzk1IGJ1dCBpdCBpcyBub3QgdmFsaWQgZm9yIG10
ODE2Ny4KPj4KPiAKPiBTb3JyeSwgd2h5IGlzIGl0IG5vdCB2YWxpZCBmb3IgTVQ4MTY3PwoKRWgs
IGFib3ZlIGV4YW1wbGUgZGlkIG5vdCBoZWxwIG1lLCBiZWNhdXNlIGl0IG1pc3NlZCBtdDgxNzMs
IGJ1dCBJIHNlZQpub3cgdGhlIGNvbnRleHQgSSBtaXNzZWQuIEl0J3MgYWxyZWFkeSBhIGxpc3Qg
b2YgdHdvIGNvbXBhdGlibGVzLCBzbyB0aGUKcGF0Y2ggaXMgZmluZS4KCkJlc3QgcmVnYXJkcywK
S3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
