Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CB9606A329
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 01:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wwYank/F;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=cG9nu54o
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=siRbMc24xslJZUPZ3+z+19n9grnjS29O8dVMHG0D5eU=; b=wwYank/FwMgoPchshwlUwhzJOa
	ynLaX19dbbTyK3Ow6dE+yKOcL1A1BEo6J31QlOrwPRxTbX60C10V1mQ34gT863hMK0/8qzAAOpcNa
	Qmtpvw4kPLZNa5q0CZ3KmN9UjObY8JEYwm0tjvM5UL7dawradFq2KSF3YjOQbYNySGgvcLPoaEL/W
	Q5rlxUvlD8psYzAPyiZEsGEN7j5Ufx5TWErQBWlLDilO3z53J9YNCm+Q6RzCG1FEYauYJwb2D5vr5
	8tcqa1Sm80pq/CgxsWKpPEFEfAAbs+Z0u2E5nddHk0xx0s7I5PDWFCiQRM/wnsmZm5X1exNNkw8ap
	l/0bwERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Pq-0000000F0Xg-1FGg;
	Sat, 14 Nov 2026 01:18:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS2Pp-0000000F0Xa-05up
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 01:18:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F927418F8;
	Sat, 14 Nov 2026 01:18:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 070BD1F000C4;
	Sat, 14 Nov 2026 01:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794619128;
	bh=wmVGPgSL0c8qID+VDI0TPgSKhatmVBsYpSBuw3LOSy8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cG9nu54oWUwSepxqOgG86lSOoydJGG5oWOoJFj6KoBlOvC7wRpgSImvAcYdCbpzlC
	 1mdJuZa6mQ5F2w1yQPW6V4Ut9sMcNjAqZSjlqhxglFOYAVz/Lq16bj7q6ESBKTAxM+
	 +5sKFQv67utTG4rywYoTHpqaWpPnOB0LzE7ZLscmr2ZUE2TZfMfFtlse3X/NDPtDSD
	 tgPu2hl58Sr5ZnjZGefpX5UwBRXtXY4TQDO9XPng0Jhb1OTGmML5E0vi5283GEeuzQ
	 Xzhp+qA6Y6etAeOv2tMsYiUr095egyDcc6Eq3bHlkQVahSm2eiUvvnaD+2H6gMfcTb
	 k0VlvYxyCYmqw==
Message-ID: <sashiko-outbox-214001@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 4/6] PCI: qcom-ep: Set initial interconnect bandwidth
 before enabling clocks
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261114-monaco_ep-v3-4-7fe227cdfac0@oss.qualcomm.com>
References: <20261114-monaco_ep-v3-0-7fe227cdfac0@oss.qualcomm.com>
 <20261114-monaco_ep-v3-4-7fe227cdfac0@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 01:18:47 +0000
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
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gUENJOiBxY29tLWVwOiBtaXNz
aW5nIEZpeGVzIHRyYWlsZXIgZm9yIGNvbW1pdCAwMTc5NDIzNjY2NmEKLS0KCmNvbW1pdCA0MTkx
MWJmZTdmMzg0NmY2NjVlZDk1YjYxYzMwOGUyZjNmMmJiNjBlCkF1dGhvcjogS3Jpc2huYSBDaGFp
dGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+Cgo+IFBDSTog
cWNvbS1lcDogU2V0IGluaXRpYWwgaW50ZXJjb25uZWN0IGJhbmR3aWR0aCBiZWZvcmUgZW5hYmxp
bmcgY2xvY2tzCj4KPiBTb21lIFF1YWxjb21tIHBsYXRmb3JtcyByZXF1aXJlIHRoZSBpbnRlcmNv
bm5lY3QgYmFuZHdpZHRoIGNvbnN0cmFpbnRzCj4gdG8gYmUgc2V0IGJlZm9yZSBlbmFibGluZyB0
aGUgaW50ZXJjb25uZWN0IGNsb2Nrcywgb3RoZXJ3aXNlIHNvbWUKPiBjbG9ja3MgZ2V0IHN0dWNr
IGluIHRoZSBvZmYgc3RhdGUuCj4KPiBNb3ZlIHRoZSBpY2Nfc2V0X2J3KCkgY2FsbCBiZWZvcmUg
Y2xrX2J1bGtfcHJlcGFyZV9lbmFibGUoKSBzbyB0aGUKPiBiYW5kd2lkdGggdm90ZSBpcyBpbiBw
bGFjZSBmaXJzdC4KPgo+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUg
PGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgoKW1NldmVyaXR5OiBMb3ddClRoaXMg
Zml4ZXMgdGhlIG9yZGVyaW5nIGJldHdlZW4gaWNjX3NldF9idygpIGFuZCBjbG9jayBlbmFibGVt
ZW50IHNvCmludGVyY29ubmVjdCBjbG9ja3MgZG8gbm90IGdldCBzdHVjayBpbiB0aGUgb2ZmIHN0
YXRlLiAgU2hvdWxkIHRoZSBjb21taXQKbWVzc2FnZSBpbmNsdWRlOgoKICBGaXhlczogMDE3OTQy
MzY2NjZhICgiUENJOiBxY29tLWVwOiBBZGQgSUNDIGJhbmR3aWR0aCB2b3Rpbmcgc3VwcG9ydCIp
CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0
LzIwMjYxMTE0LW1vbmFjb19lcC12My0wLTdmZTIyN2NkZmFjMEBvc3MucXVhbGNvbW0uY29tP3Bh
cnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
