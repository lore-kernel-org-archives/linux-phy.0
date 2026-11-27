Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51A4606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 07:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tQToYs8d;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=gsrr4ce1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ah97M1I+vlzCisVVCdKTyvRsEE0VBFkrHgGs7X/Wn/Q=; b=tQToYs8dAjrwZOCOekEWTG+yeW
	VjlyzpIBj8S6cCF6xAfcm7quBQG6bonBLif2ItICAi4JpXeQXfvheIH6N8tUufNtEkytrzeqwBdTh
	8/O7/D1U/IZ77mxzxRlL3Y/kiAvslJVbr5h6hfdRbhwn0Hig94p1I0mSimNkyqGd2BZ5CEuviOLXj
	a6IrWvRl/7YXSNiNax6+9qKLu+89mVwkJq6vWWdQwRNzdF59W3j20d/jniWpMdS/fKkJOIsAkH+PT
	NqrkTDIfQIp1cOAjesFDKYZ9nDTMkGduO15iXo9y/mJCdEFyA3qWAZY2bMrmGWXgNSMtfK+EbvmaL
	fnFh4ueA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqq0-0000000FDUm-1h9k;
	Fri, 27 Nov 2026 07:57:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqpz-0000000FDUb-0KQ6
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 07:57:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7A9D66126D;
	Fri, 27 Nov 2026 07:57:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D235A1F00898;
	Fri, 27 Nov 2026 07:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795766262;
	bh=NnPdEAYz/7XWxxaJPld9mU0+MzVdVP9gQ8gL9OXAwDY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gsrr4ce13efG+bBW8Plp86Mwb3bknUsyYDlsfhBrCQxf//oFPyLRN3A4IWgDk3VZX
	 QDrrDC9xAT0G97YYcv0n9L/Xu1y0zkVBHJfALboSKla7vuPqiiN5btlN1YnNJ6JFLR
	 vHzL9BWtuhMJgVopqviYV0uc6i9i3tXd9pRCQ6PJ9cc/jZQ8Vc/GBeLdxaNF5vbsM3
	 9cpq9QVF4gb0X9wZjTOdAcUqA3Uod6aUq+miq5Rgg7abdGIxiEFZp25TiyErNtrLg0
	 3Sxi8WCYUWPSWMRsPpb2tJatLzcK7/Mh7dSy8Gcz/dN9ZMtKi+9gmDmuPyQyMbNt+a
	 EjxeED8KY3+Mw==
Message-ID: <sashiko-outbox-236847@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 5/9] phy: rockchip-samsung-dcphy: Move block-level
 setup to runtime resume
To: "Jason Yang" <jason98166@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261127-dcphy-rx-v1-v8-5-9ddfef99221d@gmail.com>
References: <20261127-dcphy-rx-v1-v8-0-9ddfef99221d@gmail.com>
 <20261127-dcphy-rx-v1-v8-5-9ddfef99221d@gmail.com>
Date: Fri, 27 Nov 2026 07:57:41 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiByb2NrY2hpcC1z
YW1zdW5nLWRjcGh5OiBzdGFsZSBTU0MgaW4KICBzYW1zdW5nX21pcGlfZGNwaHlfcGxsX2NvbmZp
Z3VyZSgpCi0tCgpjb21taXQgZWRiYmYxZTZiYTQwYTcwOTZlYzY2Njk1NjlkMzE4NzkyYTkzNTg3
YQpBdXRob3I6IEphc29uIFlhbmcgPGphc29uOTgxNjZAZ21haWwuY29tPgoKcGh5OiByb2NrY2hp
cC1zYW1zdW5nLWRjcGh5OiBNb3ZlIGJsb2NrLWxldmVsIHNldHVwIHRvIHJ1bnRpbWUgcmVzdW1l
CgpUaGlzIGNvbW1pdCBtb3ZlcyB0aGUgQVBCIHJlc2V0IHB1bHNlIGFuZCBCSUFTIGJsb2NrIGVu
YWJsZW1lbnQgZnJvbSB0aGUKUEhZIHBvd2VyLW9uIGNhbGxiYWNrIHRvIHRoZSBydW50aW1lIHJl
c3VtZSBjYWxsYmFjayBzbyB0aGF0IGJyaW5naW5nIHVwIGEKc2Vjb25kIFBIWSBjb25zdW1lciBk
b2VzIG5vdCByZXNldCBhIHJ1bm5pbmcgYmxvY2suCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwo+IGluZGV4IDdhMDA5ZDg3YTY2NTYu
LmQ2YWNjM2UyZDQ0ODYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXNhbXN1bmctZGNwaHkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMKClsgLi4uIF0KCj4gQEAgLTEzNzMsMTAgKzEzNzIsNiBA
QCBzdGF0aWMgaW50IHNhbXN1bmdfbWlwaV9kY3BoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkp
Cj4gIHsKPiAgCXN0cnVjdCBzYW1zdW5nX21pcGlfZGNwaHkgKnNhbXN1bmcgPSBwaHlfZ2V0X2Ry
dmRhdGEocGh5KTsKPiAgCj4gLQlyZXNldF9jb250cm9sX2Fzc2VydChzYW1zdW5nLT5hcGJfcnN0
KTsKPiAtCXVkZWxheSgxKTsKPiAtCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoc2Ftc3VuZy0+YXBi
X3JzdCk7Cj4gLQo+ICAJc3dpdGNoIChzYW1zdW5nLT50eXBlKSB7Cj4gIAljYXNlIFBIWV9UWVBF
X0RQSFk6Cj4gIAkJcmV0dXJuIHNhbXN1bmdfbWlwaV9kcGh5X3Bvd2VyX29uKHNhbXN1bmcpOwoK
W1NldmVyaXR5OiBNZWRpdW1dCkNhbiByZW1vdmluZyB0aGUgQVBCIHJlc2V0IGZyb20gc2Ftc3Vu
Z19taXBpX2RjcGh5X3Bvd2VyX29uKCkgbGVhdmUKc3ByZWFkLXNwZWN0cnVtIGNsb2NraW5nIChT
U0NHX0VOIGluIFBMTF9DT040KSBlbmFibGVkIHdoZW4gdGhlIEQtUEhZCnRyYW5zbWl0dGVyIGlz
IHJlY29uZmlndXJlZCBmcm9tIGEgcmF0ZSBhYm92ZSAyLjUgR2JwcyBkb3duIHRvIDIuNSBHYnBz
IG9yCmJlbG93IHdoaWxlIHRoZSBkZXZpY2Ugc3RheXMgcnVudGltZS1hY3RpdmU/CgpQcmV2aW91
c2x5LCBwdWxzaW5nIGFwYl9yc3Qgb24gZXZlcnkgcG93ZXItb24gcmVzZXQgUExMX0NPTjMgYW5k
IFBMTF9DT040CnRvIHRoZWlyIGRlZmF1bHRzLiAgVW5saWtlIHRoZSBsYW5lIHRpbWluZyByZWdp
c3RlcnMgdXBkYXRlZCBpbiBjb21taXQKInBoeTogcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeTogQWx3
YXlzIHdyaXRlIHRoZSByYXRlLWRlcGVuZGVudCByZWdpc3RlcnMiLApzYW1zdW5nX21pcGlfZGNw
aHlfcGxsX2NvbmZpZ3VyZSgpIG9ubHkgdG91Y2hlcyBQTExfQ09OMyBhbmQgUExMX0NPTjQgd2hl
bgpzYW1zdW5nLT5wbGwuc3NjX2VuIGlzIHRydWUsIGFuZCBzYW1zdW5nX21pcGlfZGNwaHlfcGxs
X2NhbGNfcmF0ZSgpIG5ldmVyCmNsZWFycyBzYW1zdW5nLT5wbGwuc3NjX2VuIHdoZW4gZm91dCA8
PSAyNTAwMDAwMDAwTEw6Cgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3Vu
Zy1kY3BoeS5jOnNhbXN1bmdfbWlwaV9kY3BoeV9wbGxfY29uZmlndXJlKCkgewoJLi4uCglpZiAo
c2Ftc3VuZy0+cGxsLnNzY19lbikgewoJCXJlZ21hcF93cml0ZShzYW1zdW5nLT5yZWdtYXAsIFBM
TF9DT04zLAoJCQkgICAgIE1SUihzYW1zdW5nLT5wbGwubXJyKSB8IE1GUihzYW1zdW5nLT5wbGwu
bWZyKSk7CgkJcmVnbWFwX3VwZGF0ZV9iaXRzKHNhbXN1bmctPnJlZ21hcCwgUExMX0NPTjQsIFNT
Q0dfRU4sIFNTQ0dfRU4pOwoJfQoJLi4uCn0KCldoZW4gYSBtb2Rlc2V0IHN3aXRjaGVzIGZyb20g
PiAyLjUgR2JwcyB0byA8PSAyLjUgR2JwcyB3aGlsZSBydW50aW1lIFBNCnJlbWFpbnMgYWN0aXZl
LCBTU0NHX0VOIGFuZCB0aGUgcHJldmlvdXMgbXJyL21mciB2YWx1ZXMgcmVtYWluIGFjdGl2ZSBp
bgpoYXJkd2FyZSBmb3IgdGhlIGxvd2VyLXJhdGUgbW9kZS4gIENsZWFyaW5nIHNhbXN1bmctPnBs
bC5zc2NfZW4gYnkgZGVmYXVsdAppbiBzYW1zdW5nX21pcGlfZGNwaHlfcGxsX2NhbGNfcmF0ZSgp
IGFuZCBjbGVhcmluZyBTU0NHX0VOIGluIFBMTF9DT040IHdoZW4Kc3NjX2VuIGlzIGZhbHNlIHdv
dWxkIGF2b2lkIHN0YWxlIFBMTCBtb2R1bGF0aW9uIHN0YXRlLgoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEyNy1kY3BoeS1yeC12
MS12OC0wLTlkZGZlZjk5MjIxZEBnbWFpbC5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
