Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 039BFC32772
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 20:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80sEQVT5TxeJ/vIL+UdKhA5vhpjBpxY4VMoHGYobL2g=; b=EUdfD3QSHrqeKX
	oSabbzbN4jTzzVJ435LddtZXFUrkp5wARVAh1Qad5qY/URnlf5tx6Vx1dFq6FjpM5bORbvjKi6YBx
	XnxK4HETIldTjDWMUJGbfOkb+49Nzo8h0R16Rx791EWGpCjF3DcrcMW6b1/IJM4IKk8c+dJM7anns
	5uVFWiPTZZ4Uk7blbisV6nGhK9Y/opq0lrCt3/MaDteH2D99tnFKusj8lJ87D6tMmleUnCj2mLtBB
	uJ5/0K3asOdKdiE4Jx+o+HEGcNVioA5eF8JPNiZuR3YV5t/wAOZE5LQpgellggnIRwDL70UUpMbrZ
	QCXitcyVc/knxdb/22+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPGX-0065Mk-CL; Wed, 17 Aug 2022 20:03:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPGU-0065KR-3S
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 20:03:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D4CD56151B;
	Wed, 17 Aug 2022 20:03:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBB2FC4347C;
	Wed, 17 Aug 2022 20:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660766623;
	bh=wv0Zebl3/M8/sl1p7uqmjBF5ITW2e0LsrTBPWFRbNuA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IybX3rRa0kAATdNa9CEutWHHd6nJNB/y5T4vkHUm4SCBxsG8J6o2lnKb5ITB9GZwT
	 WOunqvHZDReF98jHFUrT4omATeTvB3UCsg/rZDPxcxrrDrtzAcum1B8j4gTkqj0NLe
	 en9O7rOnvqqyggowmKPE4BeGmXuDlKMcTntGHaJ3PwQamtksLtjybpR/aPxmhpwVMg
	 pA2qJizPk36y4j50+h95mxHjC0e9BVblhawKMwatNS0D4RpoUMf6u6kUMoXnrzZfTH
	 6NXMp7SKRpNPotFkq14UcIQPtJFT6KTkDsDWLgb0zPPUVkbS/L4c+4E5yToxy65t3j
	 CT26aaydcxB2A==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Linux Phy <linux-phy@lists.infradead.org>,
	Kees Cook <keescook@chromium.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Daniel Scally <djrscally@gmail.com>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-kernel@vger.kernel.org,
	pali@kernel.org,
	josef.schlehofer@nic.cz,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH linux-phy v2 1/4] string.h: Add str_has_proper_prefix()
Date: Wed, 17 Aug 2022 22:03:32 +0200
Message-Id: <20220817200335.911-2-kabel@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220817200335.911-1-kabel@kernel.org>
References: <20220817200335.911-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_130346_212180_3C664522 
X-CRM114-Status: GOOD (  11.56  )
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

QWRkIHN0cl9oYXNfcHJvcGVyX3ByZWZpeCgpLCBzaW1pbGFyIHRvIHN0cl9oYXNfcHJlZml4KCks
IGJ1dCByZXF1aXJlcwp0aGF0IHRoZSBwcmVmaXggaXMgcHJvcGVyOiB0aGUgc3RyaW5nIGl0c2Vs
ZiBtdXN0IGJlIGxvbmdlciB0aGFuIHRoZQpwcmVmaXguCgpTaWduZWQtb2ZmLWJ5OiBNYXJlayBC
ZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+Ci0tLQpBbmR5LCBLZWVzLCBjb3VsZCB5b3UgYWNrIHRo
aXMgaWYgaXQgaXMgb2s/Ci0tLQogaW5jbHVkZS9saW51eC9zdHJpbmcuaCB8IDE4ICsrKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9pbmNsdWRlL2xpbnV4L3N0cmluZy5oIGIvaW5jbHVkZS9saW51eC9zdHJpbmcuaAppbmRleCA2
MWVjN2U0ZjYzMTEuLjM3NWY1MWI5MTgyYyAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9zdHJp
bmcuaAorKysgYi9pbmNsdWRlL2xpbnV4L3N0cmluZy5oCkBAIC0zMTYsNCArMzE2LDIyIEBAIHN0
YXRpYyBfX2Fsd2F5c19pbmxpbmUgc2l6ZV90IHN0cl9oYXNfcHJlZml4KGNvbnN0IGNoYXIgKnN0
ciwgY29uc3QgY2hhciAqcHJlZml4CiAJcmV0dXJuIHN0cm5jbXAoc3RyLCBwcmVmaXgsIGxlbikg
PT0gMCA/IGxlbiA6IDA7CiB9CiAKKy8qKgorICogc3RyX2hhc19wcm9wZXJfcHJlZml4IC0gVGVz
dCBpZiBhIHN0cmluZyBoYXMgYSBwcm9wZXIgcHJlZml4CisgKiBAc3RyOiBUaGUgc3RyaW5nIHRv
IHRlc3QKKyAqIEBwcmVmaXg6IFRoZSBzdHJpbmcgdG8gc2VlIGlmIEBzdHIgc3RhcnRzIHdpdGgK
KyAqCisgKiBUaGlzIGlzIGxpa2Ugc3RyX2hhc19wcmVmaXgoKSwgYnV0IGZhaWxzIGlmIHRoZSBz
dHJpbmdzIGFyZSBlcXVhbC4KKyAqCisgKiBSZXR1cm5zOgorICogKiBzdHJsZW4oQHByZWZpeCkg
aWYgQHN0ciBzdGFydHMgd2l0aCBAcHJlZml4IGFuZCB0aGV5IGFyZW4ndCBlcXVhbAorICogKiAw
IG90aGVyd2lzZQorICovCitzdGF0aWMgX19hbHdheXNfaW5saW5lIHNpemVfdCBzdHJfaGFzX3By
b3Blcl9wcmVmaXgoY29uc3QgY2hhciAqc3RyLAorCQkJCQkJICAgIGNvbnN0IGNoYXIgKnByZWZp
eCkKK3sKKwlzaXplX3QgbGVuID0gc3RybGVuKHByZWZpeCk7CisJcmV0dXJuIHN0cm5jbXAoc3Ry
LCBwcmVmaXgsIGxlbikgPT0gMCAmJiBsZW4gIT0gc3RybGVuKHN0cikgPyBsZW4gOiAwOworfQor
CiAjZW5kaWYgLyogX0xJTlVYX1NUUklOR19IXyAqLwotLSAKMi4zNS4xCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
