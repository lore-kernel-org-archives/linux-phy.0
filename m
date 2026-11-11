Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D69606A327
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 19:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4EecVewk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=gCo145jl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NqgVqtdzBMwdf0jUYy92IRP5tSyYKgGlGB9wCZAZD+s=; b=4EecVewk1nEc+WQLRRPch1LGxh
	nFsfbxQxNJJroOcMUX3fOYm5LI5h2JM6x46P7oizbT+B3VeYKbrzoT4DjvYP1EBtPXXWYDGX7QoNZ
	S8FICjPYUJR4mwgSLuw/F0XPts5YDHBVEuqlTxHavxCI3Wo1BSt5hz0yy3tfMGSKcVt2EskeYccCF
	kOn7uGxEbcfDAyfg0wwedhD6uRySSo4aacaoSMd7oNsbibJYB/2GOkaf0k2P38kBiAW0JkSxLIe7I
	yVysrmIMp/ur2Gwi66cutYKm84guFJrPEKkrvLeOkVoJPM9XUa2h1mpHVlXDv0T4+RLtvl7rJrq5Q
	+YTfIJMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRDbh-00000007TUe-2YCD;
	Wed, 11 Nov 2026 19:03:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRDbg-00000007TUX-1mxt
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 19:03:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BCB4B42AFE;
	Wed, 11 Nov 2026 19:03:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40AE41F00A05;
	Wed, 11 Nov 2026 19:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794423819;
	bh=xvgKTRY/knh2mwPSo7GMDNOeApTuDMfy2yhR4yN+14k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gCo145jlxsL4VsjwWBC9+choOHGYE6xiIhI1jtY85DCWGz7UqJ/bWUj1GfNqMRJPl
	 yA9x2VTpt69p0Z0hRQ2ntmE44izb23z2NKvVpcjxVTRdv3YUJCMvVHUvjzMiNwL17i
	 nnxecy3hF+ktRiCFEJGKpiC/fdKBBj9EdEALANipqWYMroPOre9Zy8QHITs2agsQ2Q
	 AvyPooU0gc+4IsF3OEBGQtQjHFXuknkYEBwcf+vA92urane08nSpA8vo1CkxN7C1hm
	 /QUHPwEgGRDyXFP2PbIzNHHQgSn9zZJTTBzM21dL0LkN+ja3uf638Mc8fZGIGy3EtF
	 nWQrEYQE4GvWw==
Message-ID: <sashiko-outbox-209524@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qusb2: Add support for
 remote endpoints
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261111-shikra-qusb2-charger-det-v1-1-5a9d919c66b5@oss.qualcomm.com>
References: <20261111-shikra-qusb2-charger-det-v1-0-5a9d919c66b5@oss.qualcomm.com>
 <20261111-shikra-qusb2-charger-det-v1-1-5a9d919c66b5@oss.qualcomm.com>
Date: Wed, 11 Nov 2026 19:03:38 +0000
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
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIGR0LWJpbmRpbmdzOiBw
aHk6IHFjb20scXVzYjI6IHVzYi1yb2xlLXN3aXRjaCBvdmVybG9hZGVkIGZvcgogIEJDMS4yIGRl
dGVjdGlvbgotIFtMb3ddIGR0LWJpbmRpbmdzOiBwaHk6IHFjb20scXVzYjI6IGluY29tcGxldGUg
dXNiLXJvbGUtc3dpdGNoIGFuZAogIHBvcnRzIHNjaGVtYQotLQoKY29tbWl0IGZkNzk2YzEyN2E4
MTg4MDI4ZDg5NzE5YTAxZWUzZjcxN2VkZTMwNzMKQXV0aG9yOiBLcmlzaG5hIEt1cmFwYXRpIDxr
cmlzaG5hLmt1cmFwYXRpQG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBxY29t
LHF1c2IyOiBBZGQgc3VwcG9ydCBmb3IgcmVtb3RlIGVuZHBvaW50cwoKVGhpcyBjb21taXQgYWRk
cyBPRiBncmFwaCBwb3J0cyBhbmQgdGhlIHVzYi1yb2xlLXN3aXRjaCBwcm9wZXJ0eSB0byB0aGUK
UXVhbGNvbW0gUVVTQjIgUEhZIERldmljZXRyZWUgYmluZGluZyB0byBzdXBwb3J0IEJDMS4yIGNo
YXJnZXIgZGV0ZWN0aW9uCmFuZCByb2xlIG5vdGlmaWNhdGlvbiByb3V0aW5nLgoKPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHF1c2IyLXBo
eS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHF1c2Iy
LXBoeS55YW1sCj4gaW5kZXggMDAxZmQwY2NjOTg1Mi4uMGI2YjI5MzNkZDk4YiAxMDA2NDQKPiAt
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20scXVzYjItcGh5
LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20s
cXVzYjItcGh5LnlhbWwKPiBAQCAtMTU5LDYgKzE1OSwyOSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAg
bWF4aW11bTogMwo+ICAgICAgZGVmYXVsdDogMAo+ICAKPiArICBwb3J0czoKPiArICAgICRyZWY6
IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydHMKPiArICAgIGRlc2NyaXB0aW9u
Ogo+ICsgICAgICBUaG9zZSBwb3J0cyBjYW4gYmUgdXNlZCB3aXRoIGFueSBjb25uZWN0b3IvcG1p
YyBub2RlIHRoYXQgaXMgYWJsZSB0bwo+ICsgICAgICBwcm92aWRlIHJvbGUgc3dpdGNoIG5vdGlm
aWNhdGlvbnMgZm9yIGNoYXJnZXIgZGV0ZWN0aW9uIHB1cnBvc2VzLgo+ICsKPiArICAgIHByb3Bl
cnRpZXM6Cj4gKyAgICAgIHBvcnRAMDoKPiArICAgICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55
YW1sIy9wcm9wZXJ0aWVzL3BvcnQKPiArICAgICAgICBkZXNjcmlwdGlvbjogQ29ubmVjdG9yIERh
dGEgYnVzCj4gKwo+ICsgICAgICBwb3J0QDE6Cj4gKyAgICAgICAgJHJlZjogL3NjaGVtYXMvZ3Jh
cGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4gKyAgICAgICAgZGVzY3JpcHRpb246IENvbnRyb2xs
ZXIgZGF0YSBidXMuCj4gKwo+ICsgIHVzYi1yb2xlLXN3aXRjaDoKPiArICAgIGRlc2NyaXB0aW9u
Ogo+ICsgICAgICBJbiB0aGUgY29udGV4dCBvZiB1c2ItcGh5LCBpdCBkZW5vdGVzIHRoZSBjYXBh
YmlsaXR5IHRvIHBlcmZvcm0gY2hhcmdlcgo+ICsgICAgICBkZXRlY3Rpb24uIEFsdGhvdWdoIHBo
eSBpcyBub3QgdGhlIG9uZSByZXNwb25zaWJsZSBmb3Igc3dpdGNoaW5nIG1vZGUsIGl0Cj4gKyAg
ICAgIGlzIHRoZSBvbmUgcmVzcG9uc2libGUgdG8gdGFrZSBhIGNhbGwgb24gd2hldGhlciBjb250
cm9sbGVyIG11c3Qgc3dpdGNoCj4gKyAgICAgIG1vZGUgb3Igbm90LiBJbiBjYXNlIG9mIFNEUC9D
RFQsIHRoZSBwaHkgd291bGQgaW5mb3JtIHRoZSBjb250cm9sbGVyIHRvCj4gKyAgICAgIHN3aXRj
aCB0byBkZXZpY2UgYW5kIGluIGNhc2Ugb2YgRENQLCByb2xlIHN3aXRjaCBkb2Vzbid0IG5lZWQg
dG8gaGFwcGVuLgo+ICsKCltTZXZlcml0eTogTWVkaXVtXQpTaG91bGQgdXNiLXJvbGUtc3dpdGNo
IGJlIHVzZWQgb24gdGhlIFFVU0IyIFBIWSBub2RlIHRvIHJlcHJlc2VudCBCQzEuMgpjaGFyZ2Vy
IGRldGVjdGlvbiBhbmQgcm9sZSBub3RpZmljYXRpb24gZm9yd2FyZGluZz8KCkluIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvdXNiLWRyZC55YW1sLCB1c2Itcm9sZS1zd2l0
Y2gKaW5kaWNhdGVzIHRoYXQgYSBkZXZpY2UgaXMgY2FwYWJsZSBvZiBhc3NpZ25pbmcgdGhlIFVT
QiBkYXRhIHJvbGUsIHdoaWNoCm9uIHRoZXNlIHBsYXRmb3JtcyBpcyB0aGUgVVNCIGNvbnRyb2xs
ZXIgcmF0aGVyIHRoYW4gdGhlIFBIWS4gIFVzaW5nIGl0CmhlcmUgdG8gbWFrZSBmd25vZGVfdXNi
X3JvbGVfc3dpdGNoX2dldCgpIG1hdGNoIHRoZSBQSFkgZW5kcG9pbnQgZW5jb2RlcwpMaW51eCBk
cml2ZXIgbm90aWZpY2F0aW9uIHJvdXRpbmcgaW50byB0aGUgRGV2aWNldHJlZSBBQkksIHdoaWxl
IEJDMS4yCmRldGVjdGlvbiBjYXBhYmlsaXR5IGlzIGFscmVhZHkgaW1wbGllZCBieSB0aGUgUEhZ
IGNvbXBhdGlibGUgc3RyaW5nIGFuZAp0aGUgRFAvRE0gcm91dGluZyBpcyBhbHJlYWR5IGRlc2Ny
aWJlZCBieSBwb3J0cy4KCltTZXZlcml0eTogTG93XQpEb2VzIHRoaXMgc2NoZW1hIG5lZWQgdHlw
ZSBhbmQgcG9ydCBjb25zdHJhaW50cyBmb3IgZHRic19jaGVjayB2YWxpZGF0aW9uPwoKQmVjYXVz
ZSB1c2Itcm9sZS1zd2l0Y2ggaXMgZGVmaW5lZCBoZXJlIHdpdGhvdXQgcmVmZXJlbmNpbmcgdXNi
LWRyZC55YW1sLAppdCBpcyBtaXNzaW5nIHR5cGU6IGJvb2xlYW4uICBJbiBhZGRpdGlvbiwgc2lu
Y2UgdGhlIFBIWSBkb2VzIG5vdCBwZXJtaXQgYQpjaGlsZCB1c2ItY29ubmVjdG9yIG5vZGUgYW5k
IHJlcXVpcmVzIGJvdGggcG9ydEAwIChpbmNvbWluZyBub3RpZmljYXRpb24pCmFuZCBwb3J0QDEg
KG91dGdvaW5nIG5vdGlmaWNhdGlvbiB0byB0aGUgY29udHJvbGxlcikgd2hlbiBpbnRlcmNlcHRp
bmcKcm9sZSBzd2l0Y2hlcywgcG9ydHMgc2hvdWxkIGxpc3QgcG9ydEAwIGFuZCBwb3J0QDEgdW5k
ZXIgcmVxdWlyZWQgYW5kIGEKZGVwZW5kZW5jaWVzIGVudHJ5IHNob3VsZCByZXF1aXJlIHBvcnRz
IHdoZW4gdXNiLXJvbGUtc3dpdGNoIGlzIHByZXNlbnQuCkFsc28sIHRoZSBkZXNjcmlwdGlvbiBo
YXMgYSB0eXBvICgiU0RQL0NEVCIgaW5zdGVhZCBvZiAiU0RQL0NEUCIpLgoKLS0gClNhc2hpa28g
QUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTExMS1zaGlr
cmEtcXVzYjItY2hhcmdlci1kZXQtdjEtMC01YTlkOTE5YzY2YjVAb3NzLnF1YWxjb21tLmNvbT9w
YXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
