Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A08C606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DEsIBRG5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=VVAnmS5H
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SR2Yb9BBGhUOxQKOQlaWPOPPCr9XgIvWsaoQD0a/k7M=; b=DEsIBRG5j1hbQTCOw6SRiYb2iU
	ByyRVwCu5ID0x8fX91Cu7pLaeQEsaNzSiDLCyUTjHTwndttRM6B+A96F60MGMHcz0MDU3skUxGRn2
	f9bNKnUu0jDXSw/N1JZZZp9iHWWr4V+5bUwxWlaUlquOKZGm4lxCVg73aLYrviiNgoBsuNyjiXKRR
	PKfjOC9ZA5oQm6+wtPV9TE2p6y+OMZE8zMbrJ4TqvaBEyS6uMvIQa4cDWO5J1s1ktXQ49mwAYTUtV
	AIHcJSmpf3NJqzXJuuQSUPz0oSC8I7FG7kLf15ZGQXsn3bIL9OnSwtO5lPtctqz9CQToGnCgQeCQR
	cw9lAF7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwmH-00000002dTm-1GjV;
	Mon, 16 Nov 2026 13:29:45 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwmF-00000002dSy-3H8w
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:29:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3A523456C8;
	Mon, 16 Nov 2026 13:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 989CB1F000C4;
	Mon, 16 Nov 2026 13:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794835783;
	bh=ssAcmNAZ6RN1gnXKQZLC1kAwUmpHr5/zWN4C19jJBZM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VVAnmS5HucW555DGB0cnlLirQxX5V21JVSm76suMJtSGcBCCBtFY8iJQ3ffjH51ut
	 2eObnuk99y7Q6LJw3pLygVqKHj0EXSRsjzWW9uyaygIFgDKqpgI3vIpdHRTwdI7AHt
	 ilBpDZm99vZ2K4YGGQhxuvjqQyrNMytihC7kDSXzEq1FuzJ5Ul5E+qhSBNWqc8Br66
	 ZII9/ThWX5SqmEFLy63bvifnPF12r5fU837+TJXaZqQK/Hr1NwEaOcQiBOvMQN3RY8
	 MmnDeVciWx1iVhHwyoXTpCbspwfZSq+PcJA5pYOJBkEuFYkSEg4z3SID7xhVzfjQIC
	 eaUzubUIY3Snw==
Message-ID: <sashiko-outbox-217078@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 06/11] drm/msm/dpu: Fix DSI tear interrupts broken by
 adding INTF_9 and INTF_10
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261116-nord-drv-dt-v3-6-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
 <20261116-nord-drv-dt-v3-6-e3d3bf0e2c49@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 13:29:42 +0000
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHJtL21zbS9kcHU6IElO
VEZfOSBhbmQgSU5URl8xMCBhZGRlZCBhZnRlciB1c2UgaW4gTm9yZAogIGNhdGFsb2cKLS0KCmNv
bW1pdCBjNWJkZmIwOWMyMDc3OTNmMzE1NWIzNDZiMzliYzhhMDIxMGZmOGYyCkF1dGhvcjogTmFi
aWdlIEFhbGEgPG5hYmlnZS5hYWxhQG9zcy5xdWFsY29tbS5jb20+Cgo+IGRybS9tc20vZHB1OiBG
aXggRFNJIHRlYXIgaW50ZXJydXB0cyBicm9rZW4gYnkgYWRkaW5nIElOVEZfOSBhbmQgSU5URl8x
MAo+Cj4gTm9yZCByZXF1aXJlcyBJTlRGXzkgYW5kIElOVEZfMTAuIEhvd2V2ZXIsIGVudW0gZHB1
X2h3X2ludHJfcmVnIHJlbGllcwo+IG9uIGFsbCBNRFBfSU5URm5fSU5UUiBlbnRyaWVzIGJlaW5n
IHNlcXVlbnRpYWwg4oCUIE1EUF9JTlRGbl9JTlRSKCkgbWFjcm8KPiBjb21wdXRlcyB0aGUgaW50
ZXJydXB0IGluZGV4IGFzIE1EUF9JTlRGMF9JTlRSICsgKGludGYgLSBJTlRGXzApLgo+IEFwcGVu
ZGluZyBJTlRGXzkgYW5kIElOVEZfMTAgYWZ0ZXIgdGhlIHRlYXIgZW50cmllcyB3b3VsZCBicmVh
ayB0aGlzCj4gYXNzdW1wdGlvbiwgY2F1c2luZyBEU0kgdGVhciBpbnRlcnJ1cHRzIG9uIGV4aXN0
aW5nIHBsYXRmb3JtcyB0byBtYXAgdG8KPiB3cm9uZyBpbnRlcnJ1cHQgcmVnaXN0ZXJzLgo+Cj4g
Rml4IHRoaXMgYnkgaW5zZXJ0aW5nIE1EUF9JTlRGOV9JTlRSIGFuZCBNRFBfSU5URjEwX0lOVFIg
YmVmb3JlCj4gTURQX0lOVEYxX1RFQVJfSU5UUiBhbmQgTURQX0lOVEYyX1RFQVJfSU5UUiwga2Vl
cGluZyB0aGUgc2VxdWVudGlhbAo+IGJsb2NrIGludGFjdC4gQWRkIHRoZSBjb3JyZXNwb25kaW5n
IHJlZ2lzdGVyIGVudHJpZXMgdG8KPiBkcHVfaW50cl9zZXRfN3h4eCBhbmQgZHB1X2ludHJfc2V0
XzEzeHguCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYWhhZGV2YW4gUCA8bWFoYWRldmFuLnBAb3NzLnF1
YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOYWJpZ2UgQWFsYSA8bmFiaWdlLmFhbGFAb3Nz
LnF1YWxjb21tLmNvbT4KClsgLi4uIF0KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9t
c20vZGlzcC9kcHUxL2RwdV9od19tZHNzLmggYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvZHB1
MS9kcHVfaHdfbWRzcy5oCj4gaW5kZXggMGU2NWJmNWRkYzRhNi4uN2VjY2I0ZDJjNjVlZiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVfaHdfbWRzcy5oCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kaXNwL2RwdTEvZHB1X2h3X21kc3MuaAo+IEBAIC0y
MjYsNiArMjI2LDggQEAgZW51bSBkcHVfaW50ZiB7Cj4gIAlJTlRGXzYsCj4gIAlJTlRGXzcsCj4g
IAlJTlRGXzgsCj4gKwlJTlRGXzksCj4gKwlJTlRGXzEwLAo+ICAJSU5URl9NQVgKPiAgfTsKCltT
ZXZlcml0eTogTWVkaXVtXQpTaG91bGQgdGhpcyBwYXRjaCBjb21lIGJlZm9yZSBjb21taXQgImRy
bS9tc20vZHB1OiBBZGQgc3VwcG9ydCBmb3IgRFBVIDEyLjEKb24gTm9yZCI/CgpUaGF0IGVhcmxp
ZXIgY29tbWl0IHVzZXMgSU5URl85IGFuZCBJTlRGXzEwIGluIG5vcmRfaW50ZltdIGJlZm9yZSB0
aGV5IGFyZQpkZWZpbmVkIGhlcmUsIHdoaWNoIGJyZWFrcyB0aGUgYnVpbGQgYW5kIGdpdCBiaXNl
Y3QgYXQgdGhhdCBwb2ludCBpbiB0aGUKc2VyaWVzLgoKQWxzbywgdGhlIGNvbW1pdCBzdWJqZWN0
IGFuZCBtZXNzYWdlIGRlc2NyaWJlIHRoaXMgY2hhbmdlIGFzIGZpeGluZyBhIHByaW9yCmFkZGl0
aW9uIG9mIElOVEZfOSBhbmQgSU5URl8xMCwgd2hlcmVhcyB0aGlzIHBhdGNoIGludHJvZHVjZXMg
SU5URl85LApJTlRGXzEwLCBNRFBfSU5URjlfSU5UUiwgYW5kIE1EUF9JTlRGMTBfSU5UUiBmb3Ig
dGhlIGZpcnN0IHRpbWUuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYxMTE2LW5vcmQtZHJ2LWR0LXYzLTAtZTNkM2JmMGUyYzQ5QG9z
cy5xdWFsY29tbS5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
