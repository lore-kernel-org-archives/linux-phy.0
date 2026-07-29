Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91597C54F51
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 12:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgCgqARI7lCe8v7Jg/EHjZCGgsj8WpJ47B25+RVDEWo=; b=jq0zXPMk0ME36C
	nb/MLsx6MX/siF8QzbrO3chTyRIUZxEOGXYh0+NWoxsnb1oFmEAFnn0bMF6xx4IimbDtKRb/KQ3KY
	RtBN/F73vhXt1CJverFo48yCCLwttx3Gu9MGVOE7FAXLPM/WfB3qQULrWiTp6XfcY7aKCXiZ0N+II
	7hesouzyyuiJCvI3yWGz1NbvfGWC/qh5kcib8aIDf9iY7eobwZV2zVNhudwsFqqy3R1ibgZN2/5M8
	sXmZKqiVuHDznOuizq8X+osXblgq4cXMbVzEOPrsOnU+1PFGQA5/jB5WWkOvH2lgXyYpdro+OShwY
	rAraiZWnsPz8TpuAp/2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp35g-00000007puo-0cWJ;
	Wed, 29 Jul 2026 12:08:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp35e-00000007pud-33pc
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 12:08:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C9E6D60A5E;
	Wed, 29 Jul 2026 12:08:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D36A1F000E9;
	Wed, 29 Jul 2026 12:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785326929;
	bh=yV3peRwI/p/x1Ml3E09RMQTgFgpON7moq4KtlxgEsaY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RXMjqbjRPho3RGZ2R8Fkw+TyPLZJeAEoQ+cvKrQWn40yepii2ifiySowcT0+Yfzvd
	 s9PFsZhVP4Q0I549l6n1gp+xS/Fi8hxQrBdDuYE4d4L4pdSMLr6meDm/quiC6iSUtl
	 IU2ovCBzfGs/gsoZGfnQVL/O2Rrj+ORXvXZo3x5SDA+Cn4Xm8+W8jGQPJNd4xfFCJr
	 Zvlv8GpkjXBtYeB0Tovv2eXO3wDfWH67pqmwIxnRe0B+W+G/WrrkybslklQnzA9oXB
	 nkz2DK9LEnWbJ2aonvgRleoCTzywwPAXb9UmbtArPtZ6+JTQZNoEokMjRLS7RCGP1z
	 LGuXTm9++PRgQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 7/9] phy: renesas: phy-rcar-gen3-usb2: Fix devm
 action registration for disabled VBUS regulator
To: Biju <biju.das.au@gmail.com>
Cc: wsa+renesas@sang-engineering.com, neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260729115022.222340-8-biju.das.jz@bp.renesas.com>
References: <20260729115022.222340-1-biju.das.jz@bp.renesas.com>
 <20260729115022.222340-8-biju.das.jz@bp.renesas.com>
Date: Wed, 29 Jul 2026 12:08:48 +0000
Message-Id: <20260729120849.0D36A1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHBhdGNoIHJl
cGxhY2VzIGxvZ2ljYWwgcmVmZXJlbmNlIHRyYWNraW5nIHdpdGggYSBoYXJkd2FyZSBzdGF0ZSBj
aGVjayB0aGF0IGV2YWx1YXRlcyBuZWdhdGl2ZSBlcnJvciBjb2RlcyBhcyB0cnVlIGFuZCBza2lw
cyBjbGVhbnVwIG9uIG1pc21hdGNoLCBjYXVzaW5nIGBlbmFibGVfY291bnRgIGxlYWtzIGFuZCBr
ZXJuZWwgd2FybmluZ3MuCi0tCgotLS0gUGF0Y2ggWzddOiBbUEFUQ0ggdjUgNy85XSBwaHk6IHJl
bmVzYXM6IHBoeS1yY2FyLWdlbjMtdXNiMjogRml4IGRldm0gYWN0aW9uIHJlZ2lzdHJhdGlvbiBm
b3IgZGlzYWJsZWQgVkJVUyByZWd1bGF0b3IgLS0tCmNvbW1pdCBiNGQ2ZDI0ZjY5N2RlZTgwN2E4
ODNmOTU5MTAwZTEzOGMzZmVlZWYzCkF1dGhvcjogQmlqdSBEYXMgPGJpanUuZGFzLmp6QGJwLnJl
bmVzYXMuY29tPgoKcGh5OiByZW5lc2FzOiBwaHktcmNhci1nZW4zLXVzYjI6IEZpeCBkZXZtIGFj
dGlvbiByZWdpc3RyYXRpb24gZm9yIGRpc2FibGVkIFZCVVMgcmVndWxhdG9yCgpUaGlzIGNvbW1p
dCBtb2RpZmllcyB0aGUgVkJVUyByZWd1bGF0b3IgaW5pdGlhbGl6YXRpb24gdG8gYWx3YXlzIHJl
Z2lzdGVyCnRoZSBkZXZtIGRpc2FibGUgYWN0aW9uIGlmIHRoZSByZWd1bGF0b3IgaXMgY3VycmVu
dGx5IGVuYWJsZWQuIEl0IHVzZXMKcmVndWxhdG9yX2lzX2VuYWJsZWQoKSB0byBkZXRlcm1pbmUg
dGhlIGhhcmR3YXJlIHN0YXRlLCBhdHRlbXB0aW5nIHRvCmVuc3VyZSB0aGF0IHRoZSBpbml0aWFs
IGVuYWJsZWQgc3RhdGUgZnJvbSBkZXZtX3JlZ3VsYXRvcl9nZXRfZXhjbHVzaXZlKCkKaXMgcHJv
cGVybHkgY2xlYW5lZCB1cC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5
LXJjYXItZ2VuMy11c2IyLmMgYi9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNi
Mi5jCj4gaW5kZXggZDA2ZmI1MmVkNWYxYi4uZWYzOGMzYjM2NWQ0MiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4gKysrIGIvZHJpdmVycy9w
aHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+IEBAIC05MDUsMTUgKzkwNSwxNyBAQCBz
dGF0aWMgaW50IHJjYXJfZ2VuM19waHlfdXNiMl92YnVzX3JlZ3VsYXRvcl9nZXRfZXhjbHVzaXZl
X2VuYWJsZShzdHJ1Y3QgcmNhcl9nZQpbIC4uLiBdCj4gKwlpZiAoZW5hYmxlKSB7Cj4gKwkJcmV0
ID0gcmVndWxhdG9yX2VuYWJsZShjaGFubmVsLT52YnVzKTsKPiArCQlpZiAocmV0KQo+ICsJCQly
ZXR1cm4gcmV0Owo+ICsJfQo+ICAKPiAtCXJldCA9IHJlZ3VsYXRvcl9lbmFibGUoY2hhbm5lbC0+
dmJ1cyk7Cj4gLQlpZiAocmV0KQo+IC0JCXJldHVybiByZXQ7Cj4gKwlpZiAocmVndWxhdG9yX2lz
X2VuYWJsZWQoY2hhbm5lbC0+dmJ1cykpCj4gKwkJcmV0dXJuIGRldm1fYWRkX2FjdGlvbl9vcl9y
ZXNldChkZXYsIHJjYXJfZ2VuM19waHlfdXNiMl92YnVzX2Rpc2FibGVfYWN0aW9uLAo+ICsJCQkJ
CQljaGFubmVsLT52YnVzKTsKCltTZXZlcml0eTogTWVkaXVtXQpDYW4gdGhpcyBjYXVzZSBpc3N1
ZXMgaWYgcmVndWxhdG9yX2lzX2VuYWJsZWQoKSByZXR1cm5zIGEgbmVnYXRpdmUgZXJyb3IKY29k
ZT8KCklmIHRoZSB1bmRlcmx5aW5nIGNvbW11bmljYXRpb24gZmFpbHMsIHJlZ3VsYXRvcl9pc19l
bmFibGVkKCkgd2lsbCByZXR1cm4gYQpuZWdhdGl2ZSB2YWx1ZSB3aGljaCBldmFsdWF0ZXMgYXMg
dHJ1ZS4gVGhpcyB3b3VsZCBlcnJvbmVvdXNseSByZWdpc3RlciB0aGUKZGV2bSBkaXNhYmxlIGFj
dGlvbiBldmVuIHdoZW4gdGhlIGVuYWJsZV9jb3VudCBpcyAwLCB0cmlnZ2VyaW5nIGEgV0FSTiBp
bgpyZWd1bGF0b3JfZGlzYWJsZSgpIG9uIGRyaXZlciB1bmJpbmQuCgpBZGRpdGlvbmFsbHksIGlm
IHRoZSBjYWxsZXIgZXhwbGljaXRseSByZXF1ZXN0ZWQgZW5hYmxlLCByZWd1bGF0b3JfZW5hYmxl
KCkKd2lsbCB1bmNvbmRpdGlvbmFsbHkgaW5jcmVtZW50IHRoZSBlbmFibGVfY291bnQuIElmIHRo
ZSBzdWJzZXF1ZW50IGNoZWNrCnJldHVybnMgMCBkdWUgdG8gaGFyZHdhcmUgcmFtcC11cCBkZWxh
eXMgYmVmb3JlIHRoZSBzdGF0dXMgcmVnaXN0ZXIgcmVmbGVjdHMKdGhlIHN0YXRlLCB0aGUgY2xl
YW51cCBhY3Rpb24gd291bGQgYmUgc2tpcHBlZC4KCldvdWxkIHRoaXMgbGVhayB0aGUgcmVmZXJl
bmNlIGFuZCB0cmlnZ2VyIGEgV0FSTl9PTigpIGZvciB0aGUgZW5hYmxlX2NvdW50CmluIHJlZ3Vs
YXRvcl9wdXQoKSB1cG9uIGRldmljZSByZW1vdmFsPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcyOTExNTAyMi4yMjIzNDAtMS1i
aWp1LmRhcy5qekBicC5yZW5lc2FzLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
