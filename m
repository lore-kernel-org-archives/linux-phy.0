Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB97BC32773
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 19:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80sEQVT5TxeJ/vIL+UdKhA5vhpjBpxY4VMoHGYobL2g=; b=H0s6cBDQU8jBpo
	oS2MCmulzrt0I7qchgI8w32S+R3uX4H6b/loKQeGIQf9JYNblr8QgMEWP+ns6QvsgxJTd7vH3MT9z
	m9+xapYPpAi+orMhbLfqha8nvfg1i63o6nXWyu8a3ic97bt2eYvxgFqPAoiCnP89J9anTwBf12Sqc
	7yRnYDBYeTUO+r6z8m9fnea1YaMcviPPZ4jP6EBNUpYCuF1HHgiCbXx1/TM8T1spMmFS1ESH85DZk
	9wKCf3P3VKUKbqxoHv5UDFTSCri+6T/Z6LIutmIUSkvY+ImiCHO8C0M0c8ViH4zkZZD5e+rjlQ8qR
	8rElAEeZYp8BpQxrrKXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOlK-005kI7-U4; Wed, 17 Aug 2022 19:31:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOlI-005kDm-4e
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 19:31:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 813F6614A7;
	Wed, 17 Aug 2022 19:31:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77AA6C433B5;
	Wed, 17 Aug 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660764687;
	bh=wv0Zebl3/M8/sl1p7uqmjBF5ITW2e0LsrTBPWFRbNuA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gBSvfBlHpBTWTwdgK+5Pt0A0MMfXV4sj4KHTGl6XQhQ34Fw817ZfIrHprdrYwWGiP
	 3GPIJ5rgTOrQtDch70xO3Gg/fw30k5nLiyRO2iOuLXz4RAbB1fZrKqKEddwsIiGuyF
	 TXVeyqcGuCBRW+hZFyqUNAbakerjcQ6reVfuZ7lJsbs96bNXH+r/q25+ke3D+jQZpN
	 epG5dtC/gbpUjmVgRBETQeNXKQMEdvpVRDvrYmjsi+J99adld74GHuV0LbQugRgILo
	 gOgfEFZhcCasTIILP62wa+wM2iZFf/1JkkXGTJOJALrm4VFFTSk68km2kpbOu6jg+O
	 FQ9vDLpveFpDQ==
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
Subject: [PATCH linux-phy 1/4] string.h: Add str_has_proper_prefix()
Date: Wed, 17 Aug 2022 21:31:16 +0200
Message-Id: <20220817193119.4463-2-kabel@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220817193119.4463-1-kabel@kernel.org>
References: <20220817193119.4463-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_123132_304849_ACBA5EDB 
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
