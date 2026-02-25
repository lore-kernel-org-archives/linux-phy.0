Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAE5EFD374E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 12:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFaB1vijswkXvYlSwv1Tt37mbhEiQtIjFlmLjY1anms=; b=1PUpOfjfvaiqLQ
	vnXecgw55QIj6s1XhhguPPEIw0eg5ECwQ+ivWWpkfYki3QPu+Jo1jSsE9CryjKZSfkiHvKbh7aY7j
	v28OU4zig0/uMi+PQknNFv6pFXh1P1Eo81gffYgSyETbyz51TxlAvxANefmQ3rBSpUBn2v2x9crhj
	ED2ggS7sOJPxqzNxicqxwD1gs3KZphRcMI3ieSW6cPdWXADT+9Ijjz3lAscwNcp/Z88hgroIMgndp
	o3gmLFNkhFgK0DksqGqHwsCCNWv791tLDeoaOqNsjr+5OBH4uiY4kumeU2VMMn1wyukcjdbwJ1gxv
	RVERvTyJZrq0L3G4k4uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvENA-000000041mQ-1ZSI;
	Wed, 25 Feb 2026 12:52:12 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvEN7-000000041lI-0sk0;
	Wed, 25 Feb 2026 12:52:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1772023918; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ICTEfHhyDwLJkhsdDnqW0m6pUOTdJbtZU+i7vtiytvbTDJZv5wHNiLsHIP9QegFSAI1ghfZVLZOplV1gbia6JuQe8RmfFiG69QBoa14HfclhBdamUFMc2BucV25iR8ZRHDMz3mkC+iCPTsXEFmEJjsVMZrkLLok0AZe9Yf0lkLA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1772023918; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=T70ySPmQ1GqRu+gzswXj2+yT3BqSZsUEEsLuHeI35co=; 
	b=QHK/4er+tLCtdBvg1RAIKIHElknd71Syfrn0VLgKCF4JurPSJa3MK3aNPOkwa+oUNOgfcllqhHG0L889/m0zoxNbJGYht22ffNrLLbEZRRd26KCII8SiZ3DzFdZD9bLcs51Yf/bWtFUWsvuHGKjfnTLq20XJhJkaUPgfWqBxNJw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1772023917;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=T70ySPmQ1GqRu+gzswXj2+yT3BqSZsUEEsLuHeI35co=;
	b=Z7mEQDq9HC4wHL2/KtkISM6JrMa8Ymly1nhRZFgYFA6bLp+TR1/JhcV/4yorEipU
	9UpkbXY7tYpq0mRVXesynsKp0CU5ycg6NSuRBuJcMgNO106uILhZVZ3Vt/W3SipYe25
	L0fI3wr0n+YkIDSfSdbwDI154gEHdXaU+MsSWI1I=
Received: by mx.zohomail.com with SMTPS id 1772023915403681.8519199142135;
	Wed, 25 Feb 2026 04:51:55 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 Chunfeng Yun =?UTF-8?B?KOS6keaYpeWzsCk=?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@hansenpartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 Chaotian Jing =?UTF-8?B?KOS6leacneWkqSk=?= <Chaotian.Jing@mediatek.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 Peter Wang =?UTF-8?B?KOeOi+S/oeWPiyk=?= <peter.wang@mediatek.com>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
Subject: Re: [PATCH v7 14/23] scsi: ufs: mediatek: Remove mediatek,ufs-broken-rtc
 property
Date: Wed, 25 Feb 2026 13:51:47 +0100
Message-ID: <3140774.mvXUDI8C0e@workhorse>
In-Reply-To: <ee2e18e1a6177c40c5a4b3ed0ff228b9302429b7.camel@mediatek.com>
References: <20260216-mt8196-ufs-v7-0-b5f2907c6da7@collabora.com>
 <20260216-mt8196-ufs-v7-14-b5f2907c6da7@collabora.com>
 <ee2e18e1a6177c40c5a4b3ed0ff228b9302429b7.camel@mediatek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_045209_298404_A7540729 
X-CRM114-Status: GOOD (  14.03  )
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

T24gVHVlc2RheSwgMjQgRmVicnVhcnkgMjAyNiAxMzo0MzoxMCBDZW50cmFsIEV1cm9wZWFuIFN0
YW5kYXJkIFRpbWUgUGV0ZXIgV2FuZyAo546L5L+h5Y+LKSB3cm90ZToKPiBPbiBNb24sIDIwMjYt
MDItMTYgYXQgMTQ6MzcgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9z
dC91ZnMtCj4gPiBtZWRpYXRlay5jCj4gPiBpbmRleCAyMzBlMTE1MzNlYWMuLjQyNDUzMzUzOGI5
MCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiA+ICsr
KyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMKPiA+IEBAIC02NTUsOSArNjU1LDYg
QEAgc3RhdGljIHZvaWQgdWZzX210a19pbml0X2hvc3RfY2FwcyhzdHJ1Y3QgdWZzX2hiYQo+ID4g
KmhiYSkKPiA+ICAJaWYgKG9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwgIm1lZGlhdGVrLHVmcy1y
dGZmLW10Y21vcyIpKQo+ID4gIAkJaG9zdC0+Y2FwcyB8PSBVRlNfTVRLX0NBUF9SVEZGX01UQ01P
UzsKPiA+ICAKPiA+IC0JaWYgKG9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwgIm1lZGlhdGVrLHVm
cy1icm9rZW4tcnRjIikpCj4gPiAtCQlob3N0LT5jYXBzIHw9IFVGU19NVEtfQ0FQX01DUV9CUk9L
RU5fUlRDOwo+ID4gLQo+ID4gIAlkZXZfaW5mbyhoYmEtPmRldiwgImNhcHM6IDB4JXgiLCBob3N0
LT5jYXBzKTsKPiA+ICB9Cj4gPiAgCj4gPiBAQCAtMTE4NSw4ICsxMTgyLDYgQEAgc3RhdGljIGlu
dCB1ZnNfbXRrX2luaXQoc3RydWN0IHVmc19oYmEgKmhiYSkKPiA+ICAJaGJhLT5xdWlya3MgfD0g
VUZTSENJX1FVSVJLX1NLSVBfTUFOVUFMX1dCX0ZMVVNIX0NUUkw7Cj4gPiAgCj4gPiAgCWhiYS0+
cXVpcmtzIHw9IFVGU0hDRF9RVUlSS19NQ1FfQlJPS0VOX0lOVFI7Cj4gPiAtCWlmIChob3N0LT5j
YXBzICYgVUZTX01US19DQVBfTUNRX0JST0tFTl9SVEMpCj4gPiAtCQloYmEtPnF1aXJrcyB8PSBV
RlNIQ0RfUVVJUktfTUNRX0JST0tFTl9SVEM7Cj4gPiAgCj4gCj4gTWF5YmUgY2hlY2sgdGhlIGhh
cmR3YXJlIHZlcnNpb24gKGhvc3QtPmlwX3ZlcikgCj4gYW5kIHNldCBVRlNIQ0RfUVVJUktfTUNR
X0JST0tFTl9SVEMgaW5zdGVhZCBvZiByZW1vdmluZyBpdD8KCkkgZG8gbm90IGhhdmUgYWNjZXNz
IHRvIGEgY29tcGxldGUgbGlzdCBvZiBoYXJkd2FyZSBJUCB2ZXJzaW9ucwp0aGF0IG5lZWQgdGhp
cyBxdWlyayBhcHBsaWVkLiBObyB1cHN0cmVhbSBEVHMgc2VlbSB0byB1c2UgaXQuCgpJZiBNZWRp
YVRlayB3YW50cyB0aGUgcXVpcmsgYmFjaywgeW91IGNhbiBzdWJtaXQgYSBwYXRjaCB0byBhcHBs
eQppdCBiYXNlZCBvbiB0aGUgaXBfdmVyIG9uY2UgdGhpcyBzZXJpZXMgaGFzIGxhbmRlZCwgYXMg
eW91IGhhdmUgYWxsCnRoZSBuZWNlc3NhcnkgaW5mb3JtYXRpb24uCgo+IAo+IFRoYW5rcwo+IFBl
dGVyCj4gCgoKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
