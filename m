Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C3E606A31B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 23:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j1JMMA5v;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=TOaWcO0L
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BguR1/YFFz1cGEIYaKQ6FvyyINTnEhaNPlXvM/S9zjY=; b=j1JMMA5vouAtNjMBvhIJI1mClt
	TilfYYpR9QyhZjvQYnKw0sO90O0wAIro4EFIMMStURoFAZdX6qVcoe99r6C2f+2mZxpFjxF2/nwem
	gZFbTOOzpV+gBDTGEjAlqrsjr9D3HKM4JDf/8swHk3kuAIurthfTrlgi1NaG0f6H7EPf3cdhDbEjN
	a1WgMb1QypcXvXGj99+Jzslx6mYSLl3EFDMzwIkq4UXSMBGPOlskc62wTmMEvsdToSsVp5CVIp7Y4
	/4gsgKSMPB6pT9U6N07PHp2KWLJ/wjzMEqDkkelpJULymu85gXYyaEAtavB9t/EnoggsqyZy4uzeM
	PdEsFwKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkDx-00000007Ekv-0eYE;
	Wed, 04 Nov 2026 23:16:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkDw-00000007Ekg-2DA3
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 23:16:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CA589601DE;
	Wed,  4 Nov 2026 23:16:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B45B1F000C1;
	Wed,  4 Nov 2026 23:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793834215;
	bh=/jddQLzhmN5+QbsZ5iN46ovSAlJxSoolcX7Q8+HSct4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TOaWcO0LUCYL6oSkgx3uD+IB18hraaWy8MHbVDN84UBM+uou3V9YBRsWGAaMNq2AP
	 9Cc0dTciOxjLCBSWzUs34/N5u8dWWjGAFlp+OiUeKZeD86fRsndneruNH2Pobs34bg
	 nHkGPYovX91cQG2+7pDcM/WG0m6yQ7nTjOqioah+1j2nAl681p2ABVSkuOS+w+ZjMM
	 UCwcLrIeV1ihsId5kes2J4VPNd+cdhHFO87vXLG9WuDzxZnpCSt9nQKu06eT6xiQBz
	 qI4OiKuBoe2R2Zo/Xevnks/Gi55shYuVYs3Wcsitd7TPGlnHttvTszkQ7ILDCSxGUN
	 pRicYxRnsZfpg==
Message-ID: <sashiko-outbox-198285@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/4] phy: rockchip: inno-usb2: drop duplicated update
 of rport->suspended
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261105-phy-rockchip-inno-usb2-clock-fix-v3-2-b20608c08b94@collabora.com>
References: <20261105-phy-rockchip-inno-usb2-clock-fix-v3-0-b20608c08b94@collabora.com>
 <20261105-phy-rockchip-inno-usb2-clock-fix-v3-2-b20608c08b94@collabora.com>
Date: Wed, 04 Nov 2026 23:16:54 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiByb2NrY2hp
cDogaW5uby11c2IyOiBob3RwbHVnIHdlZGdlIG9uIHJvY2tjaGlwX3VzYjJwaHlfcG93ZXJfb2Zm
KCkgZXJyb3IKLS0KCmNvbW1pdCBjODNhM2VkZjYyNTFjN2VmNmFhZDNhZTE4ZTFhMzAzNTA4ZjNk
YWIxCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9y
YS5jb20+CgpwaHk6IHJvY2tjaGlwOiBpbm5vLXVzYjI6IGRyb3AgZHVwbGljYXRlZCB1cGRhdGUg
b2YgcnBvcnQtPnN1c3BlbmRlZAoKVGhpcyBjb21taXQgcmVtb3ZlcyB0aGUgdW5jb25kaXRpb25h
bCBhc3NpZ25tZW50cyB0byBycG9ydC0+c3VzcGVuZGVkIGluCnJvY2tjaGlwX3VzYjJwaHlfc21f
d29yaygpIGFmdGVyIGNhbGxpbmcgcm9ja2NoaXBfdXNiMnBoeV9wb3dlcl9vbigpIGFuZApyb2Nr
Y2hpcF91c2IycGh5X3Bvd2VyX29mZigpLCByZWx5aW5nIG9uIHRob3NlIGZ1bmN0aW9ucyB0byB1
cGRhdGUKcnBvcnQtPnN1c3BlbmRlZCBvbiBzdWNjZXNzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCj4gaW5kZXggMGI2MWYxNTJlYjNmMy4uNTFh
ZmJjYzQwYzRlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtaW5uby11c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
aW5uby11c2IyLmMKPiBAQCAtOTk0LDcgKzk5NCw2IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3Vz
YjJwaHlfc21fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gIAkJaWYgKHJwb3J0LT5z
dXNwZW5kZWQpIHsKPiAgCQkJZGV2X2RiZygmcnBvcnQtPnBoeS0+ZGV2LCAiQ29ubmVjdGVkXG4i
KTsKPiAgCQkJcm9ja2NoaXBfdXNiMnBoeV9wb3dlcl9vbihycG9ydC0+cGh5KTsKPiAtCQkJcnBv
cnQtPnN1c3BlbmRlZCA9IGZhbHNlOwo+ICAJCX0gZWxzZSB7Cj4gIAkJCS8qIEQrIGxpbmUgcHVs
bC11cCwgRC0gbGluZSBwdWxsLWRvd24gKi8KPiAgCQkJZGV2X2RiZygmcnBvcnQtPnBoeS0+ZGV2
LCAiRlMvTFMgb25saW5lXG4iKTsKPiBAQCAtMTAwNCw3ICsxMDAzLDYgQEAgc3RhdGljIHZvaWQg
cm9ja2NoaXBfdXNiMnBoeV9zbV93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPiAgCQlp
ZiAoIXJwb3J0LT5zdXNwZW5kZWQpIHsKPiAgCQkJZGV2X2RiZygmcnBvcnQtPnBoeS0+ZGV2LCAi
RGlzY29ubmVjdGVkXG4iKTsKPiAgCQkJcm9ja2NoaXBfdXNiMnBoeV9wb3dlcl9vZmYocnBvcnQt
PnBoeSk7Cj4gLQkJCXJwb3J0LT5zdXNwZW5kZWQgPSB0cnVlOwo+ICAJCX0KCltTZXZlcml0eTog
TWVkaXVtXQpBcyByZXBvcnRlZCBieSBTYXNoaWtvIG9uIHYyIFsxXSwgaWYgcm9ja2NoaXBfdXNi
MnBoeV9wb3dlcl9vZmYoKSBmYWlscyBpbgpyb2NrY2hpcF91c2IycGh5X3NtX3dvcmsoKSB1bmRl
ciBQSFlfU1RBVEVfRElTQ09OTkVDVCAod2hlbgpwcm9wZXJ0eV9lbmFibGUoKSBvbiBwaHlfc3Vz
IHJldHVybnMgYW4gZXJyb3IpLCBycG9ydC0+c3VzcGVuZGVkIG5vdyByZW1haW5zCmZhbHNlIGFu
ZCBycGh5LT5jbGs0ODBtIHN0YXlzIGVuYWJsZWQuCgpIb3dldmVyLCB0aGUgUEhZX1NUQVRFX0RJ
U0NPTk5FQ1QgcGF0aCBkb2VzIG5vdCBjaGVjayB0aGUgcmV0dXJuIHZhbHVlIG9mCnJvY2tjaGlw
X3VzYjJwaHlfcG93ZXJfb2ZmKCkgYW5kIHN0aWxsIHByb2NlZWRzIGFzIGlmIHRoZSBwb3J0IHdl
cmUKc3VzcGVuZGVkLCBlbmFibGluZyBsc19kZXRfY2xyIGFuZCBsc19kZXRfZW4gYW5kIHJldHVy
bmluZyBlYXJseSB3aXRob3V0CnJlc2NoZWR1bGluZyBycG9ydC0+c21fd29yazoKCgljYXNlIFBI
WV9TVEFURV9ESVNDT05ORUNUOgoJCWlmICghcnBvcnQtPnN1c3BlbmRlZCkgewoJCQlkZXZfZGJn
KCZycG9ydC0+cGh5LT5kZXYsICJEaXNjb25uZWN0ZWRcbiIpOwoJCQlyb2NrY2hpcF91c2IycGh5
X3Bvd2VyX29mZihycG9ydC0+cGh5KTsKCQl9CgoJCXByb3BlcnR5X2VuYWJsZShycGh5LT5ncmYs
ICZycG9ydC0+cG9ydF9jZmctPmxzX2RldF9jbHIsIHRydWUpOwoJCXByb3BlcnR5X2VuYWJsZShy
cGh5LT5ncmYsICZycG9ydC0+cG9ydF9jZmctPmxzX2RldF9lbiwgdHJ1ZSk7CgoJCW11dGV4X3Vu
bG9jaygmcnBvcnQtPm11dGV4KTsKCQlyZXR1cm47CgpXaGVuIHRoZSBuZXh0IGxpbmVzdGF0ZSBp
bnRlcnJ1cHQgZmlyZXMsIHJvY2tjaGlwX3VzYjJwaHlfbGluZXN0YXRlX2lycSgpCmRpc2FibGVz
IGxzX2RldF9lbiBhbmQgb25seSByZXN0YXJ0cyByb2NrY2hpcF91c2IycGh5X3NtX3dvcmsoKSB3
aGVuCnJwb3J0LT5zdXNwZW5kZWQgaXMgdHJ1ZToKCglwcm9wZXJ0eV9lbmFibGUocnBoeS0+Z3Jm
LCAmcnBvcnQtPnBvcnRfY2ZnLT5sc19kZXRfZW4sIGZhbHNlKTsKCXByb3BlcnR5X2VuYWJsZShy
cGh5LT5ncmYsICZycG9ydC0+cG9ydF9jZmctPmxzX2RldF9jbHIsIHRydWUpOwoKCW11dGV4X3Vu
bG9jaygmcnBvcnQtPm11dGV4KTsKCglpZiAocnBvcnQtPnN1c3BlbmRlZCAmJiBycG9ydC0+cG9y
dF9pZCA9PSBVU0IyUEhZX1BPUlRfSE9TVCkKCQlyb2NrY2hpcF91c2IycGh5X3NtX3dvcmsoJnJw
b3J0LT5zbV93b3JrLndvcmspOwoKQmVjYXVzZSBycG9ydC0+c3VzcGVuZGVkIGlzIGZhbHNlLCB3
b3VsZCB0aGlzIGxlYXZlIGxzX2RldF9lbiBkaXNhYmxlZCBhbmQKcnBvcnQtPnNtX3dvcmsgc3Rv
cHBlZCwgcGVybWFuZW50bHkgd2VkZ2luZyBob3N0IHBvcnQgaG90cGx1ZyBkZXRlY3Rpb24gYW5k
CmxlYWtpbmcgdGhlIHJwaHktPmNsazQ4MG0gZW5hYmxlIGNvdW50PyBTaG91bGQgcm9ja2NoaXBf
dXNiMnBoeV9zbV93b3JrKCkKanVtcCB0byBuZXh0X3NjaGVkdWxlIHdoZW4gcm9ja2NoaXBfdXNi
MnBoeV9wb3dlcl9vZmYoKSByZXR1cm5zIGFuIGVycm9yPwoKWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL3IvMjAyNjEwMDEtcGh5LXJvY2tjaGlwLWlubm8tdXNiMi1jbG9jay1maXgtdjItMi1l
MDFiZjUwOTM1OWVAY29sbGFib3JhLmNvbQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTEwNS1waHktcm9ja2NoaXAtaW5uby11c2Iy
LWNsb2NrLWZpeC12My0wLWIyMDYwOGMwOGI5NEBjb2xsYWJvcmEuY29tP3BhcnQ9MgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
