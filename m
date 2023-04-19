Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8970CC77B78
	for <linux-phy@archiver.kernel.org>; Wed, 19 Apr 2023 07:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dafQSYa37q5fCavfaVFl8dK7U8o7sHEcqr825QJQus=; b=ovbgGgVKVx38RB
	26WWqC4Cd+cgGMGbSR66QJ/OknfT3SNt9oMJ38cmY9dYQzT48EXlMoaiAc3tCymSZY51vE8riaPRt
	jQv88v61JlW0MmZzMQq+3S28UELtJGTmc/P3I/yQj1X6gv5n1d6RqghcKTJ/idhfaf/dLV+JnrUUi
	lZ99LMRqOxHLoYGAg/8k2s6OVKgR+e+NfYUXwMtOZ1t+ra9tZyM6rqUcDR/BGd8oxx+Tb4wjBgQF7
	9gRuT6RtJl4VFNY6nGfKWJkjwEwlaPXwlLiXkId8Q8vcPacRlSahBJRJ6cjT+F3hay9ziWLpII7QD
	vDnSgqzIVv9fc7Cj6dFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp1rX-004Lgp-0g;
	Wed, 19 Apr 2023 07:04:19 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp1rT-004LeG-1N
	for linux-phy@lists.infradead.org;
	Wed, 19 Apr 2023 07:04:17 +0000
Received: (Authenticated sender: herve.codina@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id DCDC41C0015;
	Wed, 19 Apr 2023 07:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1681887849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=h0B6abn8eVYRAhqcUdwi/N3mg95GJYAXeGF36SP3PmQ=;
	b=BMjo1e8T7SI0mKvcbi0VZ5kfoUSO8YmF4GXuj+wgnuTGXRIVoe3rf5CsSJO0xF8Rw/HMn4
	dDhMcjD47apPhcERNZJPBfmCVQdoA2Q1I1l9vIPBMDQ7AlWm3V+5GXTWDdHCdnwk/plt0q
	isn/+JrqIPkgUjWu73Fg42WZrgaeRRPAMrafcPIc9iNpwVSNZNjRqI1OPS1sdX41rlQ5+5
	N1Oc9dlljQlXPYNGu7egA5+kP8lPLpCsPur9hvh+Majm77h0oTsSA1L+Va7Hrv4mWU0hiF
	Echtr04nb0NnRkQqMWpMWXJ9AJ1Xagb9mmrGAEJ4/MRO90nOMAXVdxaNQKcReQ==
Date: Wed, 19 Apr 2023 09:04:06 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, Christophe Leroy
 <christophe.leroy@csgroup.eu>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 0/4] Add support for QMC HDLC and PHY
Message-ID: <20230419090406.681e0265@bootlin.com>
In-Reply-To: <9e7fe32a-8125-41d5-9f8e-d3e5c6c64584@lunn.ch>
References: <20230323103154.264546-1-herve.codina@bootlin.com>
	<885e4f20-614a-4b8e-827e-eb978480af87@lunn.ch>
	<20230414165504.7da4116f@bootlin.com>
	<c99a99c5-139d-41c5-89a4-0722e0627aea@lunn.ch>
	<20230417121629.63e97b80@bootlin.com>
	<a2615755-f009-4a21-b464-88ec5e58f32a@lunn.ch>
	<20230417173941.0206f696@bootlin.com>
	<9e7fe32a-8125-41d5-9f8e-d3e5c6c64584@lunn.ch>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_000415_733149_B1DCFF56 
X-CRM114-Status: GOOD (  34.65  )
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

SGkgQW5kcmV3LAoKT24gTW9uLCAxNyBBcHIgMjAyMyAxOToyMjoyNiArMDIwMApBbmRyZXcgTHVu
biA8YW5kcmV3QGx1bm4uY2g+IHdyb3RlOgoKPiA+IE15IGFwcGxpY2F0aW9uIChwcm9iYWJseSBh
IHN1YnNldCBvZiB3aGF0IHdlIGNhbiBkbyB3aXRoIEUxIGxpbmVzKSBkb2VzCj4gPiBub3QgdXNl
IHNpZ25hbGluZy4KPiA+IAo+ID4gSSBkb24ndCBleHBvc2UgYW55IGNoYW5uZWwgdG8gdGhlIHVz
ZXIgc3BhY2UgYnV0IGp1c3Q6Cj4gPiAtIE9uZSBoZGxjIGludGVyZmFjZSB1c2luZyBvbmUgdGlt
ZXNsb3QuCj4gPiAtIE9uZSBvciBtb3JlIGRhaSBsaW5rcyAoYXVkaW8gY2hhbm5lbHMpIHRoYXQg
Y2FuIGJlIHVzZWQgdXNpbmcgQUxTQSBsaWJyYXJ5LiAgCj4gCj4gV2VsbCwgdGhhdCBvYnZpb3Vz
bHkgZG9lcyB3aGF0IHlvdSBuZWVkIGZvciB5b3UgYXBwbGljYXRpb24sIGJ1dCBpdAo+IGRvZXMg
bm90IHNvdW5kIHZlcnkgZ2VuZXJpYy4gSSBkb24ndCB0aGluayB5b3UgY291bGQgYnVpbGQgYSBQ
Qlggb24KPiB0b3Agb2YgdGhhdC4gSSdkIHRoaW5rIHlvdSBjYW4gYnVpbGQgYW4gRTEgdHJ1bmsg
dG8gVm9JUCBnYXRld2F5LiAgU28KPiBpIGFsc28gaGF2ZSB0byB3b3VuZGVyIGhvdyBnZW5lcmlj
IHZzIG9uZSBzcGVjaWZpYyB1c2UgY2FzZSB5b3VyCj4gYnVpbGRpbmcgYmxvY2tzIGFyZS4KPiAK
PiBMb29raW5nIGF0IHRoZSBiaW5kaW5nLCBpIGFzc3VtZSB5b3UgY291bGQgaW4gZmFjdCBpbnN0
YW50aWF0ZSAzMiBoZGxjCj4gaW5zdGFuY2VzPyBBbmQgdGhhdCAndHJhbnNwYXJlbnQnIGFjdHVh
bGx5IG1lYW5zIERBST8gU28geW91IGNhbgo+IGluc3RhbnRpYXRlIGFzIG1hbnkgREFJIGFzIHlv
dSB3YW50LiBJZiB5b3Ugd2FudGVkIHRvIGltcGxlbWVudAo+IHNpZ25hbGxpbmcsIGEgdGhpcmQg
dHlwZSBjb3VsZCBiZSBhZGRlZD8KPiAKPiA+IEkgdGhvdWdodCBJIHdhcyBwcm92aWRpbmcgYSAi
c3RhbmRhcmRpc2VkIiBBUEkgYmV0d2VlbiB0aGUgSERMQyBkZXZpY2UKPiA+IGFuZCB0aGUgZnJh
bWVyLiBNYXliZSBpdCB3YXMgbm90IGFzIGNvbXBsZXRlIGFzIHlvdSBjb3VsZCBleHBlY3QgYnV0
IEkgaGFkCj4gPiB0aGUgZmVlbGluZyB0aGF0IGl0IHdhcyBzdGFuZGFyZGlzZWQuICAKPiAKPiBZ
b3UgYXJlIGFidXNpbmcgdGhlIEdlbmVyaWMgUEhZIGludGVyZmFjZSwgZm9yIHNvbWV0aGluZyB3
aGljaCBpcyBub3QKPiBhIFBIWS4gWW91ciBQSFkgZHJpdmVyIGRvZXMgbm90aGluZyBhIFBIWSBk
cml2ZXIgbm9ybWFsbHkgZG9lcywKPiBiZWNhdXNlIHlvdSBrZWVwIGFyZ3VpbmcgdGhlIE1GRCBk
b2VzIGl0IGFsbC4gU28gdG8gbWUgdGhpcyBpcyB0aGUKPiB3cm9uZyBhYnN0cmFjdGlvbi4KPiAK
PiBZb3UgbmVlZCBhbiBhYnN0cmFjdGlvbiBvZiBhIGZyYW1lci4gWW91IGRvIGhvd2V2ZXIgd2Fu
dCBhIHNpbWlsYXIgQVBJCj4gdG8gZ2VuZXJpYyBQSFkuIGRldm1fb2ZfZnJhbWVyX29wdGlvbmFs
X2dldCgpIGZvciB0aGUgY29uc3VtZXIgb2YgYQo+IGZyYW1lciwgd2hpY2ggbG9va3MgaW4gRFQg
Zm9yIGEgcGhhbmRsZSB0byBhIGRldmljZS4KPiBkZXZtX2ZyYW1lcl9jcmVhdGUoKSB3aGljaCBy
ZWdpc3RlcnMgYSBmcmFtZXIgcHJvdmlkZXIsIHlvdXIgTUZELCB3aXRoCj4gdGhlIGZyYW1lciBj
b3JlLiBUaGUgaGRsYyBkcml2ZXIgY2FuIHRoZW4gZ2V0IGFuIGluc3RhbmNlIG9mIHRoZQo+IGZy
YW1lciwgYW5kIGVpdGhlciBwdXQgYSBub3RpZmllciBjYWxsIGJsb2NrIG9uIGl0cyBjaGFpbiwg
b3IgcmVnaXN0ZXIKPiBhIGZ1bmN0aW9uIHRvIGJlIGNhbGxlZCB3aGVuIHRoZXJlIGlzIGNoYW5n
ZSBpbiBzdGF0dXMuCj4gCj4gV2hhdCBpIGFsc28gZG9uJ3QgbGlrZSBpcyB5b3UgaGF2ZSBhIHZl
cnkgc3RhdGljIGNvbmZpZ3VyYXRpb24uIFlvdQo+IGFyZSBwdXR0aW5nIGNvbmZpZ3VyYXRpb24g
aW50byBEVCwgd2hpY2ggaSdtIHN1cnByaXNlZCBSb2IgSGVycmluZyBhbmQKPiBLcnp5c3p0b2Yg
S296bG93c2tpIGFjY2VwdGVkLiBIb3cgeW91IHVzZSBFMSBzbG90cyBpcyBub3QgYSBoYXJkd2Fy
ZQo+IHByb3BlcnR5LCBpdCBpcyBwdXJlbHkgc29mdHdhcmUgY29uZmlndXJhdGlvbiwgc28gc2hv
dWxkIG5vdCBiZSBpbiBEVC4KPiBTbyB0aGVyZSBzaG91bGQgYmUgYSBtZWNoYW5pc20gdG8gY29u
ZmlndXJlIGhvdyBzbG90cyBhcmUgdXNlZC4gWW91Cj4gY2FuIHRoZW4gZHluYW1pY2FsbHkgaW5z
dGFudGlhdGUgSERMQyBpbnRlcmZhY2VzIGFuZCBEQUkgbGlua3MuIFRoaXMKPiBpcyBzb21ldGhp
bmcgd2hpY2ggc2hvdWxkIGJlIGluIHRoZSBmcmFtZXIgY29yZS4gQnV0IHNpbmNlIHlvdSBoYXZl
Cj4gbWFuYWdlZCB0byBnZXQgdGhpcyBiaW5kaW5nIGFjY2VwdGVkLCB5b3UgY2FuIHNraXAgdGhp
cy4gQnV0Cj4gaW1wbGVtZW50aW5nIHRoZSBiYXNpYyBmcmFtZXIgYWJzdHJhY3Rpb24gd2lsbCBn
aXZlIGEgcGxhY2UgaG9sZGVyIGZvcgo+IHNvbWVib2R5IHRvIGltcGxlbWVudCBhIG11Y2ggbW9y
ZSBnZW5lcmljIHNvbHV0aW9uIGluIHRoZSBmdXR1cmUuCj4gCj4gCSBBbmRyZXcKCkkgY2FuIG1v
dmUgdG8gYSBiYXNpYyBmcmFtZXIgYWJzdHJhY3Rpb24gYXMgeW91IHN1Z2dlc3RlZC4gQXQgbGVh
c3Q6Ci0gZGV2bV9vZl9mcmFtZXJfb3B0aW9uYWxfZ2V0KCkKLSBkZXZtX2ZyYW1lcl9jcmVhdGUo
KQotIGZyYW1lcl9ub3RpZmllcl9yZWdpc3RlcigpIG9yIHNvbWV0aGluZyBzaW1pbGFyLgoKV2hl
cmUgZG8geW91IGV4cGVjdCB0byBzZWUgdGhpcyBmcmFtZXIgYWJzdHJhY3Rpb24gYW5kIHRoZSBw
ZWYyMjU2CmZyYW1lciBwYXJ0ID8KZHJpdmVyL25ldC93YW4vZnJhbWVyLywgb3RoZXIgcGxhY2Ug
PwpJIHRoaW5rIGRyaXZlci9uZXQvd2FuL2ZyYW1lci8gY2FuIGJlIGEgZ29vZCBwbGFjZSB0byBz
dGFydCBhcyBvbmx5IEhETEMKd2lsbCB1c2UgdGhpcyBhYnN0cmFjdGlvbi4KCkkgY2FuIHVzZSB0
aGUgZnJhbWVyIGFic3RyYWN0aW9uIGZyb20gdGhlIFFNQyBIRExDIGRyaXZlciBpdHNlbGYgb3Ig
dHJ5CnRvIG1vdmUgaXQgdG8gdGhlIEhETEMgY29yZS4gRG8geW91IHRoaW5rIGl0IHdpbGwgYmUg
aW50ZXJlc3RpbmcgdG8gaGF2ZQppdCBtb3ZlIHRvIHRoZSBIRExDIGNvcmUgPwoKQmVzdCByZWdh
cmRzLApIZXJ2w6kKCi0tIApIZXJ2w6kgQ29kaW5hLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFu
ZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
