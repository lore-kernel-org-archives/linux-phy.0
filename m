Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B18C606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 16:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3v3buGFU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=fTMA9QsA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0UEqDs4yflMS608Z1PLwPleoki4SxvuGuKn2DtQvjgI=; b=3v3buGFUkAjDvk+XXMMKUVkPCa
	C6VfijPMQf/6qL0GXfiagzSWurWvSnpSQ8u0uVM9x4V+bId1FkpJZMAyG8OIzp06TlR5wey1Sl+Cu
	i8Ie08sCK40iKUZzWzlVOmKH/e68w2THCcjR2a4Dz9zLipXonKwVRkpXi3rvtEQMqBn9JZsUN0eOP
	30IKsH99U8cY5M5SSFAdEPd+mRSuVvtBDZC6It/P0EcZemPLfkGi/HM3Umlz2ncXZP1Eeg6/I0mOg
	07dpAjFRxSabDM7NsOnnFI/Y/0q8F+xYe9uq4hvZu4hGB4tSRAWNwB9EBQbviztxMhNuk7di4Cfaz
	TPxB/lTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyTX-0000000H0Mw-30At;
	Fri, 27 Nov 2026 16:07:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyTQ-0000000H0MX-3nrT;
	Fri, 27 Nov 2026 16:06:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5B3986183C;
	Fri, 27 Nov 2026 16:06:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC1351F00893;
	Fri, 27 Nov 2026 16:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795795616;
	bh=M4EvdhyPClJMonTpG0zYcUFgKQRAM7QCzBagwXo5SNI=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=fTMA9QsAwB8bJPOSJOPUWFydDiG1PFYiPq8NMLN6HWt97nVhIQlKvDBFizn8Y+Dkg
	 phSPHhMZIxvj782ArtqbmQsFo+AeXb1JlY5DogSChOcv9ttQY1BVFALOtQav0XmHWw
	 uc2MDzMvRZyxyoZjdI38ro+caUANoCjYBXq5onvAxX5Vz3Rv5bGtHtE7VM/jbOAx5L
	 2HUTHyPPGKgAxIhqSpNSF5uVpqog/mf1EFF02gn/gnPdEw84bXRrvHYZRajIzsftUX
	 Jgn+EzB5bTbwqAPTLOpxw5F2S3d2pt2KHNCsbeAaFg/0AiLcrHx2zTw69wZGmyGNJX
	 QH5BIIYAtcxwA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/2] phy: exynos5-usbdrd: gs101 PIPE3 init fixes
From: Manivannan Sadhasivam <mani@kernel.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, RD Babiera <rdbabiera@google.com>, 
 Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
 phone-devel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 stable@vger.kernel.org
In-Reply-To: <20261123-gs101-usb-phy-orientation-v2-0-3361fa5f7543@linaro.org>
References: <20261123-gs101-usb-phy-orientation-v2-0-3361fa5f7543@linaro.org>
Date: Fri, 27 Nov 2026 21:36:46 +0530
Message-Id: <179579560687.13164.8486442411400032367.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1139; i=mani@kernel.org;
 h=from:subject:message-id; bh=BDcgJiWbnqhGl/C9aGkP0Jx2TSH6tbuFkGPv6K1lORk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCaqZxGLwsp+vABHqDZIpMAqVrDp7VLN3WHr2P
 Y3OeQ44F26JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmqmQAKCRBVnxHm/pHO
 9amwB/wMm5K3gEqZushzryzNcFitBxYM6BVq+8mETT90/M4B2CtNodxrMJToUpKpRJyS6NZWadt
 3Yee6EJtro3np+SYKcl3iEOzS6bSu27QDA1HhTaw6CmhZBpKs8wXEjh+nS81QjwlIBxZun7lbpb
 zTt3QsH109D8cS239fDSVSOnVOubRA4hocjnZoqEiYa1AFWR2wjEdD/3b7cjjcewPXJqrHnnoJH
 roFHJ+SRVfQ2CYVNLT/ce2AsglbLDFtMm/UKYbtcuOz0jumEs+FbJ1ZeUYHF5p8sqBJyT1I3I2r
 QrY8CC/ikYP2abjZKV5c00yX6hIuCiFO6dWeuTaGcrdNk6h7
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjAyNi0xMS0yMyAxNDoyNSArMDAwMCwgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gSGksCj4g
Cj4gVGhpcyBzZXJpZXMgY29udGFpbnMgdHdvIGZpeGVzIGZvciB0aGUgVVNCIDMuMSBQSVBFMyBQ
SFkgaW5pdGlhbGl6YXRpb24KPiBvbiBHb29nbGUgVGVuc29yIGdzMTAxOgo+IAo+IDEuIFJlLWlu
aXRpYWxpemUgdGhlIFBJUEUzIFBIWSBmcm9tIHRoZSBUeXBlLUMgb3JpZW50YXRpb24gc3dpdGNo
Cj4gICAgY2FsbGJhY2sgd2hlbiB0aGUgb3JpZW50YXRpb24gY2hhbmdlcyB3aGlsZSB0aGUgUEhZ
IGlzIGFscmVhZHkKPiAgICBpbml0aWFsaXplZC4gV2hlbiBhIGNhYmxlIGlzIGNvbm5lY3RlZCBk
dXJpbmcgYm9vdCwgdGhlIFBIWSBjYW4gYmUKPiAgICBpbml0aWFsaXplZCBiZWZvcmUgdGhlIFRD
UEMgcmVwb3J0cyB0aGUgb3JpZW50YXRpb24sIGFuZCBEV0MzIHJ1bnRpbWUKPiAgICBQTSBpcyBm
b3JiaWRkZW4gYnkgZGVmYXVsdC4gV2l0aG91dCByZS1pbml0aWFsaXppbmcsIHRoZSBTdXBlclNw
ZWVkCj4gICAgbGFuZXMgc3RheSBwcm9ncmFtbWVkIGZvciB0aGUgd3Jvbmcgb3JpZW50YXRpb24g
YW5kIHRoZSBsaW5rIGNvbWVzIHVwCj4gICAgaW4gaGlnaC1zcGVlZCBvbmx5Lgo+IAo+IDIuIEFw
cGx5IHRoZSBleGlzdGluZyBnczEwMV90dW5lc19waXBlM19wb3N0bG9ja1tdIHRhYmxlIG9uY2Ug
dGhlIFBMTAo+ICAgIGFuZCBDRFIgaGF2ZSBsb2NrZWQuIEl0IGRpc2FibGVzIHRoZSBoaWdoLXNw
ZWVkIFJYIHNxdWVsY2ggZGV0ZWN0b3IKPiAgICBpbiBQMyAvIFUzIHRvIHNhdmUgcG93ZXIgd2hp
bGUgdGhlIGxpbmsgaXMgc3VzcGVuZGVkLiBUaGUgdGFibGUgd2FzCj4gICAgYWRkZWQgaW4gY29t
bWl0IDMyMjY3YzI5YmM3ZCAoInBoeTogZXh5bm9zNS11c2JkcmQ6IHN1cHBvcnQgRXh5bm9zCj4g
ICAgVVNCRFJEIDMuMSBjb21ibyBwaHkgKEhTICYgU1MpIikgYnV0IG5ldmVyIGFwcGxpZWQuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9y
Zz4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFz
aXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
