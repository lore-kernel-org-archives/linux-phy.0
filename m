Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6643CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 15:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhiTdQhFFrXHwhX6odD6k1vzn21IQV8vPTYMPiyQO3w=; b=GnsS8D94V1RkHz
	Yyzlf80T04wgdB8UX9fjBVI9iKDZYpIX1zQEzlC1tsOAgWj5E9WmiUmHDlf2aYh8Jz+kz7Vsi3td0
	n9JBhNF3eroY9ophLxYyW+1V2IDwWCFNi1cwKRsQy5+U2pclDrU4L+WbXBc3NNrmq6/ZvHRhgsNF2
	zEE8dHuk8+D2n3UwTDfKn6Ub0P4iAWRFsX+SjaG8Zh1k5hy5BpE4tP+J76IyViEcPw12lEDSkzWye
	I0W/tSpdWFEbL2TeBVhSxBCRJ7gqrkOr5lNHJmC5CHjyG4FTCch79vRg+GCePMZJ6s94+qOazTy/U
	GUtGd2WrKCv+ZigsiRwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL0p-000000082YA-2C5P;
	Wed, 10 Jun 2026 15:38:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXL0n-000000082Xk-2Vtq
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 15:38:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AE3FD601E8;
	Wed, 10 Jun 2026 15:38:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F5AF1F00893;
	Wed, 10 Jun 2026 15:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781105916;
	bh=3u2fG08F8j+5X+08g8rUz4vuIav4XIRxMu7zkaimEsw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=egtaEoEPceaYm/Z4X3IK+3HNX3elbQ6v2vcm+ET6kRjsH4gafA61/fy4xaqj/8t8a
	 Keh/UKx+IpLv9fbl1ZAkbaOWlItsqE+GEmKiYFzsxko5zEbhBWybHWUQ5T8gCh4Vyy
	 pCuhkXbrcm72pVCptvGF5L40ogEsma8S7DH0BKhChwcD3671YDh1X42admwyMpWlLZ
	 FguPd2IfJjVF6zCF2CUqLWR8PTW09zlD9lYuqtLYhB98f1YG0c2lBp0/Lg5XCb3A+9
	 PHGXTyU/vn+8ly1N0mMsgGvotjvnwaxS7LD0v0vCOZOxGn8wUryrUrFaYEvNEJxfDt
	 TumsDxxM/MLyg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 phy-next 02/16] phy: lynx-28g: reject probing on
 devices with unsupported OF nodes
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260610151952.2141019-3-vladimir.oltean@nxp.com>
References: <20260610151952.2141019-3-vladimir.oltean@nxp.com>
Date: Wed, 10 Jun 2026 15:38:35 +0000
Message-Id: <20260610153836.1F5AF1F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBNaXNzaW5nIGNoZWNrIGZvciB0aGUgcmV0dXJuIHZhbHVlIG9mIGBvZl9kZXZpY2Vf
Z2V0X21hdGNoX2RhdGEoKWAgaW4gYGlteDhfcGNpZV9waHlfcHJvYmVgIGFuZCBgaW14X2hzaW9f
cHJvYmVgIGxlYWRzIHRvIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZS4KLS0KCmNvbW1pdCAxMWNk
MTQzMTA3OWFkMDZhMDE3MDQ1MDIxMjlhMDk4M2UxZjNlOTkyCkF1dGhvcjogVmxhZGltaXIgT2x0
ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4KCnBoeTogbHlueC0yOGc6IHJlamVjdCBwcm9i
aW5nIG9uIGRldmljZXMgd2l0aCB1bnN1cHBvcnRlZCBPRiBub2RlcwoKVGhpcyBjb21taXQgZml4
ZXMgYSBwb3RlbnRpYWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluIHRoZSBseW54LTI4Zwpk
cml2ZXIgd2hlbiBib3VuZCB0byBhcmJpdHJhcnkgZGV2aWNlcyB2aWEgZHJpdmVyX292ZXJyaWRl
LiBJdCBhZGRzIGEKY2hlY2sgdG8gZW5zdXJlIG9mX2RldmljZV9nZXRfbWF0Y2hfZGF0YSgpIGRv
ZXMgbm90IHJldHVybiBOVUxMIGJlZm9yZQpkZXJlZmVyZW5jaW5nIHRoZSBtYXRjaCBkYXRhLgoK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtbHlueC0yOGcuYyBi
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWx5bngtMjhnLmMKPiBpbmRleCBjYWNjMTI4
ZGM5NmExLi4xZjVjYjAyOTMxZjU2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2Fs
ZS9waHktZnNsLWx5bngtMjhnLmMKPiArKysgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZz
bC1seW54LTI4Zy5jCj4gQEAgLTE0NzcsNiArMTQ3Nyw5IEBAIHN0YXRpYyBpbnQgbHlueF8yOGdf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCj4gIAlwcml2LT5kZXYgPSBk
ZXY7Cj4gIAlwcml2LT5pbmZvID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7Cj4gKwlp
ZiAoIXByaXYtPmluZm8pCj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4gKwo+ICAJZGV2X3NldF9kcnZk
YXRhKGRldiwgcHJpdik7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9k
dWNlZCBieSB0aGlzIHBhdGNoLCBidXQgaXQgYXBwZWFycyB0aGUgZXhhY3Qgc2FtZQptaXNzaW5n
IGNoZWNrIGV4aXN0cyBpbiBvdGhlciBkcml2ZXJzIHdpdGhpbiB0aGUgc2FtZSBzdWJzeXN0ZW0u
CgpEbyB3ZSBuZWVkIHRvIGFkZCBzaW1pbGFyIE5VTEwgY2hlY2tzIGZvciBvZl9kZXZpY2VfZ2V0
X21hdGNoX2RhdGEoKSBpbgppbXg4X3BjaWVfcGh5X3Byb2JlKCkgdG8gYXZvaWQgYSBjcmFzaD8K
CmRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtLXBjaWUuYzppbXg4X3BjaWVfcGh5
X3Byb2JlKCkgewogICAgLi4uCiAgICBpbXg4X3BoeS0+ZHJ2ZGF0YSA9IG9mX2RldmljZV9nZXRf
bWF0Y2hfZGF0YShkZXYpOwogICAgLi4uCiAgICBpbXg4X3BoeS0+aW9tdXhjX2dwciA9CiAgICAg
ICAgIHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X2NvbXBhdGlibGUoaW14OF9waHktPmRydmRhdGEt
Pmdwcik7CiAgICAuLi4KfQoKQW5kIGFsc28gaW4gaW14X2hzaW9fcHJvYmUoKSB3aGVyZSBpdCBh
Y2Nlc3NlcyB0aGUgbGFuZV9udW0gZmllbGQ/Cgpkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZz
bC1pbXg4cW0taHNpby5jOmlteF9oc2lvX3Byb2JlKCkgewogICAgLi4uCiAgICBwcml2LT5kcnZk
YXRhID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKGRldik7CiAgICAuLi4KICAgIGZvciAoaSA9
IDA7IGkgPCBwcml2LT5kcnZkYXRhLT5sYW5lX251bTsgaSsrKSB7CiAgICAuLi4KfQoKV2l0aG91
dCBhIGNoZWNrLCBjb3VsZCB0aGVzZSBkcml2ZXJzIHNpbWlsYXJseSBjcmFzaCB3aXRoIGEgTlVM
TCBwb2ludGVyCmRlcmVmZXJlbmNlIHdoZW4gYm91bmQgdG8gYSBkZXZpY2Ugd2l0aCBhIGRpZmZl
cmVudCBjb21wYXRpYmxlIHN0cmluZyB2aWEKdGhlIGRyaXZlcl9vdmVycmlkZSBpbnRlcmZhY2U/
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYwNjEwMTUxOTUyLjIxNDEwMTktMS12bGFkaW1pci5vbHRlYW5AbnhwLmNvbT9wYXJ0PTIK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
