Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01ACE606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 15:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QJagDXQG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=iWSl5ikj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OxdiBQXyy4ZbXZ8U9AeNFGlKTEjJXOdK791xM3XZ09E=; b=QJagDXQGR1H+UyfiTBNXEyeDwj
	mujT5u8gjUVkiNVa94H82mDUpGJfmfznbxYUgfn6EPNzHiaRYyCGRlDG2wC9zijzPE0GOWP1He/jK
	dL7pL+0uJRRGw2EtRvoQp/qD1CUbssr9Tk+DAMbgpA4wDV9aHEFKl1zfVobEkh1/J2jUfA/CZe+vi
	nPwqJrtzK9D2LK2iVI+kqY1LNbT2vyZy7S0s1gy0dCanpaodf9N0kEc1JuN76pqjckSGKxgracug4
	Ym2j/v1ElsyzP0ZQNaGjeYggpfEXS9NmYd4wwj+j/8LCbBZKpaCEXvpYKaWYjb0rrVYvFgsIrQp7j
	Q8CzrE2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyAm-0000000GuFU-2ukT;
	Fri, 27 Nov 2026 15:47:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyAl-0000000GuEi-0CnB;
	Fri, 27 Nov 2026 15:47:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B644244455;
	Fri, 27 Nov 2026 15:47:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07BA51F0089C;
	Fri, 27 Nov 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795794458;
	bh=O8pnsdU3vMqGq7ELmjvq5FdeahOXIlHE/MoodaIfQgo=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=iWSl5ikj8sFU5KxMqaRSyhp7KVRgAMSiocSR1PLgEVzvwIfi4WCTyC0AigbNbupxF
	 gJHu3oNouhMl/rozFT5q4DpadukydxjvgLsAn2pfa4KiYPOwYERt3D5DtxL/H5eGO6
	 H2ypwzUHz7l4x3T3Qi7S8YWzVzW5nk5Ko+Eba83/Ak61NBoOlR6Yqqt3GLJzmRv9Hl
	 2WjAbdGqS3VRu1H43sqX0lFv8k1EMjLxd4DWnnrIdnph3RdCG87cseWTF9cpI2ate3
	 bCOuvgVH14+PLMtpS8/zHsR25ax1GI+Rl5BodzdG1TKv4KTIBsf9Z71uJF0PEk2XKE
	 bHSvfr+cLW16g==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: phy-google-usb: reset USB3 PHY before init
From: Manivannan Sadhasivam <mani@kernel.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, RD Babiera <rdbabiera@google.com>, 
 Neill Kapron <nkapron@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20261119-lga-usbphy-init-v1-1-1de4e0e6b191@linaro.org>
References: <20261119-lga-usbphy-init-v1-1-1de4e0e6b191@linaro.org>
Date: Fri, 27 Nov 2026 21:17:30 +0530
Message-Id: <179579445030.13164.13282265230853414841.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2306; i=mani@kernel.org;
 h=from:subject:message-id; bh=fnovCDIUZdtvw2vTP29UBKPpf7kuHTKrlAWxg8QfSxM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCaYV3UsWw1F2M3UeRNjFwQqz9XcGW9J7j0s1V
 lc6og/PmOiJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmmFQAKCRBVnxHm/pHO
 9cd4B/9OuKmRIaV82B7CID7lApzBQDZSTm72kOMba5g28fwiBJ2mejOrdOYOorpUAIByv6Hz/4I
 WRxd71gfqT2sIm5fqU97Duwr298JHwIlBHiiqCdclMBEqnC5Hsdg5ckzzjpj4tj0C6/H44Rc3eJ
 v7b+QjT7xDBXR0ROUutXjAbgNjHAHXnyVPNuKLdja7VxmcURAvbVRhUoV4pUEFDhI6qXwVXrLK4
 PT/sjsFp2+PoVfR/cJKHdcLaOUBfuhlRttgj4CTiBr28i6CilTF+aDCWRKCpgmv/pk1G0Yirejp
 L+YvrHuVmafbq5yrtJinIANoZMtnqzPAHyqEBIZZo+Dy/Rdy
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

T24gMjAyNi0xMS0xOSAxMDo0NyArMDAwMCwgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gZ29vZ2xl
X3VzYjNfcGh5X2luaXQoKSBhc3N1bWVzIHRoYXQgdGhlIFBIWSBpcyBpbiByZXNldCBhbmQgdGhh
dCB0aGUKPiBUeXBlLUMgQXNzaXN0IChUQ0EpIGJsb2NrIGlzIGluIGl0cyBwb3dlci1vbiBzdGF0
ZS4gTmVpdGhlciBpcyB0aGUKPiBjYXNlIHdoZW4gdGhlIGRyaXZlciBwcm9iZXMgZm9yIHRoZSBm
aXJzdCB0aW1lIG9uIFBpeGVsIDEwLCB3aGVyZSB0aGUKPiBib290IGxvYWRlciBoYXMgdXNlZCBV
U0IgYmVmb3JlOiB0aGUgUEhZIGlzIG91dCBvZiByZXNldCBhbmQKPiBvcGVyYXRpb25hbCAobGFu
ZTAgcGh5c3RhdHVzIGlzIGxvdyByaWdodCBhd2F5LCB3aGVyZWFzIGl0IHRha2VzIGFib3V0Cj4g
MTJtcyBmb3IgYSBQSFkgdGhhdCByZWFsbHkgd2FzIGluIHJlc2V0KSwgYW5kIHRoZSBUQ0EgaGFz
IGJlZW4KPiBzd2l0Y2hlZCB0byBVU0IgYWxyZWFkeSAoVENBX1RDUEMgcmVhZHMgMHgxKS4KPiAK
PiBXaGVuIHRoZSBQSFkgaXMgaW5pdGlhbGlzZWQgaW4gdGhhdCBzdGF0ZSwgdGhlIHNvZnQgcmVz
ZXQgb2YgdGhlIERXQzMKPiBjb250cm9sbGVyIGhhbmdzIGluIGFib3V0IG9uZSBvdXQgb2YgZm91
ciBib290cyBvbiBibGF6ZXIgKFBpeGVsIDEwCj4gUHJvLCAxMiBvZiA1MCBib290cyksIHdpdGgg
RENUTC5DU0ZUUlNUIHN0aWxsIHNldCBzZWNvbmRzIGxhdGVyOgo+IAo+ICAgICBkd2MzLWdvb2ds
ZSBjNDAwMDAwLnVzYjogRFdDMyBjb250cm9sbGVyIHNvZnQgcmVzZXQgZmFpbGVkLgo+ICAgICBk
d2MzLWdvb2dsZSBjNDAwMDAwLnVzYjogZXJyb3IgLUVUSU1FRE9VVDogZmFpbGVkIHRvIGluaXRp
YWxpemUgY29yZQo+IAo+IEluIGFkZGl0aW9uLCBnb29nbGVfdXNiM19waHlfcG93ZXJfb24oKSB3
YWl0cyBmb3IgdGhlIFRDQSB0byByZXBvcnQKPiB0aGF0IHRoZSB0cmFuc2l0aW9uIHRvICdubyBj
b25uZWN0aW9uJyBoYXMgY29tcGxldGVkLiBUaGUgVENBIHN0YXJ0cwo+IHRoYXQgdHJhbnNpdGlv
biBieSBpdHNlbGYgYWZ0ZXIgYSBwb3dlci1vbiByZXNldCAoVENBX1RDUEMgcmVzZXRzIHRvIGEK
PiByZXF1ZXN0IGZvciBpdCkuIFdpdGhvdXQgYSBwb3dlci1vbiByZXNldCB0aGVyZSBpcyBubyBz
dWNoIHRyYW5zaXRpb24sCj4gYW5kIHRoZSB3YWl0IG9ubHkgc3VjY2VlZHMgYXMgbG9uZyBhcyB0
aGUgZXZlbnQgaXMgc3RpbGwgcGVuZGluZyBmcm9tCj4gZWFybGllci4gSnVzdCBhc3NlcnRpbmcg
dGhlIFBIWSByZXNldHMgYmVmb3JlIGluaXRpYWxpc2luZyB0aGUgUEhZIGlzCj4gdGhlcmVmb3Jl
IG5vdCBlbm91Z2g6IHRoZSBldmVudCB3YXMgZ29uZSBpbiA4IG9mIDMyIGJvb3RzIHRoZW4sIGFu
ZAo+IHBvd2VyaW5nIG9uIHRoZSBQSFkgZmFpbGVkIHdpdGggIlBvUi0+TkMgdHJhbnNpdGlvbiB0
aW1lb3V0Ii4KPiAKPiBTbywgYmVmb3JlIGluaXRpYWxpc2luZyB0aGUgUEhZOgo+ICogYXNzZXJ0
IGl0cyByZXNldHMgYW5kIGRyb3AgdGhlIHJlZmVyZW5jZSBjbG9jayByZXF1ZXN0LCB3aGljaCBp
cyB0aGUKPiAgIHN0YXRlIGdvb2dsZV91c2IzX3BoeV9leGl0KCkgbGVhdmVzIHRoZSBQSFkgaW4K
PiAqIGNsZWFyIHRoZSBUQ0EncyBldmVudHMgYW5kIHJlcXVlc3QgdGhlIHRyYW5zaXRpb24gdG8g
J25vCj4gICBjb25uZWN0aW9uJywgc28gdGhhdCBnb29nbGVfdXNiM19waHlfcG93ZXJfb24oKSB3
YWl0cyBmb3IgYQo+ICAgdHJhbnNpdGlvbiB0aGF0IHRoaXMgaW5pdGlhbGlzYXRpb24gaGFzIGNh
dXNlZAo+IAo+IFRoZSByZXNldHMgYXJlIGtlcHQgYXNzZXJ0ZWQgZm9yIDFtcy4gVGhhdCBpcyB0
aGUgZHVyYXRpb24gdGhhdCBoYXMKPiBiZWVuIHRlc3RlZCwgbm90IGEgZG9jdW1lbnRlZCByZXF1
aXJlbWVudC4KPiAKPiBXaXRoIHRoaXMsIFVTQiBjYW1lIHVwIGluIDIwIG9mIDIwIGJvb3RzIG9u
IGJsYXplciwgYW5kIGluIDI1IG9mIDI1Cj4gcmUtcHJvYmVzIG9mIHRoZSBjb250cm9sbGVyICh1
bmJpbmQgYW5kIGJpbmQgb2YgZHdjMy1nb29nbGUpLgo+IAo+IEZpeGVzOiA4YzJiMzMxZTYzMjcg
KCJwaHk6IEFkZCBVU0IzIFBIWSBzdXBwb3J0IHRvIEdvb2dsZSBUZW5zb3IgU29DIFVTQiBQSFkg
ZHJpdmVyIikKPiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0Bs
aW5hcm8ub3JnPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5h
bi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
