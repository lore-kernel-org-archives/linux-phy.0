Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5128C531C9
	for <linux-phy@archiver.kernel.org>; Sun, 26 Jul 2026 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wjDBlmPlbtbHmMd2ySAdDVXhzyFHqfye5d0ZEpPdZw=; b=zHAZJ2uw33F3FL
	JPfajb3t0z4YUV328LsxSLjSJVEbLA7lDQH+R1KOwD56iUXImtKIwvDKALOKod2QWXEWPR4pbS+If
	+/y8Z+rFM+F23ZH9HvFQaGDc55U5FdjGcmd4/jvI2HG3/CkuHVHJFRjH0Spw2SyRH4g3ewJwLBlVw
	QQJF6uHbeebqkEmxHnJg3isanGqQ6lDl7UPDCYha92GKbHMZ4UvbXQqhHKfg79PUj0jE7Pz1GRM7X
	NM+CYGoSfdv88TRPYDEXcTrexNd8eyWhZXhmGl1uUbjHkZPwPl8j7X7Fri6JkT6T9PqzXBUXjE2nb
	C5caZYy8FKb10N2F7m4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0NR-00000001HPQ-1n9K;
	Sun, 26 Jul 2026 15:02:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo0NQ-00000001HPK-1gJ2
	for linux-phy@lists.infradead.org;
	Sun, 26 Jul 2026 15:02:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AD66160008;
	Sun, 26 Jul 2026 15:02:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8157C1F000E9;
	Sun, 26 Jul 2026 15:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785078171;
	bh=Z3DACBE56ZwFLMgfYQH7UyWpQ+If3ko8mfpG2U6ex9s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gPIUkq6z5EHLn3RqbfKo4Zo90FebBQ/Zka1MrKi287fel32OZK89e8n4UEqsHPFh+
	 rTh4MC0H42m1IhuReaOvRbUHTx58FEZ8z8YucKjg0kIgy2WCfH9mq6MTZ/ioUDyhr1
	 88mmu1rIk82JiwjrLHJFZsYuNIoP9DkyDcXtBJRNQCeuAtHB24exWSHcJQUadWziPD
	 Oy1Z2S1wUn9Nww7udDALqV3ZH9GauBf+lFQFrzAkueBObIXwKi3O5OoR6OWz/OvYBY
	 NDLwVlIAMds7Oqe20awakMR20/nmWCKf+cqTSeOB4nfrHO211rIG5RKsqPu1jvtSCF
	 jt/rJpgqMkELA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 support per-direction phys
To: "Jason Yang" <jason98166@gmail.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260726-dcphy-rx-v1-v2-1-cf9cc34a412a@gmail.com>
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <20260726-dcphy-rx-v1-v2-1-cf9cc34a412a@gmail.com>
Date: Sun, 26 Jul 2026 15:02:50 +0000
Message-Id: <20260726150250.8157C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGR0LWJpbmRp
bmcgYWxsb3dzIGAjcGh5LWNlbGxzID0gMmAgdG8gcmVwcmVzZW50IFBIWSBkaXJlY3Rpb24sIGJ1
dCB0aGUgY29ycmVzcG9uZGluZyBkcml2ZXIgYHBoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmNg
IHdhcyBub3QgdXBkYXRlZCB0byBzdXBwb3J0IHRoaXMuCi0tCgotLS0gUGF0Y2ggWzFdOiBbUEFU
Q0ggdjIgMS80XSBkdC1iaW5kaW5nczogcGh5OiByb2NrY2hpcCxyazM1ODgtbWlwaS1kY3BoeTog
c3VwcG9ydCBwZXItZGlyZWN0aW9uIHBoeXMgLS0tCmNvbW1pdCA0MjFkMjY2ZmEzMzE4YzQ0Nzgw
YzA5MjI0YTAzNGIwZWRlY2E5ZGIzCkF1dGhvcjogSmFzb24gWWFuZyA8amFzb245ODE2NkBnbWFp
bC5jb20+ClN1YmplY3Q6IGR0LWJpbmRpbmdzOiBwaHk6IHJvY2tjaGlwLHJrMzU4OC1taXBpLWRj
cGh5OiBzdXBwb3J0IHBlci1kaXJlY3Rpb24gcGh5cwoKVGhpcyBjb21taXQgdXBkYXRlcyB0aGUg
Um9ja2NoaXAgUkszNTg4IE1JUEkgRC0vQy1QSFkgZGV2aWNlIHRyZWUgYmluZGluZwp0byBzdXBw
b3J0IHBlci1kaXJlY3Rpb24gY29uZmlndXJhdGlvbi4gSXQgY2hhbmdlcyB0aGUgI3BoeS1jZWxs
cyBwcm9wZXJ0eQp0byBhbGxvdyBlaXRoZXIgMSBvciAyIGNlbGxzLCB3aGVyZSB0aGUgb3B0aW9u
YWwgc2Vjb25kIGNlbGwgc3BlY2lmaWVzIHRoZQpQSFkgZGlyZWN0aW9uIChUWCBvciBSWCkuCgo+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tj
aGlwLHJrMzU4OC1taXBpLWRjcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3JvY2tjaGlwLHJrMzU4OC1taXBpLWRjcGh5LnlhbWwKPiBpbmRleCBjOGZmNWJh
MjJhODZiLi42OGE0M2RiOWM2NjkwIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAscmszNTg4LW1pcGktZGNwaHkueWFtbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAscmszNTg4LW1p
cGktZGNwaHkueWFtbAo+IEBAIC0yMCwxMiArMjAsMjIgQEAgcHJvcGVydGllczoKPiAgICAgIG1h
eEl0ZW1zOiAxCj4gIAo+ICAgICIjcGh5LWNlbGxzIjoKPiAtICAgIGNvbnN0OiAxCj4gKyAgICBl
bnVtOiBbMSwgMl0KCltTZXZlcml0eTogTWVkaXVtXQpXaWxsIHRoaXMgbmV3IDItY2VsbCBjb25m
aWd1cmF0aW9uIHdvcmsgd2l0aCB0aGUgY3VycmVudCBQSFkgZHJpdmVyPwoKTG9va2luZyBhdCBz
YW1zdW5nX21pcGlfZGNwaHlfeGxhdGUoKSBpbgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtc2Ftc3VuZy1kY3BoeS5jLCB0aGUgZHJpdmVyIGV4cGxpY2l0bHkKcmVqZWN0cyBhbnl0
aGluZyBvdGhlciB0aGFuIDEgY2VsbDoKCglpZiAoYXJncy0+YXJnc19jb3VudCAhPSAxKSB7CgkJ
ZGV2X2VycihkZXYsICJpbnZhbGlkIG51bWJlciBvZiBhcmd1bWVudHNcbiIpOwoJCXJldHVybiBF
UlJfUFRSKC1FSU5WQUwpOwoJfQoKSWYgYSBkZXZpY2UgdHJlZSBpcyB1cGRhdGVkIHRvIHVzZSB0
aGUgbmV3bHkgYWxsb3dlZCAyLWNlbGwgY29uZmlndXJhdGlvbgp0byBzcGVjaWZ5IFRYL1JYIGRp
cmVjdGlvbiwgd29uJ3QgcGh5X2dldCgpIGZhaWwgYW5kIHJldHVybiAtRUlOVkFMPyBTaG91bGQK
dGhlIGRyaXZlciBiZSB1cGRhdGVkIGFsb25nc2lkZSB0aGUgYmluZGluZyBzbyBjb25zdW1lcnMg
Y2FuIHN1Y2Nlc3NmdWxseQphY3F1aXJlIHRoZSBQSFk/CgpbIC4uLiBdCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzI2LWRjcGh5
LXJ4LXYxLXYyLTAtY2Y5Y2MzNGE0MTJhQGdtYWlsLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
