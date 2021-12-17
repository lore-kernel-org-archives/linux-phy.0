Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BC8AC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 17 Dec 2021 18:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTt74U7JLfwBsrZhnboGJVRxbaa8ywMO6BuiLNM/CDg=; b=ce49RY8eMCQY9M
	DLbH17cvmsebLqkFBG3td9bGP+8FyTLLsasav/9NClNqamw69gUUhPzY7R3/y8S78ZFqbKk5yFHaC
	agKilHvA43Pwpw/3oYhsxAFCl4+S4HqbsE6kTpXfd5iWWvqMaZplC8QNyIVKORRar0AK3bG+o32cN
	OEK8sf/+WrxG5VqsIWDts/uuKehc64LBDcYN1AlGW+LQhsKw0qRmcodsugS37lG/PJ2hbVucoSNoa
	c8Xz187O8TCBrf6uSm82jX11IGjxd8aS7RP2y6iJvKdcqSpkINPBWArWoTJrj+JWI+rWE84ZrxdIK
	hsvGiEiEbpXwZYPumPkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myHhi-00Bhng-8E; Fri, 17 Dec 2021 18:11:38 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myGiM-00BNFt-Dv
 for linux-phy@lists.infradead.org; Fri, 17 Dec 2021 17:08:16 +0000
Received: (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 9FF14200015;
 Fri, 17 Dec 2021 17:07:55 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Vinod Koul
 <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>, Marek
 =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>
Subject: Re: [PATCH phy v2 3/6] arm64: dts: marvell: armada-37xx: Add xtal
 clock to comphy node
In-Reply-To: <20211208024038.8797-4-kabel@kernel.org>
References: <20211208024038.8797-1-kabel@kernel.org>
 <20211208024038.8797-4-kabel@kernel.org>
Date: Fri, 17 Dec 2021 18:07:55 +0100
Message-ID: <87h7b7ma6s.fsf@BL-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_090814_683453_9A722ACD 
X-CRM114-Status: GOOD (  10.35  )
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

TWFyZWsgQmVow7puIDxrYWJlbEBrZXJuZWwub3JnPiB3cml0ZXM6Cgo+IEZyb206IFBhbGkgUm9o
w6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4KPiBLZXJuZWwgZHJpdmVyIHBoeS1tdmVidS1hMzcwMC1j
b21waHkuYyBuZWVkcyB0byBrbm93IHRoZSByYXRlIG9mIHRoZQo+IHJlZmVyZW5jZSB4dGFsIGNs
b2NrLiBTbyBhZGQgbWlzc2luZyB4dGFsIGNsb2NrIHNvdXJjZSBpbnRvIGNvbXBoeSBkZXZpY2UK
PiB0cmVlIG5vZGUuIElmIHRoZSBwcm9wZXJ0eSBpcyBub3QgcHJlc2VudCwgdGhlIGRyaXZlciBk
ZWZhdWx0cyB0byAyNSBNSHoKPiB4dGFsIHJhdGUgKHdoaWNoLCBhcyBmYXIgYXMgd2Uga25vdywg
aXMgdXNlZCBieSBhbGwgdGhlIGV4aXN0aW5nIGJvYXJkcykuCj4KPiBTaWduZWQtb2ZmLWJ5OiBQ
YWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlaMO6
biA8a2FiZWxAa2VybmVsLm9yZz4KCkFwcGxpZWQgb24gbXZlYnUvZHQ2NAoKVGhhbmtzLAoKR3Jl
Z29yeQoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zN3h4LmR0
c2kgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3eHguZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNpCj4gaW5kZXggOWFjYzVkMmI1
YTAwLi42NzNmNDkwNmVlZjkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2
ZWxsL2FybWFkYS0zN3h4LmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
YXJtYWRhLTM3eHguZHRzaQo+IEBAIC0yNjUsNiArMjY1LDggQEAgY29tcGh5OiBwaHlAMTgzMDAg
ewo+ICAJCQkJCSAgICAibGFuZTJfc2F0YV91c2IzIjsKPiAgCQkJCSNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+ICAJCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4gKwkJCQljbG9ja3MgPSA8Jnh0YWxjbGs+
Owo+ICsJCQkJY2xvY2stbmFtZXMgPSAieHRhbCI7Cj4gIAo+ICAJCQkJY29tcGh5MDogcGh5QDAg
ewo+ICAJCQkJCXJlZyA9IDwwPjsKPiAtLSAKPiAyLjMyLjAKPgoKLS0gCkdyZWdvcnkgQ2xlbWVu
dCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHA6Ly9i
b290bGluLmNvbQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
