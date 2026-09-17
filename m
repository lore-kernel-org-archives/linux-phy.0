Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 695F6C982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 21:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pkZit/CAqcdijmOdxk6/8CzbNUOmEmjtPnWEEmZUjkU=; b=FTPI3oKT+4VUD9
	ttrm+70O6dtP/Kz1eW1CR1DbswGSi40HEzb/QTWlxroLc26sFJTy4al1VuLySfVjnFsR/azZLHT0t
	S2J9iHyS/u0xGV3QwgPN9YNCuv4fk0RSnCQM4dRMIvFrdKKpHDdXIybehCvwY2RJzWB8w9PFPXzCp
	npy0LeLkbK60DRsoFWosAuFEdUSDBM30PENTXwDrZF87l1lnie1tmRdBpe55Yj+AeH96N0TqSXZ4M
	Eq3q0fnsYGbTLfc1cGHGB2Dl9ALPAEY1aCMxsHm2YpZy3ybnPDI7pVNILb6SiThFqwb3IYaApyyw+
	dNIY9NytNrgmsiImW1AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7JPn-0000000CXWQ-4AI5;
	Thu, 17 Sep 2026 21:13:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7JPm-0000000CXWF-3Sph
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 21:13:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1F010601EF;
	Thu, 17 Sep 2026 21:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C81A31F00893;
	Thu, 17 Sep 2026 21:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789679585;
	bh=IysZGj9mvs6CQv7lZ09Up1KR0PwOX6bfDHWl8P/2Jvk=;
	h=From:To:Cc:Subject:Date;
	b=mmMzq+IugAXiI9SHOJDRvwMsw3OuV9e1h4IGUKwGCbcUvj7Sy/jn9kBmRHLEhTR3F
	 c/x02B+uRdv9SZdqhMZEZ6s350HUDSvw9DV+2E+h7HExtIAhDbWyIC0JhFtuGvqLRv
	 E8fDgeINWKVIJbesQxuc651UZRkRYv0t3o21ESXc7uyzMMivfs7j5Z69GHuRl5OIhV
	 V2Z7HN5apM0PbgV7JlCc1UBFINJvbPyHXqBzMBhJlxDlG63xwCQfEkYkbIGRUPeIxP
	 pzKoJRQC6jgr9isLG+d8K8THcTLZA1rpX6hnOQ5ywDCo4A9C2joouDFN+DgEi8RPTt
	 zKAdUyHv7BuzA==
From: Kees Cook <kees@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kees Cook <kees@kernel.org>,
	Kees Cook <kees+treewide@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Jinjie Ruan <ruanjinjie@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Charles Han <hanchunchao@inspur.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: [PATCH] phy: realtek: usb: Remove const from phy_cfg allocation type
Date: Thu, 17 Sep 2026 14:13:04 -0700
Message-Id: <20260917211303.i.538-kees@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2685; i=kees@kernel.org; h=from:subject:message-id; bh=dAqZ8oM1ediuouK8ipj2w379RAQqiQUmISyB1GxVvm4=; b=owGbwMvMwCVmps19z/KJym7G02pJDFlrwh/kCr/Nunbz5+cQ9w1bzG5m7VB98FnnNS+f0X2rK 7cnaNcadpSyMIhxMciKKbIE2bnHuXi8bQ93n6sIM4eVCWQIAxenAEzEdgYjw/tTTTlCPK9EC5tE EyvOHrvfZfC86pLpxA+WC25PUZzfEsrI8CQxbOUKT8sHdxPmzNd79cNLUCXg+ish+YDJElfWpBw zYgcA
X-Developer-Key: i=kees@kernel.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
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

RnJvbTogS2VlcyBDb29rIDxrZWVzK3RyZWV3aWRlQGtlcm5lbC5vcmc+CgpJbiBwcmVwYXJhdGlv
biBmb3IgbWFraW5nIHRoZSBkZXZtX2ttYWxsb2MgZmFtaWx5IG9mIGFsbG9jYXRvcnMgdHlwZQph
d2FyZSwgd2UgbmVlZCB0byBtYWtlIHN1cmUgdGhhdCB0aGUgcmV0dXJuZWQgdHlwZSBmcm9tIHRo
ZSBhbGxvY2F0aW9uCm1hdGNoZXMgdGhlIHR5cGUgb2YgdGhlIHZhcmlhYmxlIGJlaW5nIGFzc2ln
bmVkLiAoQmVmb3JlLCB0aGUgYWxsb2NhdG9yCndvdWxkIGFsd2F5cyByZXR1cm4gInZvaWQgKiIs
IHdoaWNoIGNhbiBiZSBpbXBsaWNpdGx5IGNhc3QgdG8gYW55CnBvaW50ZXIgdHlwZS4pCgpJbiBi
b3RoIHRoZSBVU0IyIGFuZCBVU0IzIFBIWSBkcml2ZXJzLCB0aGUgYXNzaWduZWQgdHlwZSBpcwoi
c3RydWN0IHBoeV9jZmcgKiIsIGJ1dCB0aGUgY29udmVydGVkIGFsbG9jYXRpb24gdHlwZSB3b3Vs
ZCBiZQoiY29uc3Qgc3RydWN0IHBoeV9jZmcgKiIsIGFzIHRoZSBzaXplIHdhcyB0YWtlbiBmcm9t
IHRoZSBsb2NhbAoicGh5X2NmZyIsIHdoaWNoIHBvaW50cyB0byBjb25zdCBhcyBpdCBjb21lcyBm
cm9tCm9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgpLiBBcyB0aGVyZSBpcyBubyBnZW5lcmFsIHdh
eSB0byByZW1vdmUgY29uc3QKcXVhbGlmaWVycywgdGFrZSB0aGUgc2l6ZSBmcm9tIHRoZSBhc3Np
Z25tZW50IHRhcmdldCBpbnN0ZWFkLiBObyBjaGFuZ2UKaW4gYWxsb2NhdGlvbiBzaXplIHJlc3Vs
dHMuCgpCdWlsZCB0ZXN0ZWQgQVJDSD14ODZfNjQgYWxsbW9kY29uZmlnIHdpdGggR0NDIDE2LjIu
MDoKZHJpdmVycy9waHkvcmVhbHRlay9waHktcnRrLXVzYjIubwpkcml2ZXJzL3BoeS9yZWFsdGVr
L3BoeS1ydGstdXNiMy5vCgpBc3Npc3RlZC1ieTogTExNIGNvY2NpbmVsbGUKU2lnbmVkLW9mZi1i
eTogS2VlcyBDb29rIDxrZWVzK3RyZWV3aWRlQGtlcm5lbC5vcmc+Ci0tLQpDYzogVmlub2QgS291
bCA8dmtvdWxAa2VybmVsLm9yZz4KQ2M6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0Bs
aW5hcm8ub3JnPgpDYzogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+CkNj
OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpDYzogU3Rh
bmxleSBDaGFuZyA8c3RhbmxleV9jaGFuZ0ByZWFsdGVrLmNvbT4KQ2M6IEpvaGFuIEhvdm9sZCA8
am9oYW4rbGluYXJvQGtlcm5lbC5vcmc+CkNjOiAiVXdlIEtsZWluZS1Lw7ZuaWciIDx1LmtsZWlu
ZS1rb2VuaWdAYmF5bGlicmUuY29tPgpDYzogSmluamllIFJ1YW4gPHJ1YW5qaW5qaWVAaHVhd2Vp
LmNvbT4KQ2M6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CkNjOiBDaGFybGVzIEhhbiA8
aGFuY2h1bmNoYW9AaW5zcHVyLmNvbT4KQ2M6IDxsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
Zz4KLS0tCiBkcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMi5jIHwgMyArKy0KIGRyaXZl
cnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IzLmMgfCAzICsrLQogMiBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
cmVhbHRlay9waHktcnRrLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2Iy
LmMKaW5kZXggMjQ4NTUwZWY5OGNhLi4xZjA4YjE1MWQ5MGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IyLmMKKysrIGIvZHJpdmVycy9waHkvcmVhbHRlay9waHkt
cnRrLXVzYjIuYwpAQCAtMTAyMiw3ICsxMDIyLDggQEAgc3RhdGljIGludCBydGtfdXNiMnBoeV9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyZXR1cm4gLUVOT01FTTsKIAog
CXJ0a19waHktPmRldgkJCT0gJnBkZXYtPmRldjsKLQlydGtfcGh5LT5waHlfY2ZnID0gZGV2bV9r
emFsbG9jKGRldiwgc2l6ZW9mKCpwaHlfY2ZnKSwgR0ZQX0tFUk5FTCk7CisJcnRrX3BoeS0+cGh5
X2NmZyA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcnRrX3BoeS0+cGh5X2NmZyksCisJCQkJ
CUdGUF9LRVJORUwpOwogCWlmICghcnRrX3BoeS0+cGh5X2NmZykKIAkJcmV0dXJuIC1FTk9NRU07
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IzLmMgYi9kcml2
ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMy5jCmluZGV4IGNjZTQ1MzY4NmRiMi4uNDIzMWE4
YWEwYmE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yZWFsdGVrL3BoeS1ydGstdXNiMy5jCisr
KyBiL2RyaXZlcnMvcGh5L3JlYWx0ZWsvcGh5LXJ0ay11c2IzLmMKQEAgLTU3Niw3ICs1NzYsOCBA
QCBzdGF0aWMgaW50IHJ0a191c2IzcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCiAJCXJldHVybiAtRU5PTUVNOwogCiAJcnRrX3BoeS0+ZGV2CQkJPSAmcGRldi0+ZGV2Owot
CXJ0a19waHktPnBoeV9jZmcgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnBoeV9jZmcpLCBH
RlBfS0VSTkVMKTsKKwlydGtfcGh5LT5waHlfY2ZnID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9m
KCpydGtfcGh5LT5waHlfY2ZnKSwKKwkJCQkJR0ZQX0tFUk5FTCk7CiAJaWYgKCFydGtfcGh5LT5w
aHlfY2ZnKQogCQlyZXR1cm4gLUVOT01FTTsKIAotLSAKMi4zNC4xCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
