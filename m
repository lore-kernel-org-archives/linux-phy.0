Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82529E7716F
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 23:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYrecBiXngCvLHFarEI8Yxi5pwVtyg57LIxFwksjc5M=; b=auK2G/BRFlTN+J
	+7456tf+MK9TH/Uiyq0eq5oXEaVV8/7y0P9KqUD7odtcLsetuIuxORIk3ec4BJLTIFkachWt9w3Ji
	V1rPnyzG2Lsxcw4n1FBGIF6jZPMyyAog/rpJotr5Eux9AyU3CKgvaEcQYAk6NIlcVAFlzUhUicWAE
	pmaW5wNiwMNy0xz+98AhlxYO+BxyVCO0NLolI8uqYhQOX+c1f7uxVzJB/aJUYQshabYiKMxNP9C5k
	QNBwMyOVsG6pY1DBI4DcBN/ri4YHRcG8wdB3b0nk4bZtzr1ZMu3K5/hrDbzj5GRn4TXkkTwcbmZ38
	nBJoAQvY19Vllj63Ig7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIz1g-0000000EDal-1Aio;
	Wed, 04 Dec 2024 23:43:24 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIypC-0000000EA4M-4AmS
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 23:30:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1494EA41AC0;
	Wed,  4 Dec 2024 23:28:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F556C4CECD;
	Wed,  4 Dec 2024 23:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733355029;
	bh=bnhsjoYqb0f4QR43eg+NqinUwaS8vciC0FvnW6dKSWU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SVfQCkT4PMuESA81l/WiZsUzxXRg5z8VppiWC+mZFjIwc82q6jcJ6oSE+c9XfYign
	 LbHf/gj+88bGewpZF8vu3q+URsk2QJA3n+YlUsXd7axnKK7jD0bIbOP+FSerL0c3C1
	 x6NvXj0AhBzolXZGL/YVGKaZMTw+psiOBn9Y6MsqLHA+HZC60jwHafbKYl8zvLBX2f
	 5NrU5TG83jz0fJharOMKn+xFAncAiCIhAF3fMSH3O5MyEsuqW7dPqjZy1m6gfQFVnm
	 aPuFtGKsI4N9V3d4Un/Bm6gVryt/ygdRyCPMaSbX01eyPZCi2VQ2Luz/GXF4bjk7H9
	 RPGN/mnkdTUKg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Saravana Kannan <saravanak@google.com>,
	Jon Hunter <jonathanh@nvidia.com>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Thierry Reding <treding@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	jckuo@nvidia.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	thierry.reding@gmail.com,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH AUTOSEL 6.1 5/8] phy: tegra: xusb: Set fwnode for xusb port devices
Date: Wed,  4 Dec 2024 17:18:47 -0500
Message-ID: <20241204221859.2248634-5-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241204221859.2248634-1-sashal@kernel.org>
References: <20241204221859.2248634-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_153031_102035_14E6BDCD 
X-CRM114-Status: GOOD (  11.09  )
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

RnJvbTogU2FyYXZhbmEgS2FubmFuIDxzYXJhdmFuYWtAZ29vZ2xlLmNvbT4KClsgVXBzdHJlYW0g
Y29tbWl0IDc0ZmZlNDNiYWQzYWYzZTJhNzg2Y2EwMTdjMjA1NTU1YmE4N2ViYWQgXQoKZndub2Rl
IG5lZWRzIHRvIGJlIHNldCBmb3IgYSBkZXZpY2UgZm9yIGZ3X2RldmxpbmsgdG8gYmUgYWJsZSB0
bwp0cmFjay9lbmZvcmNlIGl0cyBkZXBlbmRlbmNpZXMgY29ycmVjdGx5LiBXaXRob3V0IHRoaXMs
IHlvdSdsbCBzZWUgZXJyb3IKbWVzc2FnZXMgbGlrZSB0aGlzIHdoZW4gdGhlIHN1cHBsaWVyIGhh
cyBwcm9iZWQgYW5kIHRyaWVzIHRvIG1ha2Ugc3VyZQphbGwgaXRzIGZ3bm9kZSBjb25zdW1lcnMg
YXJlIGxpbmtlZCB0byBpdCB1c2luZyBkZXZpY2UgbGlua3M6Cgp0ZWdyYS14dXNiLXBhZGN0bCAz
NTIwMDAwLnBhZGN0bDogRmFpbGVkIHRvIGNyZWF0ZSBkZXZpY2UgbGluayAoMHgxODApIHdpdGgg
MS0wMDA4CgpSZXBvcnRlZC1ieTogSm9uIEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5jb20+CkNs
b3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjQwOTEwMTMwMDE5LjM1MDgxLTEt
am9uYXRoYW5oQG52aWRpYS5jb20vClRlc3RlZC1ieTogSm9uIEh1bnRlciA8am9uYXRoYW5oQG52
aWRpYS5jb20+ClN1Z2dlc3RlZC1ieTogTsOtY29sYXMgRi4gUi4gQS4gUHJhZG8gPG5mcmFwcmFk
b0Bjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBTYXJhdmFuYSBLYW5uYW4gPHNhcmF2YW5h
a0Bnb29nbGUuY29tPgpBY2tlZC1ieTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdAbnZpZGlhLmNv
bT4KTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI0MTAyNDA2MTM0Ny4xNzcxMDYz
LTMtc2FyYXZhbmFrQGdvb2dsZS5jb20KU2lnbmVkLW9mZi1ieTogR3JlZyBLcm9haC1IYXJ0bWFu
IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4g
PHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYwpp
bmRleCBkYzIyYjFkZDJjOGJhLi5hYTA1MGFlYTJkZjU4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3Bo
eS90ZWdyYS94dXNiLmMKKysrIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCkBAIC01MzcsNyAr
NTM3LDcgQEAgc3RhdGljIGludCB0ZWdyYV94dXNiX3BvcnRfaW5pdChzdHJ1Y3QgdGVncmFfeHVz
Yl9wb3J0ICpwb3J0LAogCiAJZGV2aWNlX2luaXRpYWxpemUoJnBvcnQtPmRldik7CiAJcG9ydC0+
ZGV2LnR5cGUgPSAmdGVncmFfeHVzYl9wb3J0X3R5cGU7Ci0JcG9ydC0+ZGV2Lm9mX25vZGUgPSBv
Zl9ub2RlX2dldChucCk7CisJZGV2aWNlX3NldF9ub2RlKCZwb3J0LT5kZXYsIG9mX2Z3bm9kZV9o
YW5kbGUob2Zfbm9kZV9nZXQobnApKSk7CiAJcG9ydC0+ZGV2LnBhcmVudCA9IHBhZGN0bC0+ZGV2
OwogCiAJZXJyID0gZGV2X3NldF9uYW1lKCZwb3J0LT5kZXYsICIlcy0ldSIsIG5hbWUsIGluZGV4
KTsKLS0gCjIuNDMuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
