Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED69CD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 05:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRBiOUscWNNgod+nWGcPcR40A1U86Nkwx9wdOYN/9Hk=; b=A9M9AbAZiiQVec
	gsdEimMGQgzGlL8QW3BSP9Dld+3HcUwacsvN+yktRgtOlnJtHFp0dkQramv7mLrdwF7Xz3rRGlNmu
	jDD7gqd/2csteUpCkfnY/3DGI3muisVv//Q9GJeIZJSvTo1fE4bQ3wAcGjKA9gM06WKOe1/eAoQuH
	R/DCde25ChvhKyQtdYtns27eVyBN6mU7U2Ax+MruvnssVwkllRWpZ031TYfE8IehRKopo8Q5BLobl
	ALco9yI4wBZKrGEiHRo7GxPb9aFHrz+WV1UPa/W9hfVhDbotQMwlIThvHjJL5E3IlioarR9GgPVww
	nFYIZTOoHaoZwL14s2Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWSn8-00000002r3k-06PX;
	Mon, 08 Jun 2026 05:44:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWSn6-00000002r3b-3YXu
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 05:44:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3BB056001D;
	Mon,  8 Jun 2026 05:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 874271F00893;
	Mon,  8 Jun 2026 05:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780897489;
	bh=CUd8eq9SHlKtFO0XGQ/sts/v4Vvjxi+JaQh7G8T0wR4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hHaaM8AitlkCwUSK4S2QGKJWG3+zVzNGPhGj4angnn88c/8z+5qFq4VtySsYOmLK1
	 YkaxNkEiC9HZkqWcDj0SL2PIVw0Q/i4ZGaKF47kU1ZtATADTCHdEUsOCH6QSMOQLMg
	 9mb+hmkd4RMlWx26vHKwKom/JZGZbRVtuURMrlqKezwWElnNKCVvYmxbmVa6CErJVC
	 E6rjYhQMAOh5eZfMko85Q31IsWpcKmdc7JXcJDFppp1/+oqJNC/nuuB7Qx3FLDUKf3
	 3t/7zOAx7iYW4SsfF9f08cNceXYK+zZzB5X9Ca4TFVX5D5ltw9RmAZ9a61No3FDLSj
	 k80qkzYekwIJw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: apple: atc: remove stale kernel-doc for removed
 struct members
To: "Rosen Penev" <rosenp@gmail.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260608053525.12354-1-rosenp@gmail.com>
References: <20260608053525.12354-1-rosenp@gmail.com>
Date: Mon, 08 Jun 2026 05:44:49 +0000
Message-Id: <20260608054449.874271F00893@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtMb3ddIFRo
ZSBwYXRjaCByZW1vdmVzIGtlcm5lbC1kb2MgZGVzY3JpcHRpb25zIGZvciBgQHN3YCBhbmQgYEBt
dXhgLCBmYWxzZWx5IGNsYWltaW5nIHRoZSBzdHJ1Y3QgbWVtYmVycyB3ZXJlIHJlbW92ZWQsIHdo
aWNoIGludHJvZHVjZXMgbmV3IGtlcm5lbC1kb2Mgd2FybmluZ3MuCgpQcmUtZXhpc3RpbmcgaXNz
dWVzOgotIFtIaWdoXSBUeXBlLUMgc3dpdGNoIGFuZCBtdXggb2JqZWN0cyBhcmUgbGVha2VkIGFu
ZCBjYXVzZSBVc2UtQWZ0ZXItRnJlZSBvbiBkcml2ZXIgdW5iaW5kIG9yIHByb2JlIGVycm9yLgot
LQoKY29tbWl0IDJjMGYzMDVlZmI0NjBjMzZhZDYzYmNhZWY5MGEwNGY1NTVlNWE2NWIKQXV0aG9y
OiBSb3NlbiBQZW5ldiA8cm9zZW5wQGdtYWlsLmNvbT4KCnBoeTogYXBwbGU6IGF0YzogcmVtb3Zl
IHN0YWxlIGtlcm5lbC1kb2MgZm9yIHJlbW92ZWQgc3RydWN0IG1lbWJlcnMKICAgIApUaGUgQHN3
IGFuZCBAbXV4IG1lbWJlcnMgd2VyZSByZW1vdmVkIGZyb20gc3RydWN0IGFwcGxlX2F0Y3BoeSBi
dXQgdGhlaXIKa2VybmVsLWRvYyBlbnRyaWVzIHJlbWFpbmVkLCBjYXVzaW5nIGtlcm5lbC1kb2Mg
d2FybmluZ3MuCgo+IFRoZSBAc3cgYW5kIEBtdXggbWVtYmVycyB3ZXJlIHJlbW92ZWQgZnJvbSBz
dHJ1Y3QgYXBwbGVfYXRjcGh5IGJ1dCB0aGVpcgo+IGtlcm5lbC1kb2MgZW50cmllcyByZW1haW5l
ZCwgY2F1c2luZyBrZXJuZWwtZG9jIHdhcm5pbmdzLgoKW1NldmVyaXR5OiBMb3ddCkFyZSB0aGVz
ZSBtZW1iZXJzIGFjdHVhbGx5IHJlbW92ZWQ/IFRoZSBzdHJ1Y3QgZGVmaW5pdGlvbiBzdGlsbCBj
b250YWlucwpib3RoIHN3IGFuZCBtdXguIFJlbW92aW5nIHRoZWlyIGtlcm5lbC1kb2MgY29tbWVu
dHMgd2hpbGUgdGhlIG1lbWJlcnMgcmVtYWluCndpbGwgaW50cm9kdWNlIG5ldyB3YXJuaW5ncyBh
Ym91dCBtaXNzaW5nIGRlc2NyaXB0aW9ucyByYXRoZXIgdGhhbiBmaXhpbmcgdGhlbS4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FwcGxlL2F0Yy5jIGIvZHJpdmVycy9waHkvYXBwbGUvYXRj
LmMKPiBpbmRleCBlOWQxMDZmMTM1YzUxLi4zN2JlMjlkODU1Y2Q5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGh5L2FwcGxlL2F0Yy5jCj4gKysrIGIvZHJpdmVycy9waHkvYXBwbGUvYXRjLmMKPiBA
QCAtNTg1LDggKzU4NSw2IEBAIHN0cnVjdCBhdGNwaHlfbW9kZV9jb25maWd1cmF0aW9uIHsKPiAg
ICogQHBoeXMuZHA6IERpc3BsYXlQb3J0IFBIWSBpbnN0YW5jZQo+ICAgKiBAcGh5X3Byb3ZpZGVy
OiBQSFkgcHJvdmlkZXIgaW5zdGFuY2UKPiAgICogQHJjZGV2OiBSZXNldCBjb250cm9sbGVyIGRl
dmljZQo+IC0gKiBAc3c6IFR5cGUtQyBzd2l0Y2ggaW5zdGFuY2UKPiAtICogQG11eDogVHlwZS1D
IG11eCBpbnN0YW5jZQo+ICAgKiBAbG9jazogTXV0ZXggZm9yIHN5bmNocm9uaXppbmcgcmVnaXN0
ZXIgYWNjZXNzIGFjcm9zcyBQSFksIFR5cGUtQyBzd2l0Y2gvbXV4IGFuZCByZXNldCBjb250cm9s
bGVyCj4gICAqLwo+ICBzdHJ1Y3QgYXBwbGVfYXRjcGh5IHsKCltTZXZlcml0eTogSGlnaF0KVGhp
cyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvIHdlIGxlYWsgdGhlIFR5cGUtQyBzd2l0
Y2ggYW5kIG11eCBvYmplY3RzCm9uIHByb2JlIGVycm9yIG9yIGRyaXZlciB1bmJpbmQ/CgpMb29r
aW5nIGF0IGF0Y3BoeV9wcm9iZV9zd2l0Y2goKSBhbmQgYXRjcGh5X3Byb2JlX211eCgpLCB0aGV5
IHJlZ2lzdGVyIHRoZQpkZXZpY2VzIGJ1dCBkaXNjYXJkIHRoZSBwb2ludGVyczoKCglyZXR1cm4g
UFRSX0VSUl9PUl9aRVJPKHR5cGVjX3N3aXRjaF9yZWdpc3RlcihhdGNwaHktPmRldiwgJnN3X2Rl
c2MpKTsKClNpbmNlIHRoZXNlIGFyZW4ndCBkZXZyZXMtbWFuYWdlZCwgdGhlIHBvaW50ZXJzIG11
c3QgYmUgc2F2ZWQgdG8gcHJvcGVybHkgY2FsbAp0eXBlY19zd2l0Y2hfdW5yZWdpc3RlcigpIGFu
ZCB0eXBlY19tdXhfdW5yZWdpc3RlcigpIG9uIHRlYXJkb3duLgoKSWYgdGhlIGRyaXZlciBpcyB1
bmJvdW5kIG9yIHByb2JlIGZhaWxzIGxhdGVyLCB0aGUgZGV2cmVzLW1hbmFnZWQgYXRjcGh5IGNv
bnRleHQKaXMgZnJlZWQuIFRoZSByZWdpc3RlcmVkIHN3aXRjaCBhbmQgbXV4IHN0aWxsIHJldGFp
biBhIHBvaW50ZXIgdG8gdGhpcyBmcmVlZAptZW1vcnkgaW4gdGhlaXIgZHJ2ZGF0YS4gTGF0ZXIg
Y2FsbHMgbGlrZSBhdGNwaHlfbXV4X3NldCgpIHdpbGwgZGVyZWZlcmVuY2UgaXQ6CgoJc3RydWN0
IGFwcGxlX2F0Y3BoeSAqYXRjcGh5ID0gdHlwZWNfbXV4X2dldF9kcnZkYXRhKG11eCk7CgoJZ3Vh
cmQobXV0ZXgpKCZhdGNwaHktPmxvY2spOwoKQ291bGQgdGhpcyByZXN1bHQgaW4gYSB1c2UtYWZ0
ZXItZnJlZT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA2MDgwNTM1MjUuMTIzNTQtMS1yb3NlbnBAZ21haWwuY29tP3BhcnQ9MQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
