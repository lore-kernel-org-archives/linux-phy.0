Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C584C83F2C
	for <linux-phy@archiver.kernel.org>; Sun,  3 Sep 2023 10:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CArQXAC5FXNONmdAbQi2PGMOKXwB2v7L4BqjUrdrf/s=; b=LIpg92xN9ZdlVN
	8226cDqcC1bgn+Zi1PupYxg1leyK8gGwAs8OPpPxUjISSioKy9bfZN9P6cnKV9UUQG2P/vG6+o2cE
	wtJQCSovffj+4u6T3NGMuNZUN+IyA1DUAK7w9dqxw0r5brz6d+dS8wn3nOTTD/FNmTf27dbCgUOaB
	bqx2XL3K3yxNkyBG6hMat4SiiC7Eak7Z9++vXAOmLz/oY3HkXsZlAKTlHQGEbaPybkoDwhfEGVrst
	qXmPwCrtD0fLrUbIKJlove1+kiUHw2XSHdcWZeJ8qGtE54BKqBHlGZWO/KjQqr32+AhOmQIOzDQw2
	2I3a5Ck7UqktwVDCAS1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qck4o-002JLs-32;
	Sun, 03 Sep 2023 10:11:30 +0000
Received: from smtp-28.smtpout.orange.fr ([80.12.242.28] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qck4j-002JKG-2X
	for linux-phy@lists.infradead.org;
	Sun, 03 Sep 2023 10:11:28 +0000
Received: from pop-os.home ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id ck4Sq0Dlhv5KTck4SqU8l5; Sun, 03 Sep 2023 12:11:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1693735876;
	bh=pYSxdLERm6FegRN8OPQImJFFHzRLF2IYwebwjAKvv44=;
	h=From:To:Cc:Subject:Date;
	b=lU56k2SraqBFtjnPVVg8n3TRO2AETyZ8PZ4ZsOtXQ9jlEQ7NzBjETYeyloHBTlseE
	 Kw1Q1aUFASROqv/CNJxZY4qi8A5BWp+GNcxWhqrNJXqLZASE1EfBe/7QSYUvaFVsz/
	 jpAsIzyUJyCjmHrTJPjkqKgtG6F/F2TylX+QybouB+H9eAn0aiP6PbzqcpLE7SFDB+
	 AgbHF0w9TmvoL3oEioO3Kaks6KPCK3Pjd/OEcmG82JMhxHo4zn1W5Qb2muC6FXOVQ9
	 3w/FZx2yotk3MON9BzBkmLucNWX2oO/+aqs0XoIDWv2mKix7Qcca2ATgO9rHC2KgrB
	 ueXdOyY9nKaYw==
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 03 Sep 2023 12:11:16 +0200
X-ME-IP: 86.243.2.178
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH] phy: sun4i-usb: Fix a W=1 compilation failure
Date: Sun,  3 Sep 2023 12:11:06 +0200
Message-Id: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230903_031126_279876_6B7CEBDD 
X-CRM114-Status: GOOD (  12.90  )
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

V2l0aCBnY2MgMTIuMy4wLCB3aGVuIHRoaXMgZmlsZSBpcyBidWlsdCwgd2UgZ2V0IGVycm9ycyBz
dWNoIGFzOgoKZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYzogSW4gZnVuY3Rp
b24g4oCYc3VuNGlfdXNiX3BoeV9wcm9iZeKAmToKZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1z
dW40aS11c2IuYzo3OTA6NTI6IGVycm9yOiDigJhfdmJ1c+KAmSBkaXJlY3RpdmUgb3V0cHV0IG1h
eSBiZSB0cnVuY2F0ZWQgd3JpdGluZyA1IGJ5dGVzIGludG8gYSByZWdpb24gb2Ygc2l6ZSBiZXR3
ZWVuIDIgYW5kIDEyIFstV2Vycm9yPWZvcm1hdC10cnVuY2F0aW9uPV0KICA3OTAgfCAgICAgICAg
ICAgICAgICAgc25wcmludGYobmFtZSwgc2l6ZW9mKG5hbWUpLCAidXNiJWRfdmJ1cyIsIGkpOwog
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF5+fn5+CmRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmM6NzkwOjE3OiBub3Rl
OiDigJhzbnByaW50ZuKAmSBvdXRwdXQgYmV0d2VlbiAxMCBhbmQgMjAgYnl0ZXMgaW50byBhIGRl
c3RpbmF0aW9uIG9mIHNpemUgMTYKICA3OTAgfCAgICAgICAgICAgICAgICAgc25wcmludGYobmFt
ZSwgc2l6ZW9mKG5hbWUpLCAidXNiJWRfdmJ1cyIsIGkpOwogICAgICB8ICAgICAgICAgICAgICAg
ICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KCkJlY2F1c2Ug
b2YgdGhlIHBvc3NpYmxlIHZhbHVlIG9mICdpJywgdGhpcyBjYW4ndCBiZSBhbiBpc3N1ZSBpbiBy
ZWFsIHdvcmxkCmFwcGxpY2F0aW9uLCBidXQgaW4gb3JkZXIgdG8gaGF2ZSAibWFrZSBXPTEiIHdv
cmsgY29ycmVjdGx5LCBnaXZlIG1vcmUKc3BhY2UgZm9yICduYW1lJy4KClNpZ25lZC1vZmYtYnk6
IENocmlzdG9waGUgSkFJTExFVCA8Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI+Ci0tLQog
ZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYyB8IDIgKy0KIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMgYi9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5
LXN1bjRpLXVzYi5jCmluZGV4IGVjNTUxNDY0ZGQ0Zi4uZTUzYTlhOTMxN2JjIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jCisrKyBiL2RyaXZlcnMvcGh5
L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKQEAgLTc4Miw3ICs3ODIsNyBAQCBzdGF0aWMgaW50
IHN1bjRpX3VzYl9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogCWZv
ciAoaSA9IDA7IGkgPCBkYXRhLT5jZmctPm51bV9waHlzOyBpKyspIHsKIAkJc3RydWN0IHN1bjRp
X3VzYl9waHkgKnBoeSA9IGRhdGEtPnBoeXMgKyBpOwotCQljaGFyIG5hbWVbMTZdOworCQljaGFy
IG5hbWVbMzJdOwogCiAJCWlmIChkYXRhLT5jZmctPm1pc3NpbmdfcGh5cyAmIEJJVChpKSkKIAkJ
CWNvbnRpbnVlOwotLSAKMi4zNC4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
