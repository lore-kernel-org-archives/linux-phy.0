Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 451CCFD375D
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 13:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4ghxLqrqcwpGCDPmXjIeWNl7pzyHHrIgq+oJgjE9jw=; b=0I/Pt+CMxmiBWC
	X9g6w2RQfiYgYo/5dQgClmmHE61iNez4IqTduzTxnO7M69rmqJCQCU4vE/71qtLjqOVmLMAWQtI9/
	aG7RcxlN7ohk0cMK9IBZzWIUousLTqXR0p0Cmt3PjoBSfCCKztDMSk3ITgcoWIsnLrIscwbGJ7n43
	a1Vp0wZ34qjJYssDkXTw3Rg16emN4o/OQj3OuMZWJfGfrSkRhC5Aq1GDybJOWlqPhT9dkEHOS/7hj
	I9w9kovAeSIfMsbUisZErRoykFE2uHMD/el3cQM2JhRX+VpWhBqkftuyzqnA+Nvqruelapu/2PwaN
	Q/q6+oxyHSWr0cS5F9wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvEmW-000000044UY-3aMb;
	Wed, 25 Feb 2026 13:18:24 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvEmT-000000044SW-0jSU;
	Wed, 25 Feb 2026 13:18:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772025499;
	bh=OBPmVel8etDOsFPwy09vRPFiPn+XOTirLp8VxPuWQT8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CXnqqRVOU+5ZupZeqTybWiwyfo1yrPseMhCvtva473bH2wisFSulL2HVy9FKbSS1v
	 E41wbZNfMQm3KQxssJS21aB8or0/0zUL0Homdt9CXse6Zt/DtfZIv22FaUguvmDB9W
	 8ZzsrJK3J4R+3l5imK23d90P/YLdNoDxDdUg4nwxLPPOWkZbHqlkP2s3Q7DF4LsY7A
	 cDeqsAZhpvshMV65GGlgP3g9r5idEW/JfDkWy//f7GsbDfV2+5xWIwTlK8jUSqmnq5
	 B0R+3IcU5+SJoAIN4NRHXomy28whqZJsv+ehM5MvvHd45PddBXTyW64J4p6W5gIK7N
	 g8WnRnhJAuDEw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1673117E03E6;
	Wed, 25 Feb 2026 14:18:18 +0100 (CET)
Message-ID: <f0e97a38-a11b-4e69-902a-e0ccd0dc4540@collabora.com>
Date: Wed, 25 Feb 2026 14:18:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 16/23] scsi: ufs: mediatek: Clean up logging prints
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@hansenpartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
 <Chaotian.Jing@mediatek.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 =?UTF-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <20260216-mt8196-ufs-v7-0-b5f2907c6da7@collabora.com>
 <20260216-mt8196-ufs-v7-16-b5f2907c6da7@collabora.com>
 <c333898413d249c017430d4ae98bc7be3bf33a64.camel@mediatek.com>
 <2575185.irdbgypaU6@workhorse>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <2575185.irdbgypaU6@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_051821_384052_F1102A8F 
X-CRM114-Status: GOOD (  16.49  )
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

SWwgMjUvMDIvMjYgMTQ6MDUsIE5pY29sYXMgRnJhdHRhcm9saSBoYSBzY3JpdHRvOgo+IE9uIFR1
ZXNkYXksIDI0IEZlYnJ1YXJ5IDIwMjYgMTM6NDc6MjggQ2VudHJhbCBFdXJvcGVhbiBTdGFuZGFy
ZCBUaW1lIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgd3JvdGU6Cj4+IE9uIE1vbiwgMjAyNi0wMi0x
NiBhdCAxNDozNyArMDEwMCwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+Pj4gICBkcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIHwgOTkgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLQo+Pj4gLS0tLS0tLS0tLQo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygr
KSwgNTYgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdWZzL2hvc3Qv
dWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy0KPj4+IG1lZGlhdGVrLmMKPj4+
IGluZGV4IGVjZjE2ZTgyYTMyNi4uMmIxZjI2YjU1NzgyIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVy
cy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+Pj4gKysrIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMt
bWVkaWF0ZWsuYwo+Pj4gWy4uLiBzbmlwIC4uLl0KPj4+IEBAIC04MTAsMTEgKzgwNiwxMSBAQCBz
dGF0aWMgdm9pZCB1ZnNfbXRrX21jcV9zZXRfaXJxX2FmZmluaXR5KHN0cnVjdAo+Pj4gdWZzX2hi
YSAqaGJhLCB1bnNpZ25lZCBpbnQgY3B1KQo+Pj4gICAJX2NwdSA9IChjcHUgPT0gMCkgPyAzIDog
Y3B1Owo+Pj4gICAJcmV0ID0gaXJxX3NldF9hZmZpbml0eShpcnEsIGNwdW1hc2tfb2YoX2NwdSkp
Owo+Pj4gICAJaWYgKHJldCkgewo+Pj4gLQkJZGV2X2VycihoYmEtPmRldiwgInNldCBpcnEgJWQg
YWZmaW5pdHkgdG8gQ1BVICVkCj4+PiBmYWlsZWRcbiIsCj4+PiArCQlkZXZfZXJyKGhiYS0+ZGV2
LCAic2V0dGluZyBpcnEgJWQgYWZmaW5pdHkgdG8gQ1BVICVkCj4+PiBmYWlsZWRcbiIsCj4+PiAg
IAkJCWlycSwgX2NwdSk7Cj4+PiAgIAkJcmV0dXJuOwo+Pj4gICAJfQo+Pj4gLQlkZXZfaW5mbyho
YmEtPmRldiwgInNldCBpcnEgJWQgYWZmaW5pdHkgdG8gQ1BVOiAlZFxuIiwgaXJxLAo+Pj4gX2Nw
dSk7Cj4+PiArCWRldl9kYmcoaGJhLT5kZXYsICJzZXQgaXJxICVkIGFmZmluaXR5IHRvIENQVSAl
ZFxuIiwgaXJxLAo+Pj4gX2NwdSk7Cj4+Pgo+Pgo+PiBJcyBpdCBtb3JlIGFwcHJvcHJpYXRlIHRv
IHVzZSBkZXZfaW5mbyBmb3Igc3RhdGUgY2hhbmdlcyBvciBmb3Igc2V0dGluZwo+PiBjaGFuZ2Vz
Pwo+IAo+IElzIHRoaXMgaW5mb3JtYXRpb24gYSB1c2VyIHdvdWxkIHdhbnQgdG8gc2VlIGluIHRo
ZWlyIGJvb3R1cCBsb2cgaW4KPiBldmVyeSBjYXNlPyBNeSB1bmRlcnN0YW5kaW5nIHJpZ2h0IG5v
dyBpcyBuby4KPiAKPj4+IFsuLi4gc25pcCAuLi5dCj4+PiBAQCAtMTU3MSw3ICsxNTU5LDcgQEAg
c3RhdGljIGludCB1ZnNfbXRrX2RldmljZV9yZXNldChzdHJ1Y3QgdWZzX2hiYQo+Pj4gKmhiYSkK
Pj4+ICAgCS8qIFNvbWUgZGV2aWNlcyBtYXkgbmVlZCB0aW1lIHRvIHJlc3BvbmQgdG8gcnN0X24g
Ki8KPj4+ICAgCXVzbGVlcF9yYW5nZSgxMDAwMCwgMTUwMDApOwo+Pj4gICAKPj4+IC0JZGV2X2lu
Zm8oaGJhLT5kZXYsICJkZXZpY2UgcmVzZXQgZG9uZVxuIik7Cj4+PiArCWRldl9kYmcoaGJhLT5k
ZXYsICJkZXZpY2UgcmVzZXQgZG9uZVxuIik7Cj4+PiAgIAo+Pgo+PiBJcyBpdCBtb3JlIGFwcHJv
cHJpYXRlIHRvIHVzZSBkZXZfaW5mbyBmb3Igc3RhdGUgY2hhbmdlcyBvciBmb3Igc2V0dGluZwo+
PiBjaGFuZ2VzPwo+IAo+IERlcGVuZHMgb24geW91ciB2aWV3IG9mIHdoYXQncyB1c2VmdWwgaW5m
b3JtYXRpb24gZm9yIHRoZSB1c2VyLgo+IAo+IEkgY2FuIGNoYW5nZSBib3RoIG9mIHRoZXNlIGJh
Y2sgdG8gX2luZm8gaWYgSSBoYXZlIHRvIHNlbmQgb3V0IGEgbmV4dAo+IHJldmlzaW9uLCBqdXN0
IHRvIGdldCB0aGlzIHRocm91Z2ggdGhvdWdoLgo+IAoKRGVmaW5pdGVseSBkb24ndCBjaGFuZ2Ug
dGhhdCBiYWNrIHRvIGRldl9pbmZvKCkgYXMgdGhpcyBpcyBkZWJ1Z2dpbmcgaW5mb3JtYXRpb24K
dGhhdCBzcGFtcyB0aGUga2VybmVsIGxvZyBmb3Igbm8gcmVhc29uLgoKVGhpcyBoYXMgdG8gYmUg
ZGV2X2RiZygpLgoKUmVnYXJkcywKQW5nZWxvCgo+Pgo+PiBUaGFua3MKPj4gUGV0ZXIKPj4KPiAK
PiAKPiAKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
