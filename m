Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14CA4CD4F5B
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 22:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5rf8UJjNi4qiY9K66D1F1jQtkZ9IvTbEn4SGSRH7po=; b=wvtbM5WWn4bmaC
	fvEoqB1Lnr15S7X3Dx4LCF6/tzpVvk4Br7mfW2Plt+Cuf/7KUG4vvE1APpPd/691DcjFak9eMbp1E
	jD6qayj5EcApz5zre6OCVVsJgSlUK9bQM11ymduTO3t7IolG/WnTBwH9hTMWBUPB0GxdC34AJaZTx
	jq+0n5bJif2QZrpdNtbTpaWNgJuUT7Z1ck13Gg/07TOQZ/fs1s+LtoUb0BOaZ9/KIGmYxdJgZPB17
	C+zyF3yyM2c1k32ikr7X8hZKQzOF/PaKy9sQ8qlf5XsVLnfjSEKxNiVvQs6lOMNiQYjOrDHXGUE/M
	5axjHbuq1MWs/CEHctXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPSm6-00000002veN-2Oqj;
	Tue, 19 May 2026 22:18:54 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPSm3-00000002vdr-2Iz3
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 22:18:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D489443679;
	Tue, 19 May 2026 22:18:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DCF81F00893;
	Tue, 19 May 2026 22:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779229130;
	bh=xM76R264SYSvJz5kZ1OEDgnBdsOE2g+Fv0HG4WZ4NrM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QfcpAgMGXurOry1N9o5+QfumJQuSQC6MTdguv/6rPZuJqyiZp0qIUVe7Q/UvZnIX/
	 5ZdlmT9HMAfYUJzTcxAMFmFkGMbgXYFQkowy5+r1Wi08J3jvygeWmgzEHA0QiW5WuH
	 SQhNoK6AXCg5lxAl/yLPniP8SwFcah45Eth1AOoMhzdS1ITo8WCnVz0UL8NOKib3dn
	 IHs1LpRb4AYiuBteB2SZHwQePGBkv3QI2pn7+rlH9Msl4YMBUc3bgJt3HgTtwv3RM9
	 qqoGDbs9EMS/PyOUazEKUwKxVaDSxMhLLYGVfEHjSZotz5/FjeQ7VamvUpsgfM6hv7
	 gj8dMJforHc3g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 2/6] dt-bindings: clock: airoha: Add PHY binding for
 Serdes port
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260519220813.28468-3-ansuelsmth@gmail.com>
References: <20260519220813.28468-3-ansuelsmth@gmail.com>
Date: Tue, 19 May 2026 22:18:50 +0000
Message-Id: <20260519221850.6DCF81F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_151851_610461_EEF4625B 
X-CRM114-Status: GOOD (  10.26  )
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGAjcGh5LWNl
bGxzYCBwcm9wZXJ0eSBpcyBpbmFkdmVydGVudGx5IHBlcm1pdHRlZCBmb3IgdGhlIGBlY29uZXQs
ZW43NTEyMjEtc2N1YCBjb21wYXRpYmxlIHN0cmluZywgY29udHJhZGljdGluZyB0aGUgY29tbWl0
IG1lc3NhZ2UuCi0tCgpjb21taXQgMzZlMDc5ZWJlY2FiMmI4NTRiNTc4MjZjZTkzMTRlMzQyNDZj
YjdlNApBdXRob3I6IENocmlzdGlhbiBNYXJhbmdpIDxhbnN1ZWxzbXRoQGdtYWlsLmNvbT4KCmR0
LWJpbmRpbmdzOiBjbG9jazogYWlyb2hhOiBBZGQgUEhZIGJpbmRpbmcgZm9yIFNlcmRlcyBwb3J0
CgpUaGlzIGNvbW1pdCBhZGRzIGEgI3BoeS1jZWxscyBwcm9wZXJ0eSBmb3IgU2VyZGVzIHBvcnQg
c2VsZWN0aW9uLiBUaGUgcG9ydApzZWxlY3Rpb24gaXMgaW50ZW5kZWQgdG8gb25seSBiZSBzdXBw
b3J0ZWQgZm9yIHRoZSBBaXJvaGEgQU43NTgxIFNvQy4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9haXJvaGEsZW43NTIzLXNjdS55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL2Fpcm9oYSxlbjc1MjMtc2N1
LnlhbWwKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svYWly
b2hhLGVuNzUyMy1zY3UueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9jbG9jay9haXJvaGEsZW43NTIzLXNjdS55YW1sCgpbIC4uLiBdCgo+IEBAIC02NSw2ICs3
Miw4IEBAIGFsbE9mOgo+ICAgICAgICAgIHJlZzoKPiAgICAgICAgICAgIG1pbkl0ZW1zOiAyCj4g
IAo+ICsgICAgICAgICcjcGh5LWNlbGxzJzogZmFsc2UKPiArCgpbU2V2ZXJpdHk6IE1lZGl1bV0K
VGhlIGNvbW1pdCBtZXNzYWdlIGV4cGxpY2l0bHkgc3RhdGVzIHRoYXQgdGhlIFNlcmRlcyBwb3J0
IHNlbGVjdGlvbiBpcwpjdXJyZW50bHkgc3VwcG9ydGVkIG9ubHkgZm9yIHRoZSBBaXJvaGEgQU43
NTgxIFNvQy4KClNpbmNlICNwaHktY2VsbHMgaXMgZGVmaW5lZCBpbiB0aGUgdG9wLWxldmVsIHBy
b3BlcnRpZXMgYmxvY2ssIGl0IGlzCnBlcm1pdHRlZCBmb3IgYWxsIGNvbXBhdGlibGUgc3RyaW5n
cyBtYXRjaGluZyB0aGUgc2NoZW1hIHVubGVzcyBleHBsaWNpdGx5CnJlc3RyaWN0ZWQuIFRoaXMg
YmxvY2sgY29ycmVjdGx5IHJlc3RyaWN0cyBpdCBmb3IgYWlyb2hhLGVuNzUyMy1zY3UsIGJ1dApz
aG91bGQgdGhlcmUgYWxzbyBiZSBhIHJlc3RyaWN0aW9uIGZvciBlY29uZXQsZW43NTEyMjEtc2N1
PwoKU2luY2UgZWNvbmV0LGVuNzUxMjIxLXNjdSBzaGFyZXMgYSBjb25kaXRpb25hbCB2YWxpZGF0
aW9uIGJsb2NrIHdpdGgKYWlyb2hhLGVuNzU4MS1zY3UgZnVydGhlciBkb3duIGluIHRoZSBmaWxl
LCBpdCBhcHBlYXJzIGl0IGltcGxpY2l0bHkKaW5oZXJpdHMgdGhlIHBlcm1pc3Npb24gdG8gdXNl
ICNwaHktY2VsbHMgdW5sZXNzIGEgbmV3LCBzZXBhcmF0ZSBpZi10aGVuCmJsb2NrIGV4cGxpY2l0
bHkgc2V0cyAnI3BoeS1jZWxscyc6IGZhbHNlIGZvciBpdC4KCkRvZXMgdGhpcyBhbGxvdyBpbnZh
bGlkIGNvbmZpZ3VyYXRpb25zIHRvIHBhc3MgdmFsaWRhdGlvbj8KCj4gICAgLSBpZjoKPiAgICAg
ICAgcHJvcGVydGllczoKPiAgICAgICAgICBjb21wYXRpYmxlOgoKLS0gClNhc2hpa28gQUkgcmV2
aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDUxOTIyMDgxMy4yODQ2
OC0xLWFuc3VlbHNtdGhAZ21haWwuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
