Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99712FEFB56
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJ3OJiZh9ENJqUlwKjaPO+nHnYLQPe30SELU++FwAjA=; b=1fsogty/YXpyvR
	MslQtNKzGWXSRLAtJmBoAebcrf/eSbATyX7HXhSauxJWFJJEQy42r2X+rXkz3FfkfWZu/0ZT5WE8O
	0DPfz8741YP9qxztfywusMJN5v+TdnGKOA45FSbyVjsQZhLUnqhjMGuK6QMjqfImuLELM1QnLPRGD
	HN2kLjZqR4hYgvZYgQP7Yg2d9Cpgw1V7x3Fuf9zrRvTXx5T1KSG4Wgu83N5k7GDJfBtepMgs5Rc/5
	z06z8iVf1v5yFaa2+FJIoR8s60A5L5gO6yrttJQKl8fyQ5cvrm/fOQkY1A45XTrChOiiJA2MDa38u
	6bKJXYcGD58Bji0FukRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzoC-00000008dS0-1Uwm;
	Fri, 27 Feb 2026 15:31:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzo8-00000008dRU-1fSI;
	Fri, 27 Feb 2026 15:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description;
	bh=jQYmtftgY0RX16tXlqwd88/gJleQAzTbD+On33MM1a8=; b=G4N+d1sWuO/wq22KbhZZ3uhLXi
	G7ioPJz74PpZ3kd35/r/g5Yk5i64kvx3keWA+B4UFzN3RM/x8Aks/SoDQ7pVF9LRgzT7RZaSr6inH
	ZZWFwKqc9VjjJ8s1+bD7OaPH012xcR29V6QVOhgqTc2cEamyTdFGep/vab9+1ASSAGCA/URFx97w8
	qvW3c5HVopL0fDyXFT+LOp4vu5CN/xdXP2AEW9v1AS0SGItOUuJchgc5DE5kgT6aCPb65+ny660Rc
	oQzUIdteZG0arEX/eDPFBpkHuqWP4aajiNlj1cooGOHVLOENEOJdBih9FvW7RaVFMKXcdu4Gr7/PM
	zbkoM0EQ==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzo4-0000000DNNS-3ZmJ;
	Fri, 27 Feb 2026 15:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=jQYmtftgY0RX16tXlqwd88/gJleQAzTbD+On33MM1a8=; b=oAWAh2ZiVjiMgVk8Slge/IOIaN
	A0iQ7hBunYzni7w8Ng0FoIrmJ8RE1VIdtUo/FVCZ2X1IfkDN4o6S1IHt4gZH4/V0V6uoOyInUr+pY
	u1Ewmr6fufghZoByBUwkrfeyFL0NP/FgUcfTtJfzTUYjRxatzEjr75ZBomUxHIxMwh1FK0yKC7ugj
	AU/gxAzceHRHqiHlaGJSD6u8YcoKG+f90jJ1XBABWgMtCVX0qKofWWS7b5489g2uas7cnJuogPSJM
	e09RC5oMf6AAhIwphJUFYAxFULfUqIQrc8lYFeGebgE0q9+aB/Wh0xxlwQQM3FBGza5npmdIitNtK
	5vQLIGtg==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:53922)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vvznw-0000000010A-2fKv;
	Fri, 27 Feb 2026 15:31:00 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vvzns-000000003B6-2IHF;
	Fri, 27 Feb 2026 15:30:56 +0000
Date: Fri, 27 Feb 2026 15:30:56 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 0/9] net: stmmac: qcom-ethqos: further serdes
 reorganisation
Message-ID: <aaG4sBQysN0Z94E3@shell.armlinux.org.uk>
References: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
 <aZ66uXCwGgH7B_A-@shell.armlinux.org.uk>
 <aaGgWUpM2A5y11Wh@vaman>
 <20260227152707.k5lobznug3xxxc7h@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227152707.k5lobznug3xxxc7h@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_153109_164455_F675EDDE 
X-CRM114-Status: GOOD (  20.72  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBGZWIgMjcsIDIwMjYgYXQgMDU6Mjc6MDdQTSArMDIwMCwgVmxhZGltaXIgT2x0ZWFu
IHdyb3RlOgo+IEhpIFZpbm9kLAo+IAo+IE9uIEZyaSwgRmViIDI3LCAyMDI2IGF0IDA3OjE3OjA1
UE0gKzA1MzAsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gPiBPbiAyNS0wMi0yNiwgMDk6MDIsIFJ1c3Nl
bGwgS2luZyAoT3JhY2xlKSB3cm90ZToKPiA+ID4gTm90ZTogb25seSA4IHBhdGNoZXMgaW4gdGhp
cyBzZXJpZXMsIG5vdCA5IGFzIHRoZSBzdWJqZWN0IGxpbmUgc2F5cywKPiA+ID4gYXMgdGhlIHNl
dF9jbGtfdHhfcmF0ZSgpIHBhdGNoIGJlY2FtZSBwYXJ0IG9mIHRoZSBmaXJzdCBzZXJpZXMuCj4g
PiA+IAo+ID4gPiBPbiBXZWQsIEZlYiAyNSwgMjAyNiBhdCAwOTowMDo0MUFNICswMDAwLCBSdXNz
ZWxsIEtpbmcgKE9yYWNsZSkgd3JvdGU6Cj4gPiA+ID4gVGhpcyBpcyBwYXJ0IDIgb2YgdGhlIHFj
b20tZXRocW9zIHNlcmllcywgcGFydCAxIGhhcyBub3cgYmVlbiBtZXJnZWQuCj4gPiA+ID4gCj4g
PiA+ID4gVGhpcyBwYXJ0IG9mIHRoZSBzZXJpZXMgZm9jdXNlcyBvbiB0aGUgZ2VuZXJpYyBQSFkg
ZHJpdmVyLCBidXQgdGhlc2UKPiA+ID4gPiBjaGFuZ2VzIGhhdmUgZGVwZW5kZW5jaWVzIG9uIHRo
ZSBldGhlcm5ldCBkcml2ZXIsIGhlbmNlIHdoeQo+ID4gPiA+IGl0IHdpbGwgbmVlZCB0byBnbyB2
aWEgbmV0LW5leHQuIEZ1cnRoZXJtb3JlLCBzdWJzZXF1ZW50IGNoYW5nZXMKPiA+ID4gPiBkZXBl
bmQgb24gdGhlc2UgcGF0Y2hlcy4KPiA+IAo+ID4gVGhpcyBsZ3RtLCBjYW4gd2UgZ2V0IHNpZ25l
ZCB0YWcgc28gdGhhdCB3ZSBjYW4gcHVsbCB0aGlzIGludG8gcGh5IHRyZWUKPiA+IGFzIHdlbGwK
PiAKPiBJIHRoaW5rIHRoaXMgc2VyaWVzIGlzIG9ic29sZXRlLiBJdCBoYXMgYmVlbiBzdXBlcnNl
ZGVkIGluIHRoZSBuZXRkZXYKPiBwYXRjaHdvcmsgYnk6Cj4gCj4gW1BBVENIIFJFU0VORDIgbmV0
LW5leHQgMC84XSBuZXQ6IHN0bW1hYzogcWNvbS1ldGhxb3M6IGZ1cnRoZXIgc2VyZGVzIHJlb3Jn
YW5pc2F0aW9uCj4g4pSc4pSAPltQQVRDSCBSRVNFTkQyIG5ldC1uZXh0IDEvOF0gbmV0OiBzdG1t
YWM6IHFjb20tZXRocW9zOiBtb3ZlIGV0aHFvc19zZXRfc2VyZGVzX3NwZWVkKCkKPiDilJzilIA+
W1BBVENIIFJFU0VORDIgbmV0LW5leHQgMi84XSBwaHk6IHFjb20tc2dtaWktZXRoOiBhZGQgLnNl
dF9tb2RlKCkgYW5kIC52YWxpZGF0ZSgpIG1ldGhvZHMKPiDilJzilIA+W1BBVENIIFJFU0VORDIg
bmV0LW5leHQgMy84XSBuZXQ6IHN0bW1hYzogcWNvbS1ldGhxb3M6IGNvbnZlcnQgdG8gdXNlIHBo
eV9zZXRfbW9kZV9leHQoKQo+IOKUnOKUgD5bUEFUQ0ggUkVTRU5EMiBuZXQtbmV4dCA0LzhdIHBo
eTogcWNvbS1zZ21paS1ldGg6IHJlbW92ZSAuc2V0X3NwZWVkKCkgaW1wbGVtZW50YXRpb24KPiDi
lJzilIA+W1BBVENIIFJFU0VORDIgbmV0LW5leHQgNS84XSBwaHk6IHFjb20tc2dtaWktZXRoOiB1
c2UgUEhZIGludGVyZmFjZSBtb2RlIGZvciBTZXJEZXMgc2V0dGluZ3MKPiDilJzilIA+W1BBVENI
IFJFU0VORDIgbmV0LW5leHQgNi84XSBwaHk6IHFjb20tc2dtaWktZXRoOiByZW1vdmUgcWNvbV9k
d21hY19zZ21paV9waHlfaW50ZXJmYWNlKCkKPiDilJzilIA+W1BBVENIIFJFU0VORDIgbmV0LW5l
eHQgNy84XSBwaHk6IHFjb20tc2dtaWktZXRoOiByZWxheCBvcmRlciBvZiAucG93ZXJfb24oKSB2
cyAuc2V0X21vZGUqKCkKPiDilJTilIA+W1BBVENIIFJFU0VORDIgbmV0LW5leHQgOC84XSBuZXQ6
IHN0bW1hYzogcWNvbS1ldGhxb3M6IHJlbW92ZSBwaHlfc2V0X21vZGVfZXh0KCkgYWZ0ZXIgcGh5
X3Bvd2VyX29uKCkKPiAKPiAod2l0aCB3aGljaCBpdCBpcyBvbmx5IHBhcnRpYWxseSBvdmVybGFw
cGluZykKPiAKPiBJIGd1ZXNzIHlvdSBzaG91bGQgZ2l2ZSB5b3VyIEFja3MgdGhlcmUgYXMgd2Vs
bC4KCk5vIG5lZWQuIExvb2tpbmcgYXQgUFcsIGl0IHNlZW1zIHBhdGNoIDcgaGFzIEFJIHJldmll
dyBpc3N1ZXMsIHNvIHdpbGwKbmVlZCB0byBiZSByZS1zZW50IC0gYWx0aG91Z2ggSSBjYW4ndCBm
YXRob20gd2hhdCB0aGUgQUkgZm91bmQgaW4gcGF0Y2gKNy4gSSd2ZSBhbHJlYWR5IGFkZGVkIFZp
bm9kJ3MgYWNrcyAoc2luY2UgdGhleSB3ZXJlIGp1c3QgcmVzZW5kcyB0byBmaXgKYm90Y2hlZCBz
ZW5kaW5nLCBubyBhY3R1YWwgY2hhbmdlcyBpbiB0aGUgcGF0Y2hlcyB0aGVtc2VsdmVzLikKCi0t
IApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9w
ZXIvcGF0Y2hlcy8KRlRUUCBpcyBoZXJlISA4ME1icHMgZG93biAxME1icHMgdXAuIERlY2VudCBj
b25uZWN0aXZpdHkgYXQgbGFzdCEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
