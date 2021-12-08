Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14165C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVdBsuKYjJUB+uIpQQaqSDdrMI3+UnkaWuE36lUbm30=; b=AGH7yrGPJQ07Md
	9NH+BdKH4xPasj6j+rpgVWTHV32yqbapUstrqkbFtYtIBtoFKZ8huW/gPTzH73TCBoznY3pcz3uRl
	BfMe/1BruV2cF5egoOXFe9dE8hTL8bLtjZlh6lUpONB+jIwn7xvIQh0YRYmvpPscXibX607tWMhBC
	LwB56WR+kULGRXgZBcM8GUjC/joIQxB/1bWx1MvsKoRQU1AIFtQ71bF50jsRZUSaXMlNyfBjB8D3Y
	i9qI4e1zs9lVxwoOyGCoqSmv/iOoXEM3gEQzP4flBZHHvNL3/1qF21sTtcOVYXCoijYytN4pO5uU4
	nurfXjBEwTxuslKJzNJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mumt3-00AiCq-Gd; Wed, 08 Dec 2021 02:40:53 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mumt0-00AiBi-NZ
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 02:40:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 79B98B81F47;
 Wed,  8 Dec 2021 02:40:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8B49C341CB;
 Wed,  8 Dec 2021 02:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638931249;
 bh=COKgY/FCdCGJZ7bNKPO2We5dlVrf/wiFVEG6xmpFMmA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WYhRFzRVSnqpDxTFUPF8Dya6/7lQJQ5+H1u9giwDrrF9838RzTaRQ/HHWioMUUd1Z
 q9zP/4awN9bnIHOyaHQTfDcLRvzwYKm2hXS2r9V7RSx4GQMtOTj4WQPqhpw+zJjfhE
 cqpwoXI+N6sNzzmmalqeQtYQsj8NklrERk4Cg2Tk9kgQMreNh74IX603d5SjR1Nuaf
 mTXqK33To+ebMCuy6M82tEW2hcwRYYKfBLSYlojJN0RKCKfvzwSaAXj/xoCum36V8l
 403uibBPJJKFNC5+fBnyU0lKrL1PuDtuKu/muKC6RYDP2FplJBMI/ZSxtVy275vjKm
 k9A5+8x0NDdtg==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy v2 3/6] arm64: dts: marvell: armada-37xx: Add xtal clock
 to comphy node
Date: Wed,  8 Dec 2021 03:40:35 +0100
Message-Id: <20211208024038.8797-4-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208024038.8797-1-kabel@kernel.org>
References: <20211208024038.8797-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_184050_927494_4585691C 
X-CRM114-Status: GOOD (  10.34  )
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

RnJvbTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KCktlcm5lbCBkcml2ZXIgcGh5LW12
ZWJ1LWEzNzAwLWNvbXBoeS5jIG5lZWRzIHRvIGtub3cgdGhlIHJhdGUgb2YgdGhlCnJlZmVyZW5j
ZSB4dGFsIGNsb2NrLiBTbyBhZGQgbWlzc2luZyB4dGFsIGNsb2NrIHNvdXJjZSBpbnRvIGNvbXBo
eSBkZXZpY2UKdHJlZSBub2RlLiBJZiB0aGUgcHJvcGVydHkgaXMgbm90IHByZXNlbnQsIHRoZSBk
cml2ZXIgZGVmYXVsdHMgdG8gMjUgTUh6Cnh0YWwgcmF0ZSAod2hpY2gsIGFzIGZhciBhcyB3ZSBr
bm93LCBpcyB1c2VkIGJ5IGFsbCB0aGUgZXhpc3RpbmcgYm9hcmRzKS4KClNpZ25lZC1vZmYtYnk6
IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+ClNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlaMO6
biA8a2FiZWxAa2VybmVsLm9yZz4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJt
YWRhLTM3eHguZHRzaSB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3eHguZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNpCmluZGV4IDlhY2M1
ZDJiNWEwMC4uNjczZjQ5MDZlZWY5IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21h
cnZlbGwvYXJtYWRhLTM3eHguZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
YXJtYWRhLTM3eHguZHRzaQpAQCAtMjY1LDYgKzI2NSw4IEBAIGNvbXBoeTogcGh5QDE4MzAwIHsK
IAkJCQkJICAgICJsYW5lMl9zYXRhX3VzYjMiOwogCQkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owog
CQkJCSNzaXplLWNlbGxzID0gPDA+OworCQkJCWNsb2NrcyA9IDwmeHRhbGNsaz47CisJCQkJY2xv
Y2stbmFtZXMgPSAieHRhbCI7CiAKIAkJCQljb21waHkwOiBwaHlAMCB7CiAJCQkJCXJlZyA9IDww
PjsKLS0gCjIuMzIuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
