Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AF0ECD98CE
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 05:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7kOXasy71AMgEcbdEoHr8er2S0wv42rby5uDaj+rSA=; b=L69osaXIGfJ6On
	uW0xcQGhAgNKLdTKk+D8DWu91c8hHFg6LIZ/ZXUqh3Nlda6QU2KTcBsCzonviLaR8SB44rzUg/ldD
	bbc5YEFJxlcjQgHVwWtHxK8b1kuCRA+PaQaQzzSKEmrb4XOtrgOgv32+2sdEcRGqupQOT7Q9cOE4w
	pAt93vk7plqZnRVc4RkXCclvosn/2desGl4oRgn3LTPXNzSZasoAK7YgHPyTw+CLeBGnwFmnRryio
	u3eUcxOFPrq78vMYVY2xzKb/sYJCTL7n4FImISZkCEdPCBpXukev7hEG8HD+w0Mc7NX5T6pWD/Q1F
	eGi8/qmcA56vK0pvRe3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0Jy-0000000DehX-0IHi;
	Mon, 15 Jun 2026 05:57:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0Jw-0000000DehP-1PdE
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 05:57:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5DB926008A;
	Mon, 15 Jun 2026 05:57:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B87871F000E9;
	Mon, 15 Jun 2026 05:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781503035;
	bh=R+k6vc3M1rq8waiprFnocGtgmE69JAynowKaLTQCrLw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hZythficFHk7VOWLJqMe79cIk2vaTK2iW9I3iit3ufZlMVeHGG9s3fvLe5PpPNa++
	 sGHiiXhnTHGfRi9h7rrsFBkXr6JmYmjk7NXjPs1kA/mZRp+8t+1zIXeuyOIcKazsG2
	 PUtDpHmS5tsFdceOnfen3prR24aSmSuxpkkzMbkGW2pL32gpVXiSvwdLftm4yNkJhP
	 ymfs/CyvRHTOIUqt3IfAOKkxWpqZ8lmdQtKPd44Z8PGaup/aOSKn3oV6pjYUpZ3CLc
	 V30ew8wqacGatCNpSsOcDUphQuQGa5/uX6kdfag+hX2hfEMkQXQpCI935KVOiqCaRd
	 IklbAOV0N/B1g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
To: "Joey Lu" <a0987203069@gmail.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260615054911.48821-3-a0987203069@gmail.com>
References: <20260615054911.48821-3-a0987203069@gmail.com>
Date: Mon, 15 Jun 2026 05:57:14 +0000
Message-Id: <20260615055714.B87871F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHVuaXQgYWRkcmVz
c2VzIGZvciBFSENJMSBhbmQgT0hDSTEgbm9kZXMgdXNlIHVwcGVyY2FzZSBoZXhhZGVjaW1hbCBj
aGFyYWN0ZXJzLgotLQoKY29tbWl0IDA1ZDk2YTc5ZDkwZDE2ODQ3MjI5YjJmNWI1Y2ZkNzFkOGVi
NmVmOTgKQXV0aG9yOiBKb2V5IEx1IDxhMDk4NzIwMzA2OUBnbWFpbC5jb20+Cgphcm02NDogZHRz
OiBudXZvdG9uOiBtYTM1ZDE6IGFkZCBVU0IgY29udHJvbGxlcnMgYW5kIGR1YWwtcG9ydCBQSFkg
bm9kZQoKVGhpcyBjb21taXQgYWRkcyBkZXZpY2UgdHJlZSBub2RlcyBmb3IgdGhlIE1BMzVEMSBV
U0Igc3Vic3lzdGVtLAppbmNsdWRpbmcgYSBkdWFsLXBvcnQgUEhZIG5vZGUgYW5kIG5vZGVzIGZv
ciB0aGUgRFdDMiwgRUhDSSwgYW5kIE9IQ0kKY29udHJvbGxlcnMuIEl0IGFsc28gZW5hYmxlcyB0
aGUgY29ycmVzcG9uZGluZyBub2RlcyBhbmQgY29uZmlndXJlcwpwaW5jdHJsIGluIHRoZSBib2Fy
ZCBmaWxlcy4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1
ZDEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEuZHRzaQo+IGluZGV4
IGU1MWI5OGY1YmRjZTQuLjczZmYxZDc4ZDI4NDggMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9udXZvdG9uL21hMzVkMS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9u
dXZvdG9uL21hMzVkMS5kdHNpCgpbIC4uLiBdCgo+IEBAIC0zNzksNSArMzg4LDYyIEBAIHVhcnQx
Njogc2VyaWFsQDQwODgwMDAwIHsKPiAgCQkJY2xvY2tzID0gPCZjbGsgVUFSVDE2X0dBVEU+Owo+
ICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAJCX07CgpbIC4uLiBdCgo+ICsJCWVoY2kxOiB1
c2JANDAxQzAwMDAgewoKW1NldmVyaXR5OiBMb3ddClNob3VsZCB0aGlzIHVuaXQgYWRkcmVzcyB1
c2UgbG93ZXJjYXNlIGhleGFkZWNpbWFsIGNoYXJhY3RlcnM/CgpUaGUgRGV2aWNldHJlZSBzcGVj
aWZpY2F0aW9uIHJlcXVpcmVzIHVuaXQgYWRkcmVzc2VzIHRvIGJlIGZvcm1hdHRlZCB1c2luZwps
b3dlcmNhc2UgaGV4LiBVc2luZyB1cHBlcmNhc2UgJ0MnIGhlcmUgKHVubGlrZSB0aGUgJ2MnIGlu
IHRoZSByZWcgcHJvcGVydHkKYmVsb3cpIGNhbiB0cmlnZ2VyIFdfc2ltcGxlX2J1c19yZWcgd2Fy
bmluZ3Mgd2hlbiBjaGVja2luZyBkZXZpY2UgdHJlZXMuCgo+ICsJCQljb21wYXRpYmxlID0gImdl
bmVyaWMtZWhjaSI7Cj4gKwkJCXJlZyA9IDwweDAgMHg0MDFjMDAwMCAweDAgMHgxMDAwPjsKPiAr
CQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM0IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsJCQlj
bG9ja3MgPSA8JmNsayBIVVNCSDFfR0FURT47Cj4gKwkJCXBoeXMgPSA8JnVzYl9waHkgMT47Cj4g
KwkJCXBoeS1uYW1lcyA9ICJ1c2IiOwo+ICsJCQljb21wYW5pb24gPSA8Jm9oY2kxPjsKPiArCQkJ
c3RhdHVzID0gImRpc2FibGVkIjsKPiArCQl9Owo+ICsKPiArCQlvaGNpMDogdXNiQDQwMTUwMDAw
IHsKPiArCQkJY29tcGF0aWJsZSA9ICJnZW5lcmljLW9oY2kiOwo+ICsJCQlyZWcgPSA8MHgwIDB4
NDAxNTAwMDAgMHgwIDB4MTAwMD47Cj4gKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAzNSBJUlFf
VFlQRV9MRVZFTF9ISUdIPjsKPiArCQkJY2xvY2tzID0gPCZjbGsgSFVTQkgwX0dBVEU+Owo+ICsJ
CQlwaHlzID0gPCZ1c2JfcGh5IDA+Owo+ICsJCQlwaHktbmFtZXMgPSAidXNiIjsKPiArCQkJc3Rh
dHVzID0gImRpc2FibGVkIjsKPiArCQl9Owo+ICsKPiArCQlvaGNpMTogdXNiQDQwMUQwMDAwIHsK
CltTZXZlcml0eTogTG93XQpTaW1pbGFybHksIGNvdWxkIHRoaXMgbm9kZSBiZSBuYW1lZCB1c2JA
NDAxZDAwMDAgdG8gY29tcGx5IHdpdGggdGhlCnN0YW5kYXJkIERldmljZXRyZWUgbG93ZXJjYXNl
IGhleCBjb252ZW50aW9ucz8KCj4gKwkJCWNvbXBhdGlibGUgPSAiZ2VuZXJpYy1vaGNpIjsKPiAr
CQkJcmVnID0gPDB4MCAweDQwMWQwMDAwIDB4MCAweDEwMDA+Owo+ICsJCQlpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgMzYgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKwkJCWNsb2NrcyA9IDwmY2xrIEhV
U0JIMV9HQVRFPjsKPiArCQkJcGh5cyA9IDwmdXNiX3BoeSAxPjsKPiArCQkJcGh5LW5hbWVzID0g
InVzYiI7Cj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwkJfTsKPiAgCX07Cj4gIH07Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNjE1MDU0OTExLjQ4ODIxLTEtYTA5ODcyMDMwNjlAZ21haWwuY29tP3BhcnQ9MgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
