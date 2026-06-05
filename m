Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD52DCD6E7C
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 12:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpUTeElJkA2VkLDzMjGnWP42gk3LgmshZJkx9SFrnW4=; b=mIkpEQueyEtZht
	azRsoOovKKxbExNoFNIgOz6gstZbZqUB4vjy8Tnd7XOAt98eR5sK5I1EwL/r4ylpLafkaWnizMwrj
	lC+L8lGbSTv4Bh5SLIkYCYP05vuB1OGkNi4/ICLp4CJ84FUIZUNY4qXVprjBtrWP74uJrAhjkxfUt
	TyxAnGdAouHfOHEl6Y034220vMQ+7IwKcfYTDkA6O9dniKM1rMPM1paDq1Q2xQ75LxUGUbZISP1eZ
	2BFUk36bKZTBPhhzhdWT0BZAa+cW3ZBTOjUUoY8MBfNLyWsI8Xv0Kjaw3Hpcul20927y19cWULQ04
	4Ff6zcZ2Cg/GpIcF6QWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVTHT-00000000afX-1jHX;
	Fri, 05 Jun 2026 12:04:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVTHS-00000000afP-0xaW
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 12:04:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7CD49601E3;
	Fri,  5 Jun 2026 12:04:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1BBD1F00893;
	Fri,  5 Jun 2026 12:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780661045;
	bh=LiobKirOKB1xrmPmD1Ax/udrBxe/KUlH8/zk9/Rngtg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NVzMYBHVrpaO0CNEy3s7aTaXJuFbIQnrl0he7XjlDp2jecgYXzCqLRLQNeyzWDQom
	 67twrkCaJ1+ccBbbSNfNtEropq+ftRbi0ioxfLh6/ODJsFKlMC0m8aM97wabu8CU0G
	 7PwEeSC5hmQ0gPj8OUSKl2x1n1gssKvdWqWG/gxkNXNnJYstHBx98g4ZW6YNO0Q8L1
	 O8NERVpQFGUykKR7g+h/C8C4ZlURyP9JOSQRUbVSPXZojRgD6bnbV8bG0rVokZj/J7
	 g4vCwVROxVPXSxdlBlN4SoO2O+83M7t9etF8PHTYCBzagVjo4x7qPQyAiX79dNITOa
	 n5NOlRiIf5E9w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] phy: freescale: phy-fsl-imx8qm-lvds-phy: Fix missing
 pm_runtime_disable() on probe error path
To: "Felix Gu" <ustc.gu@gmail.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, Frank.Li@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260605-lvds-v2-1-3ce7539d1104@gmail.com>
References: <20260605-lvds-v2-1-3ce7539d1104@gmail.com>
Date: Fri, 05 Jun 2026 12:04:04 +0000
Message-Id: <20260605120404.D1BBD1F00893@smtp.kernel.org>
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
IFtIaWdoXSBQZW5kaW5nIGFzeW5jaHJvbm91cyBzdXNwZW5kIHNjaGVkdWxlZCBieSBgcG1fcnVu
dGltZV9wdXQoKWAgY2FuIGJlIGNhbmNlbGxlZCBieSBgcG1fcnVudGltZV9kaXNhYmxlKClgIGR1
cmluZyBwcm9iZSBmYWlsdXJlLCBsZWF2aW5nIHRoZSBoYXJkd2FyZSBwZXJtYW5lbnRseSBpbiBh
biBhY3RpdmUgcG93ZXIgc3RhdGUuCi0tCgpjb21taXQgOGVkMWE0YTViNjAzMDFmOTVhYTY3MDBm
ZjZkOTAwZjNhZDcxNDFmMApBdXRob3I6IEZlbGl4IEd1IDx1c3RjLmd1QGdtYWlsLmNvbT4KCnBo
eTogZnJlZXNjYWxlOiBwaHktZnNsLWlteDhxbS1sdmRzLXBoeTogRml4IG1pc3NpbmcgcG1fcnVu
dGltZV9kaXNhYmxlKCkgb24gcHJvYmUgZXJyb3IgcGF0aAoKVGhpcyBjb21taXQgcmVwbGFjZXMg
bWFudWFsIHBtX3J1bnRpbWVfZGlzYWJsZSgpIGNhbGxzIHdpdGgKZGV2bV9wbV9ydW50aW1lX2Vu
YWJsZSgpIHRvIGF1dG9tYXRpY2FsbHkgY2xlYW4gdXAgcnVudGltZSBQTSBkdXJpbmcgcHJvYmUK
ZmFpbHVyZXMgb3IgdW5iaW5kcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2Fs
ZS9waHktZnNsLWlteDhxbS1sdmRzLXBoeS5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtaW14OHFtLWx2ZHMtcGh5LmMKPiBpbmRleCBlY2UzNTc0NDM1MjE3Li5jNjYyZjkxZTU5OGM3
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhxbS1sdmRz
LXBoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OHFtLWx2ZHMt
cGh5LmMKClsgLi4uIF0KCj4gQEAgLTM1NSwxNyArMzU3LDE1IEBAIHN0YXRpYyBpbnQgbWl4ZWxf
bHZkc19waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCj4gIAlmb3Ig
KGkgPSAwOyBpIDwgUEhZX05VTTsgaSsrKSB7Cj4gIAkJbHZkc19waHkgPSBkZXZtX2t6YWxsb2Mo
ZGV2LCBzaXplb2YoKmx2ZHNfcGh5KSwgR0ZQX0tFUk5FTCk7Cj4gLQkJaWYgKCFsdmRzX3BoeSkg
ewo+IC0JCQlyZXQgPSAtRU5PTUVNOwo+IC0JCQlnb3RvIGVycjsKPiAtCQl9Cj4gKwkJaWYgKCFs
dmRzX3BoeSkKPiArCQkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+ICAJCXBoeSA9IGRldm1fcGh5X2Ny
ZWF0ZShkZXYsIE5VTEwsICZtaXhlbF9sdmRzX3BoeV9vcHMpOwo+ICAJCWlmIChJU19FUlIocGh5
KSkgewo+ICAJCQlyZXQgPSBQVFJfRVJSKHBoeSk7Cj4gIAkJCWRldl9lcnIoZGV2LCAiZmFpbGVk
IHRvIGNyZWF0ZSBQSFkgZm9yIGNoYW5uZWwlZDogJWRcbiIsCj4gIAkJCQlpLCByZXQpOwo+IC0J
CQlnb3RvIGVycjsKPiArCQkJcmV0dXJuIHJldDsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBh
IHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IHdpbGwgdGhlc2UgZXJyb3IgcGF0aHMgbGVhdmUgdGhl
IGhhcmR3YXJlCnBvd2VyZWQgb24gaW5kZWZpbml0ZWx5IGlmIGluaXRpYWxpemF0aW9uIGZhaWxz
PwoKSnVzdCBwcmlvciB0byB0aGlzIGxvb3AsIG1peGVsX2x2ZHNfcGh5X3Byb2JlKCkgY2FsbHMg
bWl4ZWxfbHZkc19waHlfcmVzZXQoKSwKd2hpY2ggZmluaXNoZXMgYnkgcXVldWluZyBhbiBhc3lu
Y2hyb25vdXMgc3VzcGVuZDoKCmRyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhxbS1s
dmRzLXBoeS5jOm1peGVsX2x2ZHNfcGh5X3Jlc2V0KCkgewoJLi4uCglyZWdtYXBfd3JpdGUocHJp
di0+cmVnbWFwLCBQSFlfQ1RSTCwgQ1RSTF9SRVNFVF9WQUwpOwoKCXBtX3J1bnRpbWVfcHV0KGRl
dik7CgoJcmV0dXJuIDA7Cn0KCklmIGEgc3Vic2VxdWVudCBpbml0aWFsaXphdGlvbiBzdGVwIGZh
aWxzIGFuZCByZXR1cm5zIGFuIGVycm9yLCB0aGUgZGV2cmVzCmNsZWFudXAgd2lsbCBpbW1lZGlh
dGVseSBleGVjdXRlIHBtX3J1bnRpbWVfZGlzYWJsZSgpICh3aGljaCB3YXMgYWxzbyB0aGUKY2Fz
ZSBwcmV2aW91c2x5IHdpdGggdGhlIGdvdG8gZXJyIGxhYmVsKS4KCkJlY2F1c2UgcG1fcnVudGlt
ZV9kaXNhYmxlKCkgY2FsbHMgX19wbV9ydW50aW1lX2JhcnJpZXIoKSwgaXQgY2FuY2VscyBhbnkK
cGVuZGluZyBhc3luY2hyb25vdXMgaWRsZSBvciBzdXNwZW5kIHdvcmsuIFRoaXMgbWVhbnMgdGhl
IHJ1bnRpbWUgc3VzcGVuZApjYWxsYmFjayBtaWdodCBuZXZlciBleGVjdXRlLCBsZWF2aW5nIHRo
ZSBQSFkgaGFyZHdhcmUgZnVsbHkgcG93ZXJlZCB1cC4KClNob3VsZCBtaXhlbF9sdmRzX3BoeV9y
ZXNldCgpIHVzZSBwbV9ydW50aW1lX3B1dF9zeW5jKCkgaW5zdGVhZCB0bwpndWFyYW50ZWUgdGhl
IGRldmljZSBpcyBwcm9wZXJseSBzdXNwZW5kZWQgYmVmb3JlIGEgcG90ZW50aWFsIGVycm9yCmRp
c2FibGVzIHJ1bnRpbWUgUE0/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA1LWx2ZHMtdjItMS0zY2U3NTM5ZDExMDRAZ21haWwu
Y29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
