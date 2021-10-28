Return-Path: <SRS0=1k0B=PQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C503C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:42:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C31A61040
	for <linux-phy@archiver.kernel.org>; Thu, 28 Oct 2021 18:42:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5C31A61040
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVdBsuKYjJUB+uIpQQaqSDdrMI3+UnkaWuE36lUbm30=; b=KNOF2Dwy4Qyy2D
	DRpeF4waXldfW+VxH4V7M2i4cfWIs/0e4zH2TyiaWN+BPGgNHlenA/P9gjQF+dbh8dUx+Mr4S0pIJ
	HDvc/DOqIH0ha7nl22DMXNcccWpVvPlFHJIKhpT4tpMTMm2D86HgLMRsMgsZxUchPbE6myNFUDbMy
	Njjbdl90wmt5QJTDgk7ey5J/1S37khmTueUMXRJq9uPv9inIPzcjKqkXSsh2G2C7JhJmhWGJw5yOS
	1ZM6cuxX7UHBrRH62q/eR7JNvTJ1EaDQ2jFEAarsrOwIMudwtiWtflhVe4rawe5ukBOQqOinpR7XS
	AxdYlUKDX8hSLcqDgW7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgAMc-008v4L-M8; Thu, 28 Oct 2021 18:42:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgAMW-008v27-Qq
 for linux-phy@lists.infradead.org; Thu, 28 Oct 2021 18:42:56 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 47909610FC;
 Thu, 28 Oct 2021 18:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635446572;
 bh=COKgY/FCdCGJZ7bNKPO2We5dlVrf/wiFVEG6xmpFMmA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=awPNAcUaJ54M5DItgcRwT11ORdR3XJjIKadEfqGsqFu8mbYvX4mdqmZ0WFeC+PKbB
 x1MsFqrHThm5Ysw5mj2bEp946e+nbpiUZBcPezEKz/GfJjEHq5TuV4xUOz05B6k9Ro
 G8HHon4AiInQxC3jB3Y4z2OxPOzYwbjB2x0Cxix+dPLsza2TcnkGZKI21m93F9K4bQ
 khEXCHhqGjfNmdSXRPLsB8wvnpcj8fuJ1q1uVahvowKrEhaA0XDsAXX6olJiDV/DiS
 n2ouTiqAi/0NOS8fCBzp0oLymBuCN7/zFugaXU077hE86f+GQ4A9V/W0uibXrEk0mU
 YAPE+jug1SZ9Q==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, pali@kernel.org,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy 3/6] arm64: dts: marvell: armada-37xx: Add xtal clock to
 comphy node
Date: Thu, 28 Oct 2021 20:42:39 +0200
Message-Id: <20211028184242.22105-4-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211028184242.22105-1-kabel@kernel.org>
References: <20211028184242.22105-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_114252_948653_36FD491D 
X-CRM114-Status: UNSURE (   7.95  )
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
