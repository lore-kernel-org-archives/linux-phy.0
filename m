Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2256CD4F3E
	for <linux-phy@archiver.kernel.org>; Sun, 16 Nov 2025 13:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4zU3fE5j+7/VtHMniH4d7+Qg5shAeV8p1jC9ekSJ7Y=; b=T/tipouB+q4SVQ
	4RL5xJTj3G5fiMZSk3C5v+838jZvhC80xYDB4vKWS7MeeMnsUnYc/zr3IdNVOtQQ35qlTz3wUgSjP
	YfAm3+4twfdmI7tw0JZ/d/GSj/EdnpCeu3htRsKV7foF3iP2XwHQqStFrjqEl3PdA4BjTuq4wuQll
	Gkk6AdtiAy+P9WQZWIq2d4Qrv6ZKrFCLeV0nZ9m7sM6IJhwNxlmYLP5yJ11T8Vg7KCUrjxAaDcwRv
	pqqjF38ZkVS16PbbHZiU+tDQlkQwtJS9io6hbTZcXSKtW4yVRpUC8IM7jw/YnHoQJLhjJtMqfzcBE
	6WP0WJNU5AsnkSQBrhew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKcku-0000000Eg7O-2KGi;
	Sun, 16 Nov 2025 13:25:24 +0000
Received: from s2.avantea.pl ([46.242.128.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKckq-0000000Eg5f-3703;
	Sun, 16 Nov 2025 13:25:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=szczodrzynski.pl; s=x; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BPO9NrD7t7ozHNmv9SwKBa5YjnO0HgIRT0temEkfh70=; b=oqYIW28MTYchaus5P4hPdqBMcw
	8w9RZoiGHzBso3Fy8hSBWffJ6uTQq8OC61xOZXDkdr8db5Z3qY3ZKZVVjkv9hyHc0lTpmfM9zR3I/
	dD+Lx1poqOVYaSfouhdkmSymdGihzeTgYPajNIlem8qvtBZ7J5FN9nL1B6p1d7E5tUPxF2kUoucox
	U9vjnQYVSGknlAKuGjUMHnlw0e4khAKvVLjhJKBDojgl3mmMQgVbTajBVPmfUeAmSt9gMnNGH0dxH
	apBQeVCOQbM2ByyMp6Q5t2vD0DS/M8OXoZFAnZ+AfLCtD9LJt2MQSnh3O1rbQecCAzl03U+pvtNjO
	lPlC6zwA==;
Received: from [62.171.184.96] (helo=buildhost.contaboserver.net)
	by s2.avantea.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <kuba@szczodrzynski.pl>)
	id 1vKckk-0000000FWTF-2WDU;
	Sun, 16 Nov 2025 14:25:14 +0100
From: =?UTF-8?q?Kuba=20Szczodrzy=C5=84ski?= <kuba@szczodrzynski.pl>
To: Maxime Ripard <mripard@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	parthiban@linumiz.com,
	paulk@sys-base.io
Subject: [PATCH v2 5/6] riscv: dts: allwinner: d1s-t113: Add D-PHY to TCON LCD0
Date: Sun, 16 Nov 2025 14:25:02 +0100
Message-Id: <20251116132503.441015-1-kuba@szczodrzynski.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250221161751.1278049-1-kuba@szczodrzynski.pl>
References: <20250221161751.1278049-1-kuba@szczodrzynski.pl>
MIME-Version: 1.0
X-Authenticated-Id: kuba@szczodrzynski.pl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_052521_005582_277C9A35 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
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

VGhlIHN1bjRpIFRDT04gbmVlZHMgYSByZWZlcmVuY2UgdG8gdGhlIEQtUEhZIGluIG9yZGVyIHRv
IHN1cHBvcnQgTFZEUwpvbiBBbGx3aW5uZXIgRDFzL1QxMTMuCgpBZGQgcGh5cyBhbmQgcGh5LW5h
bWVzIHRvIHN1bnhpLWQxcy10MTEzIGNvbW1vbiBkZXZpY2UgdHJlZS4KClNpZ25lZC1vZmYtYnk6
IEt1YmEgU3pjem9kcnp5xYRza2kgPGt1YmFAc3pjem9kcnp5bnNraS5wbD4KLS0tCiBhcmNoL3Jp
c2N2L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW54aS1kMXMtdDExMy5kdHNpIHwgMiArKwogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3YvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bnhpLWQxcy10MTEzLmR0c2kgYi9hcmNoL3Jpc2N2L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW54aS1kMXMtdDExMy5kdHNpCmluZGV4IDYzZTI1MmI0NC4uNzhhYTYxNjA3IDEw
MDY0NAotLS0gYS9hcmNoL3Jpc2N2L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW54aS1kMXMtdDExMy5k
dHNpCisrKyBiL2FyY2gvcmlzY3YvYm9vdC9kdHMvYWxsd2lubmVyL3N1bnhpLWQxcy10MTEzLmR0
c2kKQEAgLTg3Niw2ICs4NzYsOCBAQCB0Y29uX2xjZDA6IGxjZC1jb250cm9sbGVyQDU0NjEwMDAg
ewogCQkJcmVzZXRzID0gPCZjY3UgUlNUX0JVU19UQ09OX0xDRDA+LAogCQkJCSA8JmNjdSBSU1Rf
QlVTX0xWRFMwPjsKIAkJCXJlc2V0LW5hbWVzID0gImxjZCIsICJsdmRzIjsKKwkJCXBoeXMgPSA8
JmRwaHk+OworCQkJcGh5LW5hbWVzID0gImNvbWJvLXBoeSI7CiAJCQkjY2xvY2stY2VsbHMgPSA8
MD47CiAKIAkJCXBvcnRzIHsKLS0gCjIuMjUuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
