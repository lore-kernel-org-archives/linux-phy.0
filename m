Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47410C98332
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 14:24:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OysAPZ9EONUvwS6Naj885wzwvZpjUqt1KlmfZGwgwk4=; b=BOGKgy3ya4dteA
	kvDAPT0w+gKUhlawyMhOrheVEJSs7mHhMeDESVBRbqdGfIdOLCAOu27eJ+AP3af0I+ho3BNvePxe8
	XLj5py+sS769/YKjnsp2HPkpEBFWet5fNnhk6z9Z5xxcqV/xDutMfaAwYs/r4sowdErcTMvGzFUG7
	OpmfDnb073DAJoxxXBdPRJcKA8QFksEvGU3lJOQTmGDaa72DEFP0i9h9JhunI/CtCWiU4sb+S4ylh
	FNN78l1GQWuBCZQr04HakZmBrV0IkZcwa2fwB/d7m12dXFKGsOWJfAhNPFtMxby9Xf9TdqBuB1nzz
	s2olOQHyz2ge/ZOC5eSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATKC-0000000FWB0-3Pno;
	Sat, 26 Sep 2026 14:24:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xATKB-0000000FWAr-1l2Z
	for linux-phy@lists.infradead.org;
	Sat, 26 Sep 2026 14:24:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7A8966020C;
	Sat, 26 Sep 2026 14:24:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DAD31F000FF;
	Sat, 26 Sep 2026 14:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790432662;
	bh=a34dKCFGnj1YhLXhoEWVxE1cmbQtJTn1UZf0QYyW3u0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ET8y45OpVi01KkX0kIn6q1NJ2NbMjGdLsNWSWGyV3YfshbpjmBaQ/7QW33gekyxW9
	 yx47I3zv6Xr/hHwk4wvYBh0ZUeJ71cfichVp2vKNcHeiIudUPNY8acwWyITS22qSdP
	 yYX8qUXYXgaOp/qgWrgUrE46sb+6sa9rNyBnywDyl/k0ZDO+Lmo12QQpEzIoTB4dxn
	 7zpBBryWAQzTGfNPG9ZpwP/3lheQx5FIn04EIqzhXMT0RCZt26UlMDdZmDdz3LZrgS
	 NsCcv0VYd2uNiJPqKTsC8iuslQJUrBg2DNlhaPl+j3Yclcf3gkwuv/zJIyATLLf0Sm
	 toJmeMCGLlcjA==
Date: Sat, 26 Sep 2026 16:24:09 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Can Peng <pengcan@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, bmasney@redhat.com, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/4] phy: freescale: fsl-samsung-hdmi: Fix runtime PM
 cleanup
Message-ID: <millx4qmsnogv3uxol44dp243oyct7n5duvrhomapgoc3egsia@6e4p7id3igyk>
References: <20260721064752.153338-1-pengcan@kylinos.cn>
 <20260721064752.153338-2-pengcan@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260721064752.153338-2-pengcan@kylinos.cn>
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

T24gVHVlLCBKdWwgMjEsIDIwMjYgYXQgMDI6NDc6NDlQTSArMDgwMCwgQ2FuIFBlbmcgd3JvdGU6
Cj4gZnNsX3NhbXN1bmdfaGRtaV9waHlfcHJvYmUoKSB0YWtlcyBhIHJ1bnRpbWUgUE0gcmVmZXJl
bmNlLCBtYXJrcyB0aGUKPiBkZXZpY2UgYWN0aXZlIGFuZCBlbmFibGVzIHJ1bnRpbWUgUE0gYmVm
b3JlIHJlZ2lzdGVyaW5nIHRoZSBQSFkgY2xvY2suCj4gSWYgcGh5X2Nsa19yZWdpc3RlcigpIGZh
aWxzLCBwcm9iZSByZXR1cm5zIHdpdGhvdXQgZHJvcHBpbmcgdGhlIHJ1bnRpbWUKPiBQTSByZWZl
cmVuY2Ugb3IgZGlzYWJsaW5nIHJ1bnRpbWUgUE0uCj4gCj4gVGhlIHJlbW92ZSBjYWxsYmFjayBv
bmx5IHVucmVnaXN0ZXJzIHRoZSBjbG9jayBwcm92aWRlciwgc28gcnVudGltZSBQTQo+IGlzIGFs
c28gbGVmdCBlbmFibGVkIGFmdGVyIGEgc3VjY2Vzc2Z1bCBwcm9iZSBmb2xsb3dlZCBieSBkcml2
ZXIgdW5iaW5kLgo+IAo+IENoZWNrIHBtX3J1bnRpbWVfc2V0X2FjdGl2ZSgpLCB1c2UgZGV2bV9w
bV9ydW50aW1lX2VuYWJsZSgpIHNvIHJ1bnRpbWUKPiBQTSBpcyBkaXNhYmxlZCBhdXRvbWF0aWNh
bGx5LCBhbmQgZHJvcCB0aGUgaW5pdGlhbCBub3Jlc3VtZSByZWZlcmVuY2UKPiBvbiBQTSBzZXR1
cCBhbmQgY2xvY2sgcmVnaXN0cmF0aW9uIGZhaWx1cmVzLgo+IAo+IEZpeGVzOiA2YWQwODJiZWU5
MDIgKCJwaHk6IGZyZWVzY2FsZTogYWRkIFNhbXN1bmcgSERNSSBQSFkiKQo+IENjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogQ2FuIFBlbmcgPHBlbmdjYW5Aa3lsaW5v
cy5jbj4KPiAtLS0KPiAgZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1p
LmMgfCAxNCArKysrKysrKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxl
L3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1z
YW1zdW5nLWhkbWkuYwo+IGluZGV4IGQwMTBmZWMxNTY3MS4uZTdhZjRmOWM3YjIwIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCj4gKysr
IGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKPiBAQCAtNjY1
LDIwICs2NjUsMjYgQEAgc3RhdGljIGludCBmc2xfc2Ftc3VuZ19oZG1pX3BoeV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJCQkJICAgICAiZmFpbGVkIHRvIGdldCByZWYg
Y2xrXG4iKTsKPiAgCj4gIAlwbV9ydW50aW1lX2dldF9ub3Jlc3VtZShwaHktPmRldik7Cj4gLQlw
bV9ydW50aW1lX3NldF9hY3RpdmUocGh5LT5kZXYpOwo+IC0JcG1fcnVudGltZV9lbmFibGUocGh5
LT5kZXYpOwo+ICsJcmV0ID0gcG1fcnVudGltZV9zZXRfYWN0aXZlKHBoeS0+ZGV2KTsKPiArCWlm
IChyZXQpCj4gKwkJZ290byBwbV9wdXRfbm9pZGxlOwo+ICsKPiArCXJldCA9IGRldm1fcG1fcnVu
dGltZV9lbmFibGUocGh5LT5kZXYpOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIHBtX3B1dF9ub2lk
bGU7CgpVc2UgZGV2bV9wbV9ydW50aW1lX3NldF9hY3RpdmVfZW5hYmxlZCgpLgoKLSBNYW5pCgot
LSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
