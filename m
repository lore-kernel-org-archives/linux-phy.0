Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 660D5C5AC82
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 07:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8ZCZmvU7zqm7TjznhJHNO/atM3s38Z8IcvoW3ibc1w=; b=X4+I7XwqmAb3sr
	+MDQI6ciD5rMb+IsMA5YrdX54Hz2V+rpGGT5prClJeuO1hVGahr1wBx2R1cNrYRZEr7waPJIg2wi0
	1YJA2em0UufeBItAM2TogbHSiVD0FKw4dqac/+Tqh5jkdhHqHZ2yASTy6q8Ay77iFZMhyCxj9aNFp
	cS+plIb/DuogCqASyV0+EKuZMFiynSlo1Q5pCbBWH6pkNNSGQv5dX71KNrl69Ls0H1Q2mGtH2CXqs
	fCuy0PAUp8gb89QW39bqK0KlFAiB+LveWWgufzW8clL8LJ2cKHayuWGWSdEA1I0BYqe4BvnxP+A1E
	mQtDtRZaKPSlV95h9aRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKBO-0000000BB6l-30zh;
	Mon, 10 Aug 2026 07:12:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKBN-0000000BB6G-0tjt
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 07:12:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 001FE43C97;
	Mon, 10 Aug 2026 07:12:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AA301F00A3A;
	Mon, 10 Aug 2026 07:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786345944;
	bh=ukEbMDHXvbvSJkelE8ZUEfN7cPr40c3734omGYGVXMM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ObxNGGLD5WKJ4lM8TJgkoU5VvUFFqBYeyq4a5nqYj9EoLJ9dMvg7eavcPGuPzhigo
	 ynGr22TE6i3gtQg6v+iubiWBRDmdMVQQC4ZCWN4rm5oHAs4XyQ4kM4h1+VgtF3Zeso
	 3Bd/xOtqECYiq3rhkHKjcSQ0b32s/K8zN27oeda1y5CqYBnKIbwJ2oRJf5j5ANHbx2
	 CbvtHYUThGqrpgUVgKISpWHvM00wY7jVsMZP3AjzIB4uKNbHDZuo6cDURtxyg20VcP
	 IAnzH1TmTbTDvH9DPuucmdEa+UedTcr/oVga83HdydiNRXQ9QaWFRMEfVG68Rp+KWS
	 eWpg34dQvRgpQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 01/12] dt-bindings: clk: zte: Add zx297520v3 top
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, lee@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260810-zx29clk-v10-1-63846490712c@gmail.com>
References: <20260810-zx29clk-v10-0-63846490712c@gmail.com>
 <20260810-zx29clk-v10-1-63846490712c@gmail.com>
Date: Mon, 10 Aug 2026 07:12:23 +0000
Message-Id: <20260810071224.5AA301F00A3A@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWlzc2luZyBgcmVz
ZXRzYCBwcm9wZXJ0eSBkZWZpbml0aW9uIGluIHRoZSBZQU1MIHNjaGVtYS4KLSBbTWVkaXVtXSBN
aXNzaW5nIGBzaW1wbGUtbWZkYCBpbiBjb21wYXRpYmxlIHN0cmluZyBsaXN0IGZvciBzeXNjb24g
d2l0aCBjaGlsZHJlbi4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSCB2MTAgMDEvMTJdIGR0LWJp
bmRpbmdzOiBjbGs6IHp0ZTogQWRkIHp4Mjk3NTIwdjMgdG9wIGNsb2NrIGFuZCByZXNldCBjb250
cm9sbGVyIC0tLQpjb21taXQgODgyZTgyMjU4ODZhMTE1OTIyYWI4YzFjNmU1YjU5MzkwYjdkMWFh
OApBdXRob3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+Cgpk
dC1iaW5kaW5nczogY2xrOiB6dGU6IEFkZCB6eDI5NzUyMHYzIHRvcCBjbG9jayBhbmQgcmVzZXQg
Y29udHJvbGxlcgoKVGhpcyBjb21taXQgYWRkcyB0aGUgZGV2aWNlIHRyZWUgYmluZGluZyBzY2hl
bWEgZm9yIHRoZSB6eDI5NzUyMHYzIHRvcCBjbG9jawphbmQgcmVzZXQgY29udHJvbGxlci4gSXQg
ZGV0YWlscyB0aGUgcmVxdWlyZWQgb3NjaWxsYXRvcnMsIGNsb2NrIG91dHB1dHMsIFBIWQpjb250
cm9scywgYW5kIGluY2x1ZGVzIGEgY2hpbGQgbm9kZSBmb3Igc3lzY29uLXJlYm9vdCBmdW5jdGlv
bmFsaXR5LgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLXRvcGNybS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLXRvcGNybS55YW1sCj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi44NTEwZmZkZTI5MjQ5Cj4gLS0tIC9k
ZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay96
dGUsengyOTc1MjB2My10b3Bjcm0ueWFtbApbIC4uLiBdCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29t
cGF0aWJsZToKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiB6dGUsengyOTc1MjB2My10
b3Bjcm0KPiArICAgICAgLSBjb25zdDogc3lzY29uCgpbU2V2ZXJpdHk6IE1lZGl1bV0KVGhpcyBi
aW5kaW5nIGluY2x1ZGVzIGEgc3lzY29uLXJlYm9vdCBjaGlsZCBub2RlLCBidXQgcmVzdHJpY3Rz
IHRoZSBjb21wYXRpYmxlCnN0cmluZ3MgdG8ganVzdCB0aGUgc3BlY2lmaWMgdG9wY3JtIHN0cmlu
ZyBhbmQgInN5c2NvbiIuIFdpdGhvdXQgInNpbXBsZS1tZmQiCmluIHRoZSBjb21wYXRpYmxlIGxp
c3QsIHdpbGwgdGhlIGtlcm5lbCdzIGdlbmVyaWMgcGxhdGZvcm0gY29kZSBmYWlsIHRvCmF1dG9t
YXRpY2FsbHkgcHJvYmUgdGhlIHJlYm9vdCBjaGlsZCBub2RlPwoKW1NldmVyaXR5OiBNZWRpdW1d
ClRoZSBjb21taXQgbWVzc2FnZSBtZW50aW9ucyBhIHNlbGYtcmVmZXJlbmNpbmcgcmVzZXQgcHJv
cGVydHksIGJ1dCB0aGUKInJlc2V0cyIgcHJvcGVydHkgaXMgbm90IGV4cGxpY2l0bHkgZGVmaW5l
ZCBpbiB0aGlzIHByb3BlcnRpZXMgYmxvY2suIFNpbmNlCnRoZSBzY2hlbWEgbGF0ZXIgc2V0cyBh
ZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UsIHdpbGwgZGV2aWNlIHRyZWVzCnV0aWxpemluZyB0
aGlzIHNlbGYtcmVmZXJlbmNpbmcgcmVzZXQgZmFpbCBkdGJzX2NoZWNrIHNjaGVtYSB2YWxpZGF0
aW9uPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDgxMC16eDI5Y2xrLXYxMC0wLTYzODQ2NDkwNzEyY0BnbWFpbC5jb20/cGFydD0x
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
