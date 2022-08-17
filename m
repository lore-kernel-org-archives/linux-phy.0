Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AF8FC25B08
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 20:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wTwmtPGe7q50hjUadLIcLPj2TCuQ/9nPdpLMipFRD84=; b=yhHw7d2aQmvMZN
	7UcC2kSDCEJQeiw6Tl7+iPR5zuFDXo02uXMEAz4N5AfhzfYjLKHPcLlM575sX4YwRcJc/4/p9DHur
	bnXpFLNUVHhaJHSy2u6zyWQ92r9D2HatNDzI18mmFnTBFhx7lei/W4GfGcZJ1Bt5rzBOQ76mCUfZ2
	tiw0WV48RdAmDrLpR1yIRNyJxLHLvnKmLRSoCu8dbVnUNct2d6O7wPoODu/f04bFgz7AWZKCxnjJU
	cZD51/1xRwdWRV3417XNB0icADgklbcImGIVs4XS2s/qGwuPDtrMtUjygXcrWX95qx/UpcR9BTHdH
	lbar4idz0IRYtq36omig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPGR-0065KI-PA; Wed, 17 Aug 2022 20:03:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPGP-0065Ih-Nk
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 20:03:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0D4FE614EE;
	Wed, 17 Aug 2022 20:03:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED50CC433D6;
	Wed, 17 Aug 2022 20:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660766620;
	bh=0ZcQMibMEVZJPOojqwq2yBUXq0LRnX3KICwqnQfqKLw=;
	h=From:To:Cc:Subject:Date:From;
	b=Hi3P8xdLSdIRaXdyCEilVUGu31fLrjs2H8b1VQ217qL7JEa/6KPFRJjRrTfnYihB9
	 r6z6ImlHAgBnf5vzPQmxudqvNiNTt+wJdzYdTFJHFUmelT3UPf8pknlXJF2fCI/Gwk
	 GlkfyAQqNTIseRoLdVpeuyHIePIpiFXEJaYpR4In96sECKk/hIXdMtq84B+si8N1OE
	 JGlQK9IC17FvHsR4zyLxanoPRP65aASolOouBG3AjZViAPdf0HgytjuKb8veoe5mLZ
	 w8dZI6DMsc0SdE1XBag55q5WXk0/ezTcHOkq90rFHqwGdq6EdywXREM9FX0vYm3UkL
	 ls2NOUwaWC3wg==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Linux Phy <linux-phy@lists.infradead.org>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org,
	pali@kernel.org,
	josef.schlehofer@nic.cz,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH linux-phy v2 0/4] mvebu a3720 comphy: Fix serdes transmit amplitude
Date: Wed, 17 Aug 2022 22:03:31 +0200
Message-Id: <20220817200335.911-1-kabel@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_130341_834296_F5FD6A20 
X-CRM114-Status: GOOD (  11.38  )
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

Q2hhbmdlcyBzaW5jZSB2MToKLSBmaXgKICAgIHN0YXRpYyBjb25zdCBjaGFyICogYXJyYXkgc2hv
dWxkIHByb2JhYmx5IGJlIHN0YXRpYyBjb25zdCBjaGFyICogY29uc3QKICB3YXJuaW5nIGluIHBh
dGNoIDIKLSBmaXggd3JvbmcgcGFyYW1ldGVyIG9yZGVyIHRvIGZ1bmN0aW9uIGNvbXBoeV9maW5k
X2Jlc3RfdHhfYW1wKCkKICBpbiBwYXRjaCAzCgpPcmlnaW5hbCBjb3ZlciBsZXR0ZXI6CgpUaGlz
IHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHNldHRpbmcgc2VyZGVzIHRyYW5zbWl0IGFtcGxpdHVk
ZSBmb3IKZXRoZXJuZXQgbW9kZXMgKHNnbWlpLCAxMDAwYmFzZS14LCAyNTAwYmFzZS14KSBpbiB0
aGUgTWFydmVsbCBBMzcyMApjb21waHkgZHJpdmVyLgoKVGhlIGFtcGxpdHVkZSBpcyBzZXQgYWNj
b3JkaW5nIHRvIHNldHRpbmcgaW4gZGV2aWNlIHRyZWUuCgpGaW5hbGx5IHRoZSBUdXJyaXMgTU9Y
IGRldmljZSB0cmVlIGlzIGNoYW5nZWQgdG8gc2V0IHRoZSAyNTAwYmFzZS14Cm1vZGUgdHggYW1w
bGl0dWRlIHRvIDEwMjUgbVYuCgpUaGlzIGlzIG5lZWRlZCB0byBmaXggYSB3ZWlyZCBpc3N1ZSB3
aGVyZWluIHdoZW4gQTM3MjAgc2VuZHMgYSBwYWNrZXQKdG8gVG9wYXosIGFuZCB0aGUgcGFja2V0
IGNvbnRhaW5zIGEgbG9uZyBzZXF1ZW5jZSBvZiAnSidzIG9yICdceGI1JwpieXRlcyAodGhlc2Ug
dHJhbnNsYXRlIHRvICcwMTAxMDEwMTAxMDEnLi4uIGluIDhiLzEwYiBlbmNvZGluZyksIHRoZQpw
YWNrZXQgbWF5IGJlIGxvc3Qgb24gVG9wYXogZHVlIHRvIEZDUyBlcnJvci4gVGhlIHByb2JhYmls
aXR5IG9mCmxvc3MgZ3Jvd3Mgd2l0aCBudW1iZXIgb2YgJ0onczoKCiAgbG9zcwogICAgICAgICAg
ICAgICAgICAgICAgICAgX19fX19fCiAgMTAwJSAgICAgICAgICAgICAgICAuLV4KICAgICAgICAg
ICAgICAgICAgICAgLwogICAgICAgICAgICAgICAgICAgIC8KICAgNTAlICAgICAgICAgICAgIC8K
ICAgICAgICAgICAgICAgICAgLwogICAgICAgICAgICAgICAgIC8KICAgIDAlICBfX19fX18uLV4K
ICAgICAgICAgICAgOTAgICAgMTE0ICAgIDEyNSAgICAgbnVtYmVyIG9mIGNvbnNlY3V0aXZlICdK
J3MKCk1hcmVrIEJlaMO6biAoNCk6CiAgc3RyaW5nLmg6IEFkZCBzdHJfaGFzX3Byb3Blcl9wcmVm
aXgoKQogIGRldmljZSBwcm9wZXJ0eTogQWRkIHtmd25vZGUvZGV2aWNlfV9nZXRfdHhfcDJwX2Ft
cGxpdHVkZSgpCiAgcGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29tcGh5OiBTdXBwb3J0
IGNoYW5naW5nIHR4IGFtcGxpdHVkZQogICAgZm9yIGV0aGVybmV0CiAgYXJtNjQ6IGR0czogYXJt
YWRhLTM3MjAtdHVycmlzLW1veDogQ2hhbmdlIGNvbXBoeSB0eCBhbXBsaXR1ZGUgZm9yCiAgICAy
NTAwYmFzZS14IG1vZGUKCiAuLi4vZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5k
dHMgICAgfCAgMTAgKysKIGRyaXZlcnMvYmFzZS9wcm9wZXJ0eS5jICAgICAgICAgICAgICAgICAg
ICAgICB8IDEzMCArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12
ZWJ1LWEzNzAwLWNvbXBoeS5jICB8IDEwOSArKysrKysrKysrKysrKy0KIGluY2x1ZGUvbGludXgv
cHJvcGVydHkuaCAgICAgICAgICAgICAgICAgICAgICB8ICAgNSArCiBpbmNsdWRlL2xpbnV4L3N0
cmluZy5oICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTggKysrCiA1IGZpbGVzIGNoYW5nZWQs
IDI3MSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgotLSAKMi4zNS4xCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
