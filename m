Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37F3AC5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omgkyqBPhiSlDoQRxRBfPBICVCbXt0aOlZXIk9Rjs+E=; b=sXU2ZBOxnpPHrl
	Dt12HpMWRE52CG+72H+3bfoNBTht+0fOsXhM3f0IqLhhc9qrMooRXTjqVOkPrOkbKSZSBxYMmDoWA
	Jvle3QWXytaU8LFM3HNgIsfN/5fesrzhJC+5sjE1m95/NjxEvn+4trFXoWnKnKVFQNx/593E3fNAW
	g3/Kj3vUxk3sN6D2jD2MopddoMrrv1rke2YmRnrJBQAK2WHgp3J+QT0ap7C2qc9ANfgI8se92Xxsm
	p66/9cSpFQsaRxToizT0FVHFGSGPnW1/MNUSA7JwXQF1ZcxRWQ2vhduSPUAbHst45YKJ0w/23BRwj
	9Np9jvGEz/WQENbEueBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Lj-00000006tCV-3L0c;
	Mon, 17 Aug 2026 21:58:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5Li-00000006tCK-3ikb
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:58:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 641CC409FA;
	Mon, 17 Aug 2026 21:58:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB4321F00A3A;
	Mon, 17 Aug 2026 21:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787003910;
	bh=QHYXFmEpUZml9PNH+fpjpeMsB7eYNHyBmr+snfwmDfM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EAvrzshIzOPe9IQUTkpW0qM4GhZyKrxbB4Ao95UWzwHLBxV8XzziV/0yLd0Z3/kbY
	 xdHSJsEI4RUGEhPQq53PkfyWsToj85op28cnJoqFh0ec6aHS8djJ5lux+h0frKlyHA
	 A0LKdBGpLvqabCK67NSo7AiaPtKxJDECpK861U4LdK6qVTTYlJk7ycuqrddKuoWwqd
	 6rtgb+SuRus5ec42ctfDcj4DhE+LttzKW9SA/J9N/B/aRvO1x7lEB5IZeFS/LBIOZm
	 AcrRLgCL6C7qw6+h3GHetuoL+R+ccfbe6SStihouBiVc5lo04ePTIZHFJWILJ9DyTI
	 aiZ42ctJyWefg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: dma: ti,cppi41: Convert to DT schema
To: "Bhargav Joshi" <j.bhargav.u@gmail.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, Frank.Li@kernel.org
In-Reply-To: <20260818-ti-am33-usb-v1-1-69ac5f92df45@gmail.com>
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
 <20260818-ti-am33-usb-v1-1-69ac5f92df45@gmail.com>
Date: Mon, 17 Aug 2026 21:58:29 +0000
Message-Id: <20260817215829.AB4321F00A3A@smtp.kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIG5ld2x5IGFk
ZGVkIGRlcHJlY2F0ZWQgcHJvcGVydGllcyBgI2RtYS1jaGFubmVsc2AgYW5kIGAjZG1hLXJlcXVl
c3RzYCBsYWNrIGEgdHlwZSByZWZlcmVuY2UsIHdoaWNoIHdpbGwgY2F1c2UgYGR0X2JpbmRpbmdf
Y2hlY2tgIHRvIGZhaWwuCi0gW01lZGl1bV0gVGhlIGBpbnRlcnJ1cHRzYCBwcm9wZXJ0eSBpcyBz
dHJpY3RseSByZXF1aXJlZCBieSB0aGUgaGFyZHdhcmUgYW5kIGRyaXZlciBidXQgaXMgbWlzc2lu
ZyBmcm9tIHRoZSBnbG9iYWwgb3IgdmFyaWFudC1zcGVjaWZpYyBgcmVxdWlyZWRgIGxpc3RzLCB3
aGlsZSBgaW50ZXJydXB0LW5hbWVzYCBpcyByZXF1aXJlZCB3aXRob3V0IGBpbnRlcnJ1cHRzYC4K
LS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSCAxLzddIGR0LWJpbmRpbmdzOiBkbWE6IHRpLGNwcGk0
MTogQ29udmVydCB0byBEVCBzY2hlbWEgLS0tCmNvbW1pdCA5ZDIzOTU3NzM3MmIxNDI1M2E2YmQ5
ZmNmMTE2ZWVmM2M3YjU4YWQzCkF1dGhvcjogQmhhcmdhdiBKb3NoaSA8ai5iaGFyZ2F2LnVAZ21h
aWwuY29tPgoKZHQtYmluZGluZ3M6IGRtYTogdGksY3BwaTQxOiBDb252ZXJ0IHRvIERUIHNjaGVt
YQoKQ29udmVydCBUSSBDUFBJIDQuMSBETUEgY29udHJvbGxlciB0ZXh0IGJpbmRpbmdzIHRvIERU
IHNjaGVtYS4gQWRkCnRpLGFtMzM1OS1jcHBpNDEgYW5kIHRpLGRhODMwLWNwcGk0MSBpbnRvIHNp
bmdsZSBzY2hlbWEgc2luY2UgdGhleSBzaGFyZQp0aGUgc2FtZSBoYXJkd2FyZSBJUCBibG9jayBh
bmQgZHJpdmVyLiBBZGQgdW5kb2N1bWVudGVkIGRtYS1yZXF1ZXN0cwphbmQgcG93ZXItZG9tYWlu
cyBwcm9wZXJ0aWVzIHRvIG1hdGNoIGV4aXN0aW5nIERUUyB1c2FnZS4KCj4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvdGkvdGksY3BwaTQxLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL3RpLGNwcGk0MS55YW1s
Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi4xMTBjZjYyYzY2
ZDIwCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kbWEvdGkvdGksY3BwaTQxLnlhbWwKPiBAQCAtMCwwICsxLDEwOCBAQAo+ICsjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKPiArJVlB
TUwgMS4yCj4gKy0tLQo+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2RtYS90
aS90aSxjcHBpNDEueWFtbCMKPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEt
c2NoZW1hcy9jb3JlLnlhbWwjCgpbIC4uLiBdCgo+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gKyAgICBt
YXhJdGVtczogMQo+ICsKPiArICAiI2RtYS1jaGFubmVscyI6Cj4gKyAgICBkZXNjcmlwdGlvbjog
RGVwcmVjYXRlZCwgdXNlIGRtYS1jaGFubmVscyBpbnN0ZWFkLgo+ICsgICAgZGVwcmVjYXRlZDog
dHJ1ZQo+ICsKPiArICAiI2RtYS1yZXF1ZXN0cyI6Cj4gKyAgICBkZXNjcmlwdGlvbjogRGVwcmVj
YXRlZCwgdXNlIGRtYS1yZXF1ZXN0cyBpbnN0ZWFkLgo+ICsgICAgZGVwcmVjYXRlZDogdHJ1ZQoK
W1NldmVyaXR5OiBNZWRpdW1dCkRvIHRoZXNlIGRlcHJlY2F0ZWQgcHJvcGVydGllcyBuZWVkIGFu
IGV4cGxpY2l0IHR5cGUgcmVmZXJlbmNlLCBzdWNoIGFzCiRyZWY6IC9zY2hlbWFzL3R5cGVzLnlh
bWwjL2RlZmluaXRpb25zL3VpbnQzMj8gV2l0aG91dCBhIHR5cGUgcmVmZXJlbmNlLAp3aWxsIGR0
X2JpbmRpbmdfY2hlY2sgZmFpbCB3aXRoIGEgbWlzc2luZyB0eXBlIGRlZmluaXRpb24gZXJyb3Ig
Zm9yIHRoZXNlCmN1c3RvbSBwcm9wZXJ0aWVzPwoKPiArCj4gK3JlcXVpcmVkOgo+ICsgIC0gY29t
cGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSByZWctbmFtZXMKPiArICAtICIjZG1hLWNlbGxzIgo+
ICsgIC0gZG1hLWNoYW5uZWxzCgpbU2V2ZXJpdHk6IE1lZGl1bV0KU2hvdWxkIGludGVycnVwdHMg
YmUgaW5jbHVkZWQgaW4gdGhpcyB0b3AtbGV2ZWwgcmVxdWlyZWQgbGlzdD8gU2luY2UgdGhlCmhh
cmR3YXJlIGFuZCBkcml2ZXIgdW5jb25kaXRpb25hbGx5IGZhaWwgcHJvYmluZyB3aXRob3V0IGl0
LCBvbWl0dGluZwppbnRlcnJ1cHRzIGhlcmUgbWlnaHQgYWxsb3cgaW5jb21wbGV0ZSBkZXZpY2Ug
dHJlZXMgdG8gc2lsZW50bHkgcGFzcyBzY2hlbWEKdmFsaWRhdGlvbi4KCj4gKwo+ICthbGxPZjoK
PiArICAtICRyZWY6IC9zY2hlbWFzL2RtYS9kbWEtY29udHJvbGxlci55YW1sIwo+ICsgIC0gaWY6
Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICAg
IGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBjb25zdDogdGksYW0zMzU5LWNwcGk0MQo+ICsgICAg
dGhlbjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAgICAgICByZWc6Cj4gKyAgICAgICAgICBt
aW5JdGVtczogNAo+ICsgICAgICAgIHJlZy1uYW1lczoKPiArICAgICAgICAgIGl0ZW1zOgo+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBnbHVlCj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGNvbnRyb2xs
ZXIKPiArICAgICAgICAgICAgLSBjb25zdDogc2NoZWR1bGVyCj4gKyAgICAgICAgICAgIC0gY29u
c3Q6IHF1ZXVlbWdyCj4gKyAgICAgICAgcG93ZXItZG9tYWluczogZmFsc2UKPiArICAgICAgcmVx
dWlyZWQ6Cj4gKyAgICAgICAgLSBpbnRlcnJ1cHQtbmFtZXMKPiArICAgICAgICAtIGRtYS1yZXF1
ZXN0cwoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgcmVxdWlyaW5nIGludGVycnVwdC1uYW1lcyBo
ZXJlIGFsc28gaW1wbHkgdGhhdCBpbnRlcnJ1cHRzIHNob3VsZCBiZQpyZXF1aXJlZD8gSXQgc2Vl
bXMgbG9naWNhbGx5IGluY29uc2lzdGVudCB0byBtYW5kYXRlIHRoZSBuYW1lcyBidXQgbm90IHRo
ZQppbnRlcnJ1cHRzIHByb3BlcnR5IGl0c2VsZi4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTgtdGktYW0zMy11c2ItdjEtMC02
OWFjNWY5MmRmNDVAZ21haWwuY29tP3BhcnQ9MQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
