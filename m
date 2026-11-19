Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74FC2606A332
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 19:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hIxgodA0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YjzzbRIc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jrvZ3R0mGqrdNDOoEyJsY8gA9AfF+mTnkB+yM2MSCp8=; b=hIxgodA0qiJGQa3EBC5Hx2MOEF
	Zq3k7wAOXMCRRUQCoMCPSal/i/pp5drPOsxzohmyourwSez+IqqpQEv6t6sofhk+EbYSd95r/DKPR
	JQ0mMYigSo7PCW/PtoIQnd/xQtOngAhU4oY+LN30CU5YG27DTqZSgcCMptiuJ1p4msQuR58i2b5qi
	FJeXE0V7Ox6K5C/zKY0btaEdRRK6NJWo99qSxl8NWtN1FWjM5KM2Xj4TFjP66514ZfSprTKVTglvb
	GDY43z1a+5g8aQpK7BRp+j58y5+gmujRXPMzyT60M7Bu1lrDKh1bmW76bPi9dK1MCPNNDvQWRQm9m
	pV+ChU3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU8Dh-0000000DHoL-0C6q;
	Thu, 19 Nov 2026 19:54:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU8Df-0000000DHo3-269H
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 19:54:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 15EB0456B5;
	Thu, 19 Nov 2026 19:54:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 929A11F000C6;
	Thu, 19 Nov 2026 19:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795118095;
	bh=XaLAsEu4UO5DapSZw0EfL4oTdO5UsS7JdVPqGtvWbNQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YjzzbRIcd0gQJziGVjB5hKPP4cHcTIWyMg9GS5SB4VsjbZdM4CBXI/vF3yj71fIlO
	 osOwlb+7vWnI2Lrlz/GGnp/QsHAMkqjbuR/grjjE0h28hdvHQV9byRJ68LxdOKELB/
	 lNwhm8cxM+ncBekbRz3FxdQSfyGG/X16UjUIg6DcUbvWkk27TambPgi5mOsOK3f45e
	 A4cwvQ2b7RZOttCt7EInnlL6pD4UXShFzN277ToTy5yYhtx59cL9oLheMxPeyGzeMa
	 GX04EidaoDW6xobvNWSRpX/BewsQECy1Sw4QxqGnK8YdUxCCuUpxf3K8/pF1td4wQY
	 G75JIsqjx3tIA==
Message-ID: <sashiko-outbox-223985@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 5/7] phy: rockchip: usbdp: Re-init PHY on mux change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261119-b4-rockchip-usbdp-cleanup-part3-v18-5-fb325e336494@collabora.com>
References: <20261119-b4-rockchip-usbdp-cleanup-part3-v18-0-fb325e336494@collabora.com>
 <20261119-b4-rockchip-usbdp-cleanup-part3-v18-5-fb325e336494@collabora.com>
Date: Thu, 19 Nov 2026 19:54:54 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiByb2NrY2hpcDog
dXNiZHA6IG1pc3NpbmcgUEhZIHJlLWluaXQgaW4KICBya191ZHBoeV9vcmllbl9zd19zZXQoKQot
LQoKY29tbWl0IGQzOWVjODdlYmU1NWRlNmQwNGZkNjQ1ZjJkYzVhZGQ0MjYxMmY1OTMKQXV0aG9y
OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBo
eTogcm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0IFBIWSBvbiBtdXggY2hhbmdlCgpUaGlzIGNvbW1p
dCBjYWxscyBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKSBpbiBya191ZHBoeV90eXBlY19t
dXhfc2V0KCkKdG8gcmUtaW5pdGlhbGl6ZSB0aGUgUEhZIHdoZW4gdGhlIFR5cGUtQyBtdXggc3Rh
dGUgY2hhbmdlcy4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMK
PiBpbmRleCAxNDBiZWM4ODdhNWVmLi5lNGJiY2I0ZWRlYWU2IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBAQCAtMTQzOCw3ICsxNDM4LDcgQEAgc3Rh
dGljIGludCBya191ZHBoeV90eXBlY19tdXhfc2V0KHN0cnVjdCB0eXBlY19tdXhfZGV2ICptdXgs
Cj4gIAo+ICAJcmtfdWRwaHlfc2V0X3R5cGVjX3N0YXRlKHVkcGh5LCBzdGF0ZS0+bW9kZSk7Cj4g
IAo+IC0JcmV0dXJuIDA7Cj4gKwlyZXR1cm4gcmtfdWRwaHlfdXBkYXRlX3Bvd2VyX3N0YXRlKHVk
cGh5KTsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgcmtfdWRwaHlfdHlwZWNfbXV4X3VucmVnaXN0
ZXIodm9pZCAqZGF0YSkKCltTZXZlcml0eTogTWVkaXVtXQpTaG91bGQgcmtfdWRwaHlfb3JpZW5f
c3dfc2V0KCkgYWxzbyBjYWxsIHJrX3VkcGh5X3VwZGF0ZV9wb3dlcl9zdGF0ZSgpPwoKV2hlbiBj
YWJsZSBvcmllbnRhdGlvbiBjaGFuZ2VzLCBya191ZHBoeV9vcmllbl9zd19zZXQoKSBzZXRzCnVk
cGh5LT5waHlfbmVlZHNfcmVpbml0ID0gdHJ1ZSBhbmQgdXBkYXRlcyB1ZHBoeS0+bGFuZV9tdXhf
c2VsIGFuZAp1ZHBoeS0+aHdfbW9kZSB2aWEgcmtfdWRwaHlfc2V0X3R5cGVjX2RlZmF1bHRfbWFw
cGluZygpLCBidXQgcmV0dXJucyAwCndpdGhvdXQgcmUtaW5pdGlhbGl6aW5nIHRoZSBQSFk6Cgpk
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYzpya191ZHBoeV9vcmllbl9z
d19zZXQoKSB7CiAgICAuLi4KCWlmICh1ZHBoeS0+ZmxpcCAhPSBmbGlwcGVkKSB7CgkJZGV2X2Ri
Zyh1ZHBoeS0+ZGV2LCAiY2FibGUgb3JpZW50YXRpb24gY2hhbmdlZCwgUEhZIHJlLWluaXQgcmVx
dWlyZWQuXG4iKTsKCQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IHRydWU7Cgl9CgoJdWRwaHkt
PmZsaXAgPSBmbGlwcGVkOwoJcmtfdWRwaHlfc2V0X3R5cGVjX2RlZmF1bHRfbWFwcGluZyh1ZHBo
eSk7Cglya191ZHBoeV91c2JfYnZhbGlkX2VuYWJsZSh1ZHBoeSwgdHJ1ZSk7CgoJcmV0dXJuIDA7
Cn0KCk9uIGJvYXJkcyB0aGF0IHNwZWNpZnkgb3JpZW50YXRpb24tc3dpdGNoIHdpdGhvdXQgbW9k
ZS1zd2l0Y2ggKHN1Y2ggYXMKcmszNTg4LWphZ3Vhci5kdHMpLCBvciB3aXRoIFR5cGUtQyBjb250
cm9sbGVyIGRyaXZlcnMgdGhhdCBkbyBub3QgY2FsbAp0eXBlY19zZXRfbW9kZSgpIGFmdGVyIHR5
cGVjX3NldF9vcmllbnRhdGlvbigpLCBya191ZHBoeV90eXBlY19tdXhfc2V0KCkKaXMgbm90IGlu
dm9rZWQgYWZ0ZXIgdGhlIG9yaWVudGF0aW9uIGNoYW5nZSBhbmQgdGhlIFBIWSBpcyBuZXZlcgpy
ZS1pbml0aWFsaXplZCBmb3IgdGhlIG5ldyBsYW5lIG1hcHBpbmcuCgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTE5LWI0LXJvY2tj
aGlwLXVzYmRwLWNsZWFudXAtcGFydDMtdjE4LTAtZmIzMjVlMzM2NDk0QGNvbGxhYm9yYS5jb20/
cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
