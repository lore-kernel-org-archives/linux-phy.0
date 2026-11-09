Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24125606A323
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 00:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Be2EGAmr;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=aCLHo9/6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HMjmpagJRlUDD9/cAeIud5TsckaePAx7ypFtnX/2nis=; b=Be2EGAmr+BPnV3e5usqwRshdr0
	zOkeEQS7b+2zsEIdNwJUURCvr0zPYHFC6f6mGIVs/8Xo7FDLcuvD9QBVj2OPVG0rpJVSJ/KYrdKD5
	JECauQtsidmI+/kNFjr4gkQaNcIdqzaEvHwVpoakLtOY52/kVV2dT85SzjHBc9XARGE6EIwizZeUs
	BGDjmn/Y7yTib19UpZDYDBltoDDisfo8snddmE+dSsqQ35/NsoSBHex0BcRa/xj1p2oV1Gng9HlbP
	gop2Wdw9PA9+HHtzmNhRR6XLzDZ35QYmvM/6zAhzdKF/S4LLw/3/7uUJ5FKJCW3WnM1IyRg7q0JiP
	DLfrJakg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDh5-0000000H0TW-3gH8;
	Mon, 09 Nov 2026 00:57:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQDh5-0000000H0TH-01If
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 00:57:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1A66961D4E;
	Mon,  9 Nov 2026 00:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB0461F008A6;
	Mon,  9 Nov 2026 00:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794185825;
	bh=UgV8KA7Cu5ZAaXYWYDbHu7HAyaZ/X9DN4CiRecqVryU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aCLHo9/66kPxeQ3IlSV3ZYw9X11Y8ElsAX6H6zq2gRhS8i5w9QzUtaTRIqcLj2c50
	 wNcZ4HApf8c6WjEaVg23WQXbHYNl8X46GGcsTFdfb6z8xL0XwRFd0J+psV6dMO79/O
	 29Pfb3DCr22DF0WYm5d5fSq1p2OfWoH/5R2VwlwCchRLYS3qrMsut9/Ly1LALQRaE/
	 ZT7EdN53KZ7DzAn7nuB0As9a6t9BGPo4vMoa44LJhlNwRTzQ5Bgu3qZhDQFXAM0PFd
	 /bFuGsUALoDM0/f5WnN/BWYUh+vnJF4STVtD2OLic8D//ycbHylWRDxUpBqWSSME/W
	 t3ai4PjYZ5fWg==
Message-ID: <sashiko-outbox-204265@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 17/17] arm64: dts: qcom: Add Samsung Galaxy XR
To: "Stanislav Aleksandrov" <lightofmysoul@gmail.com>, "Bjorn Andersson" <andersson@kernel.org>, "Konrad
 Dybcio" <konradybcio@kernel.org>, "Abel Vesa" <abelvesa@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Robert Marko" <robimarko@gmail.com>, "Guru
 Das Srinagesh" <linux@gurudas.dev>, "Thomas Gleixner" <tglx@kernel.org>, "Radu
 Rendec" <radu@rendec.net>, "Lee Jones" <lee@kernel.org>, "Will Deacon" <will@kernel.org>, "Robin
 Murphy" <robin.murphy@arm.com>, =?utf-8?b?Sm9lcmcgUm9lZGVsIChBTUQp?= <joro@8bytes.org>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, "Wesley Cheng" <wesley.cheng@oss.qualcomm.com>, "Vinod
 Koul" <vkoul@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Manivannan
 Sadhasivam" <mani@kernel.org>, "Alim Akhtar" <alim.akhtar@samsung.com>, "Bart
 Van Assche" <bvanassche@acm.org>, "Bean Huo" <beanhuo@micron.com>, "Stanley
 Jhu" <stanleyjhu@google.com>, "Herbert Xu" <herbert@gondor.apana.org.au>, "David
 S. Miller" <davem@davemloft.net>, "Rafael J. Wysocki" <rafael@kernel.org>, "Viresh
 Kumar" <viresh.kumar@linaro.org>, "Amit Kucheria" <amitk@kernel.org>, "Thara
 Gopinath" <thara.gopinath@gmail.com>, "Daniel Lezcano" <daniel.lezcano@kernel.org>, "Zhang
 Rui" <rui.zhang@intel.com>, "Lukasz Luba" <lukasz.luba@arm.com>, "Georgi
 Djakov" <djakov@kernel.org>, "Sibi Sankar" <sibi.sankar@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20261109-halliday-dts-v1-17-289114ab8197@gmail.com>
References: <20261109-halliday-dts-v1-0-289114ab8197@gmail.com>
 <20261109-halliday-dts-v1-17-289114ab8197@gmail.com>
Date: Mon, 09 Nov 2026 00:57:03 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gYXJtNjQ6IGR0czogcWNvbTog
aW52YWxpZCBjaGFzc2lzLXR5cGUgdmFsdWUgaW4KICBoYWxsaWRheS1zYW1zdW5nLXhydnN0Mi5k
dHMKLS0KCmNvbW1pdCBkMmQ5Y2JjNzc0NGZkOWMzZDk1YTYzYjFkM2RmODVkNWNiZTk5YWZiCkF1
dGhvcjogU3RhbmlzbGF2IEFsZWtzYW5kcm92IDxsaWdodG9mbXlzb3VsQGdtYWlsLmNvbT4KCmFy
bTY0OiBkdHM6IHFjb206IEFkZCBTYW1zdW5nIEdhbGF4eSBYUgoKVGhpcyBjb21taXQgYWRkcyB0
aGUgZGV2aWNlIHRyZWUgZm9yIHRoZSBTYW1zdW5nIEdhbGF4eSBYUiBoZWFkc2V0IGJhc2VkCm9u
IHRoZSBRdWFsY29tbSBIYWxsaWRheSBTb0MgKFNYUjIyNTBQKS4KCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYWxsaWRheS1zYW1zdW5nLXhydnN0Mi5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vaGFsbGlkYXktc2Ftc3VuZy14cnZzdDIuZHRzCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi42ZmNjMWFhYWZkNTljCj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9oYWxsaWRheS1zYW1z
dW5nLXhydnN0Mi5kdHMKPiBAQCAtMCwwICsxLDIxOCBAQApbIC4uLiBdCj4gKy8gewo+ICsJbW9k
ZWwgPSAiU2Ftc3VuZyBHYWxheHkgWFIiOwo+ICsJY29tcGF0aWJsZSA9ICJzYW1zdW5nLHhydnN0
MiIsICJxY29tLGhhbGxpZGF5IjsKPiArCWNoYXNzaXMtdHlwZSA9ICJoZWFkc2V0IjsKCltTZXZl
cml0eTogTG93XQpJcyAiaGVhZHNldCIgYSB2YWxpZCB2YWx1ZSBmb3IgY2hhc3Npcy10eXBlIGlu
IHRoZSByb290IG5vZGU/ICBUaGUKRGV2aWNldHJlZSBTcGVjaWZpY2F0aW9uIGFuZCBkdHNjaGVt
YSAoc2NoZW1hcy9yb290LW5vZGUueWFtbCkgb25seSBwZXJtaXQKZGVza3RvcCwgbGFwdG9wLCBj
b252ZXJ0aWJsZSwgc2VydmVyLCB0YWJsZXQsIGhhbmRzZXQsIHdhdGNoLCBlbWJlZGRlZCwKdGVs
ZXZpc2lvbiwgYW5kIGFsbC1pbi1vbmUsIHNvIGR0YnNfY2hlY2sgZmFpbHMgb24gdGhpcyBEVEIg
dW5sZXNzIGEKc3RhbmRhcmQgdmFsdWUgKHN1Y2ggYXMgImVtYmVkZGVkIikgaXMgdXNlZCBvciBj
aGFzc2lzLXR5cGUgaXMgb21pdHRlZC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczov
L3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMDktaGFsbGlkYXktZHRzLXYxLTAtMjg5MTE0
YWI4MTk3QGdtYWlsLmNvbT9wYXJ0PTE3CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
