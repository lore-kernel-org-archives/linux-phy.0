Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E8E606A330
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 13:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Qph74HyC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=IS82Q+yH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nvtSrik2+/Oy73WVU45lDSbQAkYSyklUXUTfJ79yTWI=; b=Qph74HyClSzKGKoko/SGo17xYA
	EZjb1Jb1mH63edDW7ZojeQ/3v2Djcwg1V5534oVi6Sd94BIfZYav5y2Zzb6pZ8z134GvQQQXxIv6p
	EZ8hEzEaqAXfVavdeypjxxN7dQ7AEEiONdFCofIAY+F1R1kfR5rguZHE4i/30MaQOv7nORLCaYFyk
	2utAaU2jNx4r6ACz34+b3dpJO1tVjDNRiYRFL5tMroWv2a+H89SOMPdQs/H1eQ6Z1gvNJxkWxNmFB
	G2TBumP9m8szxaHLXaHrcCmB97UHp0zIDtxrUR88HlFh2rJMyZ1/nzR+B0309263KOXW26ZjTpI1w
	7QU1ZqDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUONr-0000000F3V8-1VeC;
	Fri, 20 Nov 2026 13:10:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUONp-0000000F3V2-3GeL
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 13:10:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 493A0468CC;
	Fri, 20 Nov 2026 13:10:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B283C1F0093C;
	Fri, 20 Nov 2026 13:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795180229;
	bh=WgsgDEptb1WfQcFPHT5FL+IZJcye/iQfq0n7PVkxj+s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IS82Q+yHpVL4dgo2mR7SPki6SOwJwnp0TF0o6DVIZGrtvxKNH7tsN+MCEpSzI1cLr
	 EXc1MQ+2xgxW9Pu6VGXNIOhr4922uCnuJImFtfY3BpAaxwFBleVbq9ezCwXzdeySOW
	 YfdeMImB96pM7QLCfZLLJ3Yvo1BQKXuX2Sn2NGLYH0HA1hnVD11RTnLq0cw+rxu+EV
	 aETQJD1j6hXnMtgSvkhZbnliZla+CqcuUc05O++lgJwD1umKWu3rLzVCD9F4nIg/uT
	 /T5R1RGvFqvNnABhQqjrbbeoQWtwReUIgCQ+I/A1mgk+M3xss0XBxqziiUIbvVWzKz
	 OKXlrdOJedBww==
Message-ID: <sashiko-outbox-225185@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: phy: cadence-torrent: add phy-mode
 constants
To: "Benjamin Robin" <benjamin.robin@bootlin.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261120-phy-cadence-torrent-ng-v1-3-da2db7125cd7@bootlin.com>
References: <20261120-phy-cadence-torrent-ng-v1-0-da2db7125cd7@bootlin.com>
 <20261120-phy-cadence-torrent-ng-v1-3-da2db7125cd7@bootlin.com>
Date: Fri, 20 Nov 2026 13:10:28 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6IHBo
eTogY2FkZW5jZS10b3JyZW50OiBjZG5zLHBoeS1tb2RlIGNvbmZsYXRlcwogIG1vZGVzIGFuZCBk
dXBsaWNhdGVzIFFTR01JSQotLQoKY29tbWl0IDJkZTU5ZjMyYjRhOWJhMGExMjNjZmZkYWUxYmZi
NmMyM2Q3NDQ3NmMKQXV0aG9yOiBCZW5qYW1pbiBSb2JpbiA8YmVuamFtaW4ucm9iaW5AYm9vdGxp
bi5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBjYWRlbmNlLXRvcnJlbnQ6IGFkZCBwaHktbW9kZSBj
b25zdGFudHMKClRoaXMgY29tbWl0IGFkZHMgdGhlIGNkbnMscGh5LW1vZGUgcHJvcGVydHkgdG8g
dGhlIENhZGVuY2UgVG9ycmVudCBQSFkKYmluZGluZyBhbmQgZGVmaW5lcyB0aGUgQ0ROU19UT1JS
RU5UX01PREVfKiBjb25zdGFudHMgaW4KaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5LWNhZGVu
Y2UuaC4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcGh5LWNhZGVuY2UtdG9ycmVudC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9waHktY2FkZW5jZS10b3JyZW50LnlhbWwKPiBpbmRleCA4ZTg0NWUyMzczYWNk
Li4xN2E4MzQzYWM4OTkwIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcGh5LWNhZGVuY2UtdG9ycmVudC55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktY2FkZW5jZS10b3JyZW50LnlhbWwKPiBAQCAt
MTAxLDYgKzEwMSwxNSBAQCBwYXR0ZXJuUHJvcGVydGllczoKPiAgICAgICAgICAkcmVmOiAvc2No
ZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPiAgICAgICAgICBlbnVtOiBbMSwg
MiwgMywgNCwgNSwgNiwgNywgOCwgOSwgMTJdCj4gIAo+ICsgICAgICBjZG5zLHBoeS1tb2RlOgo+
ICsgICAgICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICAgICAgU3BlY2lmaWVzIGFuIG9wdGlvbmFs
IG1vZGUgb2YgUEhZIGZvciB3aGljaCB0aGUgZ3JvdXAgb2YgUEhZIGxhbmVzIGlzIHVzZWQuCj4g
KyAgICAgICAgICBSZWZlciBpbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9waHktY2FkZW5jZS5oIGZv
ciB0aGUgY29uc3RhbnRzIHRvIGJlIHVzZWQuCj4gKyAgICAgICAgJHJlZjogL3NjaGVtYXMvdHlw
ZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyCj4gKyAgICAgICAgbWluaW11bTogMAo+ICsgICAg
ICAgIG1heGltdW06IDYzCj4gKyAgICAgICAgZGVmYXVsdDogMAo+ICsKPiAgICAgICAgY2Rucyxu
dW0tbGFuZXM6Cj4gICAgICAgICAgZGVzY3JpcHRpb246Cj4gICAgICAgICAgICBOdW1iZXIgb2Yg
bGFuZXMuCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS1jYWRlbmNl
LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3BoeS9waHktY2FkZW5jZS5oCj4gaW5kZXggMDY3MTk5
MTIwOGZjZC4uOTQ5NDViODQzMjg4YyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2R0LWJpbmRpbmdz
L3BoeS9waHktY2FkZW5jZS5oCj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9waHkvcGh5LWNh
ZGVuY2UuaAo+IEBAIC0xNSw2ICsxNSwxNCBAQAo+ICAjZGVmaW5lIENETlNfVE9SUkVOVF9ERVJJ
VkVEX1JFRkNMSwkxCj4gICNkZWZpbmUgQ0ROU19UT1JSRU5UX1JFQ0VJVkVEX1JFRkNMSwkyCj4g
IAo+ICsjZGVmaW5lIENETlNfVE9SUkVOVF9NT0RFX05PTkUJCTB4MDAKPiArI2RlZmluZSBDRE5T
X1RPUlJFTlRfTU9ERV9VU0JfRzEJMHgwMQo+ICsjZGVmaW5lIENETlNfVE9SUkVOVF9NT0RFX1VT
Ql9JT18xMVYJMHgwMgo+ICsjZGVmaW5lIENETlNfVE9SUkVOVF9NT0RFX1hBVUlfTFAJMHgwNAo+
ICsjZGVmaW5lIENETlNfVE9SUkVOVF9NT0RFX1NBVEFfTFAJMHgwOAo+ICsjZGVmaW5lIENETlNf
VE9SUkVOVF9NT0RFXzI1MDBfQkFTRVgJMHgxMAo+ICsjZGVmaW5lIENETlNfVE9SUkVOVF9NT0RF
X1FTR01JSQkweDIwCj4gKwo+ICAvKiBTaWVycmEgKi8KPiAgI2RlZmluZSBDRE5TX1NJRVJSQV9Q
TExfQ01OTEMJCTAKPiAgI2RlZmluZSBDRE5TX1NJRVJSQV9QTExfQ01OTEMxCQkxCgpbU2V2ZXJp
dHk6IE1lZGl1bV0KU2hvdWxkIGNkbnMscGh5LW1vZGUgYmUgbW9kZWxpbmcgYWxsIG9mIHRoZXNl
IGFzIGEgc2luZ2xlIHVuY29uc3RyYWluZWQKMC4uNjMgYml0bWFzaz8KCkZpcnN0LCBDRE5TX1RP
UlJFTlRfTU9ERV9RU0dNSUkgZHVwbGljYXRlcyBQSFlfVFlQRV9RU0dNSUkgKDkgaW4KaW5jbHVk
ZS9kdC1iaW5kaW5ncy9waHkvcGh5LmgpLCB3aGljaCBpcyBhbHJlYWR5IGFjY2VwdGVkIGJ5IGNk
bnMscGh5LXR5cGUsCmNyZWF0aW5nIHR3byB3YXlzIHRvIGRlc2NyaWJlIFFTR01JSSBpbiBEZXZp
Y2UgVHJlZS4KClNlY29uZCwgdGhlIENETlNfVE9SUkVOVF9NT0RFXyogZmxhZ3MgcGFjayBvcnRo
b2dvbmFsIGhhcmR3YXJlIHByb3BlcnRpZXMKaW50byBvbmUgYml0bWFzazogYW4gSS9PIHN1cHBs
eSB2b2x0YWdlIGNoYXJhY3RlcmlzdGljCihDRE5TX1RPUlJFTlRfTU9ERV9VU0JfSU9fMTFWKSwg
YSBVU0IgbGluayBnZW5lcmF0aW9uIGxpbWl0CihDRE5TX1RPUlJFTlRfTU9ERV9VU0JfRzEpLCBw
cm90b2NvbCBsb3ctcG93ZXIgc2V0dGluZ3MKKENETlNfVE9SUkVOVF9NT0RFX1hBVUlfTFAgYW5k
IENETlNfVE9SUkVOVF9NT0RFX1NBVEFfTFApLCBhbmQgRXRoZXJuZXQKaW50ZXJmYWNlIHN1Yi1t
b2RlcyAoQ0ROU19UT1JSRU5UX01PREVfMjUwMF9CQVNFWCBhbmQKQ0ROU19UT1JSRU5UX01PREVf
UVNHTUlJKS4KCkZpbmFsbHksIGNvbnN0cmFpbmluZyBjZG5zLHBoeS1tb2RlIG9ubHkgd2l0aCBt
aW5pbXVtOiAwIGFuZCBtYXhpbXVtOiA2MwphbGxvd3MgYXJiaXRyYXJ5IGJpdHdpc2UgY29tYmlu
YXRpb25zIG9mIG11dHVhbGx5IGV4Y2x1c2l2ZSBwcm90b2NvbCBmbGFncwp0byBwYXNzIGR0YnNf
Y2hlY2sgd2l0aG91dCBwZXItY2RucyxwaHktdHlwZSB2YWxpZGF0aW9uLgoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEyMC1waHkt
Y2FkZW5jZS10b3JyZW50LW5nLXYxLTAtZGEyZGI3MTI1Y2Q3QGJvb3RsaW4uY29tP3BhcnQ9MwoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
