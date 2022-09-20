Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BA08ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 12:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sWFHid5IzipEmssUtYfGUuupRQjTlzqeo7yJwNaXaYg=; b=nnOgfDvLfL/Dbw
	FmLjRM8PaxD/1zHGnKxBBqM3C13ExQepQW1IudIuzAkQHBY3COSjrLGW13k67enVxJ66GkCVLh0vp
	7/aQD7PxQj4JLhpX4+wRT6U1ubsSPTtc00VOBb/CYhp/qu7+6P05zzKI/lmrkVXh1VKN0dTJauWMX
	qSNV0CkKc4dAc/kYWfyp55ZaFIqnTw+E8R9012pKcDAuvx6lNAVDsgf7fgZL7RXVLsbQP5+KAK/4O
	6lLiuzDcwUukz9f3+z49H9xaB5+Fc+efCsd6Dc19rRFyvMD7TcHb/44RRsq4jqs+8ugoNOhzQVMAy
	EOUJjAtA1rE4sTLVKpug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oac6o-003baf-I4; Tue, 20 Sep 2022 12:12:14 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oac6m-003bZA-63
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 12:12:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7D327B82007;
	Tue, 20 Sep 2022 12:12:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07C6FC433C1;
	Tue, 20 Sep 2022 12:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663675929;
	bh=jvuFGIULX8oXMR4ltvFXg4hxYJPD0wE9EXhLXqHl1cs=;
	h=From:To:Cc:Subject:Date:From;
	b=KW14w/s6JVBGAwySzV0uhC5Hvn7Tx4NKADW5+4wEhiQyc22LyRuKfWOnXh6z+/wus
	 YAmZtTLqQwxffoejMPq67n8n8TEkfOeEnEsHZRgHaYOy7kpfrwBlBFStx89x8qWoIz
	 yL4KJJUPRB0iOUTDg19x6fnAy1renU0cgcKN+nBnvaYBjSLbnDetTdD0of/G9c4fyZ
	 6SIGKS3qNUL3Wc2zp+hLQt6cjl0gdNa0PFzRNoLyvyHmj9jR4Zs/ZrzBEZTxn7YToE
	 Y+J6UJ6th3fKK+nU7gzlyXA1c80yxo/qyK00qZn5Pw38VNUupGO/AW/sbailk68z78
	 9IlJ/+RB+h4hw==
Received: by pali.im (Postfix)
	id 3ACDE97E; Tue, 20 Sep 2022 14:12:06 +0200 (CEST)
From: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: marvell: phy-mvebu-a3700-comphy: Reset COMPHY registers before USB 3.0 power on
Date: Tue, 20 Sep 2022 14:11:54 +0200
Message-Id: <20220920121154.30115-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_051212_384474_837639E2 
X-CRM114-Status: GOOD (  14.17  )
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

VHVycmlzIE1PWCBib2FyZCB3aXRoIG9sZGVyIEFSTSBUcnVzdGVkIEZpcm13YXJlIHZlcnNpb24g
djEuNSBpcyBub3QgYWJsZQp0byBkZXRlY3QgYW55IFVTQiAzLjAgZGV2aWNlIGNvbm5lY3RlZCB0
byBVU0ItQSBwb3J0IG9uIE1veC1BIG1vZHVsZSBhZnRlcgpjb21taXQgMGE2ZmM3MGQ3NmJkICgi
cGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29tcGh5OiBSZW1vdmUgYnJva2VuCnJlc2V0
IHN1cHBvcnQiKS4gT24gdGhlIG90aGVyIGhhbmQgVVNCIDIuMCBkZXZpY2VzIGNvbm5lY3RlZCB0
byB0aGUgc2FtZQpVU0ItQSBwb3J0IGFyZSB3b3JraW5nIGZpbmUuCgpJdCBsb29rcyBhcyBpZiB0
aGUgb2xkZXIgZmlybXdhcmUgY29uZmlndXJlcyBDT01QSFkgcmVnaXN0ZXJzIGZvciBVU0IgMy4w
CnNvbWVob3cgaW5jb21wYXRpYmx5IGZvciBrZXJuZWwgZHJpdmVyLiBFeHBlcmltZW50cyBzaG93
IHRoYXQgcmVzZXR0aW5nCkNPTVBIWSByZWdpc3RlcnMgdmlhIHNldHRpbmcgU0ZUX1JTVCBhdXRv
LWNsZWFyaW5nIGJpdCBpbiBDT01QSFlfU0ZUX1JFU0VUCnJlZ2lzdGVyIGZpeGVzIHRoaXMgaXNz
dWUuCgpSZXNldCB0aGUgQ09NUEhZIGluIG12ZWJ1X2EzNzAwX2NvbXBoeV91c2IzX3Bvd2VyX29u
KCkgZnVuY3Rpb24gYXMgYSBmaXJzdApzdGVwIGFmdGVyIHNlbGVjdGluZyBDT01QSFkgbGFuZSBh
bmQgVVNCIDMuMCBmdW5jdGlvbi4gV2l0aCB0aGlzIGNoYW5nZQpUdXJyaXMgTU9YIGJvYXJkIGNh
biBzdWNjZXNzZnVsbHkgZGV0ZWN0IFVTQiAzLjAgZGV2aWNlcyBhZ2Fpbi4KCkJlZm9yZSB0aGUg
YWJvdmUgbWVudGlvbmVkIGNvbW1pdCB0aGlzIHJlc2V0IHdhcyBpbXBsZW1lbnRlZCBpbiBQSFkg
cmVzZXQKbWV0aG9kLCBzbyB0aGlzIGlzIHRoZSByZWFzb24gd2h5IHRoZXJlIHdhcyBubyBpc3N1
ZSB3aXRoIG9sZGVyIGZpcm13YXJlCnZlcnNpb24gdGhlbi4KCkZpeGVzOiAwYTZmYzcwZDc2YmQg
KCJwaHk6IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21waHk6IFJlbW92ZSBicm9rZW4gcmVz
ZXQgc3VwcG9ydCIpClJlcG9ydGVkLWJ5OiBNYXJlayBCZWjDum4gPGthYmVsQGtlcm5lbC5vcmc+
ClNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Ci0tLQpTaGluaWNo
aXJvLCBjb3VsZCB5b3UgcGxlYXNlIGNoZWNrIHRoYXQgYWxsIFVTQiBmdW5jdGlvbmFsaXR5IHN0
aWxsCndvcmtzIGNvcnJlY3RseSBvbiB5b3VyIGJvYXJkPwotLS0KIGRyaXZlcnMvcGh5L21hcnZl
bGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1h
MzcwMC1jb21waHkuYyBiL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBo
eS5jCmluZGV4IDY3NzEyYzc3ZDgwNi4uZDY0MWIzNDVhZmEzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21waHkuYworKysgYi9kcml2ZXJzL3BoeS9t
YXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21waHkuYwpAQCAtODI2LDYgKzgyNiw5IEBAIG12ZWJ1
X2EzNzAwX2NvbXBoeV91c2IzX3Bvd2VyX29uKHN0cnVjdCBtdmVidV9hMzcwMF9jb21waHlfbGFu
ZSAqbGFuZSkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJLyogQ09NUEhZIHJlZ2lzdGVy
IHJlc2V0IChjbGVhcmVkIGF1dG9tYXRpY2FsbHkpICovCisJY29tcGh5X2xhbmVfcmVnX3NldChs
YW5lLCBDT01QSFlfU0ZUX1JFU0VULCBTRlRfUlNULCBTRlRfUlNUKTsKKwogCS8qCiAJICogMC4g
U2V0IFBIWSBPVEcgQ29udHJvbCgweDVkMDM0KSwgYml0IDQsIFBvd2VyIHVwIE9URyBtb2R1bGUg
VGhlCiAJICogcmVnaXN0ZXIgYmVsb25nIHRvIFVUTUkgbW9kdWxlLCBzbyBpdCBpcyBzZXQgaW4g
VVRNSSBwaHkgZHJpdmVyLgotLSAKMi4yMC4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
