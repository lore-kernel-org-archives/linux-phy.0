Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D855C53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 15:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rfpqj98tzaIkB+s2L0uJLK7kX64Zm6/yXFANun9QKVA=; b=Mg+N9CBs77T16+
	m6Nt+CVWfSd5cspy0wSXR5tJzZ5wzgoXvNItNEj73CRO/38KFKDK12rnXp2wvJoLixZXcwcojJmeT
	lig6QotoJlfQlexE/5/jJhyP5vuOGS82+9Ckes/Ww38HSWDsaSHYabubfXk3v22koNvghVpUsOIMW
	ygrHCz7LFBqhZRyw0z4IUFKPbqXzNL66RUJT8OzlXNMJkHA0ttwPj1Aua8PIwoOh8B3QiEU5Ae2cp
	8xNcTKI4LaVlTKpNPDYrBFmvK3AAWLmQfqPBObXrosmjcpTWj0Ng1bLVRvHOaZMqsAZ7tQRYnp4RB
	msg+k9LptLBSnD+Nrhrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wojl0-00000005eFx-3dSE;
	Tue, 28 Jul 2026 15:30:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wojkz-00000005eFW-3Eqv;
	Tue, 28 Jul 2026 15:30:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8705641AC8;
	Tue, 28 Jul 2026 15:30:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4301B1F000E9;
	Tue, 28 Jul 2026 15:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785252613;
	bh=kHMHe8DXYFbv7HkrjiopSzw/zJOF/JWl21dsP0Poq2M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=ewu4Kyfbqhdf1jvk5L9GXGpzcB33+Eg/6yRdLcE8d1JVDXQoTvVzDBnFDVp/7c6yB
	 9hj7lZs4vQ4dmZWRWl2spgWiKe6kWE6rPE05cHxhVlMHih9pvWmaQet+wBCpbaKSi5
	 7Cv2lmpeP4xsnVG92JBsR+FooE1So3SFUv4GAnZllYkeQDY48mIIYCI5EKXrDWvoyw
	 Tk/qTuaOQwTAob3WfLD5POa/TEZCb2TGwOOtPiI/54aP+BWBAxcCQR4+JSN7cKicU8
	 UlLxfOlHeDzwpyHdKzAYa1UaPOfhHNqnZhWwgrrdkY/jV/f02u1NYHxIeqCurGVGw2
	 qNETRf1zaM8qQ==
Message-ID: <5306f685-46df-4956-9402-a86834f913c7@kernel.org>
Date: Tue, 28 Jul 2026 17:30:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 phy-next 0/9] RCW override for 10G Lynx dynamic
 protocol reconfiguration
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Tanjeff Moos <tanjeff.moos@westermo.com>, Michael Walle <mwalle@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
References: <20260721231603.67865-1-vladimir.oltean@nxp.com>
 <20260723150105.da2cqgtb7t5vw2d3@skbuf>
 <20260728134746.p7zqstau6376xifj@skbuf>
Content-Language: fr-FR
From: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
In-Reply-To: <20260728134746.p7zqstau6376xifj@skbuf>
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

SGkgT2x0ZWFuLAoKTGUgMjgvMDcvMjAyNiDDoCAxNTo0NywgVmxhZGltaXIgT2x0ZWFuIGEgw6lj
cml0wqA6Cj4gSGkgQ2hyaXN0b3BoZSwKPiAKPiBPbiBUaHUsIEp1bCAyMywgMjAyNiBhdCAwNjow
MTowNVBNICswMzAwLCBWbGFkaW1pciBPbHRlYW4gd3JvdGU6Cj4+IE9uIFdlZCwgSnVsIDIyLCAy
MDI2IGF0IDAyOjE1OjU0QU0gKzAzMDAsIFZsYWRpbWlyIE9sdGVhbiB3cm90ZToKPj4+IElvYW5h
IENpb3JuZWkgKDQpOgo+Pj4gICAgc29jOiBmc2w6IGd1dHM6IHVzZSBhIG1hY3JvIHRvIGVuY29k
ZSB0aGUgRENGRyBDQ1NSIHNwYWNlCj4+PiAgICBzb2M6IGZzbDogZ3V0czogYWRkIGEgZ2xvYmFs
IHN0cnVjdHVyZSB0byBob2xkIHN0YXRlCj4+PiAgICBzb2M6IGZzbDogZ3V0czogYWRkIGEgY2Vu
dHJhbCBmc2xfZ3V0c19yZWFkKCkgZnVuY3Rpb24KPj4+ICAgIHNvYzogZnNsOiBndXRzOiBtYWtl
IGl0IGVhc2llciB0byBkZXRlcm1pbmUgb24gd2hpY2ggU29DIHdlIGFyZQo+Pj4gICAgICBydW5u
aW5nCj4+Pgo+Pj4gVmxhZGltaXIgT2x0ZWFuICg1KToKPj4+ICAgIHNvYzogZnNsOiBndXRzOiBw
ZXJmb3JtIGZzbF9ndXRzX2luaXQoKSBlcnJvciB0ZWFyZG93biBpbiByZXZlcnNlCj4+PiAgICAg
IG9yZGVyIG9mIHNldHVwCj4+PiAgICBzb2M6IGZzbDogZ3V0czogbWFrZSBmc2xfc29jX2RhdGEg
YXZhaWxhYmxlIGFmdGVyIGZzbF9ndXRzX2luaXQoKQo+Pj4gICAgZHQtYmluZGluZ3M6IGZzbDog
bGF5ZXJzY2FwZS1kY2ZnOiBkZWZpbmUgRENGR19EQ1NSIHJlZ2lvbgo+Pj4gICAgc29jOiBmc2w6
IGd1dHM6IGltcGxlbWVudCB0aGUgUkNXIG92ZXJyaWRlIHByb2NlZHVyZQo+Pj4gICAgcGh5OiBs
eW54LTEwZzogdXNlIFJDVyBvdmVycmlkZSBwcm9jZWR1cmUgZm9yIGR5bmFtaWMgcHJvdG9jb2wg
Y2hhbmdlCj4+Cj4+IEV2ZW4gdGhvdWdoIEkgaW50ZW5kZWQgdGhlc2UgY2hhbmdlcyBmb3IgbGlu
dXgtcGh5ICh0aGV5IGFyZSBhbHNvCj4+IGJ1aWxkLXRlc3RlZCB0aGVyZSksIEknbSBmaW5lIGVp
dGhlciB3aXRoIHRoZXNlIGNoYW5nZXMgdGFrZW4gdGhyb3VnaAo+PiBWaW5vZCdzIHRyZWUgd2l0
aCBDaHJpc3RvcGhlJ3MgQUNLIGZvciBwYXRjaGVzIDEtOCwgb3IgdGhyb3VnaAo+PiBDaHJpc3Rv
cGhlJ3MgdHJlZSB3aXRoIFZpbm9kJ3MgQUNLIGZvciBwYXRjaCA5LCByZWFsbHkuCj4+Cj4+IEkg
c2VlIG9uIFBhdGNod29yayB0aGVyZSdzIGEgbWlub3IgaXNzdWUgaW4gdGhlIGNvbW1pdCBtZXNz
YWdlIG9mIHBhdGNoIDMvOToKPj4gaHR0cHM6Ly9ldXIwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5v
dXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGcGF0Y2h3b3JrLmtlcm5lbC5vcmclMkZwcm9q
ZWN0JTJGbGludXgtcGh5JTJGcGF0Y2glMkYyMDI2MDcyMTIzMTYwMy42Nzg2NS00LXZsYWRpbWly
Lm9sdGVhbiU0MG54cC5jb20lMkYmZGF0YT0wNSU3QzAyJTdDY2hyaXN0b3BoZS5sZXJveSU0MGNz
Z3JvdXAuZXUlN0NkZmNhYTY4NDUyZmM0NmEzMjg1MTA4ZGVlY2FlZDQzNiU3QzhiODdhZjdkODY0
NzRkYzc4ZGY0NWY2OWEyMDExYmI1JTdDMCU3QzAlN0M2MzkyMDg0MzI3OTM4NTEyMDQlN0NVbmtu
b3duJTdDVFdGcGJHWnNiM2Q4ZXlKRmJYQjBlVTFoY0draU9uUnlkV1VzSWxZaU9pSXdMakF1TURB
d01DSXNJbEFpT2lKWGFXNHpNaUlzSWtGT0lqb2lUV0ZwYkNJc0lsZFVJam95ZlElM0QlM0QlN0Mw
JTdDJTdDJTdDJnNkYXRhPUFVWSUyQklaRWlGcDNhTEFPNEhsSFFDcko5Wm5DeUZxenNoUEVHcTZD
cGZtVSUzRCZyZXNlcnZlZD0wCj4+ICJXQVJOSU5HOiAnc3RydXR1cmUnIG1heSBiZSBtaXNzcGVs
bGVkIC0gcGVyaGFwcyAnc3RydWN0dXJlJz8iCj4+Cj4+IENvdWxkIHRoaXMgYmUgZml4ZWQgdXAg
d2hpbGUgYXBwbHlpbmcsIGlmIHRoZXJlIGlzIG5vIG90aGVyIGZlZWRiYWNrPwo+IAo+IERvIHlv
dSBoYXZlIGZlZWRiYWNrL2EgcHJlZmVyZW5jZSBmb3IgaG93IHRoZXNlIHBhdGNoZXMgc2hvdWxk
IGJlIGhhbmRsZWQ/Cj4gCj4gSSBzZWUgVmlub2QgYWNrZWQgcGF0Y2ggOSwgc28gSSBndWVzcyB0
aGF0IG1lYW5zIGhpcyBwcmVmZXJlbmNlIHdvdWxkIGJlCj4gZm9yIHlvdSB0byBwaWNrIHVwIHRo
ZSBlbnRpcmUgc2VyaWVzICh3aGljaCBpcyBpbmRpdmlzaWJsZSkuCj4gCj4gSSBjaGVja2VkIHRo
YXQgdGhlIHBhdGNoZXMgYXBwbHkgdG8geW91ciBzb2NfZnNsIGJyYW5jaDoKPiBodHRwczovL2V1
cjAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZn
aXQua2VybmVsLm9yZyUyRnB1YiUyRnNjbSUyRmxpbnV4JTJGa2VybmVsJTJGZ2l0JTJGY2hsZXJv
eSUyRmxpbnV4LmdpdCUyRiUzRmglM0Rzb2NfZnNsJmRhdGE9MDUlN0MwMiU3Q2NocmlzdG9waGUu
bGVyb3klNDBjc2dyb3VwLmV1JTdDZGZjYWE2ODQ1MmZjNDZhMzI4NTEwOGRlZWNhZWQ0MzYlN0M4
Yjg3YWY3ZDg2NDc0ZGM3OGRmNDVmNjlhMjAxMWJiNSU3QzAlN0MwJTdDNjM5MjA4NDMyNzkzODc3
MTI4JTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SkZiWEIwZVUxaGNHa2lPblJ5ZFdVc0lsWWlP
aUl3TGpBdU1EQXdNQ0lzSWxBaU9pSlhhVzR6TWlJc0lrRk9Jam9pVFdGcGJDSXNJbGRVSWpveWZR
JTNEJTNEJTdDMCU3QyU3QyU3QyZzZGF0YT14anB3UkNNSW5jV3BXODl6S3poaWwyMCUyQmNVaG5H
NExQYUZOYnh3MXB1ZTglM0QmcmVzZXJ2ZWQ9MAo+IAoKSHVtIC4uLiBTZWVtcyBsaWtlIEkgb3Zl
cmxvb2tlZCB5b3VyIG1lc3NhZ2UgYXMgaXQgd2FzIGZsYWdnZWQgcGh5LW5leHQgCmFuZCBJIHdh
cyBvbiBzdW1tZXIgdmFjYXRpb24gb24gbGFzdCB0d28gd2Vla3MuCgpJJ20gZmluZSB3aXRoIHRh
a2luZyB0aGVtIHZpYSBzb2NfZnNsIHRyZWUuIEkgd29uJ3QgdGFrZSB0aGVtIHRvZGF5IApiZWNh
dXNlIEknbSBhbHJlYWR5IHB1c2hpbmcgYSBsYXJnZSBzZXJpZXMgZnJvbSBQYXVsIExvdXZlbCBi
dXQgSSdkIHB1c2ggCnRoZW0gYnkgdG9tb3Jyb3cgb3IgdGh1cmRheS4KClBsZWFzZSByYWlzZSBo
YW5kIGlmIG5vdGhpbmcgaGFwcGVuZWQgYnkgZnJpZGF5LgoKQ2hyaXN0b3BoZQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
