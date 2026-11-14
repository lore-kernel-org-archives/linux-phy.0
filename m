Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78F1F606A32D
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PZVe4EQ5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=k24Cy0Fr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qj7aZZaI4m8/aufsVRKoSLn4nc7ODeoziCAKrUcCC6s=; b=PZVe4EQ5nNV37aAtBwm5G9JLcW
	eIINwKJ5UxN3RaXzsJwxcjXlJonB5GUzc7699Jpd9S7pUmxkFnZKYEVYHFX1pknbnf+VBSf+ICI10
	ExYT0iHxSLLFI8k9wppm31SA8/rDDmLJUxStBRuf3DVYZvoASMMPqGEnFPn1KQo2mO1NPLc4i6WIU
	/gSZpd+vOsAaILnWQt3EUFs+58rDSqqfKREU2PKdsSBawr3EJnfthtbG9CsqREy7cF8rifeuC/NbT
	iWyf0Xjrs3uqZXaIti5JCPH8s+cWOM0Koh4GQTGwLcn/lTyh7QcS5S9cL7Lrhz2SBAvxopstpZnNq
	I+ea8LJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC9d-0000000Fuqq-0Zqy;
	Sat, 14 Nov 2026 11:42:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC9b-0000000FuqU-2HOD
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:42:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A2766601F5;
	Sat, 14 Nov 2026 11:42:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E72B11F000C5;
	Sat, 14 Nov 2026 11:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794656562;
	bh=OMtMYcishGO0ZdBger2v9Kb8tRhLZJGFMblJXKQt7s8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k24Cy0FrPUogjHv43Mv5nO/4Ju+kgvQ+iuA9cDPgblJzvpGToR8CBPaFwCGSw2bnP
	 CJqgFdVB/SVDQk+4TRevsx9P/EAVxDVeohgiXYo2TtU9HBNTOWfTZ6bQl3QXk7kJbO
	 5fLSdX0kGfVBmsrYxPRPF6DnRjNuVOaYdS/BrSJ8+SiHlTcaGUPPMB0BYHz+c1e/LD
	 xIN2jmx0//2h0t4xB+zI/wntxfJ7xEVh3jXoNbbcyGajepRLiw/Dgxfx2/8vdpwBz4
	 qOQCE5gZVMATCFg6ICPIEOo1vS+wAhtUtYBq7nc/LtKRZ3hMSffY5be+OTZZWWMGMz
	 cvq9r2sO4A70g==
Message-ID: <sashiko-outbox-214425@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 11/23] media: qcom: camss: vfe: Add support for VFE
 980
To: "Wenmeng Liu" <wenmeng.liu@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-11-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
 <20261114-add-support-for-camss-on-sm8750-v7-11-8ff2a11835f6@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 11:42:41 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gbWVkaWE6IHFjb206IGNhbXNz
OiBjYW1zcy12ZmUtOTgwLmMgZHVwbGljYXRlcyBjYW1zcy12ZmUtMTA4MC5jCi0tCgpjb21taXQg
MjkxOTVkOTAyOTc4NTUzMzgyOWQyNDY4ODhhMDc1ZWZlOTJkNzcyYQpBdXRob3I6IEhhbmd4aWFu
ZyBNYSA8aGFuZ3hpYW5nLm1hQG9zcy5xdWFsY29tbS5jb20+CgptZWRpYTogcWNvbTogY2Ftc3M6
IHZmZTogQWRkIHN1cHBvcnQgZm9yIFZGRSA5ODAKClRoaXMgY29tbWl0IGFkZHMgaGFyZHdhcmUg
b3BlcmF0aW9ucyBhbmQgU004NzUwIHN1YmRldmljZSByZXNvdXJjZSBkZWZpbml0aW9ucwpmb3Ig
VkZFIDk4MC4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1z
cy9jYW1zcy12ZmUtOTgwLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Fjb20vY2Ftc3MvY2Ft
c3MtdmZlLTk4MC5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAw
Li40N2Y2YzE4MTkwYWNmCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcWNvbS9jYW1zcy9jYW1zcy12ZmUtOTgwLmMKPiBAQCAtMCwwICsxLDIxMyBAQApbIC4u
LiBdCj4gKy8qIFZGRS05ODAgQnVzIFJlZ2lzdGVyIEJhc2UgQWRkcmVzc2VzICovCj4gKyNkZWZp
bmUgQlVTX1JFR19CQVNFCQkJCSh2ZmVfaXNfbGl0ZSh2ZmUpID8gMHgyMDAgOiAweDgwMCkKCltT
ZXZlcml0eTogTG93XQpDb3VsZCBWRkUgOTgwIHNoYXJlIHRoZSBpbXBsZW1lbnRhdGlvbiBpbiBj
YW1zcy12ZmUtMTA4MC5jIGluc3RlYWQgb2YKZHVwbGljYXRpbmcgdGhlIGVudGlyZSBmaWxlPwoK
RXZlcnkgcmVnaXN0ZXIgb2Zmc2V0LCBjbGllbnQgaW5kZXgsIGFuZCBjYWxsYmFjayBpbiBjYW1z
cy12ZmUtOTgwLmMgaXMKaWRlbnRpY2FsIHRvIGNhbXNzLXZmZS0xMDgwLmMgZXhjZXB0IGZvciBC
VVNfUkVHX0JBU0UsIHdoaWNoIGNvdWxkIGJlCnNlbGVjdGVkIGJhc2VkIG9uIHZmZS0+Y2Ftc3Mt
PnJlcy0+dmVyc2lvbiAoc2ltaWxhciB0byBjYW1zcy12ZmUtZ2VuMy5jKS4KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMTQtYWRk
LXN1cHBvcnQtZm9yLWNhbXNzLW9uLXNtODc1MC12Ny0wLThmZjJhMTE4MzVmNkBvc3MucXVhbGNv
bW0uY29tP3BhcnQ9MTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
