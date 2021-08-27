Return-Path: <SRS0=0dgd=NS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 135A4C43216
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 09:29:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D992160F39
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 09:29:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D992160F39
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TE82jLxX5HoQIriCVgJnw/FEOtUTolx3ko3NkLGn548=; b=CMQBoX2ujUmez+
	mR40A3F/QM8iFLaliTAdKwOmmbNMG75kBHivMqUYxbJ1zekC/jrrVLNNJK/xyA5xN5fD6vxd6HvtE
	J815gR67C23fGnJTW9zIzad2iQCE/d9gHF7/O0egyD3PWhy7D3IuhD5MQh8o131aNo0dj1V3ES6Rl
	aAnakc7cS8QpOdqf4XT46BNo9yAdjjTXllLKCmzFR5FWVb+PrrJKnMjoM3owevdUrSndVqZGTqKWX
	lMWHhoKPkxlMvccyi8qG8MPN9Z5AaJqWWyXN+RbiIUFwV1QXoLEclSjTC0LPhAAflqjyw2s7+ScZ4
	COlL+WKMGZUerGWbKTNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJYBM-00C37A-Cu; Fri, 27 Aug 2021 09:29:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJYBJ-00C36B-J4
 for linux-phy@lists.infradead.org; Fri, 27 Aug 2021 09:29:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3136C60FE6;
 Fri, 27 Aug 2021 09:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630056589;
 bh=y1f6bItLirXqw1swbUnhtpawMcPJvbXWUgpNPsGtkFI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n3p1dniMaFip1Hq5/1tL2YB326i/3+hh1Cb61nF2XKwehJnMQyVLTwIl09/4B7N+k
 o9U/U9yg1D0WDRYhZedRGSMJsZQXn4Etj8QPTaEGkV4NYp0x/dQlcDYT1QEK6NHJof
 w63Pj9syM7Ux2BLAs7jyDi/Qua6aieU7T5LPWlq5dxMkM8JGUZ6QPhxUyEGHNf3sHr
 Iura9lpImApXYnOh2TNtqldiz0bzYglnvHxlwUa6UVTTBQB+si47sweWadYxhH4vRk
 QPxtdm7kRP/ao3uEigo1htFVYv1cjQnnqzoD0vjG4QQXXzOQL98hOrnp/3MJGyn7nS
 //Xr/cJbeFAoA==
Received: by pali.im (Postfix)
 id 66DF1FB1; Fri, 27 Aug 2021 11:29:47 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Russell King <rmk+kernel@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] phy: marvell: phy-mvebu-a3700-comphy: Remove unsupported
 modes
Date: Fri, 27 Aug 2021 11:27:53 +0200
Message-Id: <20210827092753.2359-3-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210827092753.2359-1-pali@kernel.org>
References: <20210827092753.2359-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210827_022949_681181_894FCFF2 
X-CRM114-Status: UNSURE (   7.63  )
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

QXJtYWRhIDM3MDAgZG9lcyBub3Qgc3VwcG9ydCBSWEFVSSwgWEZJIGFuZCBuZWl0aGVyIFNGSS4g
UmVtb3ZlIHVudXNlZAptYWNyb3MgZm9yIHRoZXNlIHVuc3VwcG9ydGVkIG1vZGVzLgoKU2lnbmVk
LW9mZi1ieTogUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4KRml4ZXM6IDk2OTUzNzVhM2Y0
YSAoInBoeTogYWRkIEEzNzAwIENPTVBIWSBzdXBwb3J0IikKLS0tCiBkcml2ZXJzL3BoeS9tYXJ2
ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21waHkuYyB8IDYgLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVi
dS1hMzcwMC1jb21waHkuYyBiL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNv
bXBoeS5jCmluZGV4IGNjNTM0YTVjNGIzYi4uNjc4MTQ4OGNmYzU4IDEwMDY0NAotLS0gYS9kcml2
ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21waHkuYworKysgYi9kcml2ZXJzL3Bo
eS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21waHkuYwpAQCAtMzMsMTggKzMzLDEyIEBACiAj
ZGVmaW5lIENPTVBIWV9GV19NT0RFX1VTQjNICQkJMHg0CiAjZGVmaW5lIENPTVBIWV9GV19NT0RF
X1VTQjNECQkJMHg1CiAjZGVmaW5lIENPTVBIWV9GV19NT0RFX1BDSUUJCQkweDYKLSNkZWZpbmUg
Q09NUEhZX0ZXX01PREVfUlhBVUkJCQkweDcKLSNkZWZpbmUgQ09NUEhZX0ZXX01PREVfWEZJCQkJ
MHg4Ci0jZGVmaW5lIENPTVBIWV9GV19NT0RFX1NGSQkJCTB4OQogI2RlZmluZSBDT01QSFlfRldf
TU9ERV9VU0IzCQkJMHhhCiAKICNkZWZpbmUgQ09NUEhZX0ZXX1NQRUVEXzFfMjVHCQkJMCAvKiBT
R01JSSAxRyAqLwogI2RlZmluZSBDT01QSFlfRldfU1BFRURfMl81RwkJCTEKICNkZWZpbmUgQ09N
UEhZX0ZXX1NQRUVEXzNfMTI1RwkJCTIgLyogMjUwMEJBU0UtWCAqLwogI2RlZmluZSBDT01QSFlf
RldfU1BFRURfNUcJCQkzCi0jZGVmaW5lIENPTVBIWV9GV19TUEVFRF81XzE1NjI1RwkJNCAvKiBY
RkkgNUcgKi8KLSNkZWZpbmUgQ09NUEhZX0ZXX1NQRUVEXzZHCQkJNQotI2RlZmluZSBDT01QSFlf
RldfU1BFRURfMTBfMzEyNUcJCTYgLyogWEZJIDEwRyAqLwogI2RlZmluZSBDT01QSFlfRldfU1BF
RURfTUFYCQkJMHgzRgogCiAjZGVmaW5lIENPTVBIWV9GV19NT0RFKG1vZGUpCQkJKChtb2RlKSA8
PCAxMikKLS0gCjIuMjAuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
