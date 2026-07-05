Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 931D4C43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 08:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HIi28qpcbYYKGm0BhUjCUderbb9Ia2as4JxZwt8C8RA=; b=4j5C6qgByC0yUA
	S3oTyHE6UTwxXXvJGfiYiwB4SJPsvUaigiUXR/9OKGQyZu8SS9sqDjHUz7+wOUqUwhTdWeCJ15XxX
	8Tk7Cnzo69q8+ejY2qgbZncjJBN6cwbwW06q8dLU8/k9b2sV8892+KKzHkUI6Otxxx4BcZERanCDp
	mlj7QyOxsiB/Fh5FXBc8ctxcf93p6gTrKAhiZI9qFQYySG4Mg0qjyf/HjVXae5hw8CuIuHDQqaSB2
	8jR+GJqSnVVnheG4G38cKSj5ebg/RXE1q+qgN/YN5aMFFsV88Fg8fJn9pcPk5AHi9x+mcgtFtfkZn
	q6vFy5K8/jIai5EOosog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHtB-000000095nh-1XNh;
	Sun, 05 Jul 2026 08:07:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHtA-000000095nX-0gSK
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 08:07:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AB3C343BD2;
	Sun,  5 Jul 2026 08:07:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EFD21F000E9;
	Sun,  5 Jul 2026 08:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783238863;
	bh=ZBMMxv6qL0rCS9DL6Fpp03sMDru/wng3nOAy8ixrLKg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TSUETgz7I3rqAJ3TaS0ABnqTj9u/0mV3YdqWSdeu+K0vo2LXpLhsXWZCyGKi/zYtg
	 hyjJ1xiwuR3lorPy6oIRj0zZCFwMYgsvciIw+bufpemmoIsT0rjS94shRLo5QBrDAh
	 pImq1e11VACVfmv/6S2ObDEq5miAFo2LEIgEpQT7S8A0Fyj1gDNmLq1wGHBAHXzbyB
	 a9v+o0IR5OWG8x9yVHaXQvCZ29ZPZK5uB3cPfcNQI/2YxwYHD+DElx+Z/TZmZ4bi4e
	 j7tXpckrDIYA3uD7bsYW50ryYXGjYL8j6PC6ag1zgwH+5LMnjchoM72QE6spvvajT4
	 bTv7npKDsuAzA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: motorola,cpcap-usb: add
 chrg_det interrupt
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260705075809.1793784-3-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
 <20260705075809.1793784-3-ivo.g.dimitrov.75@gmail.com>
Date: Sun, 05 Jul 2026 08:07:42 +0000
Message-Id: <20260705080743.1EFD21F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRFQgU2NoZW1hIHZhbGlk
YXRpb24gZmFpbHVyZSBkdWUgdG8gbWlzbWF0Y2hlZCBpbnRlcnJ1cHQgb3JkZXIgaW4gZXhhbXBs
ZXMuCi0gW0xvd10gRFQgQmluZGluZyBBQkkgQnJlYWthZ2UgYnkgZW5mb3JjaW5nIGEgYmFja3dh
cmQtaW5jb21wYXRpYmxlIGludGVycnVwdCBvcmRlci4KLS0KCmNvbW1pdCA5OWUwNThlZmRhZjVi
MzUzNzQzNWFkZjBmMjJjMmM2NDJkN2I4MDA3CkF1dGhvcjogSXZheWxvIERpbWl0cm92IDxpdm8u
Zy5kaW1pdHJvdi43NUBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBtb3Rvcm9sYSxjcGNh
cC11c2I6IGFkZCBjaHJnX2RldCBpbnRlcnJ1cHQKClRoZSBDUENBUCBVU0IgUEhZIGRyaXZlciB1
c2VzIHRoZSBDUENBUCBjaGFyZ2VyIGRldGVjdGlvbiBpbnRlcnJ1cHQKZm9yIERDUCBkZXRlY3Rp
b24uIFVwZGF0ZSB0aGUgYmluZGluZyBhbmQgZXhhbXBsZSBEVFMgdG8gdXNlIHRoZQpjb3JyZXNw
b25kaW5nIGNocmdfZGV0IGludGVycnVwdCBuYW1lLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tb3Rvcm9sYSxjcGNhcC11c2ItcGh5LnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21vdG9yb2xhLGNwY2FwLXVz
Yi1waHkueWFtbAo+IGluZGV4IGRkMzQ1Y2JkMGEwYjQuLjYyMTIxYThkOGU3NmMgMTAwNjQ0Cj4g
LS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tb3Rvcm9sYSxjcGNh
cC11c2ItcGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L21vdG9yb2xhLGNwY2FwLXVzYi1waHkueWFtbAo+IEBAIC0yOCw2ICsyOCw3IEBAIHByb3Bl
cnRpZXM6Cj4gICAgICAgIC0gZGVzY3JpcHRpb246IHNlc3N2bGQgaW50ZXJydXB0Cj4gICAgICAg
IC0gZGVzY3JpcHRpb246IHNlc3NlbmQgaW50ZXJydXB0Cj4gICAgICAgIC0gZGVzY3JpcHRpb246
IHNlMSBpbnRlcnJ1cHQKPiArICAgICAgLSBkZXNjcmlwdGlvbjogY2hhcmdlciBkZXRlY3Rpb24g
aW50ZXJydXB0Cj4gICAgICAgIC0gZGVzY3JpcHRpb246IGRtIGludGVycnVwdAo+ICAgICAgICAt
IGRlc2NyaXB0aW9uOiBkcCBpbnRlcnJ1cHQKPiAgCj4gQEAgLTQxLDYgKzQyLDcgQEAgcHJvcGVy
dGllczoKPiAgICAgICAgLSBjb25zdDogc2Vzc3ZsZAo+ICAgICAgICAtIGNvbnN0OiBzZXNzZW5k
Cj4gICAgICAgIC0gY29uc3Q6IHNlMQo+ICsgICAgICAtIGNvbnN0OiBjaHJnX2RldAo+ICAgICAg
ICAtIGNvbnN0OiBkbQo+ICAgICAgICAtIGNvbnN0OiBkcAoKW1NldmVyaXR5OiBMb3ddCkRvZXMg
YWRkaW5nIHRoaXMgbmV3IGludGVycnVwdCBpbiB0aGUgbWlkZGxlIG9mIHRoZSBpdGVtcyBsaXN0
IGJyZWFrIGJhY2t3YXJkCmNvbXBhdGliaWxpdHkgZm9yIGV4aXN0aW5nIGRldmljZSB0cmVlcz8K
CkJ5IGluc2VydGluZyBpdCBhdCBpbmRleCA3IChiZWZvcmUgZG0gYW5kIGRwKSB3aXRob3V0IGNv
bmZpZ3VyaW5nIG1pbkl0ZW1zLCB0aGUKc2NoZW1hIG5vdyBpbXBsaWNpdGx5IHJlcXVpcmVzIGFs
bCAxMCBpdGVtcyBpbiB0aGlzIHN0cmljdCBvcmRlci4KCkV4aXN0aW5nIGRldmljZSB0cmVlcyB0
aGF0IG9ubHkgZGVmaW5lIDkgaW50ZXJydXB0cyB3aWxsIGZhaWwgdmFsaWRhdGlvbiBiZWNhdXNl
CnRoZWlyIDd0aCBpdGVtIGlzIGRtIGluc3RlYWQgb2YgY2hyZ19kZXQuCgpbIC4uLiBdCgo+IEBA
IC05MSwxMCArOTMsMTAgQEAgZXhhbXBsZXM6Cj4gICAgICAgICAgaW50ZXJydXB0cy1leHRlbmRl
ZCA9IDwKPiAgICAgICAgICAgICAgJmNwY2FwIDE1IDAgJmNwY2FwIDE0IDAgJmNwY2FwIDI4IDAg
JmNwY2FwIDE5IDAKPiAgICAgICAgICAgICAgJmNwY2FwIDE4IDAgJmNwY2FwIDE3IDAgJmNwY2Fw
IDE2IDAgJmNwY2FwIDQ5IDAKPiAtICAgICAgICAgICAgJmNwY2FwIDQ4IDEKPiArICAgICAgICAg
ICAgJmNwY2FwIDQ4IDEgJmNwY2FwIDEzIDAKPiAgICAgICAgICA+Owo+ICAgICAgICAgIGludGVy
cnVwdC1uYW1lcyA9ICJpZF9ncm91bmQiLCAiaWRfZmxvYXQiLCAic2UwY29ubiIsICJ2YnVzdmxk
IiwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAic2Vzc3ZsZCIsICJzZXNzZW5kIiwgInNl
MSIsICJkbSIsICJkcCI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgInNlc3N2bGQiLCAi
c2Vzc2VuZCIsICJzZTEiLCAiZG0iLCAiZHAiLCAiY2hyZ19kZXQiOwoKW1NldmVyaXR5OiBMb3dd
CldpbGwgdGhpcyBleGFtcGxlIHBhc3MgZHRfYmluZGluZ19jaGVjayB2YWxpZGF0aW9uPwoKVGhl
IHNjaGVtYSdzIHByb3BlcnRpZXMgYmxvY2sgd2FzIHVwZGF0ZWQgYWJvdmUgdG8gZXhwZWN0IGNo
cmdfZGV0IGF0IGluZGV4IDcsCmJlZm9yZSBkbSBhbmQgZHAuIEhvd2V2ZXIsIHRoZSBleGFtcGxl
IGFwcGVuZHMgY2hyZ19kZXQgdG8gdGhlIGVuZCBvZiB0aGUgbGlzdAphdCBpbmRleCA5LgoKWUFN
TCBsaXN0cyBlbmZvcmNlIHBvc2l0aW9uYWwgbWF0Y2hlcywgc28gdmFsaWRhdGlvbiBtaWdodCBm
YWlsIHdoZW4gaXQgY29tcGFyZXMKdGhlIGV4YW1wbGUncyBkbSBhdCBpbmRleCA3IGFnYWluc3Qg
dGhlIG5ld2x5IGV4cGVjdGVkIGNocmdfZGV0LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwNTA3NTgwOS4xNzkzNzg0LTEtaXZv
LmcuZGltaXRyb3YuNzVAZ21haWwuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
