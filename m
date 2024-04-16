Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3174AC04FFF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 12:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mRXwcj0IR6wEt9aaoNfJeyaJVFQKMDCaIXBStsfKsM=; b=Ab5KYHD/aHNWDD
	59Qqn5E8KLMhkZdoeVjgJ3brkb1BjSoJChzQ00bNm7JD0MAXH7AIdRHOsyE1Yep6NmCKFW5iaoJqh
	WsSNFHB4LAaovhuWEu0y7hTy/azurowv54k9sAkUa+yBGadaf/oArgPBPEJYHp0pIaq4dSSIeWdIw
	okev7dj0xyG3FTiBTilGp61IX8SxHm+QVOBJZyZl9YC/afEqQNpoLwq2q0vXHLlZEzqxICM8XJ3c0
	xOUd0upn7ak+WiLijCUTRy7ny9GEYtMnzXqv6vQHvwJhoBCotX1EePcwXwGEHnGohWJynqPRFnWLu
	yTu42DCQ6cOgW7MgPIUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJU-0000000CCFn-3fZD;
	Tue, 16 Apr 2024 12:53:28 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJH-0000000CC91-1OQx
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:53:19 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0715520007;
	Tue, 16 Apr 2024 12:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1713271993;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7ro+3bzijX1lOO7JWK3H90lUuZ5Kj2+U5keyLVtzdlk=;
	b=pAuP0kbKH2mNvyLRFchYB99mZx1lASw7r5vAd3qlB+PghI3w/X5BQ9o5f6Z1QrOjk8xrbh
	ViEcxldjzJYec6GZcX7cdivXfv56ixaS9unm0Tt3JrxR/hM+Fsf71mu3U+bNdSRqd0Bs6a
	Y10DCgt93L3AdSepW61zVNZmV5428qZuhXQDJjjm3eBMZi9ReR9PaCPgmifVzTIEEglb4t
	49CikAL7I/pEUPKKf4ivgiAub3Iv85cspsyxBRaGXY59ZJ5LjHWLZvuQL/529U/wpPJyyL
	+45DixWXo9ijBxRUEWXs/ssOC8U69ofkMYkZgV5+QV/L1uthKfYlz2LAVcxh0g==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Tue, 16 Apr 2024 14:52:37 +0200
Subject: [PATCH 8/8] phy: cadence-torrent: add suspend and resume support
MIME-Version: 1.0
Message-Id: <20240412-j7200-phy-s2r-v1-8-f15815833974@bootlin.com>
References: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
In-Reply-To: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
 thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_055315_793186_A78E15CB 
X-CRM114-Status: GOOD (  13.26  )
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

QWRkIHN1c3BlbmQgYW5kIHJlc3VtZSBzdXBwb3J0LgoKVGhlIGFscmVhZHlfY29uZmlndXJlZCBm
bGFnIGlzIGNsZWFyZWQgZHVyaW5nIHRoZSBzdXNwZW5kIHN0YWdlIHRvIGZvcmNlCnRoZSBQSFkg
aW5pdGlhbGl6YXRpb24gZHVyaW5nIHRoZSByZXN1bWUgc3RhZ2UuCgpDby1kZXZlbG9wZWQtYnk6
IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6IFRo
w6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+ClNpZ25lZC1vZmYtYnk6IFRob21h
cyBSaWNoYXJkIDx0aG9tYXMucmljaGFyZEBib290bGluLmNvbT4KLS0tCiBkcml2ZXJzL3BoeS9j
YWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYyB8IDU3ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMgYi9kcml2ZXJzL3BoeS9j
YWRlbmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwppbmRleCAwZTNjNzU1ZTYwODkuLjdlNDg4Nzg4
YTM2NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50
LmMKKysrIGIvZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMKQEAgLTMw
NzUsNiArMzA3NSw2MiBAQCBzdGF0aWMgdm9pZCBjZG5zX3RvcnJlbnRfcGh5X3JlbW92ZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWNkbnNfdG9ycmVudF9jbGtfY2xlYW51cChjZG5z
X3BoeSk7CiB9CiAKK3N0YXRpYyBpbnQgY2Ruc190b3JyZW50X3BoeV9zdXNwZW5kX25vaXJxKHN0
cnVjdCBkZXZpY2UgKmRldikKK3sKKwlzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAqY2Ruc19waHkg
PSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKwlpbnQgaTsKKworCXJlc2V0X2NvbnRyb2xfYXNzZXJ0
KGNkbnNfcGh5LT5waHlfcnN0KTsKKwlyZXNldF9jb250cm9sX2Fzc2VydChjZG5zX3BoeS0+YXBi
X3JzdCk7CisJZm9yIChpID0gMDsgaSA8IGNkbnNfcGh5LT5uc3Vibm9kZXM7IGkrKykKKwkJcmVz
ZXRfY29udHJvbF9hc3NlcnQoY2Ruc19waHktPnBoeXNbaV0ubG5rX3JzdCk7CisKKwlpZiAoY2Ru
c19waHktPmFscmVhZHlfY29uZmlndXJlZCkKKwkJY2Ruc19waHktPmFscmVhZHlfY29uZmlndXJl
ZCA9IDA7CisJZWxzZSB7CisJCWNsa19kaXNhYmxlX3VucHJlcGFyZShjZG5zX3BoeS0+Y2xrMSk7
CisJCWNsa19kaXNhYmxlX3VucHJlcGFyZShjZG5zX3BoeS0+Y2xrKTsKKwl9CisKKwlyZXR1cm4g
MDsKK30KKworc3RhdGljIGludCBjZG5zX3RvcnJlbnRfcGh5X3Jlc3VtZV9ub2lycShzdHJ1Y3Qg
ZGV2aWNlICpkZXYpCit7CisJc3RydWN0IGNkbnNfdG9ycmVudF9waHkgKmNkbnNfcGh5ID0gZGV2
X2dldF9kcnZkYXRhKGRldik7CisJaW50IG5vZGUgPSBjZG5zX3BoeS0+bnN1Ym5vZGVzOworCWlu
dCByZXQsIGk7CisKKwlyZXQgPSBjZG5zX3RvcnJlbnRfY2xrKGNkbnNfcGh5KTsKKwlpZiAocmV0
KQorCQlyZXR1cm4gcmV0OworCisJLyogRW5hYmxlIEFQQiAqLworCXJlc2V0X2NvbnRyb2xfZGVh
c3NlcnQoY2Ruc19waHktPmFwYl9yc3QpOworCisJaWYgKGNkbnNfcGh5LT5uc3Vibm9kZXMgPiAx
KSB7CisJCXJldCA9IGNkbnNfdG9ycmVudF9waHlfY29uZmlndXJlX211bHRpbGluayhjZG5zX3Bo
eSk7CisJCWlmIChyZXQpCisJCQlnb3RvIHB1dF9sbmtfcnN0OworCX0KKworCXJldHVybiAwOwor
CitwdXRfbG5rX3JzdDoKKwlmb3IgKGkgPSAwOyBpIDwgbm9kZTsgaSsrKQorCQlyZXNldF9jb250
cm9sX2Fzc2VydChjZG5zX3BoeS0+cGh5c1tpXS5sbmtfcnN0KTsKKwlyZXNldF9jb250cm9sX2Fz
c2VydChjZG5zX3BoeS0+YXBiX3JzdCk7CisKKwljbGtfZGlzYWJsZV91bnByZXBhcmUoY2Ruc19w
aHktPmNsazEpOworCWNsa19kaXNhYmxlX3VucHJlcGFyZShjZG5zX3BoeS0+Y2xrKTsKKworCXJl
dHVybiByZXQ7Cit9CisKK3N0YXRpYyBERUZJTkVfTk9JUlFfREVWX1BNX09QUyhjZG5zX3RvcnJl
bnRfcGh5X3BtX29wcywKKwkJCSAgICAgICBjZG5zX3RvcnJlbnRfcGh5X3N1c3BlbmRfbm9pcnEs
CisJCQkgICAgICAgY2Ruc190b3JyZW50X3BoeV9yZXN1bWVfbm9pcnEpOworCiAvKiBVU0IgYW5k
IERQIGxpbmsgY29uZmlndXJhdGlvbiAqLwogc3RhdGljIHN0cnVjdCBjZG5zX3JlZ19wYWlycyB1
c2JfZHBfbGlua19jbW5fcmVnc1tdID0gewogCXsweDAwMDIsIFBIWV9QTExfQ0ZHfSwKQEAgLTUy
NzYsNiArNTMzMiw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGNkbnNfdG9ycmVu
dF9waHlfZHJpdmVyID0gewogCS5kcml2ZXIgPSB7CiAJCS5uYW1lCT0gImNkbnMtdG9ycmVudC1w
aHkiLAogCQkub2ZfbWF0Y2hfdGFibGUJPSBjZG5zX3RvcnJlbnRfcGh5X29mX21hdGNoLAorCQku
cG0JPSBwbV9zbGVlcF9wdHIoJmNkbnNfdG9ycmVudF9waHlfcG1fb3BzKSwKIAl9CiB9OwogbW9k
dWxlX3BsYXRmb3JtX2RyaXZlcihjZG5zX3RvcnJlbnRfcGh5X2RyaXZlcik7CgotLSAKMi4zOS4y
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
