Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41C1AC7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 12:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XoxfTImX/6LHD5JXKQVg5mtiFNmf/ld/6Sshydhr1rI=; b=Pxwd3awED/u3CO
	B03W/joyo9lBUOEAgdkicNkZ5NSpHMdS3QIWSObH0MPMADvLU5phkBu9yxYQJti8icBc/5LgYtFA6
	kCY7eVsywnIDOYpgbmKJxjqdLgU2fHYPsrRYWtjS332AkL6aiMLFS6USFA8sG/R/HUkw/qYiitm4w
	zgPtQP5Mh74NsUgQCrJmFe9/0CMZFbwhiys2lRhw9AXILlXzb85PEFYffKtWFgrrYFKWslYT3IdtS
	cRELmda+9iDBV1jgnqTnbqijkzK8KGRxnRLUG6zWfhDdfvXCJfY5MZESFInlvWuO2oSXeuiZz4W7t
	bx4yO2UjqnaSXPc7ez3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk22m-004N1q-2R;
	Wed, 05 Apr 2023 12:15:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk22j-004N0N-0N
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 12:15:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1pk22T-0003WC-Id; Wed, 05 Apr 2023 14:14:57 +0200
Message-ID: <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
From: Johannes Zink <j.zink@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, vkoul@kernel.org, 
 kishon@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 robh+dt@kernel.org,  krzysztof.kozlowski+dt@linaro.org, jun.li@nxp.com,
 haibo.chen@nxp.com,  linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Date: Wed, 05 Apr 2023 14:14:30 +0200
In-Reply-To: <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
	 <20230405112118.1256151-2-j.zink@pengutronix.de>
	 <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: j.zink@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_051513_168561_EF41098A 
X-CRM114-Status: GOOD (  17.34  )
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

SGkgS3J5c3p0b2YsCgp0aGFua3MgZm9yIHlvdXIgcmV2aWV3LCBwbGVhc2UgZmluZCBteSBxdWVz
dGlvbnMgYmVsb3cuCgpPbiBXZWQsIDIwMjMtMDQtMDUgYXQgMTM6NTEgKzAyMDAsIEtyenlzenRv
ZiBLb3psb3dza2kgd3JvdGU6Cj4gW3NuaXBdCj4gPiDCoMKgwqDCoMKgwqAgQSBwaGFuZGxlIHRv
IHRoZSByZWd1bGF0b3IgZm9yIFVTQiBWQlVTLgo+ID4gwqAKPiA+ICvCoCBmc2wscGh5LXR4LXZy
ZWYtdHVuZToKPiA+ICvCoMKgwqAgZGVzY3JpcHRpb246Cj4gPiArwqDCoMKgwqDCoCBIUyBEQyBW
b2x0YWdlIGxldmVsIGFkanVzdG1lbnQKPiAKPiAiTGV2ZWwiIGluIHdoYXQgdW5pdHM/Cj4gCgpU
aGUgZGF0YXNoZWV0IGp1c3Qgc2hvd3MgcGVyY2VudCwgcmFuZ2luZyBmcm9tIC02IHRvICsyNCUs
IGluIDIlCmluY3JlbWVudHMuIFdoYXQgdW5pdCB3b3VsZCB5b3Ugc3VnZ2VzdD8KCj4gPiArwqDC
oMKgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3VpbnQzMgo+ID4gK8Kg
wqDCoCBlbnVtOiBbMCwgMSwgMiwgMywgNCwgNSwgNiwgNywgOCwgOSwgMTAsIDExLCAxMiwgMTMs
IDE0LCAxNSwKPiA+IDE2XQo+ID4gKwo+ID4gK8KgIGZzbCxwaHktdHgtcmlzZS10dW5lOgo+ID4g
K8KgwqDCoCBkZXNjcmlwdGlvbjoKPiA+ICvCoMKgwqDCoMKgIEhTIFRyYW5zbWl0dGVyIFJpc2Uv
RmFsbCBUaW1lIEFkanVzdG1lbnQKPiA+ICvCoMKgwqAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFt
bCMvZGVmaW5pdGlvbnMvdWludDMyCj4gPiArwqDCoMKgIGVudW06IFswLCAxLCAyLCAzXQo+ID4g
Kwo+ID4gK8KgIGZzbCxwaHktdHgtcHJlZW1wLWFtcC10dW5lOgo+ID4gK8KgwqDCoCBkZXNjcmlw
dGlvbjoKPiA+ICvCoMKgwqDCoMKgIEhTIFRyYW5zbWl0dGVyIFByZS1FbXBoYXNpcyBDdXJyZW50
IENvbnRyb2wKPiAKPiBJZiB0aGlzIGlzIGN1cnJlbnQgdGhlbiB1c2Ugc3RhbmRhcmQgdW5pdCBz
dWZmaXhlcy4KCkFjY29yZGluZyB0byB0aGUgZGF0YXNoZWV0IHRoaXMgaXMgaW4gInVuaXQgYW1v
bnRzIiBvZiA2MDB1QSwgYmFzaWNhbGx5CjB4NjAwdUEsIDF4NjAwdUEgZXRjLiBTaG91bGQgSSBq
dXN0IHN1ZmZpeCBpdCB3aXRoIHVBIHRoZW4/Cgo+IAo+ID4gK8KgwqDCoCAkcmVmOiAvc2NoZW1h
cy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPiA+ICvCoMKgwqAgZW51bTogWzAsIDEs
IDIsIDNdCj4gPiArCj4gPiArwqAgZnNsLHBoeS10eC12Ym9vc3QtbGV2ZWw6Cj4gPiArwqDCoMKg
IGRlc2NyaXB0aW9uOgo+ID4gK8KgwqDCoMKgwqAgVFggVm9sdGFnZSBCb29zdCBMZXZlbAo+ID4g
K8KgwqDCoCAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPiA+
ICvCoMKgwqAgZW51bTogWzAsIDIsIDNdCj4gPiArCj4gPiArwqAgZnNsLHBoeS1jb21wLWRpcy10
dW5lOgo+ID4gK8KgwqDCoCBkZXNjcmlwdGlvbjoKPiA+ICvCoMKgwqDCoMKgIERpc2Nvbm5lY3Qg
VGhyZXNob2xkIEFkanVzdG1lbnQKPiA+ICvCoMKgwqAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFt
bCMvZGVmaW5pdGlvbnMvdWludDMyCj4gPiArwqDCoMKgIGVudW06IFswLCAxLCAyLCAzLCA0LCA1
LCA2LCA3XQo+ID4gKwo+ID4gK8KgIGZzbCxwaHktcGNzLXR4LWRlZW1waC0zcDVkYjoKPiA+ICvC
oMKgwqAgZGVzY3JpcHRpb246Cj4gPiArwqDCoMKgwqDCoCBUWCBEZS1FbXBoYXNpcyBhdCAzLjUg
ZEIKPiA+ICvCoMKgwqAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWlu
dDMyCj4gPiArCj4gPiArwqAgZnNsLHBoeS1wY3MtdHgtc3dpbmctZnVsbDoKPiA+ICvCoMKgwqAg
ZGVzY3JpcHRpb246Cj4gPiArwqDCoMKgwqDCoCBUWCBBbXBsaXR1ZGUKPiAKPiBJIGhhdmUgZmVl
bGluZyB5b3UganVzdCBwYXN0ZWQgaGVyZSBzaG9ydCB0aXRsZXMgZnJvbSBkYXRhc2hlZXQuIFRo
ZXkKPiBhcmUgbm90IHRoYXQgaGVscGZ1bC4KCmFjaywgSSB3aWxsIGFkZCBzb21lIG1vcmUgdGV4
dCBmcm9tIHRoZSByZWdpc3RlciBkZXNjcmlwdGlvbiwgc2luY2UgSQpoYXZlIG5vIG90aGVyIHNv
dXJjZSBvZiBpbmZvcm1hdGlvbiBvbiB0aGVzZS4KCkJlc3QgcmVnYXJkcwpKb2hhbm5lcwoKPiAK
PiAKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4gCj4gCj4gCgotLSAKUGVuZ3V0cm9u
aXggZS5LLiAgICAgICAgICAgICAgICB8IEpvaGFubmVzIFppbmsgICAgICAgICAgICAgICAgICB8
ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25p
eC5kZS8gICAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgIHwgUGhvbmU6ICs0OS01
MTIxLTIwNjkxNy0wICAgICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODZ8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSAgICB8CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
