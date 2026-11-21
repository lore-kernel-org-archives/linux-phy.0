Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697D8606A320
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 07:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VcN5dcK+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YmduxRyR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bx23Qe1ATUOXYJHSdDyKDdkq5Pd4FCRDld653j66YMo=; b=VcN5dcK+hXajolFCjBSOB0mY/H
	fl0yFOjJitOdahy+Fy2aX7kYj/2U6sKZAL8REIS2qHbPC/zOaW845XBHJ5U/RVROypRJeuYv5o4Hs
	KpcxuBMNNXaKZmpouASeDUChNO3gHt7vwucb2oyoOkd5vpcziURQo+WQU17IzQrcdlC9aFFZPtyu4
	6p6JEEvdGasBSFGTohsZwJNQmyJ9njeRIyTO8CkUng6b69b+axEwlaupaujF07DyFSnpPWuxHHYmG
	4aJSpiTIVmg99lKrq+jsFkd1Lv1qpLCHkkU0VGq4MfnTIp87j3nisqv53GrmFmXGPLvAYm4V4g5s1
	9rOliJtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUflj-0000000GtAZ-00KV;
	Sat, 21 Nov 2026 07:44:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUflg-0000000GtAR-4AiC
	for linux-phy@lists.infradead.org;
	Sat, 21 Nov 2026 07:44:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 52F92602D4;
	Sat, 21 Nov 2026 07:44:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96B101F000C6;
	Sat, 21 Nov 2026 07:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795247056;
	bh=3LF0iozCK3be5qNzdN7kLidOplRMQaHvoxhaWrqnzAI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YmduxRyRHHMU4wilmiUFb7isWnCLOvZCruN73/lYgyJt8FQqqHl3t+Umft53F4czP
	 SumCCjfuZosaF+sd37vxCJvyXMtoY1w2UC/swHhxny8Ah5XhrPNN5/MongFecKgwF0
	 M77dafo8ii0RR0oYFozc1SlYyDjd/SyJ5hTdvaPRKT6XihqDUiB6KinIeXiv3Quqat
	 3gpdPL0o6zQhw1crSbReraxhRItX34hsO5mC8JIccEj14tLfYGD5Au90Ru9do67dtX
	 Bt6g3sTv8s1tHWWETx1n5uYphwJGM/llO1PmMxBYk0eCTbf4Wj5rdr5hMRdvjMGB9g
	 ZTer37M8kxqEw==
Message-ID: <sashiko-outbox-226790@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 01/17] dt-bindings: display: spacemit: add K3 Saturn
 DPU controller
To: "Cody Kang" <codykang.hk@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261121-k3-display-v3-1-ec419e8e96b8@gmail.com>
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
 <20261121-k3-display-v3-1-ec419e8e96b8@gmail.com>
Date: Sat, 21 Nov 2026 07:44:15 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IGRpc3Bs
YXk6IHNwYWNlbWl0OiBpbnRlcnJ1cHRzIG9yZGVyZWQgYmVmb3JlIGNsb2NrcwogIGluIEszIERQ
VQotLQoKY29tbWl0IDVjYWNkNmMzZGU0YzQyYTBhMWU4NGZjMGYwZjY5MzhjNjk5MGI3OGUKQXV0
aG9yOiBDb2R5IEthbmcgPGNvZHlrYW5nQHZzaXQuYWk+CgpkdC1iaW5kaW5nczogZGlzcGxheTog
c3BhY2VtaXQ6IGFkZCBLMyBTYXR1cm4gRFBVIGNvbnRyb2xsZXIKClRoaXMgY29tbWl0IGFkZHMg
dGhlIERldmljZSBUcmVlIGJpbmRpbmcgc2NoZW1hIGZvciB0aGUgU2F0dXJuIGRpc3BsYXkKcHJv
Y2Vzc2luZyB1bml0IGZvdW5kIG9uIHRoZSBTcGFjZW1pVCBLMyBTb0MuCgo+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9zcGFjZW1pdC9zcGFj
ZW1pdCxrMy1zYXR1cm4tZHB1LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvZGlzcGxheS9zcGFjZW1pdC9zcGFjZW1pdCxrMy1zYXR1cm4tZHB1LnlhbWwKPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjk3ZWE5ZGE0YjY4ZTQKPiAtLS0g
L2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvc3BhY2VtaXQvc3BhY2VtaXQsazMtc2F0dXJuLWRwdS55YW1sCj4gQEAgLTAsMCArMSwxMzIg
QEAKClsgLi4uIF0KCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0
OiBzcGFjZW1pdCxrMy1zYXR1cm4tZHB1Cj4gKwo+ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAx
Cj4gKwo+ICsgIGludGVycnVwdHM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBkZXNjcmlwdGlv
bjogT25saW5lIChsaXZlIGRpc3BsYXkpIGNvbXBvc2UgcGF0aC4KPiArICAgICAgLSBkZXNjcmlw
dGlvbjogT2ZmbGluZSAod3JpdGViYWNrKSBjb21wb3NlIHBhdGguCj4gKwo+ICsgIGludGVycnVw
dC1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBvbmxpbmUKPiArICAgICAg
LSBjb25zdDogb2ZmbGluZQo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBpdGVtczoKPiArICAgICAg
LSBkZXNjcmlwdGlvbjogUGl4ZWwgY2xvY2suCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IE1lbW9y
eSBjbG9jayBmb3IgdGhlIGNvbXBvc2UgcGlwZWxpbmUuCj4gKyAgICAgIC0gZGVzY3JpcHRpb246
IEFYSSBidXMgY2xvY2suCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IERTSSBlc2NhcGUgY2xvY2su
Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IERTQyBjbG9jay4KPiArCj4gKyAgY2xvY2stbmFtZXM6
Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogcHhjbGsKPiArICAgICAgLSBjb25zdDog
bWNsawo+ICsgICAgICAtIGNvbnN0OiBhY2xrCj4gKyAgICAgIC0gY29uc3Q6IGVzY2Nsawo+ICsg
ICAgICAtIGNvbnN0OiBkc2NjbGsKClsgLi4uIF0KCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0
aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSBpbnRlcnJ1cHRzCj4gKyAgLSBpbnRlcnJ1cHQtbmFtZXMK
PiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIHJlc2V0cwo+ICsgIC0gcmVz
ZXQtbmFtZXMKPiArICAtIHBvcnRzCgpbIC4uLiBdCgo+ICsgICAgICAgIGRwdUBjMDM0MDAwMCB7
Cj4gKyAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic3BhY2VtaXQsazMtc2F0dXJuLWRwdSI7Cj4g
KyAgICAgICAgICAgIHJlZyA9IDwweDAgMHhjMDM0MDAwMCAweDAgMHg1NDAwMD47Cj4gKyAgICAg
ICAgICAgIGludGVycnVwdHMgPSA8OTAgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICA8ODkgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gKyAgICAgICAgICAg
IGludGVycnVwdC1uYW1lcyA9ICJvbmxpbmUiLCAib2ZmbGluZSI7Cj4gKyAgICAgICAgICAgIGNs
b2NrcyA9IDwmc3lzY29uX2FwbXUgQ0xLX0FQTVVfTENEX1BYQ0xLPiwKPiArICAgICAgICAgICAg
ICAgICAgICAgPCZzeXNjb25fYXBtdSBDTEtfQVBNVV9MQ0RfTUNMSz4sCj4gKyAgICAgICAgICAg
ICAgICAgICAgIDwmc3lzY29uX2FwbXUgQ0xLX0FQTVVfRFBVX0FDTEs+LAo+ICsgICAgICAgICAg
ICAgICAgICAgICA8JnN5c2Nvbl9hcG11IENMS19BUE1VX0RTSV9FU0M+LAo+ICsgICAgICAgICAg
ICAgICAgICAgICA8JnN5c2Nvbl9hcG11IENMS19BUE1VX0xDRF9EU0M+Owo+ICsgICAgICAgICAg
ICBjbG9jay1uYW1lcyA9ICJweGNsayIsICJtY2xrIiwgImFjbGsiLCAiZXNjY2xrIiwgImRzY2Ns
ayI7CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IGluIERldmljZSBUcmVl
IGJpbmRpbmcgc2NoZW1hcywgY2xvY2tzIGFuZCBjbG9jay1uYW1lcwpzaG91bGQgYmUgbGlzdGVk
IGJlZm9yZSBpbnRlcnJ1cHRzIGFuZCBpbnRlcnJ1cHQtbmFtZXMgaW4gdGhlIHByb3BlcnRpZXMs
CnJlcXVpcmVkLCBhbmQgZXhhbXBsZXMgc2VjdGlvbnMgdG8gZm9sbG93IHRoZSBjYW5vbmljYWwg
cHJvcGVydHkgb3JkZXIKKGNvbXBhdGlibGUsIHJlZywgY2xvY2tzLCBjbG9jay1uYW1lcywgaW50
ZXJydXB0cywgaW50ZXJydXB0LW5hbWVzKS4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjEtazMtZGlzcGxheS12My0wLWVjNDE5
ZThlOTZiOEBnbWFpbC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
