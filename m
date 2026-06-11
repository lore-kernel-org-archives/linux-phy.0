Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F960CD98CC
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 23:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlOgsPwuHH93x8MMoHy1JDSMgFXjBWw8PVa2HrMBysU=; b=bWpxA83UuiyzBr
	aOvYfF4BLntgxCrx3CP6T6OJz1Ddkf/32+vC4NZH3awEdVraZ4fsvqRfk+08HFkTHS9OjJ04AqTAc
	cUvB5ZEYPNHLuQnw0LTZ3eCF3994l5djxoKyGF7Y9GaldQwwe4bjvsIBnrWUdh+K87rhS+Pex1ZIU
	teTajKbSgpYF2nc95zlE8KFE61dTQ8QtUUX4ar8Cqfu0m4UySG4v4u+KRPeP8+6kq1Q54CM4Jzp+p
	s09oRcLQVzRoAfEho1d7McWcYBqbE7B0wxhxrfZKPi1kw2tx5gcdwDnV4rVHi0oVVTkqCpNy4xq9l
	AUnBgUpMsJsMNePPDpCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpGi-0000000ACxc-3LKL;
	Thu, 11 Jun 2026 23:57:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpGh-0000000ACxU-2MnA
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 23:57:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9206C6020C;
	Thu, 11 Jun 2026 23:57:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E9691F000E9;
	Thu, 11 Jun 2026 23:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781222222;
	bh=Rj87OwKeOPoTyaUK6dbQYJfLE/PpMUM/s4tvRFlX7F0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PAR2r017kigoV4XOpaXjfC9b06OWCBiiYCNcNWdFTEs5YUECNvZhINIc7vB4gSWB8
	 vC6BzXzfTmWxy5uzcLIy4ySpxf16Wk1Wck8wzDUCrPl6NKwV2l3JcERRZ6Rg2JJsb5
	 6IiTCuwHYPUo/Fnat7ilU1MzxUkCMTgOmcPck8tuWyF1cmHA0JkfY26IViA+XknM1/
	 K9WuwMbJKubi8Wlrx4G19jesz8Sbpc1R7cyqvP6KrfP4Bx+HVVRa2wB7Sdd75KLKRc
	 VYbgwV1i/bN2t3CWm591JMOYy3oHQHVgrkKMT5CggSUcvRoyNVjB9Fb8e514PqxB0g
	 vsyag4EPXS3Fg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/8] phy: rockchip: samsung-hdptx: Prevent
 divide-by-zero when computing clk rate
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260612-hdptx-clk-fixes-v4-2-ce5e1d456cda@collabora.com>
References: <20260612-hdptx-clk-fixes-v4-2-ce5e1d456cda@collabora.com>
Date: Thu, 11 Jun 2026 23:57:01 +0000
Message-Id: <20260611235702.0E9691F000E9@smtp.kernel.org>
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
IFtIaWdoXSBQb3RlbnRpYWwgaW50ZWdlciB1bmRlcmZsb3cgaW4gYGZvdXRgIGNhbGN1bGF0aW9u
IHdoZW4gaGFyZHdhcmUgc3RhdGUgaXMgbWlzY29uZmlndXJlZCwgbGVhZGluZyB0byBhIG1hc3Np
dmUgYm9ndXMgY2xvY2sgcmF0ZSB0aGF0IGNvdWxkIGhhbmcgZG93bnN0cmVhbSBjb21wb25lbnRz
LgotLQoKY29tbWl0IGNiMjFjOGMxM2I4ODBkMDhkMTdiNWVlNjk3NDAyMjk1MjdkYjU0NDIKQXV0
aG9yOiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29t
PgoKcGh5OiByb2NrY2hpcDogc2Ftc3VuZy1oZHB0eDogUHJldmVudCBkaXZpZGUtYnktemVybyB3
aGVuIGNvbXB1dGluZyBjbGsgcmF0ZQoKVGhpcyBjb21taXQgYWRkcyBzYW5pdGl6YXRpb24gdG8g
cmtfaGRwdHhfcGh5X2Nsa19jYWxjX3JhdGVfZnJvbV9wbGxfY2ZnKCkKdG8gcHJldmVudCBhIGRp
dmlkZS1ieS16ZXJvIGR1cmluZyBjbG9jayByYXRlIGNhbGN1bGF0aW9uLiBJdCBjaGVja3MgdGhl
CmRlbm9taW5hdG9yIGRlcml2ZWQgZnJvbSBoYXJkd2FyZSByZWdpc3RlcnMsIHdoaWNoIGNvdWxk
IGJlIHVuaW5pdGlhbGl6ZWQgb3IKbWlzY29uZmlndXJlZC4KCkNsb3NlczogaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjExLWhkcHR4LWNsay1maXhlcy12My0wLTY3YjFiMGMw
MGUxNkBjb2xsYWJvcmEuY29tP3BhcnQ9MQoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKPiBpbmRleCA3MTA2MDNhZmZmODY2Li44YzA0
NDM4MWI4M2E0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC1zYW1zdW5nLWhkcHR4LmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtc2Ftc3VuZy1oZHB0eC5jCj4gQEAgLTIyNzAsMTAgKzIyNzAsMTUgQEAgc3RhdGljIHU2NCBy
a19oZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9jZmcoc3RydWN0IHJrX2hkcHR4X3Bo
eSAqaGRwdHgpCj4gIAo+ICAJZm91dCA9IFBMTF9SRUZfQ0xLICogcm9wbGxfaHcucG1zX21kaXY7
Cj4gIAlpZiAocm9wbGxfaHcuc2RtX2VuKSB7Cj4gKwkJdmFsID0gMTZVICogcm9wbGxfaHcuc2Rt
X2Rlbm8gKgo+ICsJCSAgICAgIChyb3BsbF9ody5zZGNfZGVubyAqIHJvcGxsX2h3LnNkY19uIC0g
cm9wbGxfaHcuc2RjX251bSk7Cj4gKwkJaWYgKCF2YWwpIHsKPiArCQkJZGV2X2RiZyhoZHB0eC0+
ZGV2LCAiJXMgaW52YWxpZCBST1BMTCBodyBzdGF0ZVxuIiwgX19mdW5jX18pOwo+ICsJCQlyZXR1
cm4gMDsKPiArCQl9Cj4gKwo+ICAJCXNkbSA9IGRpdl91NjQoUExMX1JFRl9DTEsgKiByb3BsbF9o
dy5zZGNfZGVubyAqCj4gLQkJCSAgICAgIHJvcGxsX2h3LnBtc19tZGl2ICogcm9wbGxfaHcuc2Rt
X251bSwKPiAtCQkJICAgICAgMTYgKiByb3BsbF9ody5zZG1fZGVubyAqCj4gLQkJCSAgICAgIChy
b3BsbF9ody5zZGNfZGVubyAqIHJvcGxsX2h3LnNkY19uIC0gcm9wbGxfaHcuc2RjX251bSkpOwo+
ICsJCQkgICAgICByb3BsbF9ody5wbXNfbWRpdiAqIHJvcGxsX2h3LnNkbV9udW0sIHZhbCk7Cj4g
IAo+ICAJCWlmIChyb3BsbF9ody5zZG1fbnVtX3NpZ24pCj4gIAkJCWZvdXQgPSBmb3V0IC0gc2Rt
OwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgY291
bGQgdGhpcyBzdWJ0cmFjdGlvbiByZXN1bHQgaW4gYW4KaW50ZWdlciB1bmRlcmZsb3c/CgpJZiB0
aGUgaGFyZHdhcmUgcmVnaXN0ZXJzIGFyZSBtaXNjb25maWd1cmVkIG9yIGNvbnRhaW4gdW5pbml0
aWFsaXplZCB2YWx1ZXMsCml0IHNlZW1zIHRoZSBjb21wdXRlZCBzaWdtYS1kZWx0YSBtb2R1bGF0
b3Igb2Zmc2V0IHNkbSBjb3VsZCBiZSBzaWduaWZpY2FudGx5CmxhcmdlciB0aGFuIHRoZSBiYXNl
IGZyZXF1ZW5jeSBmb3V0LgoKU2luY2UgZm91dCBpcyBhbiB1bnNpZ25lZCA2NC1iaXQgaW50ZWdl
ciwgc3VidHJhY3RpbmcgYSBsYXJnZXIgc2RtIGluCnJrX2hkcHR4X3BoeV9jbGtfY2FsY19yYXRl
X2Zyb21fcGxsX2NmZygpIHdvdWxkIHdyYXAgYXJvdW5kIHRvIGEgbWFzc2l2ZQpwb3NpdGl2ZSB2
YWx1ZS4KCkNvdWxkIHRoaXMgdW5kZXJmbG93IGxlYWQgdG8gYW4gYWJzdXJkbHkgaGlnaCBjbG9j
ayByYXRlIGJlaW5nIHJldHVybmVkCnRvIHRoZSBDb21tb24gQ2xvY2sgRnJhbWV3b3JrLCBwb3Rl
bnRpYWxseSBjYXVzaW5nIGhhbmdzIG9yIGRpdi1ieS16ZXJvCmVycm9ycyBpbiBkb3duc3RyZWFt
IGNvbXBvbmVudHM/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYwNjEyLWhkcHR4LWNsay1maXhlcy12NC0wLWNlNWUxZDQ1NmNkYUBj
b2xsYWJvcmEuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
