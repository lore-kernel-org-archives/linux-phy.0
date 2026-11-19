Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F25C6606A32A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 15:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GBCjdpfD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=OgOUeMkZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qYicFnFKib/63mcyFracgUI0k/dNGOHpR3ZXstijzFU=; b=GBCjdpfDMnXaDOAuLED23sDJcC
	GoDwfQHzDFEf38CwI6gi83N980Iz6AkmrL9yZv3p+sO9jMS+zzrTvxrdJxvH2vJ/Lk9zpd3+IsHXD
	7v8cnkUqagdRu2VngOtVFEocQn34GgNtNB/grf10+eWXBDN3wQSAMGWLvlkcK+kLqQFwjtmyegfGC
	lxpaFEsJZkH1n0rvwChrAPKo+stGjPu9HswM2rsJqcat3QIKPmBAr3UsE5LydHURIsgkuzGprzm4X
	Ue4D+C+HnvXnNwtzVRB5I0z5y+QacOhNazbQOZG3TVtMNMMCp2Xm/ZfAmPwppK4Ba80adoQayIy5m
	+zZl+aDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU3vT-0000000CPTz-2fna;
	Thu, 19 Nov 2026 15:19:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU3vR-0000000CPTs-4A6M
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 15:19:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 87C9A44317;
	Thu, 19 Nov 2026 15:19:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 068E31F000C4;
	Thu, 19 Nov 2026 15:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795101589;
	bh=mhNRPmlGr+pai8rlonmOXJXc8xvliO1wWhsM41Vh7gw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OgOUeMkZNLU9/QZOmKoHZEVJBSuo/t+T/kIGOIlvcACwD9fmvf6akYDv8kXX6GOvf
	 TgA3MxqTK1hk0Dppn0TmErkxKBi2kKcpLDzscp8BrkkCnoexumernGsJV/Px25dNzR
	 xthZ/6jXcdqXgXFK3J86VyIspstUag6rX9ESz5tSn0Zv4msUzit9OcxJ5wL9eCcK+J
	 L9aA9TlQ6HLM1nq7E2klhOWoMG1fdzjZHBb6pS6sNlwgGTbz9e84wGD5UQFrWi+M3h
	 yO90XYIgKzLqw8HnH48LvhUCv1QJOHNRPDMRtL3Zr06Z7EWIUe5vndf3XY0gKY0Fyl
	 2E/OwDbkkBKVQ==
Message-ID: <sashiko-outbox-223364@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 16/23] scsi: ufs: mediatek: Rework
 _ufs_mtk_clk_scale error paths
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261119-mt8196-ufs-v15-16-aae1eb0382e8@collabora.com>
References: <20261119-mt8196-ufs-v15-0-aae1eb0382e8@collabora.com>
 <20261119-mt8196-ufs-v15-16-aae1eb0382e8@collabora.com>
Date: Thu, 19 Nov 2026 15:19:48 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gc2NzaTogdWZzOiBtZWRpYXRl
azogbWlzc2luZyBGaXhlcyB0cmFpbGVyIGZvcgogIF91ZnNfbXRrX2Nsa19zY2FsZSgpIGZpeGVz
Ci0tCgpjb21taXQgNDQyMWFjMDFiNDRlOWMwM2Q3YTgwNWQ1NTU1OGYwZTZmNjA4YTQwOQpBdXRo
b3I6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+
Cgo+IHNjc2k6IHVmczogbWVkaWF0ZWs6IFJld29yayBfdWZzX210a19jbGtfc2NhbGUgZXJyb3Ig
cGF0aHMKPgo+IEVycm9ycyBzaG91bGQgYmUgcHJpbnRlZCBhdCB0aGUgY29ycmVjdCBsb2cgbGV2
ZWwuIEFkZGl0aW9uYWxseSwgaXQKPiBsb29rcyBsaWtlIHNvbWUgImdvdG8gb3V0IidzIHdlcmUg
b21pdHRlZCBpbiB0aGUgc2NhbGUgdXAgY2FzZSwgd2hpY2gKPiBsb29rcyBsaWtlIGEgbWlzdGFr
ZSwgYXMgdGhlIHNjYWxlIGRvd24gYnJhbmNoIG9mIHRoZSBjb2RlIGRvZXMgdXNlCj4gdGhlbS4K
Pgo+IFJld29yayB0aGUgZXJyb3IgbWVzc2FnZXMgdG8gbWFrZSB0aGVtIG5pY2VyIGFuZCBhdCB0
aGUgY29ycmVjdAo+IHZlcmJvc2l0eSwgYW5kIGFkZCB0aGUgbWlzc2luZyBnb3Rvcy4KPgo+IFJl
dmlld2VkLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5k
ZWxyZWdub0Bjb2xsYWJvcmEuY29tPgo+IFJldmlld2VkLWJ5OiBQZXRlciBXYW5nIDxwZXRlci53
YW5nQG1lZGlhdGVrLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5p
Y29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IExvdWlzLUFs
ZXhpcyBFeXJhdWQgPGxvdWlzYWxleGlzLmV5cmF1ZEBjb2xsYWJvcmEuY29tPgoKW1NldmVyaXR5
OiBMb3ddCkluIGFkZGl0aW9uIHRvIHRoZSBtaXNzaW5nIGdvdG8gb3V0IHdoZW4gY2xrX3NldF9w
YXJlbnQoY2xraS0+Y2xrLCAuLi4pCmZhaWxzIGR1cmluZyBzY2FsZS11cCwgdGhpcyBwYXRjaCBm
aXhlcyBhIGNsa2ktPmNsayBwcmVwYXJlL2VuYWJsZSBsZWFrCndoZW4gY2xrX3ByZXBhcmVfZW5h
YmxlKGZkZV9jbGtpLT5jbGspIGZhaWxzLiAgQm90aCBpc3N1ZXMgd2VyZSBpbnRyb2R1Y2VkCmJ5
IDVlNTk3NmY1MjQyZCAoInNjc2k6IHVmczogaG9zdDogbWVkaWF0ZWs6IFN1cHBvcnQgRkRFIChB
RVMpIGNsb2NrCnNjYWxpbmciKS4gIFNob3VsZCB0aGlzIGluY2x1ZGU6CgogIEZpeGVzOiA1ZTU5
NzZmNTI0MmQgKCJzY3NpOiB1ZnM6IGhvc3Q6IG1lZGlhdGVrOiBTdXBwb3J0IEZERSAoQUVTKSBj
bG9jayBzY2FsaW5nIikKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjExMTktbXQ4MTk2LXVmcy12MTUtMC1hYWUxZWIwMzgyZThAY29s
bGFib3JhLmNvbT9wYXJ0PTE2CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
