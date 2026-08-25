Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFE22C61DBD
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 23:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KLmN9oBcCdIz5UoVzcZZViRviiQhsQSBDc4aW+5Xkc=; b=CDi6bJk7iFX+gE
	pRm58e6PTyRfazUQ0mQOmPT12r3RNdWoJ2f3AbmyZxnjCoE8cMDlZ9JcAjATty8iZxUy3P9YgnsBR
	J6+ITqBhDP55n5SpDoKFsVZmcV7fRpdEVc3o8m7kW5QT7NPOimKAdm0bea6qWo4UvDnX4nAG1VnhP
	QpAaoQtZqy6PMKiXtOKtfUjIjqqSOw6YWCkZwbIxLBySGWMcW3DG2JxPDRjUsqFnwV2RbyKgkLB6f
	b3h1AEE+bRC8NDAJwJu8hnqN+/24LOItlpkquiQF47SZWP745obN1M3/Keynp3g8UVzwoDjZ6jck9
	YkNW2N+ATqcSXzk+ikGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0IQ-00000001eul-0Kq2;
	Tue, 25 Aug 2026 23:11:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0IO-00000001eud-39Vm
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 23:11:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1B5F4601E9;
	Tue, 25 Aug 2026 23:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77BC91F000E9;
	Tue, 25 Aug 2026 23:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787699467;
	bh=hRgA5aOC5NITxZ96cKdA4t6hUtMIwwkTPP5QERVyX9Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ne+JiwHWr+BKe+Wn3cbgC7KREBIVvWCxKI9dX3zk2Q7o6/JxO1G+kKqL22gF56Slg
	 LP+sovisgJCIDvA+rYSfklwxpjglTynNhUITveXnN8Fn8aR3JjtDuh+aD4GrgCbdrF
	 9aRHL87PpQVtbarIAEDImjt6BcX/1Cl7zREHFDdJ+YXXZfgQQjNMNriQUJXkStMIvm
	 zRoBXaYZCkZQgMhmVYsbACJPcDz9a7nh0ZaK0uvgPI8qDhHJKH8NKEzVW4LnZOkg9o
	 +URkq0WfW2aHq6c6VrodNfMNs4qoY+hFWTnd8uemgg7QDX7QJueS1haCnKXECD6n/C
	 tmTWdtc2GZamQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Select MFD_SYSCON for the
 multi-PHY driver
To: "David Carlier" <devnexen@gmail.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org
In-Reply-To: <20260825225729.230493-1-devnexen@gmail.com>
References: <20260825225729.230493-1-devnexen@gmail.com>
Date: Tue, 25 Aug 2026 23:11:07 +0000
Message-Id: <20260825231107.77BC91F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtMb3ddIFVu
bWV0IGRpcmVjdCBkZXBlbmRlbmN5IHdhcm5pbmcgY2F1c2VkIGJ5IHVuY29uZGl0aW9uYWxseSBz
ZWxlY3RpbmcgTUZEX1NZU0NPTiBpbiBhIGRyaXZlciBzdXBwb3J0aW5nIENPTVBJTEVfVEVTVCB3
aXRob3V0IGluaGVyaXRpbmcgaXRzIEhBU19JT01FTSBkZXBlbmRlbmN5LgoKUHJlLWV4aXN0aW5n
IGlzc3VlczoKLSBbSGlnaF0gSW5jb21wbGV0ZSBmaXg6IFRoZSByZWd1bGFyIFFNUCBQQ0llIGRy
aXZlciAoUEhZX1FDT01fUU1QX1BDSUUpIGFsc28gdW5jb25kaXRpb25hbGx5IGNhbGxzIHN5c2Nv
bl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGVfYXJncygpIGJ1dCBzdGlsbCBsYWNrcyBhIHNlbGVj
dCBmb3IgTUZEX1NZU0NPTiwgbGVhdmluZyBpdCB2dWxuZXJhYmxlIHRvIHRoZSBleGFjdCBzYW1l
IHByb2JlIGZhaWx1cmUuCi0tCgpjb21taXQgY2E3MDU3Y2VkNWRkNmQyNjUwOTk4YzAzNzg1ZTU5
MGJkYWRjZDZmMgpBdXRob3I6IERhdmlkIENhcmxpZXIgPGRldm5leGVuQGdtYWlsLmNvbT4KCnBo
eTogcWNvbTogcW1wLXBjaWU6IFNlbGVjdCBNRkRfU1lTQ09OIGZvciB0aGUgbXVsdGktUEhZIGRy
aXZlcgoKVGhlIGRyaXZlciByZWFkcyB0aGUgYWN0aXZlIGxpbmsgbW9kZSB0aHJvdWdoCnN5c2Nv
bl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGVfYXJncygpLiBXaXRob3V0IENPTkZJR19NRkRfU1lT
Q09OLCB0aGUgc3R1YgpyZXR1cm5zIC1FTk9UU1VQUCwgY2F1c2luZyBwcm9iZSBmYWlsdXJlcy4g
VGhpcyBwYXRjaCBhZGRzIHRoZSBtaXNzaW5nCk1GRF9TWVNDT04gc2VsZWN0aW9uIHRvIHRoZSBQ
SFlfUUNPTV9RTVBfUENJRV9NVUxUSVBIWSBkcml2ZXIuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9LY29uZmlnIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vS2NvbmZpZwo+IGlu
ZGV4IGQ5MTBhNWQxYTFhYzMuLjkxMTNlMTA5OTI0NTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
aHkvcXVhbGNvbW0vS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL0tjb25maWcK
PiBAQCAtODEsNiArODEsNyBAQCBjb25maWcgUEhZX1FDT01fUU1QX1BDSUVfTVVMVElQSFkKPiAg
CXRyaXN0YXRlICJRdWFsY29tbSBRTVAgUENJZSBNdWx0aSBQSFkgRHJpdmVyIgo+ICAJZGVwZW5k
cyBvbiBQQ0kgfHwgQ09NUElMRV9URVNUCj4gIAlzZWxlY3QgR0VORVJJQ19QSFkKPiArCXNlbGVj
dCBNRkRfU1lTQ09OCgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIHVuY29uZGl0aW9uYWxseSBz
ZWxlY3QgTUZEX1NZU0NPTiB3aXRob3V0IGluaGVyaXRpbmcgaXRzIGhhcmR3YXJlCmRlcGVuZGVu
Y2llcz8KCldoZW4gY29uZmlndXJpbmcgdGhlIGtlcm5lbCB3aXRoIENPTVBJTEVfVEVTVCBlbmFi
bGVkIG9uIGFuIGFyY2hpdGVjdHVyZQpsYWNraW5nIEhBU19JT01FTSAoc3VjaCBhcyBzMzkwIHdp
dGhvdXQgUENJIG9yIFVNTCB3aXRob3V0IElPTUVNKSwgdGhpcyBjYW4KdHJpZ2dlciBLY29uZmln
IHdhcm5pbmdzIGZvciB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGFuZCBwb3RlbnRpYWwgYnVp
bGQKZmFpbHVyZXMuCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNz
dWUsIGJ1dCBkb2VzIHRoZSByZWd1bGFyIFBIWV9RQ09NX1FNUF9QQ0lFIGRyaXZlcgpoYXZlIHRo
ZSBleGFjdCBzYW1lIHByb2JlIGZhaWx1cmUgdnVsbmVyYWJpbGl0eT8KCkluIGRyaXZlcnMvcGh5
L3F1YWxjb21tL0tjb25maWcsIGNvbmZpZyBQSFlfUUNPTV9RTVBfUENJRSBsYWNrcyBhIHNlbGVj
dCBmb3IKTUZEX1NZU0NPTjoKCmNvbmZpZyBQSFlfUUNPTV9RTVBfUENJRQoJdHJpc3RhdGUgIlF1
YWxjb21tIFFNUCBQQ0llIFBIWSBEcml2ZXIiCglkZXBlbmRzIG9uIFBDSSB8fCBDT01QSUxFX1RF
U1QKCXNlbGVjdCBHRU5FUklDX1BIWQoKVGhpcyBkcml2ZXIgdW5jb25kaXRpb25hbGx5IGNhbGxz
IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3BoYW5kbGVfYXJncygpIGluCmRyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmM6cW1wX3BjaWVfZ2V0XzRsbl9jb25maWcoKToKCgl0
Y3NyID0gc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZV9hcmdzKHFtcC0+ZGV2LT5vZl9u
b2RlLAoJCQkJCQkgICAgInFjb20sNGxuLWNvbmZpZy1zZWwiLAoJCQkJCQkgICAgQVJSQVlfU0la
RShhcmdzKSwgYXJncyk7CglpZiAoSVNfRVJSKHRjc3IpKSB7CgkJcmV0ID0gUFRSX0VSUih0Y3Ny
KTsKCQlpZiAocmV0ID09IC1FTk9FTlQpCgkJCXJldHVybiAwOwoKCQlkZXZfZXJyKHFtcC0+ZGV2
LCAiZmFpbGVkIHRvIGxvb2t1cCBzeXNjb246ICVkXG4iLCByZXQpOwoJCXJldHVybiByZXQ7Cgl9
CgpJZiBNRkRfU1lTQ09OIGlzIGRpc2FibGVkLCB0aGUgc3R1YiByZXR1cm5zIC1FTk9UU1VQUC4g
U2luY2UgdGhpcyBleHBsaWNpdGx5CmNoZWNrcyBmb3IgLUVOT0VOVCBidXQgbm90IC1FTk9UU1VQ
UCwgd291bGRuJ3QgdGhlIHByb2JlIGZhaWwgdW5jb25kaXRpb25hbGx5CmFuZCBsZWF2ZSB0aGUg
UENJZSBidXMgbm9uLWZ1bmN0aW9uYWw/Cgo+ICAJaGVscAo+ICAJICBFbmFibGUgdGhpcyB0byBz
dXBwb3J0IHRoZSBRTVAgUENJZSBQSFkgdHJhbnNjZWl2ZXIgdGhhdCBpcyB1c2VkCj4gWyAuLi4g
XQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNl
dC8yMDI2MDgyNTIyNTcyOS4yMzA0OTMtMS1kZXZuZXhlbkBnbWFpbC5jb20/cGFydD0xCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
