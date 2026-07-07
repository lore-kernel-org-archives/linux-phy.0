Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99499C44501
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bs708kPdNe5/bKEbYZwh9QOiIoAW6kftTy377/jftVY=; b=MTEfnxZfzVZlfK
	d6ti09C1zCdtXC37g5HTct8mYFmeTJ17jg9MKLZvzfXEGJDTFIuuUAJDeNfh0YwOs5Vi9IzWKe+nR
	grXknZQoLCH+oY+rbJ/cW38whgnsJpaTUxboVyxmAFSbEDSuKsaN5q25KYVLN7WGRZjdMnR2Tiyrt
	K/suUw6mncKPiIGYGbvpk5UyvIYLujY5rexCRXbnse0M4OIwCwpe1WkwCG1Y8R6HxapOWBNHJ3qO1
	pVrtfUms7IjdJSG+9+wCtOjeoC25iiwmEJOqBiPxfMXf+lOOR5JMD6gNZQCcgELQE2CEjsJpanAan
	nGzIDsORlfjyydJc3YJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6rj-0000000FBVy-3dKo;
	Tue, 07 Jul 2026 14:33:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6ri-0000000FBVq-0tz3
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:33:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A8FA060018;
	Tue,  7 Jul 2026 14:33:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D977E1F000E9;
	Tue,  7 Jul 2026 14:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434817;
	bh=AlxPMQrsqVhCEj9Pg9ZvOqNkVUHqUdIxpTTtVw0F45E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iV9s10U/wvFtMcM2as83miqm3h9Hp4yRdamO3bmQzXNql/LUUFZAQPLpypnIJtYxd
	 Hs/6o76KCR4bGOG84YLP/ZYXFHaEySocoUUxZBquuXzbv8yH9MShkusWvsJMpKA0T4
	 r0ZNP0bYVyGPvyi++uVcDt9VJjnOAyF8TLpLEfgyozpf0e9lhb9nFxlTJNymmAqxD/
	 5Ju8qCdnU4U5UcX+6dgCRfVPevGAc9jl9ylJUGc/154Q136vWbGwClVUaOASgub1xS
	 RU7w6MPJE5y83N1TX/expkL3tj6nRRF7IXPFAjxrK2/+wgwQlq5vE4rKiAy+5HaplF
	 gQtPvSoYNACwg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 07/12] phy: phy-mtk-dp: Support setting volt swing
 and preemphasis values
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: vkoul@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com
In-Reply-To: <20260707141931.191172-8-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-8-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 14:33:36 +0000
Message-Id: <20260707143336.D977E1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEFuYWxvZyBQSFkgZHJp
dmluZyBwYXJhbWV0ZXJzIGFyZSB3cml0dGVuIHRvIHRoZSB3cm9uZyByZWdpc3RlciBvZmZzZXRz
LCBtaXNhbGlnbmluZyBzaWduYWwgZHJpdmluZyBzZXR0aW5ncy4KLSBbTG93XSBDb21waWxhdGlv
biBlcnJvciBkdWUgdG8gdW5kZWNsYXJlZCB2YXJpYWJsZSBgcmV0YCBpbiBgbXRrX2RwX3BoeV9w
cm9iZWAuCi0tCgotLS0gUGF0Y2ggWzddOiBbUEFUQ0ggdjIgMDcvMTJdIHBoeTogcGh5LW10ay1k
cDogU3VwcG9ydCBzZXR0aW5nIHZvbHQgc3dpbmcgYW5kIHByZWVtcGhhc2lzIHZhbHVlcyAtLS0K
Y29tbWl0IDgzYjE2YTk3NGQyMjU5ZDVlNmYyZTdjZmE1NzBlN2IzMWU0ZWM3ZTUKQXV0aG9yOiBB
bmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xs
YWJvcmEuY29tPgoKcGh5OiBwaHktbXRrLWRwOiBTdXBwb3J0IHNldHRpbmcgdm9sdCBzd2luZyBh
bmQgcHJlZW1waGFzaXMgdmFsdWVzCgpUaGlzIGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIHNldHRp
bmcgdm9sdGFnZSBzd2luZyBhbmQgcHJlZW1waGFzaXMgdmFsdWVzCmluIHRoZSBEUCBQSFkgLmNv
bmZpZ3VyZSgpIGNhbGxiYWNrIGJ5IGhvbm9yaW5nIHRoZSBzZXRfdm9sdGFnZXMgcmVxdWVzdC4K
SXQgYWxzbyBlbnN1cmVzIHByb3BlciBoYXJkd2FyZSBjbGVhbnVwIGJ5IHJlc2V0dGluZyBib3Ro
IHZhbHVlcyBpbiB0aGUKLnJlc2V0KCkgY2FsbGJhY2suCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9tZWRpYXRlay9waHktbXRrLWRwLmMgYi9kcml2ZXJzL3BoeS9tZWRpYXRlay9waHktbXRr
LWRwLmMKPiBpbmRleCAyZjNlYzNmYTM4NGRmLi4yNzA4MjVmMTMwYTk1IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L21l
ZGlhdGVrL3BoeS1tdGstZHAuYwpbIC4uLiBdCj4gQEAgLTEwMSw2ICsxMDYsNyBAQCBlbnVtIG10
a19kcF9waHlhX2FuYV9nbGJfcmVnaWR4IHsKPiAgfTsKPiAgCj4gIGVudW0gbXRrX2RwX3BoeWRf
ZGlnX2xhbmVfcmVnaWR4IHsKPiArCURQX1BIWURfTEFOX0RSSVZJTkdfRk9SQ0UsCj4gIAlEUF9Q
SFlEX0xBTl9EUklWSU5HX1BBUkFNXzAsCj4gIAlEUF9QSFlEX0xBTl9NQVgKPiAgfTsKCltTZXZl
cml0eTogSGlnaF0KQXJlIHRoZSBhbmFsb2cgUEhZIGRyaXZpbmcgcGFyYW1ldGVycyBiZWluZyB3
cml0dGVuIHRvIHRoZSB3cm9uZyByZWdpc3RlcgpvZmZzZXRzLCBtaXNhbGlnbmluZyB0aGUgc2ln
bmFsIGRyaXZpbmcgc2V0dGluZ3M/CgpUaGUgYmFzZSBvZmZzZXQgZm9yIGluaXRpYWxpemluZyB0
aGUgYW5hbG9nIFBIWSBkcml2aW5nIHBhcmFtZXRlcnMgYXBwZWFycyB0bwpoYXZlIHNoaWZ0ZWQg
ZnJvbSBQQVJBTV8zICgweDExMzgpIHRvIFBBUkFNXzAgKDB4MTEyYyksIGJ1dCB0aGUKZHJpdmlu
Z19wYXJhbXMgYXJyYXkgc3RpbGwgY29udGFpbnMgdGhlIDYgZGVmYXVsdCB2YWx1ZXMgbWVhbnQg
Zm9yIFBBUkFNXzMKdGhyb3VnaCBQQVJBTV84OgoKZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10
ay1kcC5jOm10a19kcF9waHlfaW5pdCgpIHsKICAgIC4uLgoJY29uc3QgdTMyIHJlZyA9IHBkYXRh
LT5yZWdzX2RpZ19sYW5lW0RQX1BIWURfTEFOX0RSSVZJTkdfUEFSQU1fMF07CglzdGF0aWMgY29u
c3QgdTMyIGRyaXZpbmdfcGFyYW1zW10gPSB7CgkJRFJJVklOR19QQVJBTV8zX0RFRkFVTFQsCgkJ
RFJJVklOR19QQVJBTV80X0RFRkFVTFQsCgkJRFJJVklOR19QQVJBTV81X0RFRkFVTFQsCgkJRFJJ
VklOR19QQVJBTV82X0RFRkFVTFQsCgkJRFJJVklOR19QQVJBTV83X0RFRkFVTFQsCgkJRFJJVklO
R19QQVJBTV84X0RFRkFVTFQKCX07CiAgICAuLi4KCWZvciAoaSA9IDA7IGkgPCBNVEtfRFBfUEhZ
X01BWF9MQU5FUzsgaSsrKSB7CgkJcmV0ID0gcmVnbWFwX2J1bGtfd3JpdGUoZHBfcGh5LT5yZWdt
YXAsCgkJCQkJcGRhdGEtPm9mZl9kaWdfbGFuZVtpXSArIHJlZywKCQkJCQlkcml2aW5nX3BhcmFt
cywKCQkJCQlBUlJBWV9TSVpFKGRyaXZpbmdfcGFyYW1zKSk7CiAgICAuLi4KfQoKV3JpdGluZyB0
aGUgZGVmYXVsdHMgZm9yIHBhcmFtcyAzLTggaW50byBwYXJhbXMgMC01IHdvdWxkIGxlYXZlIHBh
cmFtcyA2LTgKdW5pbml0aWFsaXplZCBhbmQgY29ycnVwdCB0aGUgc2V0dGluZ3MgZm9yIHBhcmFt
cyAwLTUsIHdoaWNoIGNvdWxkIGxlYWQgdG8KaW5jb3JyZWN0IGxpbmsgdHJhaW5pbmcuCgpbU2V2
ZXJpdHk6IExvd10KSXMgdGhlcmUgYSBtaXNzaW5nIGRlY2xhcmF0aW9uIGZvciB0aGUgdmFyaWFi
bGUgcmV0IGluIG10a19kcF9waHlfcHJvYmUoKT8KCmRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1t
dGstZHAuYzptdGtfZHBfcGh5X3Byb2JlKCkgewogICAgLi4uCglwcm92aWRlciA9IGRldm1fb2Zf
cGh5X3Byb3ZpZGVyX3JlZ2lzdGVyKGRldiwgb2ZfcGh5X3NpbXBsZV94bGF0ZSk7CglpZiAoSVNf
RVJSKHByb3ZpZGVyKSkKCQlyZXR1cm4gUFRSX0VSUihwcm92aWRlcik7CgoJcmV0ID0gZGV2bV9w
bV9ydW50aW1lX2VuYWJsZShkZXYpOwoJaWYgKHJldCkKCQlyZXR1cm4gcmV0OwoKCXJldHVybiAw
Owp9CgpUaGlzIGNhdXNlcyBhIGNvbXBpbGF0aW9uIGVycm9yIGJlY2F1c2UgcmV0IGlzIHVzZWQg
d2l0aG91dCBiZWluZyBkZWNsYXJlZC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDcxNDE5MzEuMTkxMTcyLTEtYW5nZWxvZ2lv
YWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9NwoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
