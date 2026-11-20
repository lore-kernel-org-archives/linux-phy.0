Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5500606A6E2
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 19:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CX5cf7Wq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=FF6CawEa
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TG0nj6uLHB6UhoX3W7NbR4YsJYGEM5gQs03iK81mYWg=; b=CX5cf7WqGKiweAX8unnQGEuWhd
	eAteDDxbeoYn4DI53XFp/43GDOI3qsPwAivUmM8UFXMYgo5JqpHGRe2eFZvjzKirOeZoOBFxlnGg0
	e2x8P7Y/fYNKBJTWD2TNyrEV7EyPIp0sQQ6nFqC8/dxvNxkzuPCALr1OW0XqyJnq/rRBPRcfztMl7
	9IgQADHEV6lUif2LAg94aRumOBJ/vqbXWE+X7IjFH1fbtiBKuKkcRyjTj9UG2wvexnWhHk9tcdaHU
	hA+B4/swxv2BWcnMo1a0ei3y8Fk2QMJPdKr9w5HcjW57FFrZyFQ5Gn8IfLCZSg1ud5zghO9OWdHth
	AeoCQH1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUaF-0000000G7ve-1bpI;
	Fri, 20 Nov 2026 19:47:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUUaD-0000000G7vA-1PMf
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 19:47:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5AE9161439;
	Fri, 20 Nov 2026 19:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33AB61F000C4;
	Fri, 20 Nov 2026 19:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795204059;
	bh=BPU+sIJxFAGZqhFhvfwbfXA2aJ5mB1U1Q3bQoAW0xC8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FF6CawEacrPS6jI3JqI+4HAB4E/Kfeqa1WzsAbPiHFRqxXwlH7IMa+eV3xQ0p6SsT
	 /e1qVv4Z5uUwINIp6cpc7R3iJLH8gKXm+zj0UAXjXwSPFldMi+PoeqAstWbV4c1gXM
	 C8GX1Sx8lgWoe5YsEgedjGaCMcnGRVdWC6kftpfpxdM9y7AgUfPAtP4dF2Kak4TLnl
	 5CIL4WglNDmgZGnZtj8+7DCzIfIRenN2o6gu0gCbpeAJEK7BC2s8Rn3ZBLCle77jUp
	 jb5pCsy8oIc36nCQU4k+ygT0g1rZxuIa1C29Z03+pPC0YTM03Uv+DFruIEmKL1fGlJ
	 47VDpH+l5371Q==
Message-ID: <sashiko-outbox-225958@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/6] phy: zte: Add a zx29 USB PHY driver.
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, lee@kernel.org
In-Reply-To: <20261120-zx29usb-v1-4-b0433258e51b@gmail.com>
References: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
 <20261120-zx29usb-v1-4-b0433258e51b@gmail.com>
Date: Fri, 20 Nov 2026 19:47:38 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiB6dGU6IE9GIG5v
ZGUgcmVmY291bnQgbGVhayBpbiBwaHlfengyOV9wcm9iZSgpIHZpYSB3cm9uZwogIGhlbHBlcgot
LQoKY29tbWl0IDE1YWU1MGQ1OWUwZTk5MzYxNWU3MGNlNGZiOTlhMjEzMWZjOTFjNDYKQXV0aG9y
OiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21haWwuY29tPgoKcGh5OiB6dGU6
IEFkZCBhIHp4MjkgVVNCIFBIWSBkcml2ZXIuCgpUaGlzIGNvbW1pdCBhZGRzIGEgUEhZIGRyaXZl
ciBmb3IgdGhlIFpURSB6eDI5IFVTQiBhbmQgSFNJQyBQSFlzIHRvCmhhbmRsZSByZXNldCBzZXF1
ZW5jaW5nIGFuZCByZWFkeSBzdGF0dXMgcG9sbGluZyBpbiB0aGUgdG9wY3JtIHN5c2Nvbi4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3BoeS16eDI5LXVzYi5jIGIvZHJpdmVycy9waHkvcGh5
LXp4MjktdXNiLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAu
LjhkZmJjYjQ2OGMyNjMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkvcGh5LXp4
MjktdXNiLmMKWyAuLi4gXQo+ICtzdGF0aWMgaW50IHBoeV96eDI5X3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4gK3sKPiArCXN0cnVjdCBwaHlfcHJvdmlkZXIgKnBoeV9wcm92
aWRlcjsKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gKwlzdHJ1Y3QgcGh5
X3p4MjlfZHJ2X3ByaXYgKnByaXY7Cj4gKwl1bnNpZ25lZCBpbnQgaTsKPiArCj4gKwlkZXZpY2Vf
c2V0X29mX25vZGVfZnJvbV9kZXYoZGV2LCBkZXYtPnBhcmVudCk7CgpbU2V2ZXJpdHk6IE1lZGl1
bV0KU2hvdWxkIHRoaXMgY2FsbCBwbGF0Zm9ybV9kZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYo
cGRldiwgZGV2LT5wYXJlbnQpCmluc3RlYWQgb2YgZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2
KCk/CgpkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoKSB0YWtlcyBhIHJlZmVyZW5jZSBvbiBk
ZXYtPnBhcmVudC0+b2Zfbm9kZQphbmQgc2V0cyBkZXYtPm9mX25vZGUsIGJ1dCBsZWF2ZXMgcGRl
di0+ZGV2LmZ3bm9kZSBOVUxMLiAgV2hlbiB0aGUKcGxhdGZvcm0gZGV2aWNlIGlzIHJlbGVhc2Vk
LCBwbGF0Zm9ybV9kZXZpY2VfcmVsZWFzZSgpIGRyb3BzCnBhLT5wZGV2LmRldi5md25vZGUgcmF0
aGVyIHRoYW4gZGV2LT5vZl9ub2RlLCBsZWFraW5nIHRoZSBPRiBub2RlCnJlZmVyZW5jZS4KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjExMjAtengyOXVzYi12MS0wLWIwNDMzMjU4ZTUxYkBnbWFpbC5jb20/cGFydD00CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
