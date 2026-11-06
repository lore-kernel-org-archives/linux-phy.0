Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD6C606A326
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 06:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jpeJC15i;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=l8Te+K2J
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wtn92Q1NHB5UsXvbddIn0sj91iaxxazbBEbBEtS+0rQ=; b=jpeJC15i81iQnCAyt9eV/xKkLu
	kydirVUa8D/LEgVc8X7bbEPKmcWBn+PCQwl0wIqw+ciWNQLZo1tgC016dI7sL/er+8I+7g9Z140oj
	SzURTkf1cdv3d3t+SggcSy4U0m+VI9XUotNG7os3PahhG3aPJ6NqNxLpE8N5GbeFS7PpHmqacgVPc
	Ow7aLgL2HNGdttwr9zVXiIWnSTzC5r/fte6QvtwupzATUSWJofbq4qiCITdEXfxH9TA27n+1zsBoJ
	eXcY0KVD2dtywF8ph2/KNNreGO3uBLQfiwNybYD2YsE3Mty+1sz/a7KNSNLEjumpNptGwy7FKAdav
	5MNPDaPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDtL-0000000BNk1-3X5y;
	Fri, 06 Nov 2026 06:57:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPDtK-0000000BNjv-39dj
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 06:57:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 332B64235D;
	Fri,  6 Nov 2026 06:57:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A94D71F0089F;
	Fri,  6 Nov 2026 06:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793948258;
	bh=wFudu5RMdCwWtCoC9RfHYhR/yaakyfX/o7yaoofEnuk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l8Te+K2JwFb9oBkxs6WznhJNiDAR6oFX6zoe2awu3fyYcEHz8KFnVAwu0MjHBZwl1
	 2tYU6HYpfsXvfMaa4QhV7yeG4oQm6MII4F8r81xwA0/vkyY06ynowmTiHWxuE+L9rU
	 KZwmwV6gAz5//u6q8FLPajnKsk0a/b74eJ1ln3p5RXRekISszSo2CNFhZTbHy9NKnz
	 Mb5SF6Fxkgt0lgXHcZduimKpcmS5/6YCjibHprvJRbv56H6wSBbyc8d5obgw7dqLtv
	 uM7ARFcoxG+WGPLyFea2z6+RXLwOTN+kkg5MLEPz4efvYNWbNpOaoKotTpvJCKb97K
	 poC3XiNYkZ7LQ==
Message-ID: <sashiko-outbox-200949@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/6] dt-bindings: i2c: qcom,i2c-cci: Add Hawi
 compatible
To: "Nihal Kumar Gupta" <nihal.gupta@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261106-hawi-maili-camss-v4-1-d528c7a797b4@oss.qualcomm.com>
References: <20261106-hawi-maili-camss-v4-0-d528c7a797b4@oss.qualcomm.com>
 <20261106-hawi-maili-camss-v4-1-d528c7a797b4@oss.qualcomm.com>
Date: Fri, 06 Nov 2026 06:57:37 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHQtYmluZGluZ3M6IGky
YzogcWNvbSxoYXdpLWNjaSBmYWxscyBiYWNrIHRvCiAgcWNvbSxtc204OTk2LWNjaQotLQoKY29t
bWl0IGVlYjY2YTM4ZjI3ZGQxMTI5MDVlZmEwYTE4NmRmZjc2ODJlZjMzZGQKQXV0aG9yOiBIYW5n
eGlhbmcgTWEgPGhhbmd4aWFuZy5tYUBvc3MucXVhbGNvbW0uY29tPgoKZHQtYmluZGluZ3M6IGky
YzogcWNvbSxpMmMtY2NpOiBBZGQgSGF3aSBjb21wYXRpYmxlCgpUaGlzIGNvbW1pdCBkb2N1bWVu
dHMgdGhlIHFjb20saGF3aS1jY2kgY29tcGF0aWJsZSBzdHJpbmcgYW5kIGl0cwp0d28tY2xvY2sg
cmVxdWlyZW1lbnQgaW4gdGhlIFF1YWxjb21tIENDSSBJMkMgYmluZGluZy4KCj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pMmMvcWNvbSxpMmMtY2NpLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaTJjL3Fjb20saTJjLWNjaS55
YW1sCj4gaW5kZXggMWU4ZGVmMjVlYzBlYy4uYjJiNGQ0YmNmNzgwNyAxMDA2NDQKPiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaTJjL3Fjb20saTJjLWNjaS55YW1sCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2kyYy9xY29tLGkyYy1jY2ku
eWFtbAo+IEBAIC0yNyw2ICsyNyw3IEBAIHByb3BlcnRpZXM6Cj4gICAgICAgIC0gaXRlbXM6Cj4g
ICAgICAgICAgICAtIGVudW06Cj4gICAgICAgICAgICAgICAgLSBxY29tLGdseW11ci1jY2kKPiAr
ICAgICAgICAgICAgICAtIHFjb20saGF3aS1jY2kKPiAgICAgICAgICAgICAgICAtIHFjb20sa2Fh
bmFwYWxpLWNjaQo+ICAgICAgICAgICAgICAgIC0gcWNvbSxtaWxvcy1jY2kKPiAgICAgICAgICAg
ICAgICAtIHFjb20scWNtMjI5MC1jY2kKCltTZXZlcml0eTogTWVkaXVtXQpBcyByZXBvcnRlZCBi
eSBMb2ljIFBvdWxhaW4gb24gUkZDIFsxXSwgc2hvdWxkIHFjb20saGF3aS1jY2kgc3RvcCBmYWxs
aW5nCmJhY2sgdG8gcWNvbSxtc204OTk2LWNjaSBhbmQgdXNlIGEgZGVkaWNhdGVkIHZhcmlhbnQg
ZW50cnkgaW5zdGVhZD8KClBsYWNpbmcgcWNvbSxoYXdpLWNjaSBpbiB0aGUgcWNvbSxtc204OTk2
LWNjaSBmYWxsYmFjayBsaXN0IHdpdGhvdXQgYQpkZWRpY2F0ZWQgZW50cnkgaW4gY2NpX2R0X21h
dGNoW10gY2F1c2VzIGNjaV9wcm9iZSgpIHRvIGJpbmQgSGF3aSBDQ0kKY29udHJvbGxlcnMgdG8g
dGhlIGxlZ2FjeSBjY2lfdjJfZGF0YSBjb25maWd1cmF0aW9uIChxdWV1ZV9zaXplID0geyA2NCwg
MTYgfQphbmQgbWF4X3dyaXRlX2xlbiA9IDExKSByYXRoZXIgdGhhbiBtYXRjaGluZyB0aGUgbmV3
ZXIgSVAgcmV2aXNpb24ncyBGSUZPCmFuZCBxdWV1ZSBzaXplcy4KClsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9yL0NBRkVwNi0xWnZ0MGhoQmQ3TE54MmhzeWk5SitieENUOEVXTjNqWjRCMzBT
TzU4U0Nvd0BtYWlsLmdtYWlsLmNvbQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8v
c2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEwNi1oYXdpLW1haWxpLWNhbXNzLXY0LTAtZDUy
OGM3YTc5N2I0QG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
