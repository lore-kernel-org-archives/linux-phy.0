Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9FD4C77B71
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 15:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V60GA6k4N9s1pIxdbwldv2edFzOf7Qg6RYFHGJaUadk=; b=vcCMkrepcguh7+
	KvEFLb3ItfC3V8lM0JNEse1L7WfE3n7S9zPpSdz/miX7ScMDj0eoX2bxf2p1/0Dxl/N1372AxkPl7
	FoQ4yQd3G/aWiryr5dbN82HYw59k798g8eV2rajh3ICozbVkEEGSv/qbfGbo+iQgyILGUrG7fgbZo
	o5ruMUGTm+sKGZLjkCbhJAN4WN7kMZOgxrT9tPw4pwQhvpi6idUsXWNi8v3eTI4VIzf1GyZ8fT2DX
	F0Dq4lSPErwTwiqpL6QHs9LsRN+Qzhl6CbknMxX9vKbtKHp926jDxFCp0NPFEehXZk+j9w6lZQ++q
	9Qu8lbEJo8LH7IZ8bRqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnLd7-009zzv-1H;
	Fri, 14 Apr 2023 15:46:29 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnLd2-009zyB-2i;
	Fri, 14 Apr 2023 15:46:26 +0000
Received: by mail-wm1-x334.google.com with SMTP id v10so3981875wmn.5;
        Fri, 14 Apr 2023 08:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681487183; x=1684079183;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4YvFDcXCxH0IHAlEOnTr7X8C2ZaoaLvqC8PQViNwb+0=;
        b=CGo8j1W2FmAqMnJH4qAKnNiqxbf8gAuLuQXj3WINrZZa2nZXrtKScsRfz+ZfBs9CJu
         MstNB5C5MjYfLqx24lPYBblayV3WVt+GN1vWPW01aBZVxvxBw5r4ib8Zz1hDE2aqM/Ru
         BoLvB6Nn6II6x/0EBKVFKSgjHR4yB9IODMTVz1Uw+YsgEDSzyLVvnJ4pH+dlKuFJ8p3J
         VHg5q6CWFrUmLJuFQUV4+K9vZefK0Qc0huP8lmoyJiSIN8YJ/Gq0l0b+4tjwm+gsPfc2
         eWJLWXDMnQ2cflu3GD3SF2QCB2aYePTtkw9lpn0G+jRsKYxRZDRjkH7YiBeMfXg04ooF
         f9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681487183; x=1684079183;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4YvFDcXCxH0IHAlEOnTr7X8C2ZaoaLvqC8PQViNwb+0=;
        b=GCu58//XmJ/h8QmTB8zAo4CpW3VKCKrEU6P7ACHRgPlOoTamsS7bT2wXExdjxJEthC
         /sB/lbapuwetovhfIYOCPIEHTmrCBj1CQzSba4kpgpQKJcuQsGonSJX7tla6xwk0WLg0
         axVVQI0VL7bVwVGYYhbezeLQv3oQioPh1qJv1go+7FdORswhyCjTCZSl1vQsYdMbOQlI
         0H3jYZ1a62WeFOZ0/3t72yu9Xv92UgrXo6GrUohglSVFhk83432ION5FpnIpiyn97trg
         No+kI6P2vcLoHKbxU4SAGP18Sw87D3Q2NYQ2zADAeRyXHz+N52m8hOisdJxW/wkBi+Kk
         TI9A==
X-Gm-Message-State: AAQBX9fq+yw5B8T/HTLQ5PaO+oH2ShVgh/4qFX7VhNyrp99C1BFDwaZZ
	+AztCCiwlH3vo7Lr5u2+5KW4nUfObCOllw==
X-Google-Smtp-Source: AKy350ax94Q0q1onTnwQMV5EE3TpgRfQw3R3Ni+6sgIb+LfrPtBcUh9No7WTr/RfBPPvrV2RcFkbIA==
X-Received: by 2002:a05:600c:231a:b0:3ef:1745:518e with SMTP id 26-20020a05600c231a00b003ef1745518emr4976351wmo.26.1681487183309;
        Fri, 14 Apr 2023 08:46:23 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.167.132])
        by smtp.gmail.com with ESMTPSA id n21-20020a7bc5d5000000b003e91b9a92c9sm4607383wmk.24.2023.04.14.08.46.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 08:46:22 -0700 (PDT)
Message-ID: <40cf026f-61db-2fe0-f941-bfe5c9aa20e7@gmail.com>
Date: Fri, 14 Apr 2023 17:46:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] phy: mediatek: fix returning garbage
Content-Language: en-US
From: Matthias Brugger <matthias.bgg@gmail.com>
To: Tom Rix <trix@redhat.com>, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, angelogioacchino.delregno@collabora.com,
 nathan@kernel.org, ndesaulniers@google.com, granquet@baylibre.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, llvm@lists.linux.dev
References: <20230414122253.3171524-1-trix@redhat.com>
 <3242b862-0e7c-b7e9-14cd-3fbcbb87ba04@gmail.com>
In-Reply-To: <3242b862-0e7c-b7e9-14cd-3fbcbb87ba04@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_084624_885430_B9EBD5E7 
X-CRM114-Status: GOOD (  11.62  )
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

CgpPbiAxNC8wNC8yMDIzIDE3OjQzLCBNYXR0aGlhcyBCcnVnZ2VyIHdyb3RlOgo+IAo+IAo+IE9u
IDE0LzA0LzIwMjMgMTQ6MjIsIFRvbSBSaXggd3JvdGU6Cj4+IGNsYW5nIHJlcG9ydHMKPj4gZHJp
dmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jOjI5ODo2OiBlcnJvcjogdmFy
aWFibGUKPj4gwqDCoCAncmV0JyBpcyB1bmluaXRpYWxpemVkIHdoZW4gdXNlZCBoZXJlIFstV2Vy
cm9yLC1XdW5pbml0aWFsaXplZF0KPj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgXn5+Cj4+IHJldCBzaG91bGQgaGF2ZSBiZWVuIHNldCBieSB0
aGUgcHJlY2VkaW5nIGNhbGwgdG8gbXRrX2hkbWlfcGxsX3NldF9ody4KPj4KPj4gRml4ZXM6IDQ1
ODEwZDQ4NmJiNCAoInBoeTogbWVkaWF0ZWs6IGFkZCBzdXBwb3J0IGZvciBwaHktbXRrLWhkbWkt
bXQ4MTk1IikKPj4gU2lnbmVkLW9mZi1ieTogVG9tIFJpeCA8dHJpeEByZWRoYXQuY29tPgo+IAo+
IFJldmlld2VkLWJ5OiBNYXR0aGlhcyBCcnVnZ2VyIDxtYXR0aGlhcy5iZ2dAZ21haWwuY29tPgo+
IAoKUGxlYXNlIGFsc28gYWRkClJlcG9ydGVkLWJ5OiBMaW51eCBLZXJuZWwgRnVuY3Rpb25hbCBU
ZXN0aW5nIDxsa2Z0QGxpbmFyby5vcmc+CgpzZWUgQ0ErRzlmWXU0bzAtWktTdGhpN2tkQ2p6X2tG
YXpaUy1ybjE3WjJOUHozPTFPYXlyOWN3QG1haWwuZ21haWwuY29tCgpSZWdhcmRzLApNYXR0aGlh
cwoKPj4gLS0tCj4+IMKgIGRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstaGRtaS1tdDgxOTUu
YyB8IDYgKysrLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRr
LWhkbWktbXQ4MTk1LmMgCj4+IGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10
ODE5NS5jCj4+IGluZGV4IGFiZmMwNzdmYjBhOC4uYzYzMjk0ZTQ1MWQ2IDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLWhkbWktbXQ4MTk1LmMKPj4gKysrIGIvZHJp
dmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1oZG1pLW10ODE5NS5jCj4+IEBAIC0yOTIsOSArMjky
LDkgQEAgc3RhdGljIGludCBtdGtfaGRtaV9wbGxfY2FsYyhzdHJ1Y3QgbXRrX2hkbWlfcGh5IAo+
PiAqaGRtaV9waHksIHN0cnVjdCBjbGtfaHcgKmh3LAo+PiDCoMKgwqDCoMKgIGlmICghKGRpZ2l0
YWxfZGl2IDw9IDMyICYmIGRpZ2l0YWxfZGl2ID49IDEpKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIC1FSU5WQUw7Cj4+IC3CoMKgwqAgbXRrX2hkbWlfcGxsX3NldF9odyhodywgUExMX1BS
RURJViwgZmJrZGl2X2hpZ2gsIGZia2Rpdl9sb3csCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgUExMX0ZCS0RJVl9IUzMsIHBvc2RpdjEsIHBvc2RpdjIsIHR4cHJlZGl2LAo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHR4cG9zZGl2LCBkaWdpdGFsX2Rpdik7Cj4+
ICvCoMKgwqAgcmV0ID0gbXRrX2hkbWlfcGxsX3NldF9odyhodywgUExMX1BSRURJViwgZmJrZGl2
X2hpZ2gsIGZia2Rpdl9sb3csCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFBMTF9GQktESVZfSFMzLCBwb3NkaXYxLCBwb3NkaXYyLCB0eHByZWRpdiwKPj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdHhwb3NkaXYsIGRpZ2l0YWxfZGl2KTsKPj4gwqDC
oMKgwqDCoCBpZiAocmV0KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
