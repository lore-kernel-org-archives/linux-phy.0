Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BC2CCD4F5B
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 22:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Drt0XRbcbNsRr0xlhMxhq7MSIZ4PeQTTtONlzCn8h0=; b=yUhbW/c4fiz2ws
	gNcJHLAAT4mCBzah1tARdFu4apeugStwwZRh0z4sijhpwekLeKSIWZS5dC+q8qQ5FL3hR81/3PZJn
	yammG9jW6pIsVUVKRgt0EpCucXYMYm+aUJ32K4VDjQZcE15z7Mns4JHQC8Q8frzAjMVjxpwhnee4f
	S0mx+w8/9e+VcJPFA3I3oPbEfbhE/kPrIDXseEHsKjFU9i6/XPoMbOdSnafF7Xnp4yr+HLZwJOM2V
	KKXJP8mVYCdogjnrKeOQrbtPbyzeQLOOVYOenI2mhm2WVyNk31riQy6LA1J1nJjVC4O88UtXcB1Bw
	12tU8HPPN48QZgOOh2lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPTOU-000000031FJ-1hC2;
	Tue, 19 May 2026 22:58:34 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPTOT-000000031F7-1PrT
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 22:58:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8BCB860216;
	Tue, 19 May 2026 22:58:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C41C91F000E9;
	Tue, 19 May 2026 22:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779231512;
	bh=ckLWd3Pcv5VS9zUkCSDTjdLnQXXOdrp15i1cta7NHnY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=M1SmDrz3tBUH44wRXHoJBQfWC9HbTxbbcl+xe7Zfup18yLZPVZ0ZwrRsjuMS9/oS8
	 UD3tM6CSiZvFfOh+z7K77S6DAGC7JCT0vx8HlAeVit2rSFJR2whgw7HFcYHGNE38e4
	 5enkDsBZRSXHYdFAHD5Ao/Gmi7XiMdKQ4MSe0mU5aVdH8mSJjgVdvmiludXA6zSEbE
	 jpGx7jZdfjiYJxkOxxB9zPDWyu4NQXyY27CcrhWjjQGaJlyOD3POh/HI8TbV9kAPph
	 Ns2l1FoTU+eU2HLxig0EakozmbWmXWaUWW9kcz5/jK2IuU+t+0k2iVem6y223rqQuH
	 UIfdrx+V6d66A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 5/6] phy: move and rename Airoha PCIe PHY driver to
 dedicated directory
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260519220813.28468-6-ansuelsmth@gmail.com>
References: <20260519220813.28468-6-ansuelsmth@gmail.com>
Date: Tue, 19 May 2026 22:58:31 +0000
Message-Id: <20260519225831.C41C91F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGNvbW1pdCBjbGFp
bXMgdG8gbW92ZSBhbmQgcmVuYW1lIHRoZSBBaXJvaGEgUENJZSBQSFkgZHJpdmVyIHRvIGEgZGVk
aWNhdGVkIGRpcmVjdG9yeSwgYnV0IGZhaWxzIHRvIGRlbGV0ZSB0aGUgb3JpZ2luYWwgc291cmNl
IGZpbGVzLCBsZWF2aW5nIHRoZW0gYXMgZGVhZCBjb2RlIGluIHRoZSB0cmVlLgotIFtMb3ddIFRo
ZSBuZXdseSBhZGRlZCBoZWFkZXIgZmlsZSB1c2VzIHRoZSBzYW1lIGluY2x1ZGUgZ3VhcmQgYXMg
dGhlIG9sZCBmaWxlLgotLQoKY29tbWl0IDg2YjY0MjRjNmJhNTNjNjc0NzJiZWEyZDNkNDFmOGQ2
NTRlMWNiMzEKQXV0aG9yOiBDaHJpc3RpYW4gTWFyYW5naSA8YW5zdWVsc210aEBnbWFpbC5jb20+
CgpwaHk6IG1vdmUgYW5kIHJlbmFtZSBBaXJvaGEgUENJZSBQSFkgZHJpdmVyIHRvIGRlZGljYXRl
ZCBkaXJlY3RvcnkKClRoaXMgY29tbWl0IG1vdmVzIHRoZSBBaXJvaGEgQU43NTgxIFBDSWUgUEhZ
IGRyaXZlciBpbnRvIGEgZGVkaWNhdGVkCmRpcmVjdG9yeSBhbmQgcmVuYW1lcyB0aGUgZmlsZXMg
YW5kIGNvbmZpZyBzeW1ib2xzLiBUaGlzIGNoYW5nZSBpcwppbiBwcmVwYXJhdGlvbiBmb3IgYWRk
aW5nIG90aGVyIEFpcm9oYSBQSFkgZHJpdmVycyBpbiB0aGUgZnV0dXJlLgoKWyAuLi4gXQoKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvTWFrZWZpbGUgYi9kcml2ZXJzL3BoeS9NYWtlZmlsZQo+
IGluZGV4IGY0OWQ4M2YwMGEzZDguLjg0MDYyMjc5ZmE2M2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9waHkvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL3BoeS9NYWtlZmlsZQo+IEBAIC03LDcgKzcs
NiBAQCBvYmotJChDT05GSUdfUEhZX0NPTU1PTl9QUk9QUykJCSs9IHBoeS1jb21tb24tcHJvcHMu
bwo+ICBvYmotJChDT05GSUdfUEhZX0NPTU1PTl9QUk9QU19URVNUKQkrPSBwaHktY29tbW9uLXBy
b3BzLXRlc3Qubwo+ICBvYmotJChDT05GSUdfR0VORVJJQ19QSFkpCQkrPSBwaHktY29yZS5vCj4g
IG9iai0kKENPTkZJR19HRU5FUklDX1BIWV9NSVBJX0RQSFkpCSs9IHBoeS1jb3JlLW1pcGktZHBo
eS5vCj4gLW9iai0kKENPTkZJR19QSFlfQUlST0hBX1BDSUUpCQkrPSBwaHktYWlyb2hhLXBjaWUu
bwoKW1NldmVyaXR5OiBMb3ddClRoZSBjb21taXQgbWVzc2FnZSBzdGF0ZXMgdGhlIGRyaXZlciBp
cyBiZWluZyBtb3ZlZCwgYnV0IHRoZSBkaWZmIG9ubHkgc2hvd3MKYWRkaW5nIHRoZSBuZXcgZmls
ZXMgaW4gdGhlIGFpcm9oYSBkaXJlY3RvcnkuIEl0IGRvZXNuJ3QgcmVtb3ZlIHRoZSBvcmlnaW5h
bApkcml2ZXJzL3BoeS9waHktYWlyb2hhLXBjaWUuYyBhbmQgZHJpdmVycy9waHkvcGh5LWFpcm9o
YS1wY2llLXJlZ3MuaCBmaWxlcy4KU2hvdWxkIHRoZXNlIG9sZCBmaWxlcyBiZSBkZWxldGVkIGlu
IHRoaXMgcGF0Y2ggdG8gYXZvaWQgbGVhdmluZyB1bmNvbXBpbGVkCmRlYWQgY29kZSBpbiB0aGUg
dHJlZT8KClsgLi4uIF0KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2Fpcm9oYS9waHktYW43
NTgxLXBjaWUtcmVncy5oIGIvZHJpdmVycy9waHkvYWlyb2hhL3BoeS1hbjc1ODEtcGNpZS1yZWdz
LmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLmI5MzhhN2I0
NjhmZWUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkvYWlyb2hhL3BoeS1hbjc1
ODEtcGNpZS1yZWdzLmgKPiBAQCAtMCwwICsxLDQ5NCBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogR1BMLTIuMC1vbmx5Cj4gKy8qCj4gKyAqIENvcHlyaWdodCAoYykgMjAyNCBBSVJP
SEEgSW5jCj4gKyAqIEF1dGhvcjogTG9yZW56byBCaWFuY29uaSA8bG9yZW56b0BrZXJuZWwub3Jn
Pgo+ICsgKi8KPiArCj4gKyNpZm5kZWYgX1BIWV9BSVJPSEFfUENJRV9ICgpbU2V2ZXJpdHk6IExv
d10KU2luY2UgdGhlIGZpbGUgaXMgYmVpbmcgcmVuYW1lZCB0byBwaHktYW43NTgxLXBjaWUtcmVn
cy5oLCBzaG91bGQgdGhpcwppbmNsdWRlIGd1YXJkIGJlIHVwZGF0ZWQgdG8gbWF0Y2ggdGhlIG5l
dyBmaWxlbmFtZT8gUmV1c2luZyB0aGUgb2xkIGd1YXJkCm1pZ2h0IGNhdXNlIGNvbmZsaWN0cywg
cGFydGljdWxhcmx5IHNpbmNlIHRoZSBvbGQgaGVhZGVyIGZpbGUgd2FzIG5vdApkZWxldGVkLgoK
PiArI2RlZmluZSBfUEhZX0FJUk9IQV9QQ0lFX0gKPiArCj4gKy8qIENTUl8yTCAqLwo+ICsjZGVm
aW5lIFJFR19DU1JfMkxfQ01OCQkJCTB4MDAwMAoKWyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUxOTIyMDgxMy4yODQ2
OC0xLWFuc3VlbHNtdGhAZ21haWwuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
