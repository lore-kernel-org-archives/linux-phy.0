Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEEBBC77B6C
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 08:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWOKPK9W4rECorWP8krjZ8pyJcd7THJASnl7d37Bqlw=; b=HHNri512HDrRDs
	hdIzqvU0TfgCH8qT2Yix48qhT2O2z1HFhjc1mkD9Ih5oBU64y2YKGBwXC9svLIDhDxjcObHsR/tp1
	MRqvABT7rrPR/Fwdhcrb+kfR+5POFk/3dORxLcQ0jMkCL1kS87g43mPQmBQn+NEynmdXSI6+rcxGZ
	uonq0Lpm4zcIXEdLRpUxfS92bNxIQOXbarGrM6q7uaz/lfhU2sfMzMz+vudAjph4Rp3KCD1vs7YfG
	TGRUMqHJ3Y6p0499JN9U2hz/8a9qpcHHjCc5Wb4nE9m6Qn93eOpX8TOG4bhnMDYKTgfchAffGbzAz
	Qp6tM+kqm+di1PWbQagw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmsnL-005USY-1t;
	Thu, 13 Apr 2023 08:59:07 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmsnH-005UQr-2Y;
	Thu, 13 Apr 2023 08:59:05 +0000
Received: by mail-wr1-x433.google.com with SMTP id v27so4243840wra.13;
        Thu, 13 Apr 2023 01:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681376340; x=1683968340;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d7g5hV3NWDVn1/V7aQRt4oQ8CBf16T6HKdjwb2x5bdk=;
        b=dBQhg5EbOvayR7mx31g2Jml4oYq5/XXxJlntstydhf4l7HpHShRVId/butsUy55+3P
         EsfmjNNOvORzCCy9QrCrhfQ+NTZ2L3YPpyILbRZZh4Z0DC80Bk+ylhxVs+zuIVYeiEk6
         WMSrTGlcRp94aMhIDPa9q1PpS6Fdk/5/eCF820KZyQ0No/UnjIG0HBi/m1RC4M68XKHy
         XeOSWDFKffbUpGzlPRgMTgi2c9AkCSK5nQdePDFLEjMBVDR0WcU73xrKpxaPEEVPltjN
         9zZdFEN8Rws2NkH82yXHFR2q4Udm2qOj4psP4gaDMK4HtgQ1oRZANyNdzRZYpIeGAE18
         vujw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681376340; x=1683968340;
        h=content-transfer-encoding:in-reply-to:subject:from:references:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d7g5hV3NWDVn1/V7aQRt4oQ8CBf16T6HKdjwb2x5bdk=;
        b=iGDdHhxwP+4mQ0My1bZtSbCo3A2BYnvK7FgNkO5LvobbkqQiL//h1QKMRSnweeQjfp
         ti0iOX6cDeM4f0O+w6CvYpbarO3VTDqAreaoBVifbfVTyBrAgcanisiWX0cYOHr58p7N
         7A1iDsJTYTwJdmsYRmvY5AKNqaRuBhcPq/Ja3j0MuVDKgoPVJWifHIa/Kdz9o19J27/t
         E4yiogNBEIu43fQSoy2LxUtNI25NPqX74FwXYY6q0+vMz4hRJO2SS3rW+l860rzOj+JB
         De/5sOHJk3F+i93TwsQeslcTMFXZpIKjyLUa012h3MVQtOHgCf6XGvHsL3L/XRwfcOZ9
         5y+Q==
X-Gm-Message-State: AAQBX9fDvb1pxtaJmi/YqxUjx2EN7rT8pTZSSmztH9E/beg+GV97a2q9
	cz0Gk1p17bMvOiBcvmJEZLQ=
X-Google-Smtp-Source: AKy350Zxv3Ko4eW0Fum9TmN1yb7aYSGe0D9dQ8XHg0Ai6fR9/Rf1dH0XSwLKNKkfZjY0IWUaTBv/eg==
X-Received: by 2002:adf:ef51:0:b0:2f0:2e3a:cc04 with SMTP id c17-20020adfef51000000b002f02e3acc04mr1138305wrp.8.1681376340325;
        Thu, 13 Apr 2023 01:59:00 -0700 (PDT)
Received: from [192.168.0.32] ([37.222.243.26])
        by smtp.gmail.com with ESMTPSA id j4-20020a5d5644000000b002f02df4c7a3sm819861wrw.30.2023.04.13.01.58.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 01:58:59 -0700 (PDT)
Message-ID: <4b5a6233-c8f3-4d12-7508-45df8b7548f5@gmail.com>
Date: Thu, 13 Apr 2023 10:58:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Alexandre Mergnat <amergnat@baylibre.com>
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-3-angelogioacchino.delregno@collabora.com>
 <20684378-cf3e-0299-d390-287b7bafbda5@baylibre.com>
 <eb770f19-ada5-81bb-5ea3-798edabca70f@collabora.com>
 <7e53c0b1-3aed-da08-5c57-800ac2277bc6@baylibre.com>
 <e129b3ff-90b1-3df7-871e-09fba0a960f4@collabora.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH 02/27] dt-bindings: phy: mediatek,dsi-phy: Add compatible
 for MT6795 Helio X10
In-Reply-To: <e129b3ff-90b1-3df7-871e-09fba0a960f4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_015903_829697_272B0DF7 
X-CRM114-Status: GOOD (  18.84  )
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

CgpPbiAxMi8wNC8yMDIzIDE1OjE3LCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToK
PiBJbCAxMi8wNC8yMyAxNToxMiwgQWxleGFuZHJlIE1lcmduYXQgaGEgc2NyaXR0bzoKPj4gT24g
MTIvMDQvMjAyMyAxNTowMywgQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4+PiBJ
bCAxMi8wNC8yMyAxNDo1OSwgQWxleGFuZHJlIE1lcmduYXQgaGEgc2NyaXR0bzoKPj4+PiBPbiAx
Mi8wNC8yMDIzIDEzOjI3LCBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyB3cm90ZToKPj4+Pj4g
QWRkIGEgY29tcGF0aWJsZSBzdHJpbmcgZm9yIE1lZGlhVGVrIEhlbGlvIFgxMCBNVDY3OTU6IHRo
aXMgU29DIHVzZXMKPj4+Pj4gdGhlIHNhbWUgRFNJIFBIWSBhcyBNVDgxNzMuCj4+Pj4+Cj4+Pj4+
IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIAo+Pj4+PiA8YW5nZWxv
Z2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgo+Pj4+PiAtLS0KPj4+Pj4gwqAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxkc2ktcGh5LnlhbWwg
fCA0ICsrKysKPj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pj4+Pgo+
Pj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9t
ZWRpYXRlayxkc2ktcGh5LnlhbWwgCj4+Pj4+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9tZWRpYXRlayxkc2ktcGh5LnlhbWwKPj4+Pj4gaW5kZXggMjZmMmI4ODdjZmMx
Li5hOWY3ODM0NGVmZGIgMTAwNjQ0Cj4+Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssZHNpLXBoeS55YW1sCj4+Pj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssZHNpLXBoeS55YW1sCj4+Pj4+
IEBAIC0yNCw2ICsyNCwxMCBAQCBwcm9wZXJ0aWVzOgo+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gZW51bToKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gbWVkaWF0
ZWssbXQ3NjIzLW1pcGktdHgKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBt
ZWRpYXRlayxtdDI3MDEtbWlwaS10eAo+Pj4+PiArwqDCoMKgwqDCoCAtIGl0ZW1zOgo+Pj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgIC0gZW51bToKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gbWVkaWF0ZWssbXQ2Nzk1LW1pcGktdHgKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoCAt
IGNvbnN0OiBtZWRpYXRlayxtdDgxNzMtbWlwaS10eAo+Pj4+Cj4+Pj4gQUZBSUssIGl0IHNob3Vs
ZCBiZToKPj4+PiDCoMKgwqDCoMKgwqAgLSBpdGVtczoKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAtIGNvbnN0OiBtZWRpYXRlayxtdDY3OTUtbWlwaS10eAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gY29uc3Q6IG1lZGlhdGVrLG10ODE3My1taXBpLXR4Cj4+Pj4KPj4+PiBTaW5jZSBpdCBp
c24ndCByZXNwZWN0ZWQgYWJvdmUgZm9yIG10NzYyMywgaXQgbWF5IGJlIHRvbGVyYXRlZC4KPj4+
PiBQbGVhc2UsIHRha2UgdGhpcyBjb21tZW50IGFzIGEgc3VnZ2VzdGlvbiwgaXNuJ3QgYSBOQUsg
ZnJvbSBtZS4KPj4+Pgo+Pj4KPj4+IEZpcnN0IG9mIGFsbCwgVGhhbmtzIQo+Pj4gSSB3YW50IHRv
IGV4cGxhaW4sIHRob3VnaCwgdGhlIHJlYXNvbiBmb3IgdGhhdC4KPj4+Cj4+PiBJZiB5b3UgY2hl
Y2sgYWxsIHRoZSBjb21taXRzLCBvbiBzb21lIEkgZGlkIGl0IGFzIHlvdSBqdXN0IHByb3Bvc2Vk
LCB3aGlsZQo+Pj4gb24gc29tZSBvdGhlcnMgSSBkaWQgaXQgd2l0aCBhbiBlbnVtIGJlZm9yZSBj
b25zdDogdGhhdCdzIHNpbXBseSBiZWNhdXNlIEkKPj4+ICp0b3RhbGx5IGV4cGVjdCogc29tZSB0
byBncm93LCB3aGlsZSBvdGhlcnMgKGNvbnN0IC0gY29uc3QpIEkgd2FzIGVpdGhlcgo+Pj4gdW5z
dXJlLCBvciB0b3RhbGx5ICpub3QqIGV4cGVjdGluZyB0aGVtIHRvIGdyb3cgc29vbiEKPj4KPj4K
Pj4gVGhhdCdzIHdoYXQgSSB0aG91Z2h0LiBJTUhPLCBpZiBzb21lb25lIGFkZCBhbm90aGVyIGNv
bXBhdCBsYXRlciwgaGUgd2lsbCBiZSAKPj4gb24gY2hhcmdlIHRvIGNoYW5nZSB0aGUgY29uc3Qg
YnkgZW51bSBmcm9udCBvZiB5b3VyICJtZWRpYXRlayxtdDY3OTUtbWlwaS10eCIuIAo+PiBCdXQg
bXkgb3BpbmlvbiBpcyBwcm9iYWJseSBub3QgdGhlIG1vc3QgcG9wdWxhci4KPj4KPj4gSSB3aWxs
IG5vdCBtYWtlIHRoZSBzYW1lIGZlZWRiYWNrIGZvciB0aGUgb3RoZXIgcGF0Y2hlcyBpbiB0aGlz
IHNlcmllcy4KPj4KPiAKPiBJIGhvbmVzdGx5IGRvbid0IGtub3cgd2hhdCdzIHRoZSBtb3N0IHBv
cHVsYXIgb3BpbmlvbiBhYm91dCB0aGF0Li4uIGJ1dCB3aGF0ZXZlciwKPiBpbiBhbnkgY2FzZS4u
LiBqdXN0IHdhbnQgdG8gbWFrZSBzdXJlIHRvIGNvbW11bmljYXRlIHRoYXQgSSBkb24ndCByZWFs
bHkgaGF2ZQo+IHN0cm9uZyBvcGluaW9ucyBhYm91dCBkb2luZyBpdCBvbmUgd2F5IG9yIHRoZSBv
dGhlci4KPiAKPiBUaGUgYXJndW1lbnRzIGluIGZhdm9yIGFuZCBhZ2FpbnN0IHRoYXQgYXJlIHBy
b2JhYmx5IDE6MS4uLiA6LUQKPiAKClRoZW4gbGV0IG1lIHRocm93IGluIGFub3RoZXIgb25lIDop
CgpUYWtlIGludG8gYWNjb3VudCB0aGF0IGlmIHdlIGV4cGVjdCB0aGUgY29tcGF0aWJsZSB0byBi
ZSBhZGRlZCBzb210aW1lcyBpbiB0aGUgCmZ1dHVyZSAobm90IHRoZSBuZWFyIGZ1dHVyZSkgdGhp
cyBjb2RlIHdpbGwgbGF5IGFyb3VuZCBmb3Igc29tZSB0aW1lLiBQZW9wbGUgCndpbGwgdGFrZSB0
aGlzIGNvZGUgYXMgYW4gZXhhbXBsZSBmb3IgbmV3IGNvZGUsIHRoZW4gd2Ugd2lsbCBuZWVkIHRv
IGV4cGxhaW4gCml0Li4uIEluIHRoYXQgc2Vuc2UgaXQgd291bGQgbWFrZSBtb3JlIHNlbnNlIHRv
IGhhdmUgYWxsIG1hZGUgY29uc3Q6IGNvbnN0OiBhbmQgCmNoYW5nZSB0aGlzIHRvIGVudW0gb25j
ZSBhIG5ldyBjb21wYXRpYmxlIGlzIGFkZGVkIHRvIHRoZSBtaXguCgpTYWlkIGFsbCB0aGlzLCBJ
IGxlYXZlIGl0IHRvIHRoZSBEVCBtYWludGFpbmVycyB0byBkZWNpZGUgOkQKClJlZ2FyZHMsCk1h
dHRoaWFzCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
