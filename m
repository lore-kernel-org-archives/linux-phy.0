Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A554D606A32D
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wXDrnKwi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=IaZUX26L
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=YeXN8RjqZDENarUOGn9B3ERlzvGb+iIfuRkh8lKxXe8=; b=wXDrnKwi5u7Rfy4wdkbBUKFRou
	9b2XtE9qnQ7Mfqok7LyYoU0Zb86RO6iTccHnrPFn1JUhvRQjH5lnbFi4y5prVKwIxWVrbV2Y0g9LR
	/P0qpdeoAkHBqFwlhdCi1ic6gEzFq8N6sjHdHG21HVBqJvwGTXGzbhpjmW3F/WiUddzfFNTvFkIYx
	1ykMnO1K1gPmEJmNCLSCCTjaEVxx7v0Wh4slE0c4cU5aiRpTvMEi7FtF2Pyc8spmD8l/u4wndOSro
	M+R6oHp/06Mfm39CL8fQW2/EIuRTfGhgHpElC0ZZKjvh7qtHHgUmyqdBV/eWfES2R+fcfaffObfze
	z/2d3UPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQmq-00000009IPP-130A;
	Thu, 12 Nov 2026 09:08:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQmm-00000009IOH-1Lz9
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:08:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 88CA0632AC;
	Thu, 12 Nov 2026 09:07:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 878F91F00A05;
	Thu, 12 Nov 2026 09:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474479;
	bh=OF0u0KtMNSYjf4aGiBx32yBnOG/70jjYboMrsuqMBIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IaZUX26LDTHdKSsVMwo3x64phL8c9/CKYh6y1bb+uONWOzbuKkuvmdglPAg85EwoO
	 MQ/l7jbGRTgmhuREBLiAh1ItzF9G8Pd238XrHRr4zv6aLsSCrD/4ZQqBaSCuNnYykH
	 lJecAqh4qKL//jfMHiToZurFbXmpkCeorS0NLCEkfSjprcK4kbw7O7FoLj+/pU47yu
	 VLDMj+QiEAHnuvgV1Dydh9PbaW6KKatPv0eEEtVdPb6pFh3S14qfPq2ta5gGr2FnOk
	 qTfXOCviyPdDROCF1P27q4W7yySYwODFwIqpWQGvNbg+YZ/u6geMHCe1S1iMY4eKUB
	 gjRvxiWN/gcoA==
Date: Thu, 12 Nov 2026 14:37:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v2] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
Message-ID: <avWB6_hSarfdJV5-@parshuram>
References: <20261112-smb-repeater-power-leakage-v2-1-0f8ee55c4962@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261112-smb-repeater-power-leakage-v2-1-0f8ee55c4962@oss.qualcomm.com>
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTItMTEtMjYsIDE0OjA3LCBLcmlzaG5hIEt1cmFwYXRpIHdyb3RlOgo+IE9uIEdseW11ciwg
aXQgaXMgb2JzZXJ2ZWQgdGhhdCBhbHRob3VnaCB0aGUgZXhpdCBjYWxsIGlzIGRvbmUsIHRoZXJl
IGlzIGEKPiBwb3dlciBsZWFrYWdlIHNlZW4gb24gU01CMjM3MCBjaGFyZ2VyICh3aGljaCBlbWJl
ZHMgdGhlIGVVU0IyIG1vZHVsZSBhcwo+IHdlbGwpLiBBcyBwZXIgcmVjb21tZW5kYXRpb24gb2Yg
SFcgdGVhbSwgZGlzYWJsZSB0aGUgcmVwZWF0ZXIgZHVyaW5nIHRoZQo+IGV4aXQgY2FsbCB0byBw
cmV2ZW50IHRoaXMgcG93ZXIgbGVha2FnZS4KPiAKPiBSZXZpZXdlZC1ieTogS29ucmFkIER5YmNp
byA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPgo+IFJldmlld2VkLWJ5OiBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgo+
IFJldmlld2VkLWJ5OiBBYmVsIFZlc2EgPGFiZWwudmVzYUBvc3MucXVhbGNvbW0uY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEtyaXNobmEgS3VyYXBhdGkgPGtyaXNobmEua3VyYXBhdGlAb3NzLnF1YWxj
b21tLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHYyOgo+IC0gUmViYXNlZCBvbiB0b3Agb2YgcGh5
LW5leHQgc2luY2UgWzFdIHJlbW92ZXMgdGhlIGJhc2UgdmFyaWFibGUgaW4gcnB0ciBzdHJ1Y3Qg
Cj4gLSBLZXB0IHRoZSBSQiBUYWdzIGludGFjdCBzaW5jZSBpdHMgYSByZWJhc2UKPiAKPiBMaW5r
IHRvIHYxOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDkxNy1zbWItcmVwZWF0
ZXItcG93ZXItbGVha2FnZS12MS0xLTZkNzMxMWMzYzAzZUBvc3MucXVhbGNvbW0uY29tLwo+IAo+
IENvbXBpbGUgdGVzdGVkIHYyLgo+IAo+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjYwNzIxMDkzNjI2Ljk2MjY0LTEwLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFi
b3JhLmNvbS8KPiAtLS0KPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVw
ZWF0ZXIuYyB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1yZXBlYXRlci5j
IGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVwZWF0ZXIuYwo+IGluZGV4
IDg5YmMxYzg5ZmM4NS4uNjA3YjVhNWExNzEzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLWV1c2IyLXJlcGVhdGVyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1ldXNiMi1yZXBlYXRlci5jCj4gQEAgLTIyNyw3ICsyMjcsOSBAQCBzdGF0
aWMgaW50IGV1c2IyX3JlcGVhdGVyX3NldF9tb2RlKHN0cnVjdCBwaHkgKnBoeSwKPiAgc3RhdGlj
IGludCBldXNiMl9yZXBlYXRlcl9leGl0KHN0cnVjdCBwaHkgKnBoeSkKPiAgewo+ICAJc3RydWN0
IGV1c2IyX3JlcGVhdGVyICpycHRyID0gcGh5X2dldF9kcnZkYXRhKHBoeSk7Cj4gKwlzdHJ1Y3Qg
cmVnbWFwICpyZWdtYXAgPSBycHRyLT5yZWdtYXA7Cj4gIAo+ICsJcmVnbWFwX3dyaXRlKHJlZ21h
cCwgRVVTQjJfRU5fQ1RMMSwgMCk7Cj4gIAlyZXR1cm4gcmVndWxhdG9yX2J1bGtfZGlzYWJsZShy
cHRyLT5jZmctPm51bV92cmVncywgcnB0ci0+dnJlZ3MpOwoKVGhpcyBmYWlscyB0byBidWlsZDoK
CmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWV1c2IyLXJlcGVhdGVyLmM6IEluIGZ1bmN0
aW9uIOKAmGV1c2IyX3JlcGVhdGVyX2V4aXTigJk6CmRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLWV1c2IyLXJlcGVhdGVyLmM6MjMxOjI0OiBlcnJvcjog4oCYc3RydWN0IGV1c2IyX3JlcGVh
dGVy4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYYmFzZeKAmQoKLS0gCn5WaW5vZAoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
