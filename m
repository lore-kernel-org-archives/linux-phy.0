Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2184DCA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIlNsi6ZIjSXFopRjmFWoegDK2pmE1FFgC3RMR2KYes=; b=l5sHGwONKPKoa+
	rjeP9+/Xy1L1s/q3UTMBC+rfSAdp7VjmroRcHVjkhxcFVl4fpCFqC6a5NULfUlJwStSQjfeKARtF/
	Q4YRIkya4Vnz9pumkKf7obs/W0mziOH0D/h3kucIOvQvvI4qiEehPTxFKEaRTbJ1BRmbzqNzXnj9c
	G4kmoXu5YnmMyLsU3luNVS57ZPoPwUij4DvN5stOWrRfh9+MqnhDlp087+KCDEaSGl9yQIKvQ3WFv
	eXhQXGR58ZluTJd2nTPYoC8jxRlGot8bBNZsZfxLlefIE1DMTL6Dl52iNKApPbL2lgY+TnvQhxIoI
	pZdrcYUtUnC1LxsYYGLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvvy-0000000DG7Z-3LNN;
	Sat, 03 Oct 2026 09:21:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCvvv-0000000DG4a-4BD4
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:21:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4B176602C2;
	Sat,  3 Oct 2026 09:21:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7930D1F0089B;
	Sat,  3 Oct 2026 09:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791019291;
	bh=eumJjVs1Xj0do+SQC0gAXEMlRObqmy1cfV6EQEvii88=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N7ZIflq4XriZ6vfi3vKt/7n8EqNrAgqOiVp3khAqD5ehh/V0VoGtt4W+G68iEdb5+
	 PV+EZu/YRAwwX3R0KFYi1KH22t/q3u2ahohrkzQBHHsU12alzCI4YkIXfFxNpYlNQd
	 LoK3+wWpTsZQi8dMrHRY9vrtDq6aS1hR1gQHaSuNiIrXuJrYeEjPyeueYA0Dt6myk8
	 OIRC5HAAdM3grHIy2jvXLG9yFZEmK9/+InI2Gq6LxwOAc0kacQoFvnTr+qzy7h+nkA
	 rV2SElSMQ+j8hA+sGjDKwwfW2oILhqwlh5jAuatQcymbyQQpwFoLsemxd8PREfFCHO
	 aP1xDghf5tQ1w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 07/11] media: qcom: camss: vfe: Add support for VFE
 1080
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, media-ci@linuxtv.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20261003-kaanapali-camss-v18-7-87ba4ebe0db1@oss.qualcomm.com>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-7-87ba4ebe0db1@oss.qualcomm.com>
Date: Sat, 03 Oct 2026 09:21:29 +0000
Message-Id: <20261003092130.7930D1F0089B@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGNhbXNzOiBvdXQtb2Yt
Ym91bmRzIERNQSBkdWUgdG8gQVVQX1VQREFURSBtaXNtYXRjaAotLQoKY29tbWl0IGNkMDIwYTQ3
MmY2Y2U5MTcyNjhhODhkYTRlZWI3YTRkMDY0MmFjZTEKQXV0aG9yOiBIYW5neGlhbmcgTWEgPGhh
bmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgoKbWVkaWE6IHFjb206IGNhbXNzOiB2ZmU6IEFk
ZCBzdXBwb3J0IGZvciBWRkUgMTA4MAoKVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciB0aGUg
VmlkZW8gRnJvbnQgRW5kIChWRkUpIDEwODAgbW9kdWxlIGZvdW5kIG9uCnRoZSBLYWFuYXBhbGkg
U29DLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2Nh
bXNzLXZmZS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXZmZS5j
Cj4gaW5kZXggMjY4MGE5OTE0NzY1Zi4uM2FjZWY2YmE5N2RjOSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmZlLmMKPiArKysgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdmZlLmMKWyAuLi4gXQo+IEBAIC01NTIs
NyArNTU0LDkgQEAgaW50IHZmZV9lbmFibGVfb3V0cHV0X3YyKHN0cnVjdCB2ZmVfbGluZSAqbGlu
ZSkKPiAgCQlvdXRwdXQtPmdlbjIuYWN0aXZlX251bSsrOwo+ICAJCW9wcy0+dmZlX3dtX3VwZGF0
ZSh2ZmUsIG91dHB1dC0+d21faWR4WzBdLAo+ICAJCQkJICAgb3V0cHV0LT5idWZbaV0tPmFkZHJb
MF0sIGxpbmUpOwo+IC0JCW9wcy0+cmVnX3VwZGF0ZSh2ZmUsIGxpbmUtPmlkKTsKPiArCj4gKwkJ
aWYgKCF2ZmUtPnJlcy0+cmVnX3VwZGF0ZV9hZnRlcl9jc2lkX2NvbmZpZykKPiArCQkJb3BzLT5y
ZWdfdXBkYXRlKHZmZSwgbGluZS0+aWQpOwo+ICAJfQoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRo
aXMgY29kZSBoYW5kbGUgdGhlIGNhc2Ugd2hlcmUgdXNlcnNwYWNlIHF1ZXVlcyBmZXdlciB0aGFu
IDIgYnVmZmVycz8KCklmIGZld2VyIHRoYW4gMiBidWZmZXJzIGFyZSBxdWV1ZWQsIHRoZSBsb29w
IGFib3ZlIGJyZWFrcyBlYXJseSB3aGVuIAp2ZmVfYnVmX2dldF9wZW5kaW5nKCkgcmV0dXJucyBO
VUxMLCBsZWF2aW5nIGFjdGl2ZV9udW0gPCAyIHdpdGhvdXQgcmV0dXJuaW5nIAphbiBlcnJvci4K
ClRoZSBjb21taXQgbWVzc2FnZSBub3RlcyB0aGF0ICJ0aGUgbnVtYmVyIG9mIEFVUF9VUERBVEUg
cmVxdWVzdHMgbXVzdCBtYXRjaCAKdGhlIG51bWJlciBvZiBidWZmZXJzIHF1ZXVlZCB0byB0aGUg
d3JpdGUgbWFzdGVyIHdoaWxlIGl0IGlzIGJlaW5nIGVuYWJsZWQuIgoKSG93ZXZlciwgaWYgd2Ug
cHJvY2VlZCB3aXRoIGFjdGl2ZV9udW0gPCAyLCB0aGUgcGlwZWxpbmUgc3RhcnQgY29udGludWVz
LCBhbmQgCmNzaWRfY29uZmlndXJlX3N0cmVhbSgpIGluIGNhbXNzLWNzaWQtMTA4MC5jIHdpbGwg
dW5jb25kaXRpb25hbGx5IGlzc3VlIApDQU1TU19JTklUX0JVRl9DT1VOVCAoMikgQVVQIHVwZGF0
ZXM6Cgpkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtY3NpZC0xMDgwLmM6
Y3NpZF9jb25maWd1cmVfc3RyZWFtKCkgewoJLi4uCglmb3IgKGsgPSAwOyBrIDwgQ0FNU1NfSU5J
VF9CVUZfQ09VTlQ7IGsrKykKCQlfX2NzaWRfYXVwX3VwZGF0ZShjc2lkLCBpKTsKCS4uLgp9CgpD
b3VsZCB0aGlzIG1pc21hdGNoIGJldHdlZW4gQVVQIHVwZGF0ZXMgYW5kIGFjdHVhbGx5IHF1ZXVl
ZCBidWZmZXJzIGxlYWQgdG8gCnRoZSBWRkUgd3JpdGUgbWFzdGVyIGhhcmR3YXJlIGF0dGVtcHRp
bmcgb3V0LW9mLWJvdW5kcyBETUEgdG8gdW5pbml0aWFsaXplZCAKYWRkcmVzc2VzIGFuZCBjYXVz
aW5nIG1lbW9yeSBjb3JydXB0aW9uPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTAwMy1rYWFuYXBhbGktY2Ftc3MtdjE4LTAtODdi
YTRlYmUwZGIxQG9zcy5xdWFsY29tbS5jb20/cGFydD03CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
