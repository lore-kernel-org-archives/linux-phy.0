Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB396EA3F3A
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 10:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HA1g/TSBbPWYBxQ89l40ctU4bugVnkmEKtxevuXRpA0=; b=WEhYDh/b0CurPG
	Zfu2RGTTpU/tBg0DB8Yt/LMWEQZA1dzKJMY9kYKxX89GAZuwu1lKFOKbBMY1JwN7IGRMXYigxkcno
	EoLQyiM3LCagelTE/NCes9a5jbM8p2zOEW/z5QtE6StkllxX8IWuZZvU6y0JX5Mr4xEjCUM8hIFkQ
	F1rkuV4gtajghGVesNZxaz689FjDtffHU0vs2r5PDLLFpwPiza30HQJhVwj9uRk715ySueCYmfPDJ
	CKR44dmKHHXuzKtzoDSogldNQLPoSUnIRhyZwvMnNy+VokkbG1xvosGQcjOsBu8NL1QzBM9cLxCBV
	EfaIJlwV80K3Rm3RaDbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vplMp-0000000GrOR-1nHn;
	Tue, 10 Feb 2026 10:53:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vplMm-0000000GrO6-3KiI
	for linux-phy@lists.infradead.org;
	Tue, 10 Feb 2026 10:53:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AD95844251;
	Tue, 10 Feb 2026 10:53:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2888C116C6;
	Tue, 10 Feb 2026 10:53:08 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: linux-phy@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-next@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH next] phy: renesas: rcar-gen3-usb2: Drop local devm_mux_state_get_optional()
Date: Tue, 10 Feb 2026 11:53:00 +0100
Message-ID: <67c8c4f9bf9f09fd0c13daedef27b82ff389ddfb.1770720452.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_025312_852103_E76CAB08 
X-CRM114-Status: GOOD (  10.67  )
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

Tm93IHRoZSBtdXggY29yZSBwcm92aWRlcyBkZXZtX211eF9zdGF0ZV9nZXRfb3B0aW9uYWwoKToK
CiAgICBkcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jOjk0NDoxOiBlcnJv
cjogc3RhdGljIGRlY2xhcmF0aW9uIG9mIOKAmGRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbOKA
mSBmb2xsb3dzIG5vbi1zdGF0aWMKICAgICBkZWNsYXJhdGlvbgogICAgICA5NDQgfCBkZXZtX211
eF9zdGF0ZV9nZXRfb3B0aW9uYWwoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBjaGFyICptdXhf
bmFtZSkKCSAgfCBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KICAgIEluIGZpbGUgaW5jbHVk
ZWQgZnJvbSBkcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jOjIwOgogICAg
aW5jbHVkZS9saW51eC9tdXgvY29uc3VtZXIuaDo2NDoxOTogbm90ZTogcHJldmlvdXMgZGVjbGFy
YXRpb24gb2Yg4oCYZGV2bV9tdXhfc3RhdGVfZ2V0X29wdGlvbmFs4oCZIHdpdGggdHlwZSDigJhz
dHJ1Y3QgbXV4X3N0YXRlICooc3RydWN0IGRldmljZSAqLCBjb25zdCBjaGFyICop4oCZCiAgICAg
ICA2NCB8IHN0cnVjdCBtdXhfc3RhdGUgKmRldm1fbXV4X3N0YXRlX2dldF9vcHRpb25hbChzdHJ1
Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIgKm11eF9uYW1lKTsKCSAgfCAgICAgICAgICAgICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KCkZpeCB0aGlzIGJ5IGRyb3BwaW5nIHRo
ZSB0ZW1wb3JhcnkgbG9jYWwgd3JhcHBlci4KCkZpeGVzOiBhZDMxNDM0OGNlYjRmZTFmICgibXV4
OiBBZGQgaGVscGVyIGZ1bmN0aW9ucyBmb3IgZ2V0dGluZyBvcHRpb25hbCBhbmQgc2VsZWN0ZWQg
bXV4LXN0YXRlIikKRml4ZXM6IDhiYjkyZmQ3YTA0MDc3OTIgKCJwaHk6IHJlbmVzYXM6IHJjYXIt
Z2VuMy11c2IyOiBVc2UgbXV4LXN0YXRlIGZvciBwaHlyc3QgbWFuYWdlbWVudCIpClNpZ25lZC1v
ZmYtYnk6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Ci0tLQog
IC0gYWQzMTQzNDhjZWI0ZmUxZiBpcyBpbiBtbWMvbmV4dCwgYW5kIGEgUFIgaGFzIGFscmVhZHkg
YmVlbiBzZW50CiAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy8yMDI2MDIwOTEzMzQ0MS41NTY0
NjQtMS11bGYuaGFuc3NvbkBsaW5hcm8ub3JnCiAgLSA4YmI5MmZkN2EwNDA3NzkyIGlzIGluIHBo
eS9uZXh0Ci0tLQogZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyB8IDEw
IC0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jIGIvZHJpdmVycy9waHkv
cmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwppbmRleCBjZmMyYThkOTAyOGQ1OGQwLi42NWNi
ZjMzMGJkOGZhMTBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdl
bjMtdXNiMi5jCisrKyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMK
QEAgLTkzOSwxNiArOTM5LDYgQEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfdmJ1c19y
ZWd1bGF0b3JfcmVnaXN0ZXIoc3RydWN0IHJjYXJfZ2VuM19jaGFuICpjaGEKIAlyZXR1cm4gcmNh
cl9nZW4zX3BoeV91c2IyX3ZidXNfcmVndWxhdG9yX2dldF9leGNsdXNpdmVfZW5hYmxlKGNoYW5u
ZWwsIGVuYWJsZSk7CiB9CiAKLS8qIFRlbXBvcmFyeSB3cmFwcGVyIHVudGlsIHRoZSBtdWx0aXBs
ZXhlciBzdWJzeXN0ZW0gc3VwcG9ydHMgb3B0aW9uYWwgbXV4ZXMgKi8KLXN0YXRpYyBpbmxpbmUg
c3RydWN0IG11eF9zdGF0ZSAqCi1kZXZtX211eF9zdGF0ZV9nZXRfb3B0aW9uYWwoc3RydWN0IGRl
dmljZSAqZGV2LCBjb25zdCBjaGFyICptdXhfbmFtZSkKLXsKLQlpZiAoIW9mX3Byb3BlcnR5X3By
ZXNlbnQoZGV2LT5vZl9ub2RlLCAibXV4LXN0YXRlcyIpKQotCQlyZXR1cm4gTlVMTDsKLQotCXJl
dHVybiBkZXZtX211eF9zdGF0ZV9nZXQoZGV2LCBtdXhfbmFtZSk7Ci19Ci0KIHN0YXRpYyB2b2lk
IHJjYXJfZ2VuM19waHlfbXV4X3N0YXRlX2Rlc2VsZWN0KHZvaWQgKmRhdGEpCiB7CiAJbXV4X3N0
YXRlX2Rlc2VsZWN0KGRhdGEpOwotLSAKMi40My4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
