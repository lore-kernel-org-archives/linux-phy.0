Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDBA7C43327
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 13:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naf44Mp0BPolgC+H5KJPvpN1stnAOea1IfSunFCAytA=; b=QIY5JDugD4l3ZU
	lp8hdIUzUTDud/lr4G+CRZPPLzF+w/7pJceKdGvxsBI8qQsnTGjpSboQ6LdI5wOs1P7E6cROPD+/f
	jxHcZkfHGsB1SVGgm8voBTBSTnEfOP4FjTsRh8yw8li8sBqn+lNPBGzWOA7gL5MolHmpQroiiCRb0
	DnBCL47ZPX3jeWgXzM1O0VsA3HnYCWOrelarKrzcnmF20XdF1CMJYKIGMJ+4rkdGGek2lEzjKoyCY
	5viZPglt6TGrDZFqoLxfEowj8508lkvoI+QJZ5voaRXUL2LuFu9MHBCqvVG1nOXzfKS2PMOsKV9C5
	kWbu7VfeGjTA6TKg6lxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYW2-0000000HAAt-2GRz;
	Tue, 30 Jun 2026 13:28:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weYW1-0000000HAAR-0Zls
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 13:28:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E1465402F4;
	Tue, 30 Jun 2026 13:28:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A34C11F000E9;
	Tue, 30 Jun 2026 13:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782826120;
	bh=8DKqQjskTei8Td8AwrI9HvuwJR8wJP8F7KDBX2D9dyw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iG3u1SBLiCxgDkCpculo+tXEp4eKcCS21FTnZBlFfXD9j3rvzKckjlBKECqPevnq9
	 scd1yBu/G3Q3BNcQ4urPZBl34KQUNa/nJtw+A3Hul8AUrU1qQKKO79QU8dvPZSR6sg
	 A5qmphD63yuF89b8vl28IxBP+TLu1A7SaBXt3knzJgx4OqPXr3+1ZXlNy971BwZlxc
	 QZN0qNR3VnNxJnExxMsLGAqV8kT097Wq5j0vJnVgk9pwNSf68AgVJe+3jXfw8eb+f1
	 6y9EUB6qT9CwedKXxMhP9eL05uko7LHRLii8IILdvqFeWw1SkG4JiqG2b57J4hy6JS
	 9oaowZhppvAmg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 06/13] [net-next] net: replace linux/gpio.h inclusions
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: vkoul@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, linux-sunxi@lists.linux.dev, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260629132633.1300009-7-arnd@kernel.org>
References: <20260629132633.1300009-1-arnd@kernel.org>
 <20260629132633.1300009-7-arnd@kernel.org>
Date: Tue, 30 Jun 2026 13:28:39 +0000
Message-Id: <20260630132839.A34C11F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRHVwbGljYXRlIGluY2x1
c2lvbiBvZiBgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD5gIGNhdXNlZCBieSBhbiB1bmNoZWNrZWQg
ZmluZC1hbmQtcmVwbGFjZS4KLS0KCmNvbW1pdCBjYjU1Y2U0OGUyM2U2NzUzZDA0YWM1ZjY2NDU4
NWZlYjk5OWYxZmNkCkF1dGhvcjogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KCm5ldDog
cmVwbGFjZSBsaW51eC9ncGlvLmggaW5jbHVzaW9ucwoKVGhpcyBjb21taXQgcmVwbGFjZXMgb2Jz
b2xldGUgbGludXgvZ3Bpby5oIGluY2x1ZGVzIHdpdGggbGludXgvZ3Bpby9jb25zdW1lci5oCm9y
IGxpbnV4L2dwaW8vbGVnYWN5LmggYWNyb3NzIHZhcmlvdXMgbmV0d29yayBkcml2ZXJzIHdoZXJl
IHBvc3NpYmxlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvb2tpLXNlbWkv
cGNoX2diZS9wY2hfZ2JlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L29raS1zZW1pL3Bj
aF9nYmUvcGNoX2diZV9tYWluLmMKPiBpbmRleCA0OGI5NGNlNzc0OTA2Li44OGM1YzUyZTBlMzgx
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L29raS1zZW1pL3BjaF9nYmUvcGNo
X2diZV9tYWluLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9va2ktc2VtaS9wY2hfZ2Jl
L3BjaF9nYmVfbWFpbi5jCj4gQEAgLTE2LDcgKzE2LDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L25l
dF90c3RhbXAuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3B0cF9jbGFzc2lmeS5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvcHRwX3BjaC5oPgo+IC0jaW5jbHVkZSA8bGludXgvZ3Bpby5oPgo+ICsjaW5jbHVk
ZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPgoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBjcmVh
dGUgYSBkdXBsaWNhdGUgaW5jbHVkZSBpbiBwY2hfZ2JlX21haW4uYz8KClNpbmNlIGxpbnV4L2dw
aW8vY29uc3VtZXIuaCBpcyBhbHJlYWR5IGluY2x1ZGVkIGVhcmxpZXIgaW4gdGhlIGZpbGUgYWxv
bmdzaWRlCmxpbnV4L2dwaW8vbWFjaGluZS5oLCBjaGFuZ2luZyB0aGlzIGluY2x1ZGUgcmVzdWx0
cyBpbiBpdCBiZWluZyBpbmNsdWRlZAp0d2ljZS4gQ2FuIHRoaXMgcmVwbGFjZWQgaW5jbHVkZSBz
aW1wbHkgYmUgcmVtb3ZlZD8KCj4gIAo+ICAjZGVmaW5lIFBDSF9HQkVfTUFSX0VOVFJJRVMJCTE2
CgpbIC4uLiBdCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9waHkvbWRpb19kZXZpY2UuYyBi
L2RyaXZlcnMvbmV0L3BoeS9tZGlvX2RldmljZS5jCj4gaW5kZXggNTYwODBkM2QyZDI1ZS4uYTE4
MjYzZDViYjAyOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9waHkvbWRpb19kZXZpY2UuYwo+
ICsrKyBiL2RyaXZlcnMvbmV0L3BoeS9tZGlvX2RldmljZS5jCj4gQEAgLTgsNyArOCw3IEBACj4g
IAo+ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2Vycm5vLmg+
Cj4gLSNpbmNsdWRlIDxsaW51eC9ncGlvLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1
bWVyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+CgpbU2V2ZXJpdHk6IExv
d10KRGlkIHRoZSBhdXRvbWF0ZWQgcmVwbGFjZW1lbnQgcmVzdWx0IGluIGNvbnNlY3V0aXZlIGR1
cGxpY2F0ZSBpbmNsdWRlcyBoZXJlPwoKSXQgbG9va3MgbGlrZSBtZGlvX2RldmljZS5jIGFscmVh
ZHkgaW5jbHVkZWQgbGludXgvZ3Bpby9jb25zdW1lci5oIHJpZ2h0IGJlbG93CnRoZSBvbGQgbGlu
dXgvZ3Bpby5oIGluY2x1ZGUuIFNob3VsZCB3ZSBqdXN0IGRyb3AgdGhlIG9sZCBpbmNsdWRlIGVu
dGlyZWx5Cmluc3RlYWQgb2YgcmVwbGFjaW5nIGl0PwoKPiAgI2luY2x1ZGUgPGxpbnV4L2luaXQu
aD4KPiAgI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPgoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDYyOTEzMjYzMy4xMzAwMDA5
LTEtYXJuZEBrZXJuZWwub3JnP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
