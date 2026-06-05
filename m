Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83B78CD6E74
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 11:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7Qg4o2MHdyRfA5ZM6nGIF9jLWpfPrgom1tPlI56mc0=; b=cELVA11/JCuDex
	1ItQCHAWSyKqzbzzj9IdZwHM7RCID6nGGRxGze/etodm3FCSkycqmRU+nC/3KfAZZI8QvQkb08qeH
	5Oprax8rjF9F+6v/OTYLMg8c7XZjHiTEsttMHihUTHE5yBsSYCzZrylinSZ7nnibOo1Fb7DE1mLmQ
	Yw9Rby/vMgkqX9WgQWOAVSsGvCe6QDodNYmB7xFqC4NYUx9/Gr7yfVUbyxtb80d6QCkcXLpTbECNp
	8RqCuWYBKojPOm62Nbrq/xuGwVZ1B5ZoLCdxV5Ot5GRdkEVTQ88kd2YnBE/beQ3KlkQ/rkV4cVmKF
	iogWWVdg3HhrI6vOYDDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVSeI-00000000XCI-18hG;
	Fri, 05 Jun 2026 11:23:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVSeH-00000000XC8-0MNV
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 11:23:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 40DF4601DD;
	Fri,  5 Jun 2026 11:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FC2B1F00893;
	Fri,  5 Jun 2026 11:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780658616;
	bh=JN0rCQwtzUe8DzjX4ue1FESIXUvp/T+r9WwX3Jltj0A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H4GDFGnN6CNWbwKXkcMrCRxWuGsgMTQKVBshKlx8zQSyi2B8pPXup6lnjpWEjNRwt
	 mmf6RztCsUk3YJQdXqKSl/CIf896Cx4kGYE7xDNet79Zu6DAQn5BKgY3qN3px4gUt2
	 CUcqgSBDXJHLkq82rSZYQDy+Fj48CemIQe0kBfxs7XmEc8mlIdcOzvN4CyVpjmjYV8
	 F6uAIyQxlrvILtXBa6yIjbwUffLEKelUsW/ljGiWa9nkIOUcB4YFp2KSOT9UCpROZg
	 77w/Fup9t94oMd9X4pv/GVEeJnEQZxIVCM9/qkeOyMFiPPk6pf70wwPeAXKEE5nHOA
	 hWp393Vf2rxYA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/5] phy: fsl-imx8mq-usb: add runtime PM support
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: Frank.Li@kernel.org, olteanv@gmail.com, vkoul@kernel.org, imx@lists.linux.dev, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260605-imx8mp-usb-phy-improvement-v4-3-b2ddf2f3862c@nxp.com>
References: <20260605-imx8mp-usb-phy-improvement-v4-3-b2ddf2f3862c@nxp.com>
Date: Fri, 05 Jun 2026 11:23:35 +0000
Message-Id: <20260605112335.8FC2B1F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1peGluZyBgZGV2bV9j
bGtfZ2V0X2VuYWJsZWQoKWAgd2l0aCBtYW51YWwgYGNsa19kaXNhYmxlX3VucHJlcGFyZSgpYCBp
biBydW50aW1lIFBNIGNhbGxiYWNrcyBjYXVzZXMgYSBjbG9jayBlbmFibGUgY291bnQgdW5kZXJm
bG93IGR1cmluZyBkcml2ZXIgdW5iaW5kLgotLQoKY29tbWl0IDk3NGIxYTUwYTIyZTM4ZTA4YWE1
ZmQwMTM5YWUzOWQ1NzhjOGYzOWMKQXV0aG9yOiBYdSBZYW5nIDx4dS55YW5nXzJAbnhwLmNvbT4K
CnBoeTogZnNsLWlteDhtcS11c2I6IGFkZCBydW50aW1lIFBNIHN1cHBvcnQKCkFkZCBydW50aW1l
IFBNIHRvIGVuc3VyZSB0aGUgUEhZIGlzIHByb3Blcmx5IHBvd2VyZWQgYW5kIGNsb2NrZWQgZHVy
aW5nCnJlZ2lzdGVyIGFjY2VzcywgcHJldmVudGluZyBwb3RlbnRpYWwgc3lzdGVtIGhhbmdzLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5j
IGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCj4gaW5kZXggNTkx
ZGRmMzQ2MDYxOC4uMjdhYTY5NmY1ZGQ0MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNiLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUv
cGh5LWZzbC1pbXg4bXEtdXNiLmMKClsgLi4uIF0KCj4gQEAgLTY5MywxMyArNjgxLDEzIEBAIHN0
YXRpYyBpbnQgaW14OG1xX3VzYl9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPiAgCj4gIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBpbXhfcGh5KTsKPiAgCj4gLQlp
bXhfcGh5LT5jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicGh5Iik7Cj4gKwlpbXhfcGh5LT5jbGsg
PSBkZXZtX2Nsa19nZXRfZW5hYmxlZChkZXYsICJwaHkiKTsKPiAgCWlmIChJU19FUlIoaW14X3Bo
eS0+Y2xrKSkgewo+ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGdldCBpbXg4bXEgdXNiIHBo
eSBjbG9ja1xuIik7Cj4gIAkJcmV0dXJuIFBUUl9FUlIoaW14X3BoeS0+Y2xrKTsKPiAgCX0KPiAg
Cj4gLQlpbXhfcGh5LT5hbHRfY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKGRldiwgImFsdCIp
Owo+ICsJaW14X3BoeS0+YWx0X2NsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVkKGRl
diwgImFsdCIpOwo+ICAJaWYgKElTX0VSUihpbXhfcGh5LT5hbHRfY2xrKSkKPiAgCQlyZXR1cm4g
ZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIoaW14X3BoeS0+YWx0X2NsayksCj4gIAkJCQkgICAg
IkZhaWxlZCB0byBnZXQgYWx0IGNsa1xuIik7CgpbIC4uLiBdCgo+IEBAIC03MzUsMTEgKzcyNyw0
MyBAQCBzdGF0aWMgaW50IGlteDhtcV91c2JfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gIAlyZXR1cm4gUFRSX0VSUl9PUl9aRVJPKHBoeV9wcm92aWRlcik7Cj4gIH0K
PiAgCj4gK3N0YXRpYyBpbnQgaW14OG1xX3VzYl9waHlfcnVudGltZV9zdXNwZW5kKHN0cnVjdCBk
ZXZpY2UgKmRldikKPiArewo+ICsJc3RydWN0IGlteDhtcV91c2JfcGh5ICppbXhfcGh5ID0gZGV2
X2dldF9kcnZkYXRhKGRldik7Cj4gKwo+ICsJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlteF9waHkt
PmFsdF9jbGspOwo+ICsJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGlteF9waHktPmNsayk7CgpbU2V2
ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBtaXggb2YgZGV2bV9jbGtfZ2V0X2VuYWJsZWQoKSBhbmQg
bWFudWFsIGNsa19kaXNhYmxlX3VucHJlcGFyZSgpCmNhdXNlIGEgY2xvY2sgZW5hYmxlIGNvdW50
IHVuZGVyZmxvdyBkdXJpbmcgZHJpdmVyIHVuYmluZD8KCkR1cmluZyBpbXg4bXFfdXNiX3BoeV9w
cm9iZSgpLCBkZXZtX2Nsa19nZXRfZW5hYmxlZCgpIHJlZ2lzdGVycyBkZXZyZXMgYWN0aW9ucwp0
aGF0IHdpbGwgdW5jb25kaXRpb25hbGx5IGNhbGwgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCkgdXBv
biBkcml2ZXIgcmVtb3ZhbC4KCldoZW4gdGhlIGRyaXZlciBpcyB1bmJvdW5kLCB0aGUgZHJpdmVy
IGNvcmUgY2FsbHMgcG1fcnVudGltZV9wdXRfc3luYygpIGJlZm9yZQp0cmlnZ2VyaW5nIGRldnJl
cyBjbGVhbnVwLiBUaGlzIHN1c3BlbmRzIHRoZSBkZXZpY2UsIGludm9raW5nCmlteDhtcV91c2Jf
cGh5X3J1bnRpbWVfc3VzcGVuZCgpIHdoaWNoIGRyb3BzIHRoZSBjbG9jayBlbmFibGUgY291bnRz
IHRvIDAuCgpTdWJzZXF1ZW50bHksIGRldmljZV91bmJpbmRfY2xlYW51cCgpIGV4ZWN1dGVzIHRo
ZSBkZXZyZXMgYWN0aW9ucywgY2FsbGluZwpjbGtfZGlzYWJsZV91bnByZXBhcmUoKSBhZ2FpbiBv
biB0aGUgYWxyZWFkeS1kaXNhYmxlZCBjbG9ja3MuIEluIHRoZSBjbG9jawpmcmFtZXdvcmssIGNo
ZWNraW5nIGFuIGVuYWJsZV9jb3VudCBvZiAwIHJlc3VsdHMgaW4gYSBrZXJuZWwgd2FybmluZy4K
ClRvIGF2b2lkIHRoaXMsIHRoZSBkcml2ZXIgY291bGQgZWl0aGVyIGhhbmRsZSBjbG9jayBpbml0
aWFsaXphdGlvbiBtYW51YWxseQp3aXRob3V0IGRldm1fKl9lbmFibGVkIHZhcmlhbnRzLCBvciBp
bXBsZW1lbnQgYSAucmVtb3ZlIGNhbGxiYWNrIHRoYXQKZXhwbGljaXRseSB3YWtlcyB0aGUgZGV2
aWNlIHZpYSBwbV9ydW50aW1lX2dldF9zeW5jKCkgYW5kIGRpc2FibGVzIHJ1bnRpbWUgUE0KdG8g
cHJldmVudCBkZXZyZXMgZnJvbSBleGVjdXRpbmcgb24gYSBzdXNwZW5kZWQgZGV2aWNlLgoKPiAr
Cj4gKwlyZXR1cm4gMDsKPiArfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2Fz
aGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYwNS1pbXg4bXAtdXNiLXBoeS1pbXByb3ZlbWVudC12
NC0wLWIyZGRmMmYzODYyY0BueHAuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
