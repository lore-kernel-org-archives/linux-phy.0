Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97285C04FF9
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 14:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Zx7y6RrIoY5LRzFOeygtKJE/lRN7TXYdM1nCyM0cPs=; b=Snxe+5kUQaBebr
	a1aNXG8Z0Pr8a/aUc5g4si70qwOJ3wGj4pzVP4uqMTSmIizsfbU5OvqVi4GvXQyr4+tVVUG521X5k
	3Bjto0F2ew1Xxq8amq2Gn2nXT35mUsXGdPvJoQ4B4WklmLpRwr1w5WMnS3aEH6D3XqSxHRbpLwbIu
	hja7tArP3flye0OH4O+Z7yv8kNXSV8eCfF0wLjxjU51xjr8yvslSMVN+NVsG9N8+1RXn6knTz7Xjg
	ghyP05b0QHwoA8VvMXbrEVzTp9l8jlZH3E6cuvoSnyurexAHefaRWCxhwoY57wESl4Zj6Ntzr5rHT
	fwygiO2dj1W+H8mAr7vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwjMg-0000000CQEY-0gQp;
	Tue, 16 Apr 2024 14:00:50 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJC-0000000CC5v-46Y2
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:53:12 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 77E912000C;
	Tue, 16 Apr 2024 12:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1713271989;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=07LG+D8zx6QxscnqktDKHECH7SKyoDjzNohjqBXAyyE=;
	b=dY64t8KVvXqYXN0OQsRmz2nexv5PBGQTQNhgas/mAxHCuvLMHxg/zS9km5wdJ3FQ/Ky+XI
	2VZ/7jHGdikgZvm3pQEbAzrIaU1JcEbilQ4ZSPp5OwSjbJolI1VVjLxaVzpzBHZPuOuXp8
	ZKe67o3PVt4301atrthiuuXC7vXufdw+l+SN2x8zNOJCm9IMwzPEOpcZ27mePnQJcVelu0
	ZORaXfpg3fH4kwKC8tlCiTv+5e4tRu0OOJRU0dmZAWOOLpdiwW7HGLVX57RRwvYrJjG+3o
	tIurJI4oiZNyyeU3kWByLoOErzBB6s8EtE/c2kls80p9wCyALeluq8H54LnBiA==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Tue, 16 Apr 2024 14:52:33 +0200
Subject: [PATCH 4/8] phy: cadence-torrent: extract calls to clk_get from
 cdns_torrent_clk
MIME-Version: 1.0
Message-Id: <20240412-j7200-phy-s2r-v1-4-f15815833974@bootlin.com>
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
X-CRM114-CacheID: sfid-20240416_055311_315107_F90D1A60 
X-CRM114-Status: GOOD (  11.39  )
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

RXh0cmFjdCBjYWxscyB0byBjbGtfZ2V0IGZyb20gY2Ruc190b3JyZW50X2NsayBpbnRvIGEgc2Vw
YXJhdGUgZnVuY3Rpb24uCkl0IG5lZWRzIHRvIGNhbGwgY2Ruc190b3JyZW50X2NsayBhdCByZXN1
bWUgd2l0aG91dCBsb29raW5nIHVwIHRoZSBjbG9jay4KCkNvLWRldmVsb3BlZC1ieTogVGjDqW8g
TGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVi
cnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhvbWFzIFJpY2hh
cmQgPHRob21hcy5yaWNoYXJkQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvcGh5L2NhZGVuY2Uv
cGh5LWNhZGVuY2UtdG9ycmVudC5jIHwgMzcgKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVudC5jIGIvZHJp
dmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMKaW5kZXggOTU5MjRhMDk5NjBj
Li5lNjQ2MjU4NTlhMDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVu
Y2UtdG9ycmVudC5jCisrKyBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVu
dC5jCkBAIC0yNjk5LDIwICsyNjk5LDI5IEBAIHN0YXRpYyBpbnQgY2Ruc190b3JyZW50X3Jlc2V0
KHN0cnVjdCBjZG5zX3RvcnJlbnRfcGh5ICpjZG5zX3BoeSkKIAlyZXR1cm4gMDsKIH0KIAorc3Rh
dGljIGludCBjZG5zX3RvcnJlbnRfb2ZfZ2V0X2NsayhzdHJ1Y3QgY2Ruc190b3JyZW50X3BoeSAq
Y2Ruc19waHkpCit7CisJLyogcmVmY2xrOiBJbnB1dCByZWZlcmVuY2UgY2xvY2sgZm9yIFBMTDAg
Ki8KKwljZG5zX3BoeS0+Y2xrID0gZGV2bV9jbGtfZ2V0KGNkbnNfcGh5LT5kZXYsICJyZWZjbGsi
KTsKKwlpZiAoSVNfRVJSKGNkbnNfcGh5LT5jbGspKQorCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShj
ZG5zX3BoeS0+ZGV2LCBQVFJfRVJSKGNkbnNfcGh5LT5jbGspLAorCQkJCSAgICAgInBoeSByZWYg
Y2xvY2sgbm90IGZvdW5kXG4iKTsKKworCS8qIHJlZmNsazE6IElucHV0IHJlZmVyZW5jZSBjbG9j
ayBmb3IgUExMMSAqLworCWNkbnNfcGh5LT5jbGsxID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKGNk
bnNfcGh5LT5kZXYsICJwbGwxX3JlZmNsayIpOworCWlmIChJU19FUlIoY2Ruc19waHktPmNsazEp
KQorCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShjZG5zX3BoeS0+ZGV2LCBQVFJfRVJSKGNkbnNfcGh5
LT5jbGsxKSwKKwkJCQkgICAgICJwaHkgUExMMSByZWYgY2xvY2sgbm90IGZvdW5kXG4iKTsKKwor
CXJldHVybiAwOworfQorCiBzdGF0aWMgaW50IGNkbnNfdG9ycmVudF9jbGsoc3RydWN0IGNkbnNf
dG9ycmVudF9waHkgKmNkbnNfcGh5KQogewotCXN0cnVjdCBkZXZpY2UgKmRldiA9IGNkbnNfcGh5
LT5kZXY7CiAJdW5zaWduZWQgbG9uZyByZWZfY2xrMV9yYXRlOwogCXVuc2lnbmVkIGxvbmcgcmVm
X2Nsa19yYXRlOwogCWludCByZXQ7CiAKLQkvKiByZWZjbGs6IElucHV0IHJlZmVyZW5jZSBjbG9j
ayBmb3IgUExMMCAqLwotCWNkbnNfcGh5LT5jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAicmVmY2xr
Iik7Ci0JaWYgKElTX0VSUihjZG5zX3BoeS0+Y2xrKSkgewotCQlkZXZfZXJyKGRldiwgInBoeSBy
ZWYgY2xvY2sgbm90IGZvdW5kXG4iKTsKLQkJcmV0dXJuIFBUUl9FUlIoY2Ruc19waHktPmNsayk7
Ci0JfQotCiAJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGNkbnNfcGh5LT5jbGspOwogCWlmIChy
ZXQpIHsKIAkJZGV2X2VycihjZG5zX3BoeS0+ZGV2LCAiRmFpbGVkIHRvIHByZXBhcmUgcmVmIGNs
b2NrOiAlZFxuIiwgcmV0KTsKQEAgLTI3NDUsMTQgKzI3NTQsNiBAQCBzdGF0aWMgaW50IGNkbnNf
dG9ycmVudF9jbGsoc3RydWN0IGNkbnNfdG9ycmVudF9waHkgKmNkbnNfcGh5KQogCQlnb3RvIGRp
c2FibGVfY2xrOwogCX0KIAotCS8qIHJlZmNsazE6IElucHV0IHJlZmVyZW5jZSBjbG9jayBmb3Ig
UExMMSAqLwotCWNkbnNfcGh5LT5jbGsxID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKGRldiwgInBs
bDFfcmVmY2xrIik7Ci0JaWYgKElTX0VSUihjZG5zX3BoeS0+Y2xrMSkpIHsKLQkJZGV2X2Vycihk
ZXYsICJwaHkgUExMMSByZWYgY2xvY2sgbm90IGZvdW5kXG4iKTsKLQkJcmV0ID0gUFRSX0VSUihj
ZG5zX3BoeS0+Y2xrMSk7Ci0JCWdvdG8gZGlzYWJsZV9jbGs7Ci0JfQotCiAJaWYgKGNkbnNfcGh5
LT5jbGsxKSB7CiAJCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShjZG5zX3BoeS0+Y2xrMSk7CiAJ
CWlmIChyZXQpIHsKQEAgLTI4NDYsNiArMjg0NywxMCBAQCBzdGF0aWMgaW50IGNkbnNfdG9ycmVu
dF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlpZiAocmV0KQogCQly
ZXR1cm4gcmV0OwogCisJcmV0ID0gY2Ruc190b3JyZW50X29mX2dldF9jbGsoY2Ruc19waHkpOwor
CWlmIChyZXQpCisJCWdvdG8gY2xrX2NsZWFudXA7CisKIAlyZWdtYXBfZmllbGRfcmVhZChjZG5z
X3BoeS0+cGh5X3BtYV9jbW5fY3RybF8xLCAmYWxyZWFkeV9jb25maWd1cmVkKTsKIAogCWlmICgh
YWxyZWFkeV9jb25maWd1cmVkKSB7CgotLSAKMi4zOS4yCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
