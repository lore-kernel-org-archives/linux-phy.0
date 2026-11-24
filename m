Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4D5606A31E
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 07:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=M7YVf5gR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=ilbhi57f
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5lr62Jx68ccS35p0RCAB8tJUd1CNFY0psiRXigl30RE=; b=M7YVf5gRkU/KEZf4FQZ9wl1qPg
	A2+E0K8GgyP+bjfXK+GoyMQoxcGFTxdZw87YC9Cx1XTHmCfskS5VUn+IXgYW5hjx70EodI4/HNHZp
	ZlcgBjKl9zkQIq1wawFBgcRhMcy6lJwJ7dXxtksmA6v3KpeT2ddD5pR5T8KaBw9FiQh6Fj7J2UOqB
	4Para5R0Zx/WZ0Zz5GgBtMJQ4epGDo7jIQuD/OU3V5xVGyZuUZ2Htd9hKFulYUvoLZMcdKbYQvDV9
	H5138sn4cO1htSw561HWMFI/N70YO2S366koP2dsUr4vmKAKp+rsSIs6VEwB/+AUQqxqrG5nPXjQ7
	vw9VOcsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkpI-00000005ilA-2Lui;
	Tue, 24 Nov 2026 07:20:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkpG-00000005iky-3nkI
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 07:20:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EB7B760F01;
	Tue, 24 Nov 2026 07:20:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D18271F000C6;
	Tue, 24 Nov 2026 07:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795504825;
	bh=zxTLm5lJGRMPxpsJjM7sJqqCXC6eU9hPG2t9xFY1cv4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ilbhi57fNFUpkGZ+JIoxoqI0lk8jEp3HLMD3uJVYpZJnuONnN0Fmsz8VkO4WGMVeq
	 aNcpOUtJD81qsFOHAv1+zojV+p/PNPWdRQH05DVSx43672VGg5gSBus998w2oF3LLQ
	 mi3RWAgT+7UOh8xwpiOk96Cgps46R7yHbe71UonGv486IOdH/rxSB/N5FnKmw5r8h/
	 kpXJjaH5iy56+7ED+DeMCB6TlSB12TGBV3oDjpr9t6RCkFnMT+91gZmbWQJGpHwhzp
	 gFfCUm0FVqO0i+C8oi2NzeMvZ36V3c3ke1cz8YoJ19n8usWNp8i5M9BLC5xKFvKpY1
	 8ty8ORRfChtuQ==
Date: Tue, 24 Nov 2026 12:50:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mark Brown <broonie@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: linux-next: build failure in the final build
Message-ID: <awU6tez-f_pEi0Ag@parshuram>
References: <awR7nSOWkxRm-iP6@sirena.org.uk>
 <c631c19d-4fcc-4881-a6ec-9dad24419fe4@kernel.org>
 <b7fda918-8355-46da-b7f4-40e1a104279b@sirena.org.uk>
 <2fd6f05a-6dfe-40c9-a7ad-44c28af8584b@kernel.org>
 <0af7abff-2c33-4920-835f-9c5abe73b143@sirena.org.uk>
 <7ee4f5c9-58cd-4238-be2e-f092acf3c137@kernel.org>
 <680fcf4e-4e5f-41fd-868a-a0ce58ed77d5@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <680fcf4e-4e5f-41fd-868a-a0ce58ed77d5@oss.qualcomm.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjQtMTEtMjYsIDAzOjA4LCBLcmlzaG5hIEt1cmFwYXRpIHdyb3RlOgo+IAo+IAo+IE9uIFR1
ZSwgTm92IDI0LCAyMDI2IGF0IDEyOjMx4oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0Br
ZXJuZWwub3JnPgo+IHdyb3RlOgo+ID4gCj4gPiBPbiAyMy8xMS8yMDI2IDE5OjU4LCBNYXJrIEJy
b3duIHdyb3RlOgo+ID4gPiBoZWxwZnVsIHRvIGhhdmUgYmV0dGVyIGNvbXBpbGUgdGVzdCBjb3Zl
cmFnZSBmb3IgdGhlc2UgZHJpdmVycyB0byBoZWxwCj4gPiA+IGF2b2lkIHN1Y2ggaXNzdWVzLCB0
aGUgZWFzaWVyIGl0IGlzIHRvIGdldCB0aGUgY29kZSBidWlsdCB0aGUgYmV0dGVyLgo+ID4gCj4g
PiBJJ2xsIGZpeCB0aGUgbWlzc2luZyBjb21waWxlIHRlc3QgZm9yIHRoYXQgZHJpdmVyLgo+ID4g
Cj4gCj4gQXBvbG9naWVzLiBJIGRpZG4ndCBidWlsZCBpdCBmb3IgYWxseWVzY29uZmlnLiBJIGRp
ZCB1bmNvdmVyIHRoaXMgaXNzdWUKPiByZWNlbnRseSB3aGVuIHRlc3Rpbmcgb24gYSBkaWZmZXJl
bnQgYnJhbmNoIHdoZXJlIHRoZSBzYWlkIGRyaXZlciB3YXMKPiBlbmFibGVkLiBJIHdhcyBwbGFu
bmluZyBvbiBzZW5kaW5nIGEgcHJvcGVyIGZpeCBhbG9uZyB3aXRoIHY5LiAgVGhlcmUgd2VyZQo+
IHNvbWUgZnJlc2ggY29tbWVudHMgdGhhdCBjYW1lIHVwIGZyb20gbWFpbnRhaW5lciBWaW5vZCBs
YXN0IHdlZWsgWzFdLgo+IAo+IEkgd2FzIHBsYW5uaW5nIG9uIGRvaW5nIHR3byB0aGluZ3M6Cj4g
MSkgRml4IHVwIHRoZSBidWlsZCBlcnJvciB3aGVuIHNlbmRpbmcgdjkuCj4gMikgU2VuZCBvbiB0
b3Agb2YgcGh5IG5leHQgWzJdLgo+IAo+IEkgd2lsbCB0YWtlIGNhcmUgbm90IHRvIGxldCBzdWNo
IHRoaW5ncyBoYXBwZW4gZnJvbSBuZXh0IHRpbWUgZnJvbSBteSBlbmQuCj4gU29ycnkgZm9yIHRo
ZSBpbmNvbnZlbmllbmNlIGNhdXNlZC4KPiAKPiBBcyBwZXIgbWl4aW5nIHBoeSBhbmQgdXNiIHBh
dGNoZXMsIEkga25vdyB0aGF0IHVzYiBzdWJzeXN0ZW0gcHJlZmVycyBub3QKPiBtaXhpbmcgdXAg
dXNiIHBhdGNoZXMgd2l0aCBvdGhlcnMsIGJ1dCBpbiB0aGlzIGNhc2UsIEkgdGhvdWdodCB0aGF0
IHdlIG11c3QKPiBzZW5kIGEgY29tcGxldGUgc2VyaWVzIGluc3RlYWQgb2Ygc2VuZGluZyA0IHBo
eSBwYXRjaGVzIGFuZCB0aGVuIHNlbmRpbmcgYQo+IHNlcGFyYXRlIHVzYiBwYXRjaCBtYXJraW5n
IHRoZSBkZXBlbmRlbmN5IG9uIHBoeSBwYXRjaGVzLiBJbiB0aGF0IGNhc2UsIEkKPiB3b3VsZCBo
YXZlIGhhZCB0byBzZW5kIHVzYiBwYXRjaCBvbmNlIHBoeSBwYXRjaCB3YXMgaW4gbGludXggbmV4
dCBzbyB0aGF0IG5vCj4gYnVpbGQgZXJyb3Igd291bGQgY29tZSB1cCB3aGVuIEdyZWcgd291bGQg
aGF2ZSBwaWNrZWQgdXNiIHBhdGNoIGludG8gaGlzCj4gdHJlZS4gTGV0IG1lIGtub3cgd2hhdCBp
cyBwcmVmZXJhYmxlIGluIHRoaXMgY2FzZS4KPiAKPiBJbiBjYXNlIFZpbm9kIGlzIGZpbmUgd2l0
aCB0aGUgaW1wbGVtZW50YXRpb24gYW5kIGNvbW1lbnRzIHJlcGxpZWQgdG8gb24KPiBbMV0sIHRo
ZW4gdGhpcyBzZXJpZXMgbmVlZCBub3QgYmUgcmV2ZXJ0ZWQgYW5kIHRoZSBidWlsZCBlcnJvciBj
YW4gYmUgZml4ZWQKPiBieSBTYXNoYSdzIHBhdGNoIHNlbnQgdG9kYXkgWzNdLiBFbHNlLCBHcmVn
LCBwbGVhc2UgZG8gaGVscCByZXZlcnQgdGhlCj4gc2VyaWVzIGZyb20gdXNiIHRyZWUuIEkgd2ls
bCByZWJhc2Ugdjkgb24gdG9wIG9mIHBoeSBuZXh0IGFmdGVyIGFkZHJlc3NpbmcKPiB0aGUgY29t
bWVudHMgZnJvbSBWaW5vZC4KCk5vIGkgZG9udCB0aGluayBJIGFtIGZpbmUgd2l0aCB0aGUgYXBw
cm9hY2ggc3VycHJpc2VkIHRoYXQgaXQgZ290IHBpY2tlZAp1cCAoSSBndWVzcyB3aXRoIHVzYiku
CgpJRiB0aGVyZSBpcyBubyBkZXBlbmRlbmNpZXMgcGxlYXNlIHNwbGl0IHRoZSBzdHVmZi4uLiBJ
dCBqdXN0IG1ha2UgaXQKaGFyZGVyLgpJIGd1ZXNzIGlmIEdyZWcgY2FuIGRyb3Agb2ZmZW5kaW5n
IGNvbW1pdCwgdGhhdCBtaWdodCBiZSBiZXR0ZXIgd2F5CgoKPiAKPiBbMV06IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC82ZWQwNzkzYy03NmNlLTRkMDQtYWY1Zi04OTg3MzExYzVjMGZAb3Nz
LnF1YWxjb21tLmNvbS8KPiBbMl06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC82ODUxY2Ey
Yi03NzVlLTQ0ZDctYjQzNy1kMDRmZDRlYTRmMjFAb3NzLnF1YWxjb21tLmNvbS8KPiBbM106IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MTEyMjE1Mjg1Ny4xMTEzOTQzLTEtc2FzaGFs
QGtlcm5lbC5vcmcvCj4gCj4gUmVnYXJkcywKPiBLcmlzaG5hCgotLSAKflZpbm9kCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
