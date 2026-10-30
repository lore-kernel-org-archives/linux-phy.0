Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8CD606A326
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 18:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Af1f916o;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=F2ISqEj/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4HWYh/hA8FyJY5NUuChuxBMMEE16KSdpTVLMckIcWVc=; b=Af1f916oaYRs/XHwLXbDruvhtB
	4eoq0HLoVBic3nDxcLksa4Qu2K1G8lenNsA+7UIuqQ1l1Kn99FWT6Y1NfCGXuZSyYGFoT8UK6i1cr
	BUfUeVYYrIwnhMZXZbbpqjX7VMP0M3SOICI201w1yhCcFrQJfCP92mDUS+yW6hByM/l06h/N32sgE
	Jb6gdZM81Gv6IwEU/jygP6wO1hi2Fdp4i+ENuXTm6WMqFHyAKpEJ2cxNwUGgue9SzXYRR1ZllNoCY
	8wywmobD7i1pTiSoI+1fjliMiIpPgprOFkagws9pJthksPRtxH7IrtosnKTUS9ER9avM+/ZrDUEvg
	HxqnFSZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrEk-0000000COmB-30D1;
	Fri, 30 Oct 2026 18:21:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrEi-0000000COln-0w0g;
	Fri, 30 Oct 2026 18:21:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F2AD543C81;
	Fri, 30 Oct 2026 18:21:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 731F21F000C1;
	Fri, 30 Oct 2026 18:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793384515;
	bh=5nv0wC5Go1XJNaxDD1nOfqVCMVLbai1ksiJmJqJBQiY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=F2ISqEj/jPFHsaWT4fWEIwvawOQdaVOY4wkBPBZLVvmitSZblbsI/J643p8P7gpbc
	 Hb7omRlAG9gvX7leULcIVigq+YZfKDVsRrTqb9ZS9R7Xu1pmuhAor805J6AsRJIjpQ
	 BR7x/471R3zaQZvk8VDig1A1VxrPjIQU4ro3lSdFTq2hDgGKjbFfSNurLKvAM1YTu8
	 16jhr4K+Y9cT2tlBeehNwizvzvRWsEubccTWjQeMIIlpiwd/yp6pxDprc8LqlpY+St
	 WwWx+ONeNJUmFgoYDVxh+YOHlaRemuEQo3poj9WuljxHGS85YN6pEo5HnxwtpyPYs2
	 rfT/Fx8AEt3VA==
Date: Fri, 30 Oct 2026 13:21:51 -0500
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>
Subject: Re: [PATCH 2/9] dt-bindings: phy: bcm-ns-usb3-phy: Describe the NSP
 variant
Message-ID: <20261030182151.GA1206797-robh@kernel.org>
References: <20261021172819.668120-1-florian.fainelli@broadcom.com>
 <20261021172819.668120-3-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261021172819.668120-3-florian.fainelli@broadcom.com>
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

T24gV2VkLCBPY3QgMjEsIDIwMjYgYXQgMTA6Mjg6MTFBTSAtMDcwMCwgRmxvcmlhbiBGYWluZWxs
aSB3cm90ZToKPiBOb3J0aHN0YXIgUGx1cyB1c2VzIHRoZSBOb3J0aHN0YXIgQnggUEhZIHJlZ2lz
dGVyIHNlcXVlbmNlIGJ1dCBhbHNvCj4gcmVxdWlyZXMgY29vcmRpbmF0ZWQgVVNCMiBhbmQgVVNC
MyBjb3JlIHJlc2V0cyBhbmQgYSBVU0IyIElETSBpbnRlcmZhY2UKPiBjbG9jayBlbmFibGUuCj4g
Cj4gQWRkIGFuIE5TUCBjb21wYXRpYmxlIHdpdGggYSByZXF1aXJlZCBVU0IyIERNUCBwaGFuZGxl
LiBEZXNjcmliZSB0aGUKPiBzaGFyZWQgUEhZIHJlbGF0aW9uc2hpcCB3aXRoIEVIQ0ksIE9IQ0kg
YW5kIHhIQ0kgc28gaW5pdGlhbGl6YXRpb24KPiBmaW5pc2hlcyBiZWZvcmUgYW55IGhvc3Qgc3Rh
cnRzIG9wZXJhdGluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmbG9y
aWFuLmZhaW5lbGxpQGJyb2FkY29tLmNvbT4KPiAtLS0KPiAgLi4uL2JpbmRpbmdzL3BoeS9iY20t
bnMtdXNiMy1waHkueWFtbCAgICAgICAgIHwgMjMgKysrKysrKysrKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMy1waHkueWFtbAo+IGlu
ZGV4IDdmZDQxOWRiNDVkMC4uMDBkNjliODZjYmZmIDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjMtcGh5LnlhbWwKPiArKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1s
Cj4gQEAgLTE0LDYgKzE0LDkgQEAgZGVzY3JpcHRpb246IHwKPiAgICBLbm93biBCMTogQkNNNDcw
NyByZXYgNgo+ICAgIEtub3duIEMwOiBCQ000NzA5NCByZXYgMAo+ICAKPiArICBOb3J0aHN0YXIg
UGx1cyB1c2VzIHRoZSBCeCBwcm9ncmFtbWluZyBzZXF1ZW5jZSwgd2l0aCBjb29yZGluYXRlZCBV
U0IyIGFuZAo+ICsgIFVTQjMgcmVzZXRzLiBJdHMgUEhZIGlzIHNoYXJlZCBieSB0aGUgRUhDSSwg
T0hDSSBhbmQgeEhDSSBjb250cm9sbGVycy4KPiArCj4gIG1haW50YWluZXJzOgo+ICAgIC0gUmFm
YcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+ICAKPiBAQCAtMjIsNiArMjUsNyBAQCBw
cm9wZXJ0aWVzOgo+ICAgICAgZW51bToKPiAgICAgICAgLSBicmNtLG5zLWF4LXVzYjMtcGh5Cj4g
ICAgICAgIC0gYnJjbSxucy1ieC11c2IzLXBoeQo+ICsgICAgICAtIGJyY20sbnNwLXVzYjMtcGh5
Cj4gIAo+ICAgIHJlZzoKPiAgICAgIGRlc2NyaXB0aW9uOiBhZGRyZXNzIG9mIE1ESU8gYnVzIGRl
dmljZQo+IEBAIC0zMiw2ICszNiwxMyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgZGVzY3JpcHRpb246
Cj4gICAgICAgIFBoYW5kbGUgdG8gdGhlIERNUCAoRGV2aWNlIE1hbmFnZW1lbnQgUGx1Z2luKSBz
eXNjb24KPiAgCj4gKyAgdXNiMi1kbXAtc3lzY29uOgoKYnJjbSx1c2IyLWRtcAoKPiArICAgICRy
ZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKPiArICAgIGRlc2Ny
aXB0aW9uOgo+ICsgICAgICBQaGFuZGxlIHRvIHRoZSBVU0IyIERNUCBvbiBOb3J0aHN0YXIgUGx1
cywgZm9yIGl0cyBpbnRlcmZhY2UgY2xvY2sgYW5kCj4gKyAgICAgIHJlc2V0LiBBbGwgVVNCIGhv
c3QgY29udHJvbGxlcnMgbXVzdCByZWZlcmVuY2UgdGhpcyBzaGFyZWQgUEhZIHNvIHRoYXQKPiAr
ICAgICAgaW5pdGlhbGl6YXRpb24gY29tcGxldGVzIGJlZm9yZSBhbnkgb2YgdGhlbSBzdGFydHMg
dXNpbmcgaXQuCj4gKwo+ICAgICIjcGh5LWNlbGxzIjoKPiAgICAgIGNvbnN0OiAwCj4gIAo+IEBA
IC00MSw2ICs1MiwxOCBAQCByZXF1aXJlZDoKPiAgICAtIHVzYjMtZG1wLXN5c2Nvbgo+ICAgIC0g
IiNwaHktY2VsbHMiCj4gIAo+ICthbGxPZjoKPiArICAtIGlmOgo+ICsgICAgICBwcm9wZXJ0aWVz
Ogo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb25zdDogYnJjbSxuc3AtdXNi
My1waHkKPiArICAgIHRoZW46Cj4gKyAgICAgIHJlcXVpcmVkOgo+ICsgICAgICAgIC0gdXNiMi1k
bXAtc3lzY29uCj4gKyAgICBlbHNlOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICAgIHVz
YjItZG1wLXN5c2NvbjogZmFsc2UKPiArCj4gIGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+
ICAKPiAgZXhhbXBsZXM6Cj4gLS0gCj4gMi41My4wCj4gCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
