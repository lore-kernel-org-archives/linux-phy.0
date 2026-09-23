Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C64BEC9830B
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 18:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2mP0ZY5R1CaEoGqOigETvehAEI1gNQDaDEp/tRgEp9E=; b=BsFGeEOCwkjTg4
	8QzesDeasTydXYaJUe3/N99j5i35OlUO206xsmY8UuNyWVrSIRLVZU6kdl/sgUu+3x0kMpcQbVAt+
	q6CHvPHNvmwgz0xyHYi1jibtnz8m2a2tpPgwjnt23de7w4szwYducgtYcT1V3nuEo+UEBwIGJd4fX
	PqNPS5wxgcrN8ptNpHSrqEH+yjCNBoRCSQykwQxbP3PcSWge76fRmXJcW8QF/YljLhRRt8NWQXahp
	zxUber6KB7/6zzx9OtoU+XQvq076CKQ0mdl6ddrhxSJTZsLs87//FxKcwocaAxCSgJFnES5FVT90V
	WCveo65sINLUvv9gKOTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rq7-00000009Dj5-1mHA;
	Wed, 23 Sep 2026 18:37:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Rq5-00000009DiR-15vT
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 18:37:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id ED83D437FC;
	Wed, 23 Sep 2026 18:37:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E37F1F000FF;
	Wed, 23 Sep 2026 18:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790188624;
	bh=WqSJNIizELZuispw3o4Rwp/Dg427OuWZN5m99HzCcnM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VQ79VCyh+tdFjyzQm2wrxB/JprCsIXDe16pcV3gLcrH+diPAGB50+xuHvdzY7yfeD
	 DUXk6WL2CNSWTsodKtx+AWF8Sl/MLyxYs95d7396vXwR8wjNhTSwKWkaBDSmIRYkgT
	 ez2sutQl8Oy0Pupbu4yMOcGN9fsXqR9p90k13QXq3vbVU5ueb7g2HV5DyaEnzbyJhW
	 H72SaHNc/Ym7Z7JBVOhKs4v8I1eA+QYWzXww19G7YxTT+2hsn0zJyGMCQdRru3OlGw
	 XfsxUqvZZKR2tb9BrOgsy1bhE3Mm3EYbguqhMx55OKKomYC8bG/ssHygl/zT/j+ZWe
	 9xzRa5ns2A0Mw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 02/12] dt-bindings: clk: zte: Add zx297520v3 matrix
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: lee@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, mfd@lists.linux.dev, linux-clk@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260923-zx29clk-v12-2-9c243796b6d2@gmail.com>
References: <20260923-zx29clk-v12-0-9c243796b6d2@gmail.com>
 <20260923-zx29clk-v12-2-9c243796b6d2@gmail.com>
Date: Wed, 23 Sep 2026 18:37:03 +0000
Message-Id: <20260923183704.3E37F1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IGNs
azogenRlOiBvdmVybGFwcGluZyBtYWNybyBpbmRpY2VzIGxhY2sgY29udHJvbGxlciBuYW1lc3Bh
Y2VzCi0tCgpjb21taXQgZGNhNGYwOTJlNDc0NmJhODBlOWZjNWE5ZDczOThjOTU0MTM4YTkzYwpB
dXRob3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpkdC1i
aW5kaW5nczogY2xrOiB6dGU6IEFkZCB6eDI5NzUyMHYzIG1hdHJpeCBjbG9jayBhbmQgcmVzZXQg
Y29udHJvbGxlcgoKVGhpcyBjb21taXQgaW50cm9kdWNlcyB0aGUgbWF0cml4IGNsb2NrIGFuZCBy
ZXNldCBjb250cm9sbGVyIGZvciB0aGUgWlRFCnp4Mjk3NTIwdjMgU29DLiBJdCBhZGRzIHRoZSBi
aW5kaW5ncyBkb2N1bWVudGF0aW9uLCBhbG9uZyB3aXRoIGRlZmluaXRpb25zCmZvciB0aGUgY2xv
Y2sgYW5kIHJlc2V0IGluZGljZXMuCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdz
L2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLWNsay5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay96
dGUsengyOTc1MjB2My1jbGsuaAo+IGluZGV4IDFiYzkyNjdlNGQ2MmUuLmQ5OGJjMzg2MzViMDMg
MTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2My1j
bGsuaAo+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svenRlLHp4Mjk3NTIwdjMtY2xr
LmgKPiBAQCAtNjksNCArNjksNDkgQEAKPiAgI2RlZmluZSBaWDI5NzUyMFYzX0dTTV8xNTZNCQkJ
NjAKPiAgI2RlZmluZSBaWDI5NzUyMFYzX0FCQl9XQ0xLCQkJNjEKPiAgCj4gKyNkZWZpbmUgWlgy
OTc1MjBWM19TWVNfVElNRVJfV0NMSwkJMAo+ICsjZGVmaW5lIFpYMjk3NTIwVjNfQ1BVX1dDTEsJ
CQkxCgpbU2V2ZXJpdHk6IExvd10KSXMgdGhlcmUgYSByaXNrIG9mIHVuaW50ZW5kZWQgbWlzY29u
ZmlndXJhdGlvbnMgYmVjYXVzZSB0aGVzZSBtYWNyb3MgcmVzdGFydAp0aGUgaW5kZXggc3BhY2Ug
YXQgMCB3aXRob3V0IGEgZGlzdGluZ3Vpc2hpbmcgcHJlZml4IGxpa2UgTUFUUklYQ1JNXz8KClNp
bmNlIHRoZXkgb3ZlcmxhcCBkaXJlY3RseSB3aXRoIHRoZSB0b3Bjcm0gbWFjcm9zIGRlZmluZWQg
ZWFybGllciBpbiB0aGUKc2FtZSBmaWxlLCBib3RoIHNldHMgZXZhbHVhdGUgdG8gaWRlbnRpY2Fs
IGludGVnZXJzIChlLmcuLCBib3RoIGV2YWx1YXRlCnRvIDApLgoKQ291bGQgdGhpcyByZWdyZXNz
aW9uIGxlYWQgdG8gYSBtaXNtYXRjaGVkIGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24gYXQgcnVudGlt
ZQppZiBhIHRvcGNybSBtYWNybyBpcyBhY2NpZGVudGFsbHkgdXNlZCB3aXRoIGEgbWF0cml4Y3Jt
IHBoYW5kbGU/CgpbIC4uLiBdCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jl
c2V0L3p0ZSx6eDI5NzUyMHYzLXJlc2V0LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3p0
ZSx6eDI5NzUyMHYzLXJlc2V0LmgKPiBpbmRleCA0YTBlYWVjMGU5ODE2Li41NGU1YjI0Zjg1OWFm
IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvenRlLHp4Mjk3NTIwdjMt
cmVzZXQuaAo+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvenRlLHp4Mjk3NTIwdjMt
cmVzZXQuaAo+IEBAIC0yNyw0ICsyNywxNyBAQAo+ICAjZGVmaW5lIFpYMjk3NTIwVjNfVVNCX1JF
U0VUCQkJMTgKPiAgI2RlZmluZSBaWDI5NzUyMFYzX0hTSUNfUkVTRVQJCQkxOQo+ICAKPiArI2Rl
ZmluZSBaWDI5NzUyMFYzX0NQVV9SRVNFVAkJCTAKPiArI2RlZmluZSBaWDI5NzUyMFYzX1pTUF9C
VVNfUkVTRVQJCTEKCltTZXZlcml0eTogTG93XQpEb2VzIHJlc3RhcnRpbmcgdGhlIGluZGV4IHNw
YWNlIGF0IDAgZm9yIHRoZXNlIG1hdHJpeGNybSByZXNldHMgaW50cm9kdWNlCmEgc2ltaWxhciBy
ZWdyZXNzaW9uIHJpc2sgYXMgdGhlIGNsb2NrIGluZGljZXM/CgpUaGVzZSBtYWNyb3Mgc2ltaWxh
cmx5IGxhY2sgYSBuYW1lc3BhY2UgcHJlZml4IGFuZCBldmFsdWF0ZSB0byB0aGUgc2FtZQppbnRl
Z2VycyBhcyB0aGUgdG9wY3JtIHJlc2V0IG1hY3Jvcy4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MjMtengyOWNsay12MTItMC05
YzI0Mzc5NmI2ZDJAZ21haWwuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
