Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D27E606A32D
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 02:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YiaFvTU2;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=euJjFL04
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4j9ACWlljELWrUzWhQ6g3qhDjyQJ5bPlL3qDLij4T2Q=; b=YiaFvTU2tSsrzMamlFNDRlveeM
	pSQh5nLqv5DEyLm3XKyIt7GVW7nq0sqVGRofS0o0wzuh6SgomdvWSrWnBX7CaqydqNMcyOkLu4JCt
	BF9rIKpI8S74IktXRXrrfRwLNCmMPVZibOOotvNBBqx57HT9d8FL5JVCgzczW2lG8VngccFVWkjtF
	zF3239enSEKCqMG1y/ap1Ex5EjKA/lP/96EuFj5aUl2n6FKu3O+DDev52hucXAGGU3Pc0pTyu4R/2
	oPhOt5jr/MCmjbuT2Og5sAZZ5heSpZFQSRu7LgQOBcr3a2d2Hr6JTbAjBKZ7wox4wPaiH2i8f0F0A
	ylJTzFvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS3Xx-0000000F7Cf-32FW;
	Sat, 14 Nov 2026 02:31:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS3Xw-0000000F7CE-291e
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 02:31:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D939B60051;
	Sat, 14 Nov 2026 02:31:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F7EA1F000C4;
	Sat, 14 Nov 2026 02:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794623474;
	bh=HCdtEYnJFadi/954jLJ0mJ5BVrAgRDGXdQ9bEMqviCM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=euJjFL043m3d5Cv4IixK3+qhunY1tcVQ1Oe0xvJSxi+ba1yY5EIKyAp60qEo+eZUe
	 2jQx3p7hWQpiMzlYvEIJNe97U7eeIObtH+qBbD5B/Wb+iOEfzNTbyDThNfFQcbZbGI
	 /w2RyBOvbUF5aM7vkUPKM5gQTTtfiVhcbF0O9gms2Z6//zNQsblHddGfsdFYqzQcFQ
	 rW0fXrLYf3ZdYgd7Xp8XcBCT8puhJzoVH8YmtzBC4m/yoI2JUaiIG38doSksSE8nL1
	 0DI3T1ZbIXBLeP0xBWTFvQtiRIsunzLU6h5PsRnbxlr6XWNsdOg6r6KgP183pD747W
	 WbifOqF6S3D9Q==
Message-ID: <sashiko-outbox-214057@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v17 5/7] phy: rockchip: usbdp: Re-init PHY on mux change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261114-b4-rockchip-usbdp-cleanup-part3-v17-5-1af5f566408e@collabora.com>
References: <20261114-b4-rockchip-usbdp-cleanup-part3-v17-0-1af5f566408e@collabora.com>
 <20261114-b4-rockchip-usbdp-cleanup-part3-v17-5-1af5f566408e@collabora.com>
Date: Sat, 14 Nov 2026 02:31:11 +0000
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
LQoKY29tbWl0IGQ2ZWJlM2I0ZDRlNzc3MjJmYTQyNDljMmU2YjkwZWJkNGFhYjBiOTAKQXV0aG9y
OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBo
eTogcm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0IFBIWSBvbiBtdXggY2hhbmdlCgpUaGlzIGNvbW1p
dCBjYWxscyBya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKSBhdCB0aGUgZW5kIG9mCnJrX3Vk
cGh5X3R5cGVjX211eF9zZXQoKSBzbyB0aGF0IHRoZSBQSFkgaXMgcmUtaW5pdGlhbGl6ZWQgd2hl
biB0aGUgVHlwZS1DCm11eCBzdGF0ZSBjaGFuZ2VzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IGZjM2M0MTA0ZGNkN2UuLmI3OWI2ZGI5NmEwZTYg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMK
PiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC0x
NDM0LDcgKzE0MzQsNyBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X3R5cGVjX211eF9zZXQoc3RydWN0
IHR5cGVjX211eF9kZXYgKm11eCwKPiAgCj4gIAlya191ZHBoeV9zZXRfdHlwZWNfc3RhdGUodWRw
aHksIHN0YXRlLT5tb2RlKTsKPiAgCj4gLQlyZXR1cm4gMDsKPiArCXJldHVybiBya191ZHBoeV91
cGRhdGVfcG93ZXJfc3RhdGUodWRwaHkpOwo+ICB9CgpbU2V2ZXJpdHk6IE1lZGl1bV0KU2hvdWxk
IHJrX3VkcGh5X29yaWVuX3N3X3NldCgpIGFsc28gY2FsbCBya191ZHBoeV91cGRhdGVfcG93ZXJf
c3RhdGUoKT8KCldoZW4gY2FibGUgb3JpZW50YXRpb24gY2hhbmdlcywgcmtfdWRwaHlfb3JpZW5f
c3dfc2V0KCkgc2V0cwp1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IHRydWUgYW5kIHVwZGF0ZXMg
dWRwaHktPmxhbmVfbXV4X3NlbFtdIHZpYQpya191ZHBoeV9zZXRfdHlwZWNfZGVmYXVsdF9tYXBw
aW5nKCksIGJ1dCByZXR1cm5zIDAgd2l0aG91dCByZS1pbml0aWFsaXppbmcKdGhlIFBIWToKCmRy
aXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X29yaWVuX3N3
X3NldCgpIHsKICAgIC4uLgoJaWYgKHVkcGh5LT5mbGlwICE9IGZsaXBwZWQpIHsKCQlkZXZfZGJn
KHVkcGh5LT5kZXYsICJjYWJsZSBvcmllbnRhdGlvbiBjaGFuZ2VkLCBQSFkgcmUtaW5pdCByZXF1
aXJlZC5cbiIpOwoJCXVkcGh5LT5waHlfbmVlZHNfcmVpbml0ID0gdHJ1ZTsKCX0KCgl1ZHBoeS0+
ZmxpcCA9IGZsaXBwZWQ7Cglya191ZHBoeV9zZXRfdHlwZWNfZGVmYXVsdF9tYXBwaW5nKHVkcGh5
KTsKCXJrX3VkcGh5X3VzYl9idmFsaWRfZW5hYmxlKHVkcGh5LCB0cnVlKTsKCglyZXR1cm4gMDsK
fQoKT24gYm9hcmRzIHRoYXQgc3BlY2lmeSBvcmllbnRhdGlvbi1zd2l0Y2ggd2l0aG91dCBtb2Rl
LXN3aXRjaCBpbiBEZXZpY2UKVHJlZSAob3Igd2l0aCBUeXBlLUMgY29udHJvbGxlciBkcml2ZXJz
IHRoYXQgY2FsbCB0eXBlY19zZXRfb3JpZW50YXRpb24oKQp3aXRob3V0IGEgc3Vic2VxdWVudCB0
eXBlY19zZXRfbW9kZSgpKSwgcmtfdWRwaHlfdHlwZWNfbXV4X3NldCgpIGlzIG5vdApjYWxsZWQg
YWZ0ZXIgYW4gb3JpZW50YXRpb24gY2hhbmdlLCBsZWF2aW5nIHRoZSBoYXJkd2FyZSBsYW5lIG11
eCByZWdpc3Rlcgp1bnByb2dyYW1tZWQgYW5kIFVTQjMgU3VwZXJTcGVlZCBicm9rZW4gb24gYSBm
bGlwcGVkIGNhYmxlLgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MTExNC1iNC1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXBhcnQzLXYx
Ny0wLTFhZjVmNTY2NDA4ZUBjb2xsYWJvcmEuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
