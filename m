Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83579C53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 06:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UH2k/pOCWwFAhJ06bkKTVPT4vMoNkJvfO45msodzdg=; b=k4IE8LIKJ/T6lx
	8yEiZQn4AY2t8GtbdoMxJTCSJpVqvPttg6JIVQ1bl0PYJlkeOfAK2xM1VCDmwZd0V7LkrJI8SZGxa
	l3klBuoFJ/IEnOH7WZvcUJ0SR8bWco/vMtIa0BXggWJUFVfUkWvlWbrGm3IlALc9Jv93fqvMY3vnS
	68Qy9ihw5BMtfLawffqcI1lginTK6NnYwVM4zMXoPpC3GamVT1/Jw2tQ+IFFRIeE8EPXpZ/lyWJlY
	8mT/aW24J3hQhAWtEbkveYz1fvbv3Wln2HngGr64RMeHx4kqLasaHmCFjIoZ/qYjBne4v1C2oW6vN
	M0/KakqGaZ+msgUmFqCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woy6b-000000073wh-072L;
	Wed, 29 Jul 2026 06:49:29 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woy6Z-000000073wJ-1Id3
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 06:49:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0401743D3E;
	Wed, 29 Jul 2026 06:49:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79F751F000E9;
	Wed, 29 Jul 2026 06:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785307765;
	bh=a5XST+XBsWG9hKzIlTdRSHZnzT9UyERw2f83xdwRgko=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jG0y84tzKq6V7OyJI68Y+Dj9DM+vUzXtM5oBc32/ZVaaOdRpgSFNMNHrrxfdrXm3G
	 YzQl75J9P06J6DRBoJr7VvEA82u47z5/Kh9pTeXzSXEVx2EzhCjQ3RsJsdP6J+RVPF
	 +e43gB9+JrGeEhPHj1FywXyewmzqntjvxi3Zl0yIs+XHdBMWrS9O1kMdCTGGVvdFxP
	 u/r9fcPPuO/GuHo/vjSFGSFT1DCXEVOrkYPAKyNSnOQptokZJ8gGCDBOecyiH9ufJ6
	 Orvu2WRRuaQTjTJR6prEvlc6wwEKr72ozya0VRebNYa8naFRLqRHNFxY5631wdFf3T
	 BrqY42l9ejzmA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 4/6] phy: fsl-imx8mq-usb: add control register regmap
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: Frank.Li@kernel.org, imx@lists.linux.dev, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260729-imx8mp-usb-phy-improvement-v7-4-c385ee40ade6@nxp.com>
References: <20260729-imx8mp-usb-phy-improvement-v7-0-c385ee40ade6@nxp.com>
 <20260729-imx8mp-usb-phy-improvement-v7-4-c385ee40ade6@nxp.com>
Date: Wed, 29 Jul 2026 06:49:23 +0000
Message-Id: <20260729064925.79F751F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gSW5jb3JyZWN0IGVy
cm9yIGhhbmRsaW5nIG9mIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKSB0cmVhdHMgYSBzdWNjZXNzZnVs
IGFjdGl2ZSBzdGF0ZSBhcyBhIGZhaWx1cmUuCi0gW0xvd10gTWlzc2luZyBLY29uZmlnIGRlcGVu
ZGVuY3kgZm9yIFJFR01BUF9NTUlPLgotLQoKLS0tIFBhdGNoIFs0XTogW1BBVENIIHY3IDQvNl0g
cGh5OiBmc2wtaW14OG1xLXVzYjogYWRkIGNvbnRyb2wgcmVnaXN0ZXIgcmVnbWFwIC0tLQpjb21t
aXQgM2JlOGI5NzE3NmZkZDVlMTU5YTNmMWE4NTQxZWUzMmE4NzU1NjU4YgpBdXRob3I6IFh1IFlh
bmcgPHh1LnlhbmdfMkBueHAuY29tPgoKcGh5OiBmc2wtaW14OG1xLXVzYjogYWRkIGNvbnRyb2wg
cmVnaXN0ZXIgcmVnbWFwCgpUaGlzIGNvbW1pdCBhZGRzIGEgMzItYml0IE1NSU8gY29udHJvbCBy
ZWdpc3RlciByZWdtYXAgZm9yIG9uLWNoaXAgYWNjZXNzCnRvIHRoZSBjb250cm9sIHJlZ2lzdGVy
cyBpbnNpZGUgdGhlIFVTQiAzLjAgZmVtdG9QSFkuIEl0IGV4cG9ydHMgdGhlc2UKcmVnaXN0ZXJz
IHZpYSBkZWJ1Z2ZzIHRvIGhlbHAgd2l0aCBQSFkgZGlhZ25vc3RpYy4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYyBiL2RyaXZlcnMvcGh5
L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+IGluZGV4IDc0ZTY2NTUyNWVjNDguLjgz
ZDVhNDRjNDA4NDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wt
aW14OG1xLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1x
LXVzYi5jClsgLi4uIF0KPiBAQCAtNjk2LDYgKzcwOCwxMyBAQCBzdGF0aWMgaW50IGlteDhtcV91
c2JfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAoSVNfRVJS
KGlteF9waHktPmJhc2UpKQo+ICAJCXJldHVybiBQVFJfRVJSKGlteF9waHktPmJhc2UpOwo+ICAK
PiArCWlteF9waHktPmNyX3JlZ21hcCA9IGRldm1fcmVnbWFwX2luaXRfbW1pbyhkZXYsIGlteF9w
aHktPmJhc2UgKyBQSFlfQ1JDVEwsCj4gKwkJCQkJCSAgICZpbXhfY3JfcmVnbWFwX2NvbmZpZyk7
CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIG5ldyByZWdtYXAgaW5pdGlhbGl6YXRpb24gcmVx
dWlyZSBhIEtjb25maWcgdXBkYXRlPwoKU2luY2UgdGhlIGRyaXZlciBub3cgdXNlcyBkZXZtX3Jl
Z21hcF9pbml0X21taW8oKSwgaXQgZGVwZW5kcyBvbiB0aGUgTU1JTwpyZWdtYXAgc3Vic3lzdGVt
LiBIb3dldmVyLCBQSFlfRlNMX0lNWDhNUV9VU0IgaW4gZHJpdmVycy9waHkvZnJlZXNjYWxlL0tj
b25maWcKZG9lcyBub3Qgc2VsZWN0IFJFR01BUF9NTUlPLgoKQ291bGQgdGhpcyBsZWFkIHRvIGJ1
aWxkIGZhaWx1cmVzIChzdWNoIGFzIG1pc3NpbmcgbW9kdWxlIG9yIHVuZGVmaW5lZApyZWZlcmVu
Y2UgdG8gX19kZXZtX3JlZ21hcF9pbml0X21taW9fY2xrKSBpbiBjb25maWd1cmF0aW9ucyB3aGVy
ZSBubyBvdGhlcgpjb21wb25lbnQgc2VsZWN0cyBSRUdNQVBfTU1JTz8KCj4gKwlpZiAoSVNfRVJS
KGlteF9waHktPmNyX3JlZ21hcCkpIHsKPiArCQlkZXZfd2FybihkZXYsICJGYWlsIHRvIGluaXQg
ZGVidWcgcmVnaXN0ZXIgcmVnbWFwXG4iKTsKPiArCQlpbXhfcGh5LT5jcl9yZWdtYXAgPSBOVUxM
Owo+ICsJfQo+ICsKWyAuLi4gXQoKW1NldmVyaXR5OiBNZWRpdW1dCkxvb2tpbmcgYXQgdGhlIGRy
aXZlcidzIHVuYmluZCBwYXRoIGluIGlteDhtcV91c2JfcGh5X3JlbW92ZSgpOgoKc3RhdGljIHZv
aWQgaW14OG1xX3VzYl9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCnsK
CS4uLgoJcmV0ID0gcG1fcnVudGltZV9nZXRfc3luYyhkZXYpOwoJaWYgKHJldCkKCQlkZXZfd2Fy
bihkZXYsICJmYWlsZWQgdG8gcmVzdW1lIG9uIHJlbW92ZTogJWRcbiIsIHJldCk7CgpBY2NvcmRp
bmcgdG8gdGhlIFBNIHN1YnN5c3RlbSBydWxlcywgcG1fcnVudGltZV9nZXRfc3luYygpIHJldHVy
bnMgMSB3aGVuIHRoZQpkZXZpY2UgaXMgYWxyZWFkeSBhY3RpdmUuIERvZXMgY2hlY2tpbmcgaWYg
KHJldCkgaW5zdGVhZCBvZiBpZiAocmV0IDwgMCkKdHJlYXQgdGhpcyBzdWNjZXNzIGNvbmRpdGlv
biBhcyBhIGZhaWx1cmUsIHBvdGVudGlhbGx5IGNhdXNpbmcgYSBzcHVyaW91cwprZXJuZWwgd2Fy
bmluZyBkdXJpbmcgZHJpdmVyIHVuYmluZD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjktaW14OG1wLXVzYi1waHktaW1wcm92
ZW1lbnQtdjctMC1jMzg1ZWU0MGFkZTZAbnhwLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
