Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 527EFC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 12:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2yQ2yo8oIGktcbwjjrUOQeT1lAnSq0QRmMcaqvPYbWI=; b=2b2xvVPAI0UpiS
	M+5c95juqr6wfhhnZDZ6yJfSQsONXpVggsbA/N5krIPfkAK3SmRo1vTDCF0c7bvEckl2A52/CHbxV
	4gHzL7dcnByHa30Sqjzg3glEvL0IzZubZrZJJfy3PLRcSfWSgvs/i9egXAfzLsboXsCLx8OQ0msf0
	bsA6kOl2HDwv4zf4uxuag5vmflS95HrDp+6B3zfmSqePdX/cO5+9KGIHRefh6myyPmMVOmlNBE7sE
	2GTCKk9I0fd0pTCZjoMlRn3ZeJc4kHhZLg1e34739AWpfkm9BJ5i7jt6ERsNugOVf2Bop333qxmm4
	gndPtn4iG+ECIbgf8HGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJA-0000000CC56-3b8S;
	Tue, 16 Apr 2024 12:53:08 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJ8-0000000CC3I-0Nhi
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:53:07 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id D802D20007;
	Tue, 16 Apr 2024 12:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1713271984;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eSCKVt3PzenyfZAdSt+Uuc2sxOPAq2JS3OulPvLdYig=;
	b=PnuH0l0lvmrlNI/TjKBPEceAakQIcg0D6nTXGLXNxcGQuomiZOgahc2w4WGZgh9cmqZe+p
	5x4UiNap8ydEjSPxH9upz/z131/oOvV0EACCmwXeS5EV8CeYFtpHXI4tFYOD+SalMWYnIo
	hbO4BoowDHIYbb0DNNX3Pt0WvuySI5NdsOT6xABNYzj4+OEDLUiQLJbMvJE3liEcC40thk
	F8/z9UxoaKHCjs6PGx5FR3k6D4sWFdtP9urojSMl+Hc9dOQYRcF/1uai3BNEbKLpuwdHk1
	gIb5Ovj4fEx1Iaj25SJW9774f8ewuEoCGtDk0vX3w6TUIaSdqvKrSGjUHUSgPQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Tue, 16 Apr 2024 14:52:32 +0200
Subject: [PATCH 3/8] phy: ti: phy-j721e-wiz: add resume support
MIME-Version: 1.0
Message-Id: <20240412-j7200-phy-s2r-v1-3-f15815833974@bootlin.com>
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
X-CRM114-CacheID: sfid-20240416_055306_284712_B8CA439B 
X-CRM114-Status: GOOD (  11.10  )
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

QWRkIHJlc3VtZSBzdXBwb3J0LgpJdCBoYXMgYmVlbiB0ZXN0ZWQgb24gSjcyMDAgU1IxLjAgYW5k
IFNSMi4wLgoKQ28tZGV2ZWxvcGVkLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3Rs
aW4uY29tPgpTaWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4u
Y29tPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgUmljaGFyZCA8dGhvbWFzLnJpY2hhcmRAYm9vdGxp
bi5jb20+Ci0tLQogZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIHwgMjkgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LWo3MjFlLXdpei5jIGIvZHJpdmVycy9waHkv
dGkvcGh5LWo3MjFlLXdpei5jCmluZGV4IGJhNjcwMTA5ZTdhZC4uN2Y2MjZjNTk3MDI1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL3BoeS90aS9waHktajcyMWUtd2l6LmMKKysrIGIvZHJpdmVycy9waHkv
dGkvcGh5LWo3MjFlLXdpei5jCkBAIC0xNjU5LDEyICsxNjU5LDQxIEBAIHN0YXRpYyB2b2lkIHdp
el9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlwbV9ydW50aW1lX2Rpc2Fi
bGUoZGV2KTsKIH0KIAorc3RhdGljIGludCB3aXpfcmVzdW1lX25vaXJxKHN0cnVjdCBkZXZpY2Ug
KmRldikKK3sKKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBkZXYtPm9mX25vZGU7CisJc3Ry
dWN0IHdpeiAqd2l6ID0gZGV2X2dldF9kcnZkYXRhKGRldik7CisJaW50IHJldDsKKworCS8qIEVu
YWJsZSBzdXBwbGVtZW50YWwgQ29udHJvbCBvdmVycmlkZSBpZiBhdmFpbGFibGUgKi8KKwlpZiAo
d2l6LT5zdXBfbGVnYWN5X2Nsa19vdmVycmlkZSkKKwkJcmVnbWFwX2ZpZWxkX3dyaXRlKHdpei0+
c3VwX2xlZ2FjeV9jbGtfb3ZlcnJpZGUsIDEpOworCisJd2l6X2Nsb2NrX2luaXQod2l6KTsKKwor
CXJldCA9IHdpel9pbml0KHdpeik7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgIldJWiBp
bml0aWFsaXphdGlvbiBmYWlsZWRcbiIpOworCQlnb3RvIGVycl93aXpfaW5pdDsKKwl9CisKKwly
ZXR1cm4gMDsKKworZXJyX3dpel9pbml0OgorCXdpel9jbG9ja19jbGVhbnVwKHdpeiwgbm9kZSk7
CisKKwlyZXR1cm4gcmV0OworfQorCitzdGF0aWMgREVGSU5FX05PSVJRX0RFVl9QTV9PUFMod2l6
X3BtX29wcywgTlVMTCwgd2l6X3Jlc3VtZV9ub2lycSk7CisKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZv
cm1fZHJpdmVyIHdpel9kcml2ZXIgPSB7CiAJLnByb2JlCQk9IHdpel9wcm9iZSwKIAkucmVtb3Zl
X25ldwk9IHdpel9yZW1vdmUsCiAJLmRyaXZlcgkJPSB7CiAJCS5uYW1lCT0gIndpeiIsCiAJCS5v
Zl9tYXRjaF90YWJsZSA9IHdpel9pZF90YWJsZSwKKwkJLnBtCT0gcG1fc2xlZXBfcHRyKCZ3aXpf
cG1fb3BzKSwKIAl9LAogfTsKIG1vZHVsZV9wbGF0Zm9ybV9kcml2ZXIod2l6X2RyaXZlcik7Cgot
LSAKMi4zOS4yCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
