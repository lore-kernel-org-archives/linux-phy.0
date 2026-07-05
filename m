Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B056C43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 10:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0a5YLoZ9CrHHmwJ12Yd7cvv+XbP+f/R/voorTDF4uyU=; b=2cKEELzjZMgPR4
	Ww2Zi/kGE7vCnhNckLnqpSTdkA8VtBVgX4HTroWcOk/Rr5mRxia9l3fs/aZ303p90GizB3qV2BtTi
	RTLYO6ztqYUCY2DjRk4JJBLT6yqqLDuMEoqYv556izSQQOSAeBH25SW7Np6F8Sg93dXbOfOG1YUGj
	pp3z1LxdWSu/pjg6S/iU9i8ZKr+cD5crubbAC2oUdSRd+eBZGmxhazN7B60e5EE1Po6N2qd6xBOuH
	xWyjEL0xZbdKHe4D3OnrnpHQ74tApJsYLqd/F9tftTEAoopI5J84O0B7eAiv1/hkQWc+8VPpKpoXO
	eb5fVDkhz3enwzuYnJWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgK1k-00000009EdT-48iy;
	Sun, 05 Jul 2026 10:24:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgK1j-00000009EdL-2b9e
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 10:24:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AC88360052;
	Sun,  5 Jul 2026 10:24:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB89F1F000E9;
	Sun,  5 Jul 2026 10:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783247082;
	bh=Iu95rsSHAWSOq53b756V/gTWzik8RWGIR6P7vMJ5FkA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Di9VsogC0zGMFpCj/KFE9k3eEeb0EPBpodfmQIYwzzjPjRSvnHLMvPe8w3wFahYrV
	 QgsefIv0M73iNwdiIRP7+08NZNO9bLLZ9hmojqfjWp9mjwFGQU1PDw9KshE+rPJDyO
	 q/nyySHabh1gBafs6xPbxULGnHNGNbQGOuAJWwqJQy7RGiMJCa+YHT/3kpTfV0n2Yj
	 BFynVVNlMvZYGydI6x+CV6++2GdeOnpSlpwdwdbxvx8Yugy9TEaGH2fsGp0fXuLPoh
	 8eZVMTTH4Dqva9Mjqszbu6cZ336KgKl3iT4Vo97rhI4tOSC1LR8dWDzuLDW1hSPCAp
	 VGC3bQD8Kve/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/4] phy: cpcap-usb: add DCP detection and make UART
 idle mode optional
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260705101105.1798069-4-ivo.g.dimitrov.75@gmail.com>
References: <20260705101105.1798069-1-ivo.g.dimitrov.75@gmail.com>
 <20260705101105.1798069-4-ivo.g.dimitrov.75@gmail.com>
Date: Sun, 05 Jul 2026 10:24:41 +0000
Message-Id: <20260705102441.CB89F1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBD
UENBUF9CSVRfVVNCU1VTUEVORCBpcyBsZWZ0IGVuYWJsZWQgd2hlbiB0cmFuc2l0aW9uaW5nIGZy
b20gaWRsZSBtb2RlIHRvIFVTQiBtb2RlLCBwZXJtYW5lbnRseSBzdXNwZW5kaW5nIHRoZSBVU0Ig
dHJhbnNjZWl2ZXIuCgpQcmUtZXhpc3RpbmcgaXNzdWVzOgotIFtIaWdoXSBBIFRpbWUtb2YtQ2hl
Y2sgdG8gVGltZS1vZi1Vc2UgKFRPQ1RPVSkgcmFjZSBjb25kaXRpb24gYmV0d2VlbiB0aGUgdGhy
ZWFkZWQgSVJRIGhhbmRsZXIgYW5kIGByZW1vdmUoKWAgbGVhZHMgdG8gYSB1c2UtYWZ0ZXItZnJl
ZSBvZiBgZGRhdGFgLgotLQoKY29tbWl0IGEzMzdmMWEzOTcyZWMwY2NkNGEyMzFmMmFmYmVjMGNm
Y2RmZDY0ZmMKQXV0aG9yOiBJdmF5bG8gRGltaXRyb3YgPGl2by5nLmRpbWl0cm92Ljc1QGdtYWls
LmNvbT4KCnBoeTogY3BjYXAtdXNiOiBhZGQgRENQIGRldGVjdGlvbiBhbmQgbWFrZSBVQVJUIGlk
bGUgbW9kZSBvcHRpb25hbAoKSGFuZGxlIERDUCBzZXBhcmF0ZWx5IGZyb20gVVNCIGhvc3QgY29u
bmVjdGlvbnMgYmFzZWQgb24gQ1BDQVAgY2hhcmdlcgpkZXRlY3Rpb24gc3RhdHVzLiBNYWtlIHRo
ZSBleGlzdGluZyBpZGxlIFVBUlQgbW9kZSBvcHRpb25hbCB2aWEgdGhlCiJlbmFibGVfdWFydCIg
bW9kdWxlIHBhcmFtZXRlci4gSW5pdGlhbGl6ZSB0aGUgUEhZIGludG8gdGhlIGJhc2VsaW5lCmNv
bmZpZ3VyYXRpb24gcmVxdWlyZWQgZm9yIHJlbGlhYmxlIGNoYXJnZXIgZGV0ZWN0aW9uIGR1cmlu
ZyBwcm9iZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11
c2IuYyBiL2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11c2IuYwo+IGluZGV4IDdjYjAy
MGRkMzQyM2MuLjc4YmIxNzczZTUzNzkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvbW90b3Jv
bGEvcGh5LWNwY2FwLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvbW90b3JvbGEvcGh5LWNwY2Fw
LXVzYi5jCgpbIC4uLiBdCgo+IC0JZXJyb3IgPSByZWdtYXBfdXBkYXRlX2JpdHMoZGRhdGEtPnJl
ZywgQ1BDQVBfUkVHX1VTQkMyLAo+IC0JCQkJICAgMHhmZmZmLCBDUENBUF9CSVRfVUFSVE1VWDAg
fAo+IC0JCQkJICAgQ1BDQVBfQklUX0VNVU1PREUwKTsKPiArCXZhbCA9IENQQ0FQX0JJVF9VU0JT
VVNQRU5EOwo+ICsKPiArCWlmIChlbmFibGVfdWFydCkKPiArCQl2YWwgfD0gKENQQ0FQX0JJVF9V
QVJUTVVYMCB8IENQQ0FQX0JJVF9FTVVNT0RFMCk7Cj4gKwo+ICsJZXJyb3IgPSByZWdtYXBfdXBk
YXRlX2JpdHMoZGRhdGEtPnJlZywgQ1BDQVBfUkVHX1VTQkMyLCAweGZmZmYsIHZhbCk7CgpbU2V2
ZXJpdHk6IEhpZ2hdCkNvdWxkIHRoaXMgcGVybWFuZW50bHkgc3VzcGVuZCB0aGUgVVNCIHRyYW5z
Y2VpdmVyPyBXaGVuIHVucGx1Z2dpbmcgYSBVU0IKY2FibGUsIGNwY2FwX3VzYl9zZXRfaWRsZV9t
b2RlKCkgcnVucyBhbmQgc2V0cyBDUENBUF9CSVRfVVNCU1VTUEVORC4KCkhvd2V2ZXIsIHdoZW4g
cmUtcGx1Z2dpbmcgdGhlIGNhYmxlLCBjcGNhcF91c2Jfc2V0X3VzYl9tb2RlKCkgaXMgY2FsbGVk
LAp3aGljaCBvbmx5IG1hc2tzIENQQ0FQX0JJVF9VU0JYQ1ZSRU4gd2hlbiB1cGRhdGluZyBDUENB
UF9SRUdfVVNCQzI6CgoJZXJyb3IgPSByZWdtYXBfdXBkYXRlX2JpdHMoZGRhdGEtPnJlZywgQ1BD
QVBfUkVHX1VTQkMyLAoJCQkJICAgQ1BDQVBfQklUX1VTQlhDVlJFTiwKCQkJCSAgIENQQ0FQX0JJ
VF9VU0JYQ1ZSRU4pOwoKU2luY2UgaXQgZG9lc24ndCBjbGVhciB0aGUgQ1BDQVBfQklUX1VTQlNV
U1BFTkQgYml0LCB3aWxsIHRoZSB0cmFuc2NlaXZlcgpyZW1haW4gc3VzcGVuZGVkIGFuZCBicmVh
ayBzdWJzZXF1ZW50IGRhdGEgY29tbXVuaWNhdGlvbj8KClsgLi4uIF0KCj4gQEAgLTY4OCwxNyAr
ODQ1LDEzIEBAIHN0YXRpYyBpbnQgY3BjYXBfdXNiX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+ICBzdGF0aWMgdm9pZCBjcGNhcF91c2JfcGh5X3JlbW92ZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgY3BjYXBfcGh5X2RkYXRhICpk
ZGF0YSA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwo+IC0JaW50IGVycm9yOwo+ICAKPiAg
CWF0b21pY19zZXQoJmRkYXRhLT5hY3RpdmUsIDApOwo+IC0JZXJyb3IgPSBjcGNhcF91c2Jfc2V0
X3VhcnRfbW9kZShkZGF0YSk7Cj4gLQlpZiAoZXJyb3IpCj4gLQkJZGV2X2VycihkZGF0YS0+ZGV2
LCAiY291bGQgbm90IHNldCBVQVJUIG1vZGVcbiIpOwo+IC0KPiArCWNhbmNlbF9kZWxheWVkX3dv
cmtfc3luYygmZGRhdGEtPmRldGVjdF93b3JrKTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24n
dCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBkb2VzIHRoaXMgc2VxdWVuY2Ug
bGVhdmUgYQp3aW5kb3cgZm9yIGEgdXNlLWFmdGVyLWZyZWUgb24gZGRhdGE/CgpCZWNhdXNlIHRo
ZSBJUlEgaXMgZGV2bS1tYW5hZ2VkLCBpdCByZW1haW5zIGFjdGl2ZSB1bnRpbCB0aGUgZGV2cmVz
IHBoYXNlCmFmdGVyIHJlbW92ZSgpIHJldHVybnMuIElmIGNwY2FwX3BoeV9pcnFfdGhyZWFkKCkg
aXMgcHJlZW1wdGVkIHJpZ2h0IGFmdGVyCmNoZWNraW5nIGRkYXRhLT5hY3RpdmUgYnV0IGJlZm9y
ZSBzY2hlZHVsaW5nIHRoZSB3b3JrOgoKCWlmICghYXRvbWljX3JlYWQoJmRkYXRhLT5hY3RpdmUp
KQoJCXJldHVybiBJUlFfTk9ORTsKCgkvKiBwcmVlbXB0ZWQgaGVyZSAqLwoJc2NoZWR1bGVfZGVs
YXllZF93b3JrKCZkZGF0YS0+ZGV0ZWN0X3dvcmssIG1zZWNzX3RvX2ppZmZpZXMoMSkpOwoKQW5k
IGNwY2FwX3VzYl9waHlfcmVtb3ZlKCkgcnVucyB0byBjb21wbGV0aW9uLCBkZGF0YSB3aWxsIGJl
IGZyZWVkLiBXaGVuCnRoZSBJUlEgdGhyZWFkIHJlc3VtZXMsIGl0IHdpbGwgcXVldWUgdGhlIHdv
cmsgYWdhaW4sIGNhdXNpbmcgdGhlIGRlbGF5ZWQKd29yayB0byBleGVjdXRlIGFuZCBhY2Nlc3Mg
dGhlIGZyZWVkIGRkYXRhLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDcwNTEwMTEwNS4xNzk4MDY5LTEtaXZvLmcuZGltaXRyb3Yu
NzVAZ21haWwuY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
