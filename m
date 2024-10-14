Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 838E2D16245
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 11:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKICYSKcrZBF2o3efrr1aSLMU8nYC+rL9tGFljGxwXE=; b=B9kWFaL8OWzrGb
	dAKFf+uL729H9Bu64CZ3M85XIcc6nHDnHkzc3lCRVgdi+f4fiprbKpCPwxxo86KqGp9rosjG0Fkjj
	6cMZZExH9FtBpeMTQOC1A9e5fhkjvNXRCMeS3dvLryeuscN9OeuO4FhkcwVG+3ZpiGL5Qfa4lt2SX
	ZdDuZpSJ2VRieAQzHh7abDXNZY/jZaSlxeisreX3004XC+lR8LMR1jugafZYmXveUyrTrEdtuJCK0
	ttN4hlDkRA9lTB27L44ObjgHW1MoXiMcRZYrBavKDVtZaMi4z8tJHk8al4v+XX+Y2bX489DOQwCOl
	klfo1lDmaeIwOaF3neZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JDO-00000004vEn-0njq;
	Mon, 14 Oct 2024 11:26:18 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0InW-00000004nMX-45l4
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 10:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728903550; x=1729508350;
	i=markus.stockhausen@gmx.de;
	bh=YMi+6Axt8mLkeVTcAJhvXJwXBIxpKmdk21sXg3KSSEs=;
	h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=NOX01ux8k57is5bb8hVbvgkyxr3eTigPOh+PjHl4sbO+PyskxvZ4lYgDZZGpwgaE
	 HYGj4+ydjs3gRVi0tdbKZ8ENV6PwrJlpBnQGCOn3BWkim803VWDFAEUtphKuG9Gch
	 x6Odliu8oypIhjj/T0VTJj90nzmMJ6q4EW9ssnh/Yi+qgsnXvVIoTQpH3Rb4rNBQr
	 bHWPsuDrXdFIqAAsk1YcJ8tknZoBBnIBkcpLdMI8C6030uNra0hDUMcHwy//mFIGn
	 olZ+sPbcn2SHhk1dAfdryiasBVxKtDFEQ0Jm/pj9MR/QsoJVnfdHBGrqQuFwxVSIB
	 rxp4F9/ZFOAhe+IQ1Q==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.17]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1McpNo-1tZun60NLG-00dehN; Mon, 14
 Oct 2024 12:59:10 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>
Cc: <vkoul@kernel.org>,
	<kishon@kernel.org>,
	<robh@kernel.org>,
	<krzk+dt@kernel.org>,
	<conor+dt@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>,
	<chris.packham@alliedtelesis.co.nz>
References: <20241012134834.1306992-1-markus.stockhausen@gmx.de> <20241012134834.1306992-2-markus.stockhausen@gmx.de> <sck3hvr6vtdsnseyzdoxdwasd47c7m5yzavpyodc7rj3cwbu26@kqxistduok3u>
In-Reply-To: <sck3hvr6vtdsnseyzdoxdwasd47c7m5yzavpyodc7rj3cwbu26@kqxistduok3u>
Subject: AW: [PATCH v3 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Date: Mon, 14 Oct 2024 12:59:08 +0200
Message-ID: <004801db1e28$190402e0$4b0c08a0$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGUIE64laADOC8jQrMhrI2aPHA/IQKmkMn+AoGANOqy6s53kA==
Content-Language: de
X-Provags-ID: V03:K1:BS7AX4SX8TNP0MqhW3mfmvRHz27HaY4qlvhUm1e6dCAeeDxMJNr
 9KVx2QpwncMakieiLWoq4QlrlEFa3TZpRnf1Dy8S9npW+6RuqPkSyb6pEOFu1fqpEcFHzpR
 xz8hMxJQiXsyroblEtxZrV1QJSVF+hcA+TIBDfgDjwjlMSH/agh323atzmEwNpwr+GubLdh
 yFazYO5VrWEPIVA3Blr1w==
UI-OutboundReport: notjunk:1;M01:P0:Zww2Vi3AzCU=;rwKX1tdvQupRuYK2YGmc9cZ4qK0
 MiKOc3K8xRls0Nlu0C6nuiP3JKaQcgzIsuDjV/B/RfZ/Abuof9w4+yd3vnCNrhMVJ2e5r0pde
 Lc5WWqQ+ufaBLBSnDVhMzYrtewkGYTQ64jN/uX+5t8yKTqrVC9N0faKPzseQ0qEkV7PRQb/WD
 gG6Uvd6FvfEtxN+v/s0n2dseP9W1Bhii5l+x6Elc5ggFHXwsVw/jzzZEKltCHOB3O3v1cGJIE
 m+2qkFYQEiI4PUhkdfu25OHI4v98sEwGJdqeSpIeSrbNF6Cp1f/2RsPjeLc+MHxBteKzCaVlZ
 bMn5Z9pjMnCqUIuEh1adq8zWv4n1Ka7cgKW8EXX4sxG2lktD/wXI4Ese1vyAoUC6kEjuwPBtf
 T0OiqDsGYffdGKFp8+iLrQcfuIwoVAvdw0OZXKY+K21/4bwsF5wQ56V8OvLuw9+u0fxhYv7RZ
 0BdJ2gzdWT4G8wkrHMfe9u0l4yDLbdhFXP6YFQmQGiaPnxIGkCyCkVHqPgwezuRJFB2S2VpAK
 ViqyL4HQyjHGRH9ySQl2mfNlDvsPjTYf4qHa/3cUVb26WOZmba84g5GDQpDMyFpsHUxMuxynf
 QTKLRr5R68dUKhZxull1zjeXXY/vT8fwHaUk1fq4sbQthHjp3x5AICUUNkplw2zUZp8U4+iDt
 UQdfzIzH3Ny9RzdNDf96/vcEhxJ3Zp/d2qtSa1swvVP0aoxUDPl+qkknfxwN2VD+aq0HO8HRx
 Bc4Ae0mfYmVDzNeYtWic+B9JWJ2lNn4TdF/aIxpZGhT4MPMqLu9vYYeMLYdwGITZzi/ZzV/I0
 yR20cHoLYx1MXJKT2PGuRlww==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_035935_410587_6CA2577C 
X-CRM114-Status: GOOD (  19.98  )
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

PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tCj4gVm9uOiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IAo+IEdlc2VuZGV0OiBNb250YWcsIDE0LiBPa3RvYmVy
IDIwMjQgMDk6MTgKPiBBbjogTWFya3VzIFN0b2NraGF1c2VuIDxtYXJrdXMuc3RvY2toYXVzZW5A
Z214LmRlPgo+IENjOiB2a291bEBrZXJuZWwub3JnOyBraXNob25Aa2VybmVsLm9yZzsgcm9iaEBr
ZXJuZWwub3JnOyBrcnprK2R0QGtlcm5lbC5vcmc7Cj4gY29ub3IrZHRAa2VybmVsLm9yZzsgbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyAK
PiBjaHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubnoKPiBCZXRyZWZmOiBSZTogW1BBVENI
IHYzIDEvMl0gZHQtYmluZGluZ3M6IHBoeTogYWRkIHJlYWx0ZWsscnRsODM4MG0tc2VyZGVzCj4K
PiBPbiBTYXQsIE9jdCAxMiwgMjAyNCBhdCAwOTo0ODozM0FNIC0wNDAwLCBNYXJrdXMgU3RvY2to
YXVzZW4gd3JvdGU6Cj4gPiBBZGQgYmluZGluZ3MgZm9yIHRoZSBTZXJEZXMgb2YgdGhlIFJlYWx0
ZWsgT3R0byBwbGF0Zm9ybS4gVGhlc2UgYXJlIAo+ID4gTUlQUyBiYXNlZCBuZXR3b3JrIFN3aXRj
aCBTb0NzIHdpdGggdXAgdG8gNTIgcG9ydHMgZGl2aWRlZCBpbnRvIGZvdXIgCj4gPiBkaWZmZXJl
bnQgbW9kZWwgbGluZXMuCj4gPiAuLi4KPiA+ICsgIHJlZzoKPiA+ICsgICAgaXRlbXM6Cj4gPiAr
ICAgICAgZGVzY3JpcHRpb246Cj4gPiArICAgICAgICBUaGUgcHJpbWFyeSByZWdpc3RlciBtZW1v
cnkgbG9jYXRpb24uIE9uIFJUTDgzeHggZGV2aWNlcyB0aGlzIGlzIHRoZQo+ID4gKyAgICAgICAg
YWRkcmVzcyB0byB0aGUgSS9PIHJlZ2lzdGVyIHJhbmdlLCBvbiBSVEw5M3h4IGRldmljZXMgdGhp
cyBpcyB0aGUKPiA+ICsgICAgICAgIGFkZHJlc3Mgb2YgdGhlIE1ESU8gc3R5bGUgY29tbWFuZC9k
YXRhIHJlZ2lzdGVycy4KPgo+IE5vdCBtdWNoIGltcHJvdmVkLCBzdGlsbCBtaXNzaW5nIGNvbnN0
cmFpbnRzLgo+Cj4gSSBkb24ndCB1bmRlcnN0YW5kIHdoeSB5b3UgaW50cm9kdWNlIGNoYW5nZXMg
bGlrZSB0aGlzLgoKSG0sIHR3byBzdHVwaWQgY2hhbmdlcyBpbiB0aGUgbGFzdCB0d28gdmVyc2lv
bnMuIFRoaXMgd2FzIG9ubHkgdG8gZ2V0IHNvbWUKbW9yZSBtZWFuaW5nZnVsbCBkZXNjcmlwdGlv
biB0aGVyZS4gTm90IHByb3VkIG9mIGl0IGFuZCBzb21laG93IGxvc3Qgd2hhdCAKd2lsbCBiZSBy
aWdodC4gTG9va2luZyBhdCBvdGhlciBwbGFjZXMgYSBzaW1wbGUgCgpyZWc6CiAgbWF4SXRlbXM6
IDEKCnNob3VsZCBiZSBzdWZmaWNpZW50LiBPayB3aXRoIHRoYXQ/Cgo+ID4gKwo+ID4gKyAgIiNw
aHktY2VsbHMiOgo+ID4gKyAgICBjb25zdDogNAo+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsg
ICAgICBUaGUgZmlyc3QgbnVtYmVyIGRlZmluZXMgdGhlIFNlckRlcyB0byB1c2UuIFRoZSBzZWNv
bmQgbnVtYmVyIGEgbGlua2VkCj4gPiArICAgICAgU2VyRGVzLiBFLmcuIGlmIGEgb2N0YSAxRyBQ
SFkgaXMgYXR0YWNoZWQgdG8gdHdvIFFTR01JSSBTZXJEZXMuIFRoZSB0aGlyZAo+ID4gKyAgICAg
IG51bWJlciBpcyB0aGUgZmlyc3Qgc3dpdGNoIHBvcnQgdGhpcyBTZXJEZXMgaXMgd29ya2luZyBm
b3IsIHRoZSBmb3VydGgKPiA+ICsgICAgICBudW1iZXIgaXMgdGhlIGxhc3Qgc3dpdGNoIHBvcnQg
dGhlIFNlckRlcyBpcyB3b3JraW5nIGZvci4KPiA+ICsKPiA+ICsgIGZpcm13YXJlLW5hbWU6Cj4g
PiArICAgIG1heEl0ZW1zOiAxCj4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gKyAgICAgIEFuIGFs
dGVybmF0aXZlIG5hbWUgb2YgdGhlIFNlckRlcyBmaXJtd2FyZSBpbWFnZSBmaWxlIGxvY2F0ZWQg
aW4gdGhlCj4gPiArICAgICAgZmlybXdhcmUgc2VhcmNoIHBhdGguIFNldCB0byAiIiB0byBkaXNh
YmxlIGZpcm13YXJlIGxvYWRpbmcuCj4KPiBNaXNzaW5nIHByb3BlcnR5LCBub3QgZW1wdHkgc3Ry
aW5nLCBzaG91bGQgcmF0aGVyIGluZGljYXRlIHVubmVlZGVkIGZpcm13YXJlLgoKSW5kZWVkIG1v
cmUgaW50dWl0aXZlLiBXaWxsIGRyb3AgdGhlIGhhcmRjb2RlZCBmaXJtd2FyZSBuYW1lcyBpbiB0
aGUgZHJpdmVyCmFuZCBvbmx5IGxvYWQgaWYgZmlybXdhcmUtbmFtZSBpcyBzZXQuCgo+ID4gKwo+
ID4gK2V4YW1wbGVzOgo+ID4gKyAgLSB8Cj4gPiArICAgIHNlcmRlczogcGh5QDFiMDBlNzgwIHsK
PiA+ICsgICAgICBjb21wYXRpYmxlID0gInJlYWx0ZWsscnRsOTMwMmItc2VyZGVzIjsKPiA+ICsg
ICAgICByZWcgPSA8MHgxYjAwMDNiMCAweDg+Owo+Cj4gVGhpcyBkb2VzIG5vdG1hdGNoIHVuaXQg
YWRkcmVzcy4uLiBhbmQgYWdhaW46IHRoaXMgd2FzIG5vdCBhbiBpc3N1ZSBpbiBwcmV2aW91cyB2
ZXJzaW9uLiAKPiBZb3VyIG5ldyB2ZXJzaW9ucyBvZiBwYXRjaHNldCBpbnRyb2R1Y2UgZXJyb3Jz
IGFuZCBidWdzLiBUaGlzIGlzIG5vdCBob3cgdGhlIHByb2Nlc3MKPiBzaG91bGQgbG9vayBsaWtl
LiBSZXZpZXcgc2hvdWxkIGltcHJvdmUgdGhlIHBhdGNoLCBub3QgcmVkdWNlIGl0cyBxdWFsaXR5
LgoKQWdyZWUgd2lsbCBmaXguIFRoaXMgd2FzIHdyb25nbHkgbWl4ZWQgd2hlbiBJIHJlbW92ZWQg
MyBvZiB0aGUKc2FtcGxlcyBhcyByZXF1ZXN0ZWQgYnkgUm9iIGFuZCBjbGVhbmVkIHRoZSByZXN0
IGFmdGVyd2FyZHMgdG8KaGF2ZSB0aGUgZmlybXdhcmUgZXhhbXBsZS4KCk1hcmt1cwoKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
