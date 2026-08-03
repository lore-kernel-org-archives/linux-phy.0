Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F091C55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 13:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5y6enhJ6ZH9RvZaVFoPUadDZkfPvkTpkz4C2rwc9vZM=; b=iC0cfXeYnRxLsn
	Xt96tqtasvpI4wjJk1lu5KtpHzx6i08TwcfAr1f8H3VEpgx5I3B1yz9F/Vk2Fx6mCLlJC9hbrJSAS
	3po+hiO89Fgo7zmH3GNQOzlUIG9jJ9HluzTa9qyXpD7Mx+Qor/5tbEFILoJ57+xEuUkfDLoLy7Pa0
	EvcS84l9icdl9wYGAcqhZNwhyfrKsz6IivXYe0GS5dfkiGQF+yQ21sYPa1AvRK61MH3l5j39bR34p
	joFcqdEXtUA05m6h0NSx1fxjZ88L2MENIEx2xhmhPJaPmlef4HHXWgmWQIFSpX+A+qFsqIC+nenmp
	lF848XGjEGlZUEbpgPuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsug-0000000HBOF-39BZ;
	Mon, 03 Aug 2026 13:41:06 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsuf-0000000HBNa-3VLC
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 13:41:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 27561403C1;
	Mon,  3 Aug 2026 13:41:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 829451F000E9;
	Mon,  3 Aug 2026 13:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785764465;
	bh=rwr6Hg1BMYnjKFBU1U6rymvC8GBDfyq+kH6V3tyk8d4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=dpKHb8Pefq4/wjvOGUmLoqVb3r/7LarRVwjg+EFyMSZ1Zg9ceOQJrVty6TEMiu0gl
	 oMv8SX9nu94oEooK2ZnOnFMu/YhjXZbYLtfQG6WpGBwsWNb9oei16H0AKTAsu+ledh
	 LnqHKEclBqoNZfF1s2DeR0ayoq6UJKXdNDzmromZjW3peBA5HYY4dvuvmzDSgOmMui
	 oyTakNvmcVvGdtkgwiCpG8NgG5MS3WrHzDSsISR8CG6usZ64RxILs+yTNdkRja9HLF
	 MOcqqGT5Uox92Bh3bkxBBwkd8hQeF3kyeMWAkZX0wuA+nyu17B16htKm4V7PehAvEU
	 0Y/HJW2YR0fyA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/2] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
To: palash.kambar@oss.qualcomm.com
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260803130852.1432714-2-palash.kambar@oss.qualcomm.com>
References: <20260803130852.1432714-1-palash.kambar@oss.qualcomm.com>
 <20260803130852.1432714-2-palash.kambar@oss.qualcomm.com>
Date: Mon, 03 Aug 2026 13:41:03 +0000
Message-Id: <20260803134104.829451F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgVUZTX0hT
X0c0IFBIWSBjb25maWd1cmF0aW9uIGZhbGxiYWNrIG92ZXJsYXkgZm9yIHRoZSBIYXdpIFNvQywg
bGVhZGluZyB0byB1bmluaXRpYWxpemVkIGNyaXRpY2FsIHJlZ2lzdGVycy4KLS0KCi0tLSBQYXRj
aCBbMV06IFtQQVRDSCB2NSAxLzJdIHBoeTogcWNvbS1xbXAtdWZzOiBBZGQgVUZTIFBIWSBzdXBw
b3J0IG9uIEhhd2kgLS0tCmNvbW1pdCA0ZDBjYzUxNWE2MTJiNDBkMGY1YTdmYzllNDRiOWZiYzZi
MTUyN2ZiCkF1dGhvcjogUGFsYXNoIEthbWJhciA8cGFsYXNoLmthbWJhckBvc3MucXVhbGNvbW0u
Y29tPgpTdWJqZWN0OiBwaHk6IHFjb20tcW1wLXVmczogQWRkIFVGUyBQSFkgc3VwcG9ydCBvbiBI
YXdpCgpBZGQgdGhlIGluaXQgc2VxdWVuY2UgdGFibGVzIGFuZCBjb25maWcgZm9yIHRoZSBVRlMg
UU1QIHBoeSBmb3VuZCBpbgp0aGUgSGF3aSBTb0MuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bo
eS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtdWZzLmMKPiBpbmRleCAwZjRhZDI0YWE0MDU4Li5kNGFjYTIyYzE4MWU0IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+ICsrKyBi
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwoKWyAuLi4gXQoKPiBAQCAt
MTg0NSw2ICsxODY4LDExOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnIHNtODc1
MF91ZnNwaHlfY2ZnID0gewo+ICAKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcW1w
X3BoeV9pbml0X3RibCBoYXdpX3Vmc3BoeV9zZXJkZXNbXSA9IHsKClsgLi4uIF0KCj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgaGF3aV91ZnNwaHlfY2ZnID0gewo+ICsJLmxhbmVz
CQkJPSAyLAo+ICsKPiArCS5vZmZzZXRzCQk9ICZxbXBfdWZzX29mZnNldHNfdjcsCj4gKwkubWF4
X3N1cHBvcnRlZF9nZWFyCT0gVUZTX0hTX0c1LAo+ICsKPiArCS50YmxzID0gewo+ICsJCS5zZXJk
ZXMJCT0gaGF3aV91ZnNwaHlfc2VyZGVzLAo+ICsJCS5zZXJkZXNfbnVtCT0gQVJSQVlfU0laRSho
YXdpX3Vmc3BoeV9zZXJkZXMpLAo+ICsJCS50eAkJPSBoYXdpX3Vmc3BoeV90eCwKPiArCQkudHhf
bnVtCQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfdHgpLAo+ICsJCS5yeAkJPSBoYXdpX3Vmc3Bo
eV9yeCwKPiArCQkucnhfbnVtCQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfcngpLAo+ICsJCS5w
Y3MJCT0gaGF3aV91ZnNwaHlfcGNzLAo+ICsJCS5wY3NfbnVtCT0gQVJSQVlfU0laRShoYXdpX3Vm
c3BoeV9wY3MpLAo+ICsJfSwKPiArCj4gKwkudGJsc19oc19vdmVybGF5WzBdID0gewo+ICsJCS5w
Y3MJCT0gaGF3aV91ZnNwaHlfZzVfcGNzLAo+ICsJCS5wY3NfbnVtCT0gQVJSQVlfU0laRShoYXdp
X3Vmc3BoeV9nNV9wY3MpLAo+ICsJCS5tYXhfZ2Vhcgk9IFVGU19IU19HNSwKPiArCX0sCgpbU2V2
ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBtaXNzaW5nIEc0IG92ZXJsYXkgY2F1c2UgaW5pdGlhbGl6
YXRpb24gdG8gZmFpbCB3aGVuIGEgZGV2aWNlCnJlcXVlc3RzIEhTLUc0PwoKSWYgYSBVRlMgMy4x
IGRldmljZSBpcyBhdHRhY2hlZCAobWF4IGdlYXIgRzQpIG9yIGxpbmsgdHJhaW5pbmcgZHJvcHMg
dG8gRzQsCnRoZSBob3N0IGRyaXZlciB3aWxsIGNhbGwgcGh5X3NldF9tb2RlKCkgd2l0aCBVRlNf
SFNfRzQuIFNpbmNlIHRoZQp0YmxzX2hzX292ZXJsYXkgYXJyYXkgb25seSBkZWZpbmVzIGFuIGVu
dHJ5IGZvciBVRlNfSFNfRzUsCnFtcF91ZnNfZ2V0X2dlYXJfb3ZlcmxheSgpIHdpbGwgcmV0dXJu
IC1FSU5WQUwuCgpUaGlzIGxlYXZlcyBjcml0aWNhbCBQQ1MgcmVnaXN0ZXJzIGxpa2UgUVBIWV9W
N19QQ1NfVUZTX1BMTF9DTlRMLApUWF9IU0dFQVJfQ0FQQUJJTElUWSwgYW5kIFJYX0hTR0VBUl9D
QVBBQklMSVRZIGF0IHRoZWlyIGhhcmR3YXJlIGRlZmF1bHRzLAp3aGljaCBjb3VsZCBsZWFkIHRv
IGxpbmsgZmFpbHVyZXMuIFNob3VsZCB0aGVyZSBiZSBhIGZhbGxiYWNrIEc0IG92ZXJsYXkKZGVm
aW5lZCBoZXJlPwoKPiArCj4gKwkudnJlZ19saXN0CQk9IGhhd2lfdWZzcGh5X3ZyZWdfbCwKPiAr
CS5udW1fdnJlZ3MJCT0gQVJSQVlfU0laRShoYXdpX3Vmc3BoeV92cmVnX2wpLAo+ICsJLnJlZ3MJ
CQk9IHVmc3BoeV92N19yZWdzX2xheW91dCwKPiArfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDMxMzA4NTIuMTQzMjcxNC0x
LXBhbGFzaC5rYW1iYXJAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
