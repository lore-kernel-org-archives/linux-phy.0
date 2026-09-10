Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E1AC79F9F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 15:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CZKQN0kreTXbGfkSeMaGml+Hf3mxU2KBL1OIS9ICfy0=; b=fvymWbHyN/Yxwf
	vkDj5V6+OCpZ/E8E8ooZawtzzJLSw2FVyX62bahkdWR43K++2BJS8XbHaLkPrKMidw0bi6Z9bn7Q1
	wN1KW5Nf4h+E0YyGvJQRxe3+2hx2RS1Vdf7/UjhZocqem1gR7yWJQdGGYV7Wj/kdxO3REwrQvRGm5
	EYZB8e/irexXBhj6ZKPLyFR8SaBf3n+qqKesNRQRxhJg577LfpRhKr/jOjuWTmTuVirlu6ZxXG01n
	jYzdk+HnOJ7pdSNikdWKxhp/VqwfV4EoNMoHV6WG4O9x+5fN+YT9bQUpnfPxLEvZmZlxMVCfkS/IB
	Zx0ZU8RJAcIZg0b/VW1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4h6B-0000000EsM6-3Fde;
	Thu, 10 Sep 2026 15:54:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4h6A-0000000EsLx-1dda
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 15:54:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 17C9B600E2;
	Thu, 10 Sep 2026 15:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED8111F000FF;
	Thu, 10 Sep 2026 15:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789055640;
	bh=Rhw/XB4oZMCuaT9L25oXSIHQQoDpEoegzurtGHYUhlM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Pv1tSWs7ainajgYjsidtvlIdbZM9m8x7e6csAWxID/NPmmB5o3ArXkWrZvipXRaeC
	 hq0kBETRmNeoP+zyEdGWNjFIAK8A5EyuJZQT7sKkNa3tvOZ6+Rx2s37xxKr3hdmlBs
	 j4YI8+qgXsY7OXesAo55+bE4n43jnmwL1PrbpU5kyAKMf+c7mkJzChPpo5xmMhUcQX
	 XbUUUasK8nQH2dyAE4wfLNfQa5w6ddQm+7vvsWy/9ocUCLFbV/IDZp8y02dirkpxl/
	 1T8zPHdu+MEkXxTPC4m/ayQFm3Cz79GmQmAtngKrMaHbowbDrPoIXxKq4xxM8iDKlh
	 mmGYWiOz/PQZA==
Date: Thu, 10 Sep 2026 17:53:51 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v7 1/5] dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
Message-ID: <kwtken2y246g2se2bmn3uvxed2ynzxyseck6y2dlnjjn6icug5@p67crwakk4la>
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
 <20260905-eusb2-interrupt-v7-v7-1-820cf5377a70@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260905-eusb2-interrupt-v7-v7-1-820cf5377a70@oss.qualcomm.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBTZXAgMDUsIDIwMjYgYXQgMDg6NTk6MDVQTSArMDUzMCwgS3Jpc2huYSBLdXJhcGF0
aSB3cm90ZToKPiBlVVNCMiAoRW1iZWRkZWQgVVNCMikgaXMgYSBNSVBJIEFsbGlhbmNlIHN0YW5k
YXJkIGZvciBjaGlwLXRvLWNoaXAgVVNCMgo+IHNpZ25hbGluZy4gVW5saWtlIHN0YW5kYXJkIFVT
QjIsIHdoaWNoIHVzZXMgMy4zViBzaWduYWxpbmcsIGVVU0IyIHVzZXMKPiBsb3ctdm9sdGFnZSBk
aWZmZXJlbnRpYWwgc2lnbmFsaW5nICh+MC40VikgYW5kIHJlcXVpcmVzIGEgcmVwZWF0ZXIgdG8K
PiBpbnRlcmZhY2Ugd2l0aCBleHRlcm5hbCBVU0IyIHBvcnRzLiBCZWNhdXNlIG9mIHRoZXNlIGRp
ZmZlcmVuY2VzLCBlVVNCMgo+IFBIWSBpbml0aWFsaXphdGlvbiBzZXF1ZW5jZXMsIHZvbHRhZ2Ug
dHVuaW5nLCBhbmQgcmVnaXN0ZXIgY29uZmlndXJhdGlvbgo+IGFyZSBkaXN0aW5jdCBmcm9tIFVT
QjIuCj4gCj4gQWRkaXRpb25hbGx5LCBlVVNCMiB0YXJnZXRzIGhhbmRsZSB3YWtldXAgaW50ZXJy
dXB0cyBkaWZmZXJlbnRseQo+IGRlcGVuZGluZyBvbiBkZXZpY2Ugc3BlZWQgd2hlbiBvcGVyYXRp
bmcgaW4gaG9zdCBtb2RlLiBBY2NvcmRpbmcgdG8gdGhlCj4gZVVTQjIgc3BlY2lmaWNhdGlvbiwg
cmVtb3RlIHdha2V1cCBzaWduYWxpbmcgaW4gaG9zdCBtb2RlIGlzIGRldGVjdGVkCj4gdmlhIGRp
ZmZlcmVudCBkYXRhLWxpbmUgYXNzZXJ0aW9ucyBiYXNlZCBvbiB0aGUgY29ubmVjdGVkIGRldmlj
ZSBzcGVlZDoKPiAKPiAtIExvdy1zcGVlZCBkZXZpY2VzOiB0aGUgaG9zdCByZXBlYXRlciBkcml2
ZXMgZUQrIHRvIGxvZ2ljICcxJyB1cG9uCj4gICBkZXRlY3RpbmcgYSBLLXN0YXRlIG9uIHRoZSBV
U0IgbGluZXMgZHVyaW5nIHJlbW90ZSB3YWtldXAgKGVVU0IyCj4gICBzcGVjLCBTZWN0aW9uIDUu
NS4xNCkuCj4gLSBGdWxsLXNwZWVkL2hpZ2gtc3BlZWQgZGV2aWNlczogdGhlIGhvc3QgcmVwZWF0
ZXIgZHJpdmVzIGVELSB0bwo+ICAgbG9naWMgJzEnIHVwb24gZGV0ZWN0aW5nIGEgSy1zdGF0ZSBk
dXJpbmcgcmVtb3RlIHdha2V1cCAoZVVTQjIgc3BlYywKPiAgICBTZWN0aW9ucyA1LjUuMTUgYW5k
IDUuNS4xOCkuCj4gCj4gU2luY2UgdGhlIGVVU0IyIFBIWSdzIERQIGFuZCBETSBsaW5lcyBuZWVk
IHRvIGJlIGNvbmZpZ3VyZWQgZGlmZmVyZW50bHkKPiBmcm9tIFVTQjIgUEhZcywgY29udHJvbGxl
cnMgc2hvdWxkIGJlIGFibGUgdG8gcXVlcnkgdGhlIFBIWSB0eXBlIGFuZAo+IGNvbmZpZ3VyZSB3
YWtldXAgaW50ZXJydXB0cyBhY2NvcmRpbmdseS4KPiAKPiBBZGQgUEhZX1RZUEVfRVVTQjIgdG8g
ZGlzdGluZ3Vpc2ggZVVTQjIgUEhZcyBmcm9tIHN0YW5kYXJkIFVTQjIgUEhZcy4KPiAKPiBBY2tl
ZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNv
bW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgS3VyYXBhdGkgPGtyaXNobmEua3VyYXBh
dGlAb3NzLnF1YWxjb21tLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
PG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
