Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93E84C9832A
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iP47cxmaZV79DiRvpspaplSPyhutebzqpmSyTUQvhI=; b=Gf8WjvzL7uhR/Q
	OXOmBrFXdKrVwK4gPkkSWvnCYzVB0t6o2SPb6mJs3aeDj5arSC4MKNieGhzeaa+QMFbdxccpGkH8g
	F+dqSen+pYObN91a6AJV0+VgNd9LIx0D2FHMwx5yeYbZnz7ObyJ7Ab8KQjjeWrSSRz2SndySYKwlL
	qoRECPQ5DUUynHparLw8WmYsehDUK0qJmImVEsTbq+6gtiGwvM1pnP4dV7fA+pYaFJqwfa6FKTbEs
	45GDw55J7jlOy5YMCXhGcFWZFybuI6uPcDjym2HoNT+JXdAABMb2F6QsjnS7STaYJ9+u15Ir7PFC9
	4B78buTgAB0W9HkKj38w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR5F-00000002QCS-0sl4;
	Tue, 29 Sep 2026 06:12:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBR58-00000002Q7V-0ZeC
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:12:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 812314116F;
	Tue, 29 Sep 2026 06:12:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E035C1F000FF;
	Tue, 29 Sep 2026 06:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790662369;
	bh=W6qDKbxwGAsefH2+rFjvL4PbiWHWFZq+CSEU4fCTMNI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cFB6LMis3qPqwADAaMVBcpYYSZ5Khbvmq1xReIPlzfh5/HFTOFtAYdpkWDF5ReabG
	 OfBC7cKBw6tKPS0GF8H/QZdIIoeErtF7qaSlfo5/kCAl+AC38pyp6P7FsfzZiuPj1c
	 OFH/d+cmN/fBYSCtGsAoyQc5PN5etiz23Tt5uY55RvUKgqL0yz9pNZFgaYkayysJGu
	 nhCG6fUgsi+N9o00m2/GQ8Gjyo3q8n4Jfzu/kun+F09DCEUrlRz/DKG18JXnZrUOpx
	 LMPpcRuyzJ7jLyeyNXwWG5jRe9+kvhjKUKdzSBu1nieTxzT19kE+HQyerd5Z48Z97i
	 cQnTWmvqTBRbw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 08/11] media: qcom: camss: tpg: Add support for
 v2.4.0 TPG
To: "Hangxiang Ma" <hangxiang.ma@oss.qualcomm.com>
Cc: media-ci@linuxtv.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, vkoul@kernel.org
In-Reply-To: <20260928-kaanapali-camss-v17-8-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-8-dcf3fd37f76c@oss.qualcomm.com>
Date: Tue, 29 Sep 2026 06:12:48 +0000
Message-Id: <20260929061248.E035C1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gbWVkaWE6IGNhbXNz
OiB1bmluaXRpYWxpemVkIHRwZy0+aHdfdmVyc2lvbiB1c2VkIGluIHRwZ19yZXNldCgpCi0tCgpj
b21taXQgZTJhMGFlZDIwZjM3NTExMjdkMjViMjU5NjAzMmVhYzUxZDUzN2M1OApBdXRob3I6IEhh
bmd4aWFuZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+CgptZWRpYTogcWNvbTog
Y2Ftc3M6IHRwZzogQWRkIHN1cHBvcnQgZm9yIHYyLjQuMCBUUEcKClRoaXMgY29tbWl0IGFkZHMg
c3VwcG9ydCBmb3IgdGhlIFRQRyBoYXJkd2FyZSB2ZXJzaW9uIDIuNC4wIGZvdW5kIG9uCkthYW5h
cGFsaS4gSXQgdXBkYXRlcyB0aGUgY29uZmlndXJhdGlvbiBhbmQgcmVzZXQgbG9naWMgdG8gdXNl
IHRoZSBuZXcKVFBHX0NUUkxfQ01EIHJlZ2lzdGVyIGluc3RlYWQgb2YgVFBHX0NUUkwuCgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLWdl
bjEuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGctZ2VuMS5j
Cj4gaW5kZXggZDI5ZGU1ZjkzYzE4ZS4uNzcwYTllNWQ1YmE1ZiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ftc3MtdHBnLWdlbjEuYwo+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9jYW1zcy10cGctZ2VuMS5jCgpbIC4uLiBd
Cgo+IEBAIC0xNjQsMTggKzE2NywzMCBAQCBzdGF0aWMgaW50IHRwZ19zdHJlYW1fb24oc3RydWN0
IHRwZ19kZXZpY2UgKnRwZykKClsgLi4uIF0KCj4gIHN0YXRpYyBpbnQgdHBnX3Jlc2V0KHN0cnVj
dCB0cGdfZGV2aWNlICp0cGcpCj4gIHsKPiAtCXdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdfQ1RS
TCk7Cj4gLQl3cml0ZWwoMSwgdHBnLT5iYXNlICsgVFBHX0NMRUFSKTsKPiArCS8qCj4gKwkgKiBP
biBUUEcgb2xkZXIgdGhhbiB2Mi40LjAgdGVzdC1lbmFibGUgbGl2ZXMgaW4gVFBHX0NUUkwsIHNv
IGNsZWFyIGl0Cj4gKwkgKiBmaXJzdDsgdjIuNC4wKyBkcml2ZXMgYm90aCB0ZXN0LWVuYWJsZSBh
bmQgcmVzZXQgdGhyb3VnaCBUUEdfQ1RSTF9DTUQuCj4gKwkgKi8KPiArCWlmICh0cGctPmh3X3Zl
cnNpb24gPCBUUEdfSFdfVkVSXzJfNF8wKQo+ICsJCXdyaXRlbCgwLCB0cGctPmJhc2UgKyBUUEdf
Q1RSTCk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KV2lsbCB0aGlzIGV4ZWN1dGUgdGhlIGxlZ2FjeSBy
ZXNldCBsb2dpYyBvbiB2Mi40LjArIGhhcmR3YXJlIGR1cmluZyB0aGUKZmlyc3QgcG93ZXItb24g
c2VxdWVuY2U/CgpXaGVuIHRoZSBkcml2ZXIgcG93ZXJzIHVwIHRoZSBkZXZpY2UsIHRwZ19zZXRf
cG93ZXIoKSBjYWxscyB0aGUgcmVzZXQKZnVuY3Rpb24gYmVmb3JlIGNhbGxpbmcgaHdfdmVyc2lv
bigpOgoKZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL2NhbXNzLXRwZy5jOnRwZ19z
ZXRfcG93ZXIoKSB7CgkuLi4KCXRwZy0+cmVzLT5od19vcHMtPnJlc2V0KHRwZyk7Cgl0cGctPnJl
cy0+aHdfb3BzLT5od192ZXJzaW9uKHRwZyk7CgkuLi4KfQoKQmVjYXVzZSB0aGUgdHBnIG9iamVj
dCBpcyB6ZXJvLWluaXRpYWxpemVkIGFuZCB0cGctPmh3X3ZlcnNpb24gaXMgbm90CnBvcHVsYXRl
ZCB1bnRpbCBhZnRlciB0aGUgcmVzZXQgZnVuY3Rpb24gaXMgY2FsbGVkLCB0cGctPmh3X3ZlcnNp
b24KaXMgc3RyaWN0bHkgMCBkdXJpbmcgdGhlIGZpcnN0IGV4ZWN1dGlvbiBvZiB0cGdfcmVzZXQo
KS4KCkRvZXMgdGhpcyBtZWFuIHRoZSBjb25kaXRpb24gaGVyZSBldmFsdWF0ZXMgdG8gdHJ1ZSBm
b3IgYWxsIGhhcmR3YXJlCnZlcnNpb25zIG9uIHRoZSBpbml0aWFsIHBvd2VyLXVwLCBpbmFkdmVy
dGVudGx5IGNhdXNpbmcgYW4gdW5pbnRlbmRlZAp3cml0ZSB0byBUUEdfQ1RSTD8KCj4gKwo+ICsJ
d3JpdGVsKFRQR19DVFJMX0NNRF9IV19SRVNFVCwgdHBnLT5iYXNlICsgVFBHX0NUUkxfQ01EKTsK
PiAgCj4gIAlyZXR1cm4gMDsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDkyOC1rYWFuYXBhbGktY2Ftc3MtdjE3LTAtZGNm
M2ZkMzdmNzZjQG9zcy5xdWFsY29tbS5jb20/cGFydD04CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
