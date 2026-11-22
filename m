Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EFCB606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 12:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Y5fgsQT8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hsuz9GFl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=E5eSa6HucXQcjoxjMvLtUJlXhkQH8Y3O6pUakVca7W8=; b=Y5fgsQT8oScepapFtwXOw6wRio
	8d49PMARaHAxdux2XCidJhwdRCuriDmg8gPOTH/SAIz/WoejMkmU1L7YPUkMEIDpeqfFCdQfrvcPn
	GKBtIEzf23duoLhPbBvw2LfmUBXUHYNd1+Q6YPuNJYbsku9IHnHLsF5DTeL5xwL3y7IKAw+XyR5Rb
	kmqrzEYc8aGUpuicogFEVrmqmaGfi4lH2jqfmOx94kAr8xAM7sDNEeIBru7TgX9Vfa9m5Kzmp3Ie5
	bopqq8g9/UiCzMfjFmmQ6nM7UsHjMj6Ixc7BekCaDrkyp4eJB5IgyJ6+nEPwvvWXi0aQgy7e7Gt8m
	tqgODgcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV6my-000000016CF-1b9b;
	Sun, 22 Nov 2026 12:35:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV6mw-000000016By-3TUZ
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 12:35:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A861961909;
	Sun, 22 Nov 2026 12:35:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E736A1F000C6;
	Sun, 22 Nov 2026 12:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795350921;
	bh=3Up1fmr9hvScc11keTL2pV3RTEp6AoVDEnPQt1Vo1NM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hsuz9GFlGUqhFOtrn/SNsOo0nDqrHaljSeau/YFIz7Bwl7e5S2OE4blpNiqme+DKf
	 ydkKRNvJzVNU1swweczu9EL9q4Tl9NWbnBqrYh+lM0etsQ4uZdODRJer72a+r44kT6
	 xMGld2pVXgWdTYQdtGKrh4+E28dlirtwFwpo2XKVTNtE2xuOihXTdDdDvbY16qasZm
	 iOsaKnNqgjHAvR+lWV7eySJkFprrPNZoW4BV9LswF+z6HrYm5HcY0sJux/3/aF1OEE
	 yl1Ven3Ohy7LstC3JA9UBYuiuR86wFRLtBh2q8K0OnmU9MlCOwWG6uoFS7hNWqEWKN
	 Oo8BPIg7yaTqw==
Message-ID: <sashiko-outbox-227927@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/5] phy: apple: atc: Split generation-specific code
To: "Sasha Finkelstein" <k@chaosmail.tech>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261122-t8122-phy-v2-5-8d5c8fdf31ba@chaosmail.tech>
References: <20261122-t8122-phy-v2-0-8d5c8fdf31ba@chaosmail.tech>
 <20261122-t8122-phy-v2-5-8d5c8fdf31ba@chaosmail.tech>
Date: Sun, 22 Nov 2026 12:35:20 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBhcHBsZTogYXRj
OiBtaXNzaW5nIGxpbnV4L2JpdGZpZWxkLmggaW5jbHVkZSBmb3IKICBGSUVMRF9QUkVQKCkKLS0K
CmNvbW1pdCBlMzk3ZmI4MjNkNWFlNDUzNTEyYjE2N2VlZDg4YjJlOTFiZDUzZGEzCkF1dGhvcjog
U2FzaGEgRmlua2Vsc3RlaW4gPGtAY2hhb3NtYWlsLnRlY2g+CgpwaHk6IGFwcGxlOiBhdGM6IFNw
bGl0IGdlbmVyYXRpb24tc3BlY2lmaWMgY29kZQoKVGhpcyBjb21taXQgc3BsaXRzIHRoZSBUODEw
MyBhbmQgVDgxMjIgaGFyZHdhcmUgZ2VuZXJhdGlvbi1zcGVjaWZpYyBjb2RlCm91dCBvZiBkcml2
ZXJzL3BoeS9hcHBsZS9hdGMuYyBpbnRvIGF0Yy10ODEwMy5jLCBhdGMtdDgxMjIuYywgYW5kIGEg
c2hhcmVkCmF0Yy5oIGhlYWRlci4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2FwcGxlL2F0
Yy5oIGIvZHJpdmVycy9waHkvYXBwbGUvYXRjLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAwMDAwMDAuLmQ2YTYwOGM2Nzc2OTYKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
ZHJpdmVycy9waHkvYXBwbGUvYXRjLmgKPiBAQCAtMCwwICsxLDgwNiBAQAo+ICsvKiBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UgKi8KPiArCj4gKyNpbmNs
dWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rldmlj
ZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvcmVzZXQtY29udHJvbGxlci5oPgo+ICsKPiArI2lmbmRl
ZiBfX0FUQ19IX18KPiArI2RlZmluZSBfX0FUQ19IX18KCltTZXZlcml0eTogTWVkaXVtXQpTaG91
bGQgYXRjLmggKG9yIGF0Yy10ODEwMy5jIGFuZCBhdGMtdDgxMjIuYykgaW5jbHVkZSA8bGludXgv
Yml0ZmllbGQuaD4/CgpCb3RoIGF0Yy10ODEwMy5jIGFuZCBhdGMtdDgxMjIuYyBjYWxsIEZJRUxE
X1BSRVAoKSwgc3VjaCBhcyBpbgphdGNwaHlfY29uZmlndXJlX3BpcGVoYW5kbGVyX3VzYjNfaG9z
dF90ODEwMygpIGFuZAphdGNwaHlfY29uZmlndXJlX3BpcGVoYW5kbGVyX3VzYjNfaG9zdF90ODEy
MigpLCB3aGljaCBwcmV2aW91c2x5IHJlbGllZCBvbgp0aGUgPGxpbnV4L2JpdGZpZWxkLmg+IGlu
Y2x1ZGUgaW4gYXRjLmMuICBPbiBhcm02NCwgPGFzbS9zeXNyZWcuaD4gcHVsbHMKaW4gPGxpbnV4
L2JpdGZpZWxkLmg+IHRyYW5zaXRpdmVseSwgYnV0IFBIWV9BUFBMRV9BVEMgZW5hYmxlcwpDT05G
SUdfQ09NUElMRV9URVNUIG9uIG90aGVyIDY0LWJpdCBhcmNoaXRlY3R1cmVzIChzdWNoIGFzIHg4
Nl82NCkgd2hlcmUKdGhlIGJ1aWxkIGZhaWxzIHdpdGggYW4gaW1wbGljaXQgZGVjbGFyYXRpb24g
b2YgRklFTERfUFJFUCgpLgoKQWxzbywgdGhlICNpbmNsdWRlIGRpcmVjdGl2ZXMgYXQgdGhlIHRv
cCBvZiBhdGMuaCBzaXQgb3V0c2lkZSB0aGUKX19BVENfSF9fIGluY2x1ZGUgZ3VhcmQuCgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYx
MTIyLXQ4MTIyLXBoeS12Mi0wLThkNWM4ZmRmMzFiYUBjaGFvc21haWwudGVjaD9wYXJ0PTUKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
