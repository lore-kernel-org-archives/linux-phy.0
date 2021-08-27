Return-Path: <SRS0=0dgd=NS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E961BC432BE
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 09:29:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B505760FD8
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 09:29:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B505760FD8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+ba93Q0dUnHvJOjMIrfAMaroOrYZ5/KBxVgk95Zlgo=; b=fwDmzNj9yVpiYU
	6D4N78P5zFpOfBtcGtdtsZvulTlTvkA83SmMjQJNmgx2NfA4iLC/U/iGqSZwfNCZoPn+CtitRzyqb
	DudqadfJFVlizK7DcglWwKlY5bm0j0hP9MpzoG9FepNWrKoSEyCJNgvBXsElhG5cNBtgvJjS1ae8Q
	SJ0fiBehYEWt4K1a8AD9JOqBf3jXoCmMSjuQMyZXPQCsA9A4FVz5EADkaK6naz/ay+UQGxeRX+teE
	LzzRe+HYX6KPeYF0cTZdAIPAYGioCMfFsYD+n9s+csExYU0PwiuoIN4WoW5PcArtrRS3UmpZwc6cD
	CCaJ2BdgfISl4xNbrsfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJYBM-00C374-9R; Fri, 27 Aug 2021 09:29:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJYBI-00C35e-GV
 for linux-phy@lists.infradead.org; Fri, 27 Aug 2021 09:29:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1BB6361004;
 Fri, 27 Aug 2021 09:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630056588;
 bh=2gt+uFB3UMe9u6rWymx6Cl+iij8ULw+bccv3Rqok4u8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XgaOIhcnUufHL/pFtc9eTSDVEIeuXgbVBSxDrmhtmnVeeajBKbCHuvBlppjVLQker
 o9lZzA73Rg+WsM3i3X3hCPxmUTDy+xvDxasSGiEiQf8QsKi5m4ddNY/LtkxiCsuZ8u
 j25/WWyeXyPelNNAnbG9CunmJCKlTGhV8Ph1W2f1tWiH3Uw+k4dhkw/mWlHkTKlOD6
 iuzbO7edlb+DZphO/Dd59eBVaUqGGjjw1f/7S6CKSzQC2+zWJhZmeZdK0B8IKYQb8M
 1mbs2zoORTV2PPS4vUg2GNk15gzCk805Bzq3M2pOMa5E8RpMKRzEXjCS1pGbqFi+Pa
 hWrVR+qhUyfrQ==
Received: by pali.im (Postfix)
 id 4EA16F3C; Fri, 27 Aug 2021 11:29:46 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Russell King <rmk+kernel@armlinux.org.uk>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] phy: marvell: phy-mvebu-a3700-comphy: Rename HS-SGMMI to
 2500Base-X
Date: Fri, 27 Aug 2021 11:27:52 +0200
Message-Id: <20210827092753.2359-2-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210827092753.2359-1-pali@kernel.org>
References: <20210827092753.2359-1-pali@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210827_022948_611745_7BBAC96A 
X-CRM114-Status: GOOD (  11.55  )
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

Q29tcGh5IHBoeSBtb2RlIDB4MyBpcyBpbmNvcnJlY3RseSBuYW1lZC4gSXQgaXMgbm90IFNHTUlJ
IGJ1dCByYXRoZXIKMjUwMEJhc2UtWCBtb2RlIHdoaWNoIHJ1bnMgYXQgMy4xMjUgR2JwcyBzcGVl
ZC4KClJlbmFtZSBtYWNybyBuYW1lcyBhbmQgY29tbWVudHMgdG8gMjUwMEJhc2UtWC4KClNpZ25l
ZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+CkZpeGVzOiA5Njk1Mzc1YTNm
NGEgKCJwaHk6IGFkZCBBMzcwMCBDT01QSFkgc3VwcG9ydCIpCi0tLQogZHJpdmVycy9waHkvbWFy
dmVsbC9waHktbXZlYnUtYTM3MDAtY29tcGh5LmMgfCAxMCArKysrKy0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5jIGIvZHJpdmVycy9waHkvbWFy
dmVsbC9waHktbXZlYnUtYTM3MDAtY29tcGh5LmMKaW5kZXggODEwZjI1YTQ3NjMyLi5jYzUzNGE1
YzRiM2IgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNv
bXBoeS5jCisrKyBiL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5j
CkBAIC0yOSw3ICsyOSw3IEBACiAKICNkZWZpbmUgQ09NUEhZX0ZXX01PREVfU0FUQQkJCTB4MQog
I2RlZmluZSBDT01QSFlfRldfTU9ERV9TR01JSQkJCTB4MgotI2RlZmluZSBDT01QSFlfRldfTU9E
RV9IU19TR01JSQkJCTB4MworI2RlZmluZSBDT01QSFlfRldfTU9ERV8yNTAwQkFTRVgJCTB4Mwog
I2RlZmluZSBDT01QSFlfRldfTU9ERV9VU0IzSAkJCTB4NAogI2RlZmluZSBDT01QSFlfRldfTU9E
RV9VU0IzRAkJCTB4NQogI2RlZmluZSBDT01QSFlfRldfTU9ERV9QQ0lFCQkJMHg2CkBAIC00MCw3
ICs0MCw3IEBACiAKICNkZWZpbmUgQ09NUEhZX0ZXX1NQRUVEXzFfMjVHCQkJMCAvKiBTR01JSSAx
RyAqLwogI2RlZmluZSBDT01QSFlfRldfU1BFRURfMl81RwkJCTEKLSNkZWZpbmUgQ09NUEhZX0ZX
X1NQRUVEXzNfMTI1RwkJCTIgLyogU0dNSUkgMi41RyAqLworI2RlZmluZSBDT01QSFlfRldfU1BF
RURfM18xMjVHCQkJMiAvKiAyNTAwQkFTRS1YICovCiAjZGVmaW5lIENPTVBIWV9GV19TUEVFRF81
RwkJCTMKICNkZWZpbmUgQ09NUEhZX0ZXX1NQRUVEXzVfMTU2MjVHCQk0IC8qIFhGSSA1RyAqLwog
I2RlZmluZSBDT01QSFlfRldfU1BFRURfNkcJCQk1CkBAIC04NCwxNCArODQsMTQgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBtdmVidV9hMzcwMF9jb21waHlfY29uZiBtdmVidV9hMzcwMF9jb21waHlf
bW9kZXNbXSA9IHsKIAlNVkVCVV9BMzcwMF9DT01QSFlfQ09ORl9FVEgoMCwgUEhZX0lOVEVSRkFD
RV9NT0RFX1NHTUlJLCAxLAogCQkJCSAgICBDT01QSFlfRldfTU9ERV9TR01JSSksCiAJTVZFQlVf
QTM3MDBfQ09NUEhZX0NPTkZfRVRIKDAsIFBIWV9JTlRFUkZBQ0VfTU9ERV8yNTAwQkFTRVgsIDEs
Ci0JCQkJICAgIENPTVBIWV9GV19NT0RFX0hTX1NHTUlJKSwKKwkJCQkgICAgQ09NUEhZX0ZXX01P
REVfMjUwMEJBU0VYKSwKIAkvKiBsYW5lIDEgKi8KIAlNVkVCVV9BMzcwMF9DT01QSFlfQ09ORl9H
RU4oMSwgUEhZX01PREVfUENJRSwgMCwKIAkJCQkgICAgQ09NUEhZX0ZXX01PREVfUENJRSksCiAJ
TVZFQlVfQTM3MDBfQ09NUEhZX0NPTkZfRVRIKDEsIFBIWV9JTlRFUkZBQ0VfTU9ERV9TR01JSSwg
MCwKIAkJCQkgICAgQ09NUEhZX0ZXX01PREVfU0dNSUkpLAogCU1WRUJVX0EzNzAwX0NPTVBIWV9D
T05GX0VUSCgxLCBQSFlfSU5URVJGQUNFX01PREVfMjUwMEJBU0VYLCAwLAotCQkJCSAgICBDT01Q
SFlfRldfTU9ERV9IU19TR01JSSksCisJCQkJICAgIENPTVBIWV9GV19NT0RFXzI1MDBCQVNFWCks
CiAJLyogbGFuZSAyICovCiAJTVZFQlVfQTM3MDBfQ09NUEhZX0NPTkZfR0VOKDIsIFBIWV9NT0RF
X1NBVEEsIDAsCiAJCQkJICAgIENPTVBIWV9GV19NT0RFX1NBVEEpLApAQCAtMjA1LDcgKzIwNSw3
IEBAIHN0YXRpYyBpbnQgbXZlYnVfYTM3MDBfY29tcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBo
eSkKIAkJCQkJCSBDT01QSFlfRldfU1BFRURfMV8yNUcpOwogCQkJYnJlYWs7CiAJCWNhc2UgUEhZ
X0lOVEVSRkFDRV9NT0RFXzI1MDBCQVNFWDoKLQkJCWRldl9kYmcobGFuZS0+ZGV2LCAic2V0IGxh
bmUgJWQgdG8gSFMgU0dNSUkgbW9kZVxuIiwKKwkJCWRldl9kYmcobGFuZS0+ZGV2LCAic2V0IGxh
bmUgJWQgdG8gMjUwMEJBU0VYIG1vZGVcbiIsCiAJCQkJbGFuZS0+aWQpOwogCQkJZndfcGFyYW0g
PSBDT01QSFlfRldfTkVUKGZ3X21vZGUsIGxhbmUtPnBvcnQsCiAJCQkJCQkgQ09NUEhZX0ZXX1NQ
RUVEXzNfMTI1Ryk7Ci0tIAoyLjIwLjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
