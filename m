Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9914CCD199
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 05:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pwqaSN6WFoCxUr4Dyq5bA9Q8OcAXSkDtq+WoWZYfOgU=; b=Xq3vifsbLJvKUf
	lKZPxfB3LU1nCkCxVTiIO+onPzcNrC54phGhFA+gwv001MmjdgJZiHYJ/Tcs0B3C9JU8iGX1RkPWQ
	zBif1wlK8akSYzdyYKcWxl1Vl5B6PzcsR5SdWInnsFY57uS+N0hy/HFQuZY9xrSq4KrPt06B67tU4
	tX5G0IW5gWstvDvMAw5vpOXVc1xnZl5XQOHgMqR9lAt0LZcwkCktzsxBzBke8B0GNXDGHEm5s1UTy
	8NagxFLgHy2BcdtsnKkIgX/TQdLdwSIMIzcuS8SoEWYpCMrY7pnoxt3wR5x3AmBUTUhZnOWNDuZiV
	smml0I/jwwagNrl5NZwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9dIc-00000006eP0-1gpm;
	Fri, 17 Oct 2025 05:46:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9dIZ-00000006eO9-2tmQ
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 05:46:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3D118416D8;
	Fri, 17 Oct 2025 05:46:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CA9BC4CEE7;
	Fri, 17 Oct 2025 05:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760680003;
	bh=Cd8WJV+T0Qre6U0JnCFD9btzHPXjuOFvcMNsbRnbuXg=;
	h=From:To:Cc:Subject:Date:From;
	b=Vy53zA3intR7g8oMAxuhQNRY+p4RE8H9LVZIXfZfkUF1ICV+oZZgXWqxsOsDLJGCE
	 eQK9O0RrsMQNcxxO+Pq5e8XVGpTbYXCwKi8ZxXBOEHQgJrTnT/SmpEAWZtmsEn7n+a
	 v8lYqua2pATeu0pUnPi3y0/7uT75IKYADWfqZJtsFZDP3QfswERnL//Qs/GQ5EPjxQ
	 5Ai/t48CfmF826k/8FqhIo3XeWfStBDegiNMeWfIBDgrw/M6rO6YTDKi/6BtgJns3o
	 irM1LNNkdoGjKw6/gYeblsH1O+Hz+89L2o+/QEe72j2asF+RPJfMS5FzfT4MSbA1Zo
	 CaAZ5ZRiJcmSQ==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1v9dIa-000000001oW-3W25;
	Fri, 17 Oct 2025 07:46:45 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>,
	stable@vger.kernel.org,
	=?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Subject: [PATCH] phy: broadcom: bcm63xx-usbh: fix section mismatches
Date: Fri, 17 Oct 2025 07:45:37 +0200
Message-ID: <20251017054537.6884-1-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_224643_749865_4477C8CD 
X-CRM114-Status: GOOD (  12.11  )
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

UGxhdGZvcm0gZHJpdmVycyBjYW4gYmUgcHJvYmVkIGFmdGVyIHRoZWlyIGluaXQgc2VjdGlvbnMg
aGF2ZSBiZWVuCmRpc2NhcmRlZCAoZS5nLiBvbiBwcm9iZSBkZWZlcnJhbCBvciBtYW51YWwgcmVi
aW5kIHRocm91Z2ggc3lzZnMpIHNvIHRoZQpwcm9iZSBmdW5jdGlvbiBhbmQgbWF0Y2ggdGFibGUg
bXVzdCBub3QgbGl2ZSBpbiBpbml0LgoKRml4ZXM6IDc4M2Y2ZDNkY2YzNSAoInBoeTogYmNtNjN4
eC11c2JoOiBBZGQgQkNNNjN4eCBVU0JIIGRyaXZlciIpCkNjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnCSMgNS45CkNjOiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBKb2hhbiBIb3ZvbGQgPGpvaGFuQGtlcm5lbC5vcmc+Ci0tLQogZHJp
dmVycy9waHkvYnJvYWRjb20vcGh5LWJjbTYzeHgtdXNiaC5jIHwgNiArKystLS0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvYnJvYWRjb20vcGh5LWJjbTYzeHgtdXNiaC5jIGIvZHJpdmVycy9waHkvYnJvYWRj
b20vcGh5LWJjbTYzeHgtdXNiaC5jCmluZGV4IDY0NzY0NGRlMDQxYi4uMjlmZDY3OTFiYWU2IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtNjN4eC11c2JoLmMKKysrIGIv
ZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJjbTYzeHgtdXNiaC5jCkBAIC0zNzUsNyArMzc1LDcg
QEAgc3RhdGljIHN0cnVjdCBwaHkgKmJjbTYzeHhfdXNiaF9waHlfeGxhdGUoc3RydWN0IGRldmlj
ZSAqZGV2LAogCXJldHVybiBvZl9waHlfc2ltcGxlX3hsYXRlKGRldiwgYXJncyk7CiB9CiAKLXN0
YXRpYyBpbnQgX19pbml0IGJjbTYzeHhfdXNiaF9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKK3N0YXRpYyBpbnQgYmNtNjN4eF91c2JoX3BoeV9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7
CiAJc3RydWN0IGJjbTYzeHhfdXNiaF9waHkJKnVzYmg7CkBAIC00MzIsNyArNDMyLDcgQEAgc3Rh
dGljIGludCBfX2luaXQgYmNtNjN4eF91c2JoX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogCXJldHVybiAwOwogfQogCi1zdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rldmlj
ZV9pZCBiY202M3h4X3VzYmhfcGh5X2lkc1tdIF9faW5pdGNvbnN0ID0geworc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgYmNtNjN4eF91c2JoX3BoeV9pZHNbXSA9IHsKIAl7IC5jb21w
YXRpYmxlID0gImJyY20sYmNtNjMxOC11c2JoLXBoeSIsIC5kYXRhID0gJnVzYmhfYmNtNjMxOCB9
LAogCXsgLmNvbXBhdGlibGUgPSAiYnJjbSxiY202MzI4LXVzYmgtcGh5IiwgLmRhdGEgPSAmdXNi
aF9iY202MzI4IH0sCiAJeyAuY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzNTgtdXNiaC1waHkiLCAu
ZGF0YSA9ICZ1c2JoX2JjbTYzNTggfSwKQEAgLTQ0Myw3ICs0NDMsNyBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCBiY202M3h4X3VzYmhfcGh5X2lkc1tdIF9faW5pdGNvbnN0ID0g
ewogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGJjbTYzeHhfdXNiaF9waHlfaWRzKTsKIAot
c3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgYmNtNjN4eF91c2JoX3BoeV9kcml2ZXIgX19y
ZWZkYXRhID0geworc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgYmNtNjN4eF91c2JoX3Bo
eV9kcml2ZXIgPSB7CiAJLmRyaXZlcgk9IHsKIAkJLm5hbWUgPSAiYmNtNjN4eC11c2JoLXBoeSIs
CiAJCS5vZl9tYXRjaF90YWJsZSA9IGJjbTYzeHhfdXNiaF9waHlfaWRzLAotLSAKMi40OS4xCgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
