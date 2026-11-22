Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38190606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 03:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RmRRZdb1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=CvqfHAGc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CKml82FiId3vVn/bHyvJ9UgfQooLSDeYfS4Q/9Zi66Y=; b=RmRRZdb1OEfhh8PxwtPmrTqsf7
	0vaVyVT1wiy/rPDhSai4aaBJFLwfJcxCfOr9D86/Vtr3vjE6V8IKMTMjdsPYwomjyLUSHY/Q8S8eM
	GzPCK72cKYtktc622/ZNnyuydKqJIYS+X/7/MYeY0c5l7qaitU0LU+/0TCLMdL5yEpU/IqgOyCT9w
	WqzaLod3OK9fYcMs8I3762azAq0XOUaF6rQqwdeA94n/n8GCKtyYnMwqw4Dw0brtUFzdcN2H3JbYQ
	pcBKpUVANE/pFZ1Oq6InuKldSw5S4KDuvYTf4b3U5f2IJ+nWlQAcgzfTw4Q5Q5QKUlbq6I7O1xy5i
	PD3W8iag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxwQ-00000000hhL-0uQd;
	Sun, 22 Nov 2026 03:08:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxwO-00000000hhF-1Bwp
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 03:08:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BD0F7404AD;
	Sun, 22 Nov 2026 03:08:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43C611F000C0;
	Sun, 22 Nov 2026 03:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795316911;
	bh=wEh8EvlkwVchu46Tvm8gYaXQPdaWnhAjdg3zCaI4Hls=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CvqfHAGcTc6EmjtnK2KtNwI2lYOqcUOgUgBuu9BItd4vP5ddbpGMPxTW62SSKtLqH
	 2dxr84GDCUHuz7ONJoXsKheK9ePtu+RnG/ip92ig8tkD9rpA3C2rTpQ/eTx7ts82yK
	 kc+Rph7vSIjpJjJqSXjpcrw5Ubr1POgQm0jffWPeZnX7Hugl5GYjHQioXxSJUnCNTw
	 SIqLBfDuWe4HKEx8FMaiWCxudkSc7odS6tSZwxAm7YJGWL5UGQYbW/al4zYscEIjdk
	 B+Bk+BaISJgLLVtEiAGmw1U6VxZnnUy1DyT5E4cCJYxkL/BwzHqoM0wiag0Cuc+XFa
	 FlhvrOynGJpcQ==
Message-ID: <sashiko-outbox-227664@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 08/11] PCI: qcom-ep: Add Nord PCIe Endpoint controller
 support
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261122-nord_ep-v1-8-6d8839ffa9aa@oss.qualcomm.com>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
 <20261122-nord_ep-v1-8-6d8839ffa9aa@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 03:08:30 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFBDSTogcWNvbS1lcDogdW5j
b25kaXRpb25hbCBtc2l4X2NhcGFibGUgaW4gY2ZnX25vcmQgYnJlYWtzCiAgNy1yZWcgaW5zdGFu
Y2VzCi0tCgpjb21taXQgMDRiODY1MzI4M2JjOGFiZTU3ZjNlNjRhNTQ0YzI0YzExOTVkMzdjMwpB
dXRob3I6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVh
bGNvbW0uY29tPgoKUENJOiBxY29tLWVwOiBBZGQgTm9yZCBQQ0llIEVuZHBvaW50IGNvbnRyb2xs
ZXIgc3VwcG9ydAoKVGhpcyBjb21taXQgYWRkcyB0aGUgcWNvbSxub3JkLXBjaWUtZXAgY29tcGF0
aWJsZSBhbmQgY2ZnX25vcmQgY29uZmlndXJhdGlvbgpmb3IgdGhlIE5vcmQgUENJZSBFbmRwb2lu
dCBjb250cm9sbGVyLCBpbmNsdWRpbmcgcGVyLWNoYW5uZWwgSERNQSByZWdpc3RlcgpzcGFjaW5n
IHZpYSBjaF9zcGFjZV9zei4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtcWNvbS1lcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29t
LWVwLmMKPiBpbmRleCAzMzUyMDdkZThmMGNjLi43OWFjZWRiMzAxOTc0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS1lcC5jCj4gKysrIGIvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLWVwLmMKClsgLi4uIF0KCj4gQEAgLTk4NSw3
ICs5ODksMTYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxY29tX3BjaWVfZXBfY2ZnIGNmZ18xXzM0
XzBfZndfbWFuYWdlZCA9IHsKPiAgCS5maXJtd2FyZV9tYW5hZ2VkID0gdHJ1ZSwKPiAgfTsKPiAg
Cj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcWNvbV9wY2llX2VwX2NmZyBjZmdfbm9yZCA9IHsKPiAr
CS5oZG1hX3N1cHBvcnQgPSB0cnVlLAo+ICsJLm92ZXJyaWRlX25vX3Nub29wID0gdHJ1ZSwKPiAr
CS5kaXNhYmxlX21oaV9yYW1fcGFyaXR5X2NoZWNrID0gdHJ1ZSwKPiArCS5tc2l4X2NhcGFibGUg
PSB0cnVlLAo+ICsJLmNoX3NwYWNlX3N6ID0gU1pfNEssCj4gK307CgpbU2V2ZXJpdHk6IEhpZ2hd
CkRvZXMgc2V0dGluZyAubXNpeF9jYXBhYmxlID0gdHJ1ZSB1bmNvbmRpdGlvbmFsbHkgaW4gY2Zn
X25vcmQgYnJlYWsgdGhlCk5vcmQgUENJZSBlbmRwb2ludCBpbnN0YW5jZXMgdGhhdCBkbyBub3Qg
c3VwcG9ydCBNU0ktWD8KClBlciBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNp
L3Fjb20scGNpZS1lcC55YW1sLApxY29tLG5vcmQtcGNpZS1lcCBub2RlcyBhbGxvdyA3IG9yIDgg
cmVnIGVudHJpZXMgYmVjYXVzZSBvbmx5IG9uZSBOb3JkCmNvbnRyb2xsZXIgaW5zdGFuY2UgcHJv
dmlkZXMgdGhlIDh0aCAibXNpeCIgcmVnaXN0ZXIgcmVnaW9uLCB3aGlsZSB0aGUKb3RoZXIgdGhy
ZWUgaW5zdGFuY2VzIGhhdmUgNyByZWcgZW50cmllcyBhbmQgbm8gTVNJLVggc3VwcG9ydC4gIEJl
Y2F1c2UKcWNvbV9wY2llX2VwY19nZXRfZmVhdHVyZXMoKSByZXBvcnRzIGVwY19mZWF0dXJlcy0+
bXNpeF9jYXBhYmxlID0gdHJ1ZQpzb2xlbHkgZnJvbSBwY2llX2VwLT5jZmctPm1zaXhfY2FwYWJs
ZSwgYmluZGluZyBwY2ktZXBmLW1oaSB0byBhbnkgb2YgdGhlCjctcmVnIGluc3RhbmNlcyBsZWF2
ZXMgZXBmX21oaS0+bXNpeF9waHlzIGFzIDAgYW5kIGNhdXNlcwpwY2lfZXBmX21oaV9lcGNfaW5p
dCgpIHRvIGZhaWwgd2l0aCAtRUlOVkFMICgiTVNJLVggQkFSIGFkZHJlc3Mgbm90CmNvbmZpZ3Vy
ZWQgaW4gRFQiKSBpbnN0ZWFkIG9mIGZhbGxpbmcgYmFjayB0byBNU0kuCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTIyLW5vcmRf
ZXAtdjEtMC02ZDg4MzlmZmE5YWFAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTgKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
