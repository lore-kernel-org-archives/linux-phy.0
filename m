Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3881EE77174
	for <linux-phy@archiver.kernel.org>; Wed,  4 Dec 2024 23:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMSje8Ru6zyXSxgm2KAsbV3tUs77htZbVAOQVpVJut8=; b=vaS8yXpYfc06cs
	eMmMG6bDPlkDwI0pZluRRHl7Smwl/TmdpjN2DRqC9YofCyfBNZB5v/6B4AKnHmtsCbU75oiv/MJla
	MZxzSbXWhnJSfEEWLyvcSQFqiYX3+TDY9Hu5B6GE0eWDhk0ffExtaG76vdabkYpl+Kq000iyj3ogH
	E8DjVV/b5/jpxAlE3q19Gj4t4uVgZO27sz+byAPrz2bUMkbCQ5xGYC4mT5XNxNsqm2pIQpNJsks9P
	L9w8gl7Cj/mO1//YGn0xE0eavPULQoxj+J1Q+t8Q5PFenHmwMajF0YTpoN2LNyJdNmi4Zu44fJyHs
	pG3tF5eU7873w9yXDx/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIz1g-0000000EDbX-3cOZ;
	Wed, 04 Dec 2024 23:43:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIypm-0000000EAGP-2cXx
	for linux-phy@lists.infradead.org;
	Wed, 04 Dec 2024 23:31:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4314E5C662A;
	Wed,  4 Dec 2024 23:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 539AAC4CEDD;
	Wed,  4 Dec 2024 23:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733355065;
	bh=7ui9ot9eoh+IkUpPzOlVCenipdDiAvxsCmjSBdH7YbE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sv5TXyH9KCjl8AnDZ9wOvwPYh+tiLsmIOdFbphEmQw+VjOTVtQWOqJ5LxoFbpudtp
	 baST1f+GNxHi8cq/rrsBa65DHlauVKWnBetPUtjy9pemNTk3GL9Q63dtT2ZEdcAODb
	 LvRbX+E+WbMNJa5B33dvIl3gSxifLLDznz1iAalQNyRNFbYZtPheYjcorEYRpR5npd
	 r4zCVBqbl6dts/CTLGhlskv6oFyk0l1wNb5kowwHuH639k470EdjK97hJk27JBKFy8
	 abC6tK9c5iCrwG6ZN/YBxJXQgJzm87lVlkenGslwf0F4dxCWpKI+x+xYAYRDNY85kL
	 bFA27G5KpsIbQ==
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
Subject: [PATCH AUTOSEL 5.10 3/5] phy: tegra: xusb: Set fwnode for xusb port devices
Date: Wed,  4 Dec 2024 17:19:36 -0500
Message-ID: <20241204221942.2248973-3-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241204221942.2248973-1-sashal@kernel.org>
References: <20241204221942.2248973-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_153106_704632_08D67106 
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
bmRleCA4NTYzOTdkZWY4OWFjLi4xMzNmNTA0ZGZlOWE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3Bo
eS90ZWdyYS94dXNiLmMKKysrIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi5jCkBAIC01MzEsNyAr
NTMxLDcgQEAgc3RhdGljIGludCB0ZWdyYV94dXNiX3BvcnRfaW5pdChzdHJ1Y3QgdGVncmFfeHVz
Yl9wb3J0ICpwb3J0LAogCiAJZGV2aWNlX2luaXRpYWxpemUoJnBvcnQtPmRldik7CiAJcG9ydC0+
ZGV2LnR5cGUgPSAmdGVncmFfeHVzYl9wb3J0X3R5cGU7Ci0JcG9ydC0+ZGV2Lm9mX25vZGUgPSBv
Zl9ub2RlX2dldChucCk7CisJZGV2aWNlX3NldF9ub2RlKCZwb3J0LT5kZXYsIG9mX2Z3bm9kZV9o
YW5kbGUob2Zfbm9kZV9nZXQobnApKSk7CiAJcG9ydC0+ZGV2LnBhcmVudCA9IHBhZGN0bC0+ZGV2
OwogCiAJZXJyID0gZGV2X3NldF9uYW1lKCZwb3J0LT5kZXYsICIlcy0ldSIsIG5hbWUsIGluZGV4
KTsKLS0gCjIuNDMuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
