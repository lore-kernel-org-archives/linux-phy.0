Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2589C43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4H+F2tTpjm06zbu01Um/MjH61EafDSQX7PmRJg8c3Sg=; b=lQOuvCzjNRgbsS
	OLwFcUlL8RdlbqD4Fnx3g2ZIZgH+uYQE4Mow4Kr/GdwloxWthBIh7MsCsJ+3LPO4S03KLl4pFDAub
	zYcunWBdM4fhJJZtjGDn0O8oFOXieqG86RdgQ6MMUhT2GL0q5oy34+4ui9bV6y7KSIbcGlh7xuAqO
	IkzZCdjOe37ur2lMnqNrrXphFfudoqG7iRq9IDtImkp+WHAlVPqByCnGHE+CJT/5/Ua0JSpdGQPN2
	kIyJAvxKEA54wqfaomY4V3YxFm37NyIbeDmTHOefrR9tDfhkLRMAebi4EjqmybnsW0r4B5xJz3lwC
	VJU/aZcnaDVKliw34JNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh793-0000000FDPT-0yGf;
	Tue, 07 Jul 2026 14:51:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh790-0000000FDP5-2RtM
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:51:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C4BD6601DE;
	Tue,  7 Jul 2026 14:51:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 137181F000E9;
	Tue,  7 Jul 2026 14:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783435889;
	bh=yDk0Ipnro/13Sm033nwkUYbAHjZx+IdhYVXUkeyFmP8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GpeN9THTRhxtld/8MvmKkEhwBTXTISdoJz1NYKFtZGACcou5BFo4vHP7PhB9Otbkn
	 0O3QhzCkZFQC6KlSK7E/j+EJVMY1UE4rmsCptEbNd14Fthe3nFRrFHwXFU8BNaWJZY
	 t+eZwodqW9h/CA8EF4ZBhbtviTgxftwxIlL8pMC9JShedDn7yU7vlgLZMEc8J5ZRyN
	 ugnrFjruitD/9cj46LYnanGrB346H8qfGXZO2sYByXnerVyaktvxXInlxsV5u4rwds
	 oItbxQkZVQFpFImJvZRJH8AmJEjnaCYXIvg6uvNQmYoRR2N1uNOb3u8W64mW3reAqn
	 UBGMD3idfYEYg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 6/9] phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L
 support
To: Biju <biju.das.au@gmail.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260707143646.245177-7-biju.das.jz@bp.renesas.com>
References: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
 <20260707143646.245177-7-biju.das.jz@bp.renesas.com>
Date: Tue, 07 Jul 2026 14:51:28 +0000
Message-Id: <20260707145129.137181F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBTbGVlcC1pbi1hdG9taWMgYnVnIGR1ZSB0byBjYWxsaW5nIHJlZ3VsYXRvcl9oYXJk
d2FyZV9lbmFibGUoKSBpbnNpZGUgYSBzcGlubG9jayBhbmQgZnJvbSBhIGhhcmRpcnEgaGFuZGxl
ci4KLS0KCi0tLSBQYXRjaCBbNl06IFtQQVRDSCB2MyA2LzldIHBoeTogcmVuZXNhczogcGh5LXJj
YXItZ2VuMy11c2IyOiBBZGQgUlovRzNMIHN1cHBvcnQgLS0tCmNvbW1pdCA1MDJjOTBmZWJhNjFm
ZGI5MmNjZGFmZjIxYTNlMjI2ZTYxMTNhYjQ4CkF1dGhvcjogQmlqdSBEYXMgPGJpanUuZGFzLmp6
QGJwLnJlbmVzYXMuY29tPgoKcGh5OiByZW5lc2FzOiBwaHktcmNhci1nZW4zLXVzYjI6IEFkZCBS
Wi9HM0wgc3VwcG9ydAoKVGhpcyBjb21taXQgYWRkcyBzdXBwb3J0IGZvciB0aGUgUlovRzNMIFNv
QyB0byB0aGUgcGh5LXJjYXItZ2VuMy11c2IyIGRyaXZlcgpieSBhZGRpbmcgdGhlICJyZW5lc2Fz
LHVzYjItcGh5LXI5YTA4ZzA0NiIgY29tcGF0aWJsZSBzdHJpbmcuIFRoZSBQSFkgZGF0YQpjb25m
aWd1cmF0aW9uIGlzIHNoYXJlZCB3aXRoIFJaL0czUy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMgYi9kcml2ZXJzL3BoeS9yZW5lc2FzL3Bo
eS1yY2FyLWdlbjMtdXNiMi5jCj4gaW5kZXggOWE0NWQ4NDBlZmViMi4uZDA2ZmI1MmVkNWYxYiAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4g
KysrIGIvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+IEBAIC03MjEs
NiArNzIxLDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHJjYXJfZ2VuM19w
aHlfdXNiMl9tYXRjaF90YWJsZVtdID0gewo+ICAJCS5jb21wYXRpYmxlID0gInJlbmVzYXMsdXNi
Mi1waHktcjlhMDhnMDQ1IiwKPiAgCQkuZGF0YSA9ICZyel9nM3NfcGh5X3VzYjJfZGF0YSwKPiAg
CX0sCj4gKwl7Cj4gKwkJLmNvbXBhdGlibGUgPSAicmVuZXNhcyx1c2IyLXBoeS1yOWEwOGcwNDYi
LAo+ICsJCS5kYXRhID0gJnJ6X2czc19waHlfdXNiMl9kYXRhLAo+ICsJfSwKCltTZXZlcml0eTog
SGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IHNpbmNlIHRoaXMgcGF0Y2gg
ZXhwb3NlcyB0aGlzIGhhcmR3YXJlIHRvIApleGlzdGluZyBjb2RlIHBhdGhzLCBJIHdhbnRlZCB0
byBhc2sgYWJvdXQgYSBwb3RlbnRpYWwgc2xlZXAtaW4tYXRvbWljIGJ1Zy4KCldoZW4gYSB1c2Vy
IHdyaXRlcyB0byB0aGUgcm9sZSBzeXNmcyBhdHRyaWJ1dGUsIHJvbGVfc3RvcmUoKSBhY3F1aXJl
cyBhCnNwaW5sb2NrIGFuZCBkaXNhYmxlcyBpbnRlcnJ1cHRzOgoKZHJpdmVycy9waHkvcmVuZXNh
cy9waHktcmNhci1nZW4zLXVzYjIuYzpyb2xlX3N0b3JlKCkgewogICAgZ3VhcmQoc3BpbmxvY2tf
aXJxc2F2ZSkoJmNoLT5sb2NrKTsKICAgIC4uLgogICAgaWYgKCFpc19iX2RldmljZSkgICAgLyog
QS1QZXJpcGhlcmFsICovCiAgICAgICAgcmNhcl9nZW4zX2luaXRfZnJvbV9hX3BlcmlfdG9fYV9o
b3N0KGNoKTsKfQoKVGhpcyBjYWxscyBkb3duIHRvIHJjYXJfZ2VuM19lbmFibGVfdmJ1c19jdHJs
KCksIHdoaWNoIHRoZW4gdHJpZ2dlcnMgdGhlCnJlZ3VsYXRvciBvcGVyYXRpb25zOgoKZHJpdmVy
cy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYzpyY2FyX2dlbjNfZW5hYmxlX3ZidXNf
Y3RybCgpIHsKICAgIC4uLgogICAgaWYgKGNoLT5vdGdfaW50ZXJuYWxfcmVnKSB7CiAgICAgICAg
cmVndWxhdG9yX2hhcmR3YXJlX2VuYWJsZShjaC0+dmJ1cywgdmJ1cyk7CiAgICAgICAgcmV0dXJu
OwogICAgfQoKICAgIGlmIChjaC0+cGh5X2RhdGEtPm5vX2FkcF9jdHJsIHx8IGNoLT5waHlfZGF0
YS0+dmJsdmxfY3RybCkgewogICAgICAgIGlmIChjaC0+dmJ1cykKICAgICAgICAgICAgcmVndWxh
dG9yX2hhcmR3YXJlX2VuYWJsZShjaC0+dmJ1cywgdmJ1cyk7CiAgICAuLi4KfQoKRm9yIFNvQ3Mg
dXNpbmcgdGhlIGludGVybmFsIHJlZ3VsYXRvciAoc3VjaCBhcyBSWi9HM0wpLCB0aGUgZW5hYmxl
IGNhbGxiYWNrCmludm9rZXMgcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldCgpOgoKZHJpdmVycy9w
aHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYzpyY2FyX2dlbjNfcGh5X3VzYjJfcmVndWxh
dG9yX2VuZGlzYWJsZSgpIHsKICAgIC4uLgogICAgcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5k
X2dldChkZXYpOwogICAgLi4uCn0KCkNhbiB0aGlzIHNlcXVlbmNlIGNhdXNlIGEgcGFuaWM/IAoK
SWYgdGhlIGRldmljZSBzdGF0ZSBpcyBSUE1fU1VTUEVORElORywgcG1fcnVudGltZV9yZXN1bWVf
YW5kX2dldCgpIG1pZ2h0IHNsZWVwCndhaXRpbmcgZm9yIHRoZSBhc3luY2hyb25vdXMgc3VzcGVu
ZCB0byBmaW5pc2gsIGJ1dCB3ZSBhcmUgaW5zaWRlIGFuIGF0b21pYwpzZWN0aW9uIGhvbGRpbmcg
Y2gtPmxvY2sgd2l0aCBpbnRlcnJ1cHRzIGRpc2FibGVkLgoKU2ltaWxhcmx5LCBkb2VzIHRoZSBy
Y2FyX2dlbjNfcGh5X3VzYjJfaXJxKCkgaGFyZGlycSBoYW5kbGVyIGFsc28gcmVhY2gKdGhpcyBy
ZWd1bGF0b3JfaGFyZHdhcmVfZW5hYmxlKCkgcGF0aCBvbiBPVEcgcGx1Zy91bnBsdWcgZXZlbnRz
PyBJZiBzbywKd291bGQgaXQgaGl0IHRoZSBzYW1lIHNsZWVwLWluLWF0b21pYyBpc3N1ZT8KCj4g
IAl7Cj4gIAkJLmNvbXBhdGlibGUgPSAicmVuZXNhcyx1c2IyLXBoeS1yOWEwOWcwNTciLAo+ICAJ
CS5kYXRhID0gJnJ6X3YyaF9waHlfdXNiMl9kYXRhLAoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3
IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwNzE0MzY0Ni4yNDUxNzctMS1i
aWp1LmRhcy5qekBicC5yZW5lc2FzLmNvbT9wYXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
