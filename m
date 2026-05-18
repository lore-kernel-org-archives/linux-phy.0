Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E79CD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 02:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ywych5NccBBrjIcSDXDO3FP9X6BEEHi1FFG8/rxWaCE=; b=ofV5jwsOS4y648
	fVipNIYmKyqEx/eWdKuatcm0zt4K6Dh5r4jTPioD+dQiqQ62K1KiV60lrCflDI+9aFGhN/yaCLoxl
	nqiDiavDyugEFyjIru7NCdW3eJv6E/KICC4eFvbVrr+hoP7xhYfaMyjzA+AD7GQstnxKdNCbKtp3H
	kgkq7mO4MhHOXmMuY/2JbTmmDUpELqz0IYYLaKnS0wmZrAcOZCioJxAzsKklWgDya3Hk40M37n/vN
	TwV/1IPvYWSCKXoS6uUOXNWUlx5n/M1fVKnbjRMF1VE5YEyAj1xQdaK/Sh2cqhF5SS1fM2rmyl5Nw
	gjn6xCOPobvy52gJpqpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnqm-0000000DxMr-2JG0;
	Mon, 18 May 2026 02:37:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnql-0000000DxMd-1Nkd
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 02:36:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BC3646001A;
	Mon, 18 May 2026 02:36:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41852C2BCB0;
	Mon, 18 May 2026 02:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779071817;
	bh=bYzvlR6zW+0uvQnj2VXyb4pVm/SWH8q94NVAz6dLj54=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=nctBOn4/JcMSX4ZdHEBuAmWb7xyAHSHus59VwSp0Fjd/mgrEYZ0OixqUUAVRYkzjN
	 6mGck4CEZ7ghvxnGy8NQo0onhGXNYG75FzssST+D8g40JjX66eIOer32z2dMug0Ujy
	 yaHWv/Vp2E8mZn0ABc1bDX5mo8DHx8oD7r6eyQGjcWusAKw3liBGEou36mecfh9dK0
	 yPPWd/pb9ByQRBuDRxVeDQ16MdRPZuc3j4hyfa/i9Msryz5FPH7IB4dO9/sYJQq47C
	 0G5k9MFNRE5lyHHuxAcIOwrUfktXqX8VzQKVeMZYxI9GMb5x/uLH/vLRByjqccCNQj
	 +lXM9uw4etnTQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] phy: ti: pipe3: Fix clock resource leak on probe
 errors
To: "Hongling Zeng" <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260518021539.14890-2-zenghongling@kylinos.cn>
References: <20260518021539.14890-2-zenghongling@kylinos.cn>
Date: Mon, 18 May 2026 02:36:56 +0000
Message-Id: <20260518023657.41852C2BCB0@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIENsb2NrIHJlZmVyZW5j
ZSBsZWFrIGluIHRpX3BpcGUzX2luaXQoKSBvbiBQQ0llIGVycm9yIHBhdGguCi0tCgpjb21taXQg
MjZmNzk2NjNkMDhkOWMwY2VjOTA3OTVhMWIzMmQzZTVlMzdiNzg0MQpBdXRob3I6IEhvbmdsaW5n
IFplbmcgPHplbmdob25nbGluZ0BreWxpbm9zLmNuPgoKcGh5OiB0aTogcGlwZTM6IEZpeCBjbG9j
ayByZXNvdXJjZSBsZWFrIG9uIHByb2JlIGVycm9ycwoKV2hlbiBkZXZtX3BoeV9jcmVhdGUoKSBv
ciBkZXZtX29mX3BoeV9wcm92aWRlcl9yZWdpc3RlcigpIGZhaWxzLAp0aGUgcmVmY2xrIHRoYXQg
d2FzIGVuYWJsZWQgZWFybGllciBpcyBub3QgZGlzYWJsZWQsIGNhdXNpbmcgYQpyZXNvdXJjZSBs
ZWFrLgoKRml4IHRoaXMgYnkgYWRkaW5nIGFuIGVycm9yIGhhbmRsaW5nIHBhdGggdG8gZGlzYWJs
ZSB0aGUgY2xvY2sKd2hlbiB0aGVzZSBmdW5jdGlvbnMgZmFpbC4KCkZpeGVzOiAyMzQ3MzhlYTMz
OTAgKCJwaHk6IHRpLXBpcGUzOiBtb3ZlIGNsayBpbml0aWFsaXphdGlvbiB0byBhIHNlcGFyYXRl
IGZ1bmN0aW9uIikKU2lnbmVkLW9mZi1ieTogSG9uZ2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5
bGlub3MuY24+Cgo+IEZpeCB0aGlzIGJ5IGFkZGluZyBhbiBlcnJvciBoYW5kbGluZyBwYXRoIHRv
IGRpc2FibGUgdGhlIGNsb2NrCj4gd2hlbiB0aGVzZSBmdW5jdGlvbnMgZmFpbC4KClRoaXMgaXNu
J3QgYSBidWcgaW4gdGhpcyBwYXRjaCwgYnV0IHdoaWxlIGZpeGluZyBjbG9jayBsZWFrcyBpbiB0
aGlzIGRyaXZlciwKZG9lcyB0aV9waXBlM19pbml0KCkgYWxzbyBsZWFrIHRoZSBjbG9jayByZWZl
cmVuY2VzIG9uIHRoZSBQQ0llIGVycm9yIHBhdGg/CgpJZiByZWdtYXBfdXBkYXRlX2JpdHMoKSBm
YWlscyBpbiB0aV9waXBlM19pbml0KCksIHRoZSBmdW5jdGlvbiByZXR1cm5zIHRoZQplcnJvciB3
aXRob3V0IGNhbGxpbmcgdGlfcGlwZTNfZGlzYWJsZV9jbG9ja3MoKToKCmRyaXZlcnMvcGh5L3Rp
L3BoeS10aS1waXBlMy5jOnRpX3BpcGUzX2luaXQoKSB7Cgl0aV9waXBlM19lbmFibGVfY2xvY2tz
KHBoeSk7CgkuLi4KCWlmIChwaHktPm1vZGUgPT0gUElQRTNfTU9ERV9QQ0lFKSB7CgkJaWYgKCFw
aHktPnBjc19zeXNjb24pIHsKCQkJb21hcF9jb250cm9sX3BjaWVfcGNzKHBoeS0+Y29udHJvbF9k
ZXYsIDB4OTYpOwoJCQlyZXR1cm4gMDsKCQl9CgoJCXZhbCA9IDB4OTYgPDwgT01BUF9DVFJMX1BD
SUVfUENTX0RFTEFZX0NPVU5UX1NISUZUOwoJCXJldCA9IHJlZ21hcF91cGRhdGVfYml0cyhwaHkt
PnBjc19zeXNjb24sIHBoeS0+cGNpZV9wY3NfcmVnLAoJCQkJCSBQQ0lFX1BDU19NQVNLLCB2YWwp
OwoJCXJldHVybiByZXQ7Cgl9CgkuLi4KfQoKQmVjYXVzZSB0aGUgaW5pdGlhbGl6YXRpb24gZmFp
bHMsIHRoZSBjb3JlIFBIWSBmcmFtZXdvcmsgd2lsbCBub3QgaW52b2tlIHRoZQouZXhpdCBjYWxs
YmFjaywgcG90ZW50aWFsbHkgbGVhdmluZyB0aGUgY2xvY2tzIHBlcm1hbmVudGx5IGVuYWJsZWQu
CgpVbmxpa2UgdGhlIHRpX3BpcGUzX2RwbGxfcHJvZ3JhbSgpIGVycm9yIHBhdGggbGF0ZXIgaW4g
dGhlIHNhbWUgZnVuY3Rpb24Kd2hpY2ggY29ycmVjdGx5IGNhbGxzIHRpX3BpcGUzX2Rpc2FibGVf
Y2xvY2tzKHBoeSksIHRoaXMgUENJZSBlcnJvciBwYXRoCmFwcGVhcnMgdG8gbWlzcyB0aGUgY2xl
YW51cC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0
Y2hzZXQvMjAyNjA1MTgwMjE1MzkuMTQ4OTAtMS16ZW5naG9uZ2xpbmdAa3lsaW5vcy5jbj9wYXJ0
PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
