Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A6D0606A320
	for <linux-phy@archiver.kernel.org>; Sun, 22 Nov 2026 03:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FKUFntxK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=l2QOF3Lr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1H+SmbN72Kp6+FtXRq7P53nh53f9BB297j7h5JjX8Xg=; b=FKUFntxKUchlvNQ1SWTKi2K8Uz
	ngfYhrTEq2R1QYV2X1l5TH95f4X3rB18sbE1pXRnIlCAy4L2nhzvc3mdCcBtcT1lnqCBp66+XibIr
	rkl+PeZap+qfXC9hRZ/BnzsbRxXupulqmDiN3MCyxv9D4zr8U1u9AOXxUkC34SX8B7vyYE+ELiyz8
	GJlZC/80+j4hXcIDd4PTv4TryDqvxtnpU//tNaYUTKXb66OiyyStOO02eI9CtON6d3SkqXiHAFFvh
	lIzVhhqCBuT/tkYYfV3MA7epH/q6uY4S9aA/p/gJC+NZ5iiRbRSiUm+WF7oBEDL5zCHlChi7+CH21
	N4Nt9mXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxrD-00000000hLm-1BbE;
	Sun, 22 Nov 2026 03:03:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUxrC-00000000hLc-0xzV
	for linux-phy@lists.infradead.org;
	Sun, 22 Nov 2026 03:03:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A80E456FC;
	Sun, 22 Nov 2026 03:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C6AF1F000C0;
	Sun, 22 Nov 2026 03:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795316589;
	bh=9+cb67OYAd8qNaddyybc5YxwQ5oWS5QK7bJW5eY8FOQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l2QOF3LrRwShLKnBfuxY3V5MU5PgPIa8vdUO7KV2VvaYWLjWHVZdAb06WqTJFzuOa
	 RpAFCOFhD9SewuEA4YmtXHS88HYbI9VVh7X2Dg2DKuU1paomrzmRfnxjf0sgZewWz/
	 U0QV+S+ne6nvVxrZezEFDLq7hcFfTQyyFj4qpaMpSc5BrPxOYZiOk47xSFTVsz16NP
	 oCrTgHh0UBtKRjSqPsmoc/fAANLedPTh95aYRry+vzPFCUv5rHEDeqZRF1op8GTh9L
	 jt55CZtJ1NLvFVJM9ADcV2KpL0GQfw96Uur4Bkoikw99Exiyl/uZFq+j9hqAFsw4za
	 SA9Z0Wn2lFDew==
Message-ID: <sashiko-outbox-227654@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 01/11] PCI: epf-mhi: Pass the actual number of MSI
 vectors to pci_epc_set_msi()
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261122-nord_ep-v1-1-6d8839ffa9aa@oss.qualcomm.com>
References: <20261122-nord_ep-v1-0-6d8839ffa9aa@oss.qualcomm.com>
 <20261122-nord_ep-v1-1-6d8839ffa9aa@oss.qualcomm.com>
Date: Sun, 22 Nov 2026 03:03:08 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gUENJOiBlcGYtbWhpOiB3cm9u
ZyBGaXhlcyB0YWcgYW5kIGF0dHJpYnV0aW9uIGZvcgogIHBjaV9lcGNfc2V0X21zaSgpIGJ1Zwot
LQoKY29tbWl0IDY1NTY5ZDhmYTdkMGI3ZDFjNzNmM2M2YTY5MjFkYjYzNzI3OWM0MjkKQXV0aG9y
OiBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21t
LmNvbT4KCj4gUENJOiBlcGYtbWhpOiBQYXNzIHRoZSBhY3R1YWwgbnVtYmVyIG9mIE1TSSB2ZWN0
b3JzIHRvIHBjaV9lcGNfc2V0X21zaSgpCj4KPiBTaW5jZSBjb21taXQgZjYyZGE2ZTcyNzBjICgi
UENJOiBlbmRwb2ludDogQWxpZ24gcGNpX2VwY19zZXRfbXNpKCksCj4gcGNpX2VwY19vcHM6OnNl
dF9tc2koKSBucl9pcnFzIGVuY29kaW5nIiksIHBjaV9lcGNfc2V0X21zaSgpIHRha2VzIHRoZQo+
IG51bWJlciBvZiBNU0kgaW50ZXJydXB0cyBkaXJlY3RseTsgdGhlIGNvbnRyb2xsZXIgZHJpdmVy
IGVuY29kZXMgaXQgaW50bwo+IHRoZSBNdWx0aXBsZSBNZXNzYWdlIENhcGFibGUgZmllbGQuCj4K
PiBUaGUgTUhJIGZ1bmN0aW9uIGRyaXZlciBzdGlsbCBwYXNzZXMgb3JkZXJfYmFzZV8yKGluZm8t
Pm1zaV9jb3VudCksIHdoaWNoCj4gaXMgbm93IGVuY29kZWQgYSBzZWNvbmQgdGltZTogZm9yIG1z
aV9jb3VudCA9IDMyIHRoZSBjb250cm9sbGVyIGFkdmVydGlzZXMKPiBvbmx5IDggTVNJIHZlY3Rv
cnMgaW5zdGVhZCBvZiAzMi4KPgo+IFBhc3MgaW5mby0+bXNpX2NvdW50IGRpcmVjdGx5Lgo+Cj4g
Rml4ZXM6IGY2MmRhNmU3MjcwYyAoIlBDSTogZW5kcG9pbnQ6IEFsaWduIHBjaV9lcGNfc2V0X21z
aSgpLCBwY2lfZXBjX29wczo6c2V0X21zaSgpIG5yX2lycXMgZW5jb2RpbmciKQo+IFNpZ25lZC1v
ZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVh
bGNvbW0uY29tPgoKW1NldmVyaXR5OiBMb3ddClByaW9yIHRvIGNvbW1pdCBmNjJkYTZlNzI3MGMg
KCJQQ0k6IGVuZHBvaW50OiBBbGlnbiBwY2lfZXBjX3NldF9tc2koKSwKcGNpX2VwY19vcHM6OnNl
dF9tc2koKSBucl9pcnFzIGVuY29kaW5nIiksIHBjaV9lcGNfc2V0X21zaSgpIGFscmVhZHkKdG9v
ayB0aGUgdW5lbmNvZGVkIG51bWJlciBvZiBpbnRlcnJ1cHRzICgxLi4zMikgYW5kIGNhbGxlZApv
cmRlcl9iYXNlXzIoKSBpbnRlcm5hbGx5IGJlZm9yZSBpbnZva2luZyBlcGMtPm9wcy0+c2V0X21z
aSgpOyB0aGF0CmNvbW1pdCBvbmx5IG1vdmVkIHRoZSBvcmRlcl9iYXNlXzIoKSBjYWxsIGludG8g
dGhlIGNvbnRyb2xsZXIgZHJpdmVycy4KClRoZSBkb3VibGUgb3JkZXJfYmFzZV8yKCkgZW5jb2Rp
bmcgaW4gcGNpX2VwZl9taGlfZXBjX2luaXQoKSBoYXMgYmVlbgpwcmVzZW50IHNpbmNlIHRoZSBk
cml2ZXIgd2FzIGFkZGVkLCBhbmQgcG9pbnRpbmcgRml4ZXM6IGF0IGY2MmRhNmU3MjcwYwooIlBD
STogZW5kcG9pbnQ6IEFsaWduIHBjaV9lcGNfc2V0X21zaSgpLCBwY2lfZXBjX29wczo6c2V0X21z
aSgpIG5yX2lycXMKZW5jb2RpbmciKSAod2hpY2ggaXMgbWFya2VkIHN0YWJsZStub2F1dG9zZWwp
IHByZXZlbnRzIG9sZGVyIHN0YWJsZQp0cmVlcyBmcm9tIHBpY2tpbmcgdXAgdGhpcyBmaXguICBT
aG91bGQgdGhlIGNvbW1pdCBtZXNzYWdlIGFuZCBGaXhlczoKdGFnIGluc3RlYWQgcmVmZXJlbmNl
IHRoZSBjb21taXQgdGhhdCBpbnRyb2R1Y2VkIHRoZSBkcml2ZXI6CgogIEZpeGVzOiAxYmY1ZjI1
MzI0ZjcgKCJQQ0k6IGVuZHBvaW50OiBBZGQgUENJIEVuZHBvaW50IGZ1bmN0aW9uIGRyaXZlciBm
b3IgTUhJIGJ1cyIpCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYxMTIyLW5vcmRfZXAtdjEtMC02ZDg4MzlmZmE5YWFAb3NzLnF1YWxj
b21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
