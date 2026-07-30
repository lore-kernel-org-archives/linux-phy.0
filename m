Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32890C55162
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 14:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/hYq6WukPT+CBs04bgqFwLb+HrTy9F7WUlTzIOLVK0=; b=DOHSHLiiLTOkcv
	dRVCt/Ws9RrU1kng4WhIhPRjYuRTQeD+w0WXpIwjCGr0u0qKOLzYwVZpd5x4sESTUf7GVAp7Xsgwt
	EtAK3Ke7gjm7Duw8ZY96boNIaNdX6Z2gLGxRkZmkVPR02wRzB/OGspyRvfexCQUiFUcKZuNexd6//
	tOA8C1DlXrKdj4On6drv+GbhVsvGgvSXRS+4d1ICT8jLALegFrNCocwp2Ue4pk4XpkiZX8qDDQJc0
	3jC3H7Gr1fQ3E9IlzaZNAWpI3qJD6gT/t0EZeZ9zUPK3agrgLA9fA33a9ehutgXSx21dkUJ8eY6DJ
	kV4gFUcUNSqpF+cXOMVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRWH-0000000AiaY-3ed7;
	Thu, 30 Jul 2026 14:13:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRWG-0000000AiZT-3U2k
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 14:13:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 97369413C2;
	Thu, 30 Jul 2026 14:13:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 040B21F00A3D;
	Thu, 30 Jul 2026 14:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785420836;
	bh=3RxfctGmL/FgTZ/YU2LMud4uponhhpLGkT6ewhWPZZU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=S2qQxBvKAUWnJn9NGEGHe/vywX73b7yE/wW/7axe0RZcaE0xeC9UY5Gwm7tHvq/ra
	 ZPR55sCsgjHkIDf+NtEaH+Pv32GRiDcKBfnQUPFmEo8O/ob4XKnjsEdTYY7EsXnJO/
	 QPXq3CtkUgo6oN+r6grkQRSObJDNfAOv2OQgbUvmZyhgUV7QcLbWWQF11SdnvwUZ+7
	 q/tL8csYGh53euZb4ckiijH3QNAfZuoi66GnqLKUVDUtwGqLh0uGCOpOGZud/EypMM
	 5rTF6H1eAeC7vt6NnCTzlZzyywc/4LhmCDTJ4KRfSEmP6Q//x5Fd83oZ7d4TSFb98K
	 LLZ9OMqhchY6Q==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: sashiko-reviews@lists.linux.dev, Mattijs Korpershoek
 <mkorpershoek@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 neil.armstrong@linaro.org, olteanv@gmail.com,
 linux-phy@lists.infradead.org, vkoul@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add sa8255p high-speed USB PHY
In-Reply-To: <20260730140606.08BEC1F000E9@smtp.kernel.org>
References: <20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org>
 <20260730-phy-qcom-snps-femto-v2-8255-v1-1-8b8bf5105a68@kernel.org>
 <20260730140606.08BEC1F000E9@smtp.kernel.org>
Date: Thu, 30 Jul 2026 16:13:54 +0200
Message-ID: <878q6sy38d.fsf@kernel.org>
MIME-Version: 1.0
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

T24gVGh1LCBKdWwgMzAsIDIwMjYgYXQgMTQ6MDYsIHNhc2hpa28tYm90QGtlcm5lbC5vcmcgd3Jv
dGU6Cgo+IFRoYW5rIHlvdSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkgcmV2aWV3
IGZvdW5kIDEgcG90ZW50aWFsIGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+IC0gW01lZGl1bV0gTWlz
c2luZyBoYXJkd2FyZS1zcGVjaWZpYyBQSFkgdHVuaW5nIHBhcmFtZXRlcnMgZm9yIHRoZSBTeW5v
cHN5cyBGZW10byBIaWdoLVNwZWVkIFVTQiBQSFkgVjIuCj4gLS0KPgo+IC0tLSBQYXRjaCBbMV06
IFtQQVRDSCAxLzJdIGR0LWJpbmRpbmdzOiBwaHk6IEFkZCBzYTgyNTVwIGhpZ2gtc3BlZWQgVVNC
IFBIWSAtLS0KPiBjb21taXQgMDRiYzkxYTZmZTA2MjYxZTA5OWFlOGZkYTFiYjkwZTM0ZDBmMjhm
Ywo+IEF1dGhvcjogTWF0dGlqcyBLb3JwZXJzaG9layA8bWtvcnBlcnNob2VrQGtlcm5lbC5vcmc+
Cj4KPiBkdC1iaW5kaW5nczogcGh5OiBBZGQgc2E4MjU1cCBoaWdoLXNwZWVkIFVTQiBQSFkKPgo+
IFRoaXMgY29tbWl0IGludHJvZHVjZXMgYSBuZXcgZGV2aWNlIHRyZWUgYmluZGluZyBmb3IgdGhl
IFF1YWxjb21tIFNBODI1NXAgCj4gU3lub3BzeXMgRmVtdG8gSGlnaC1TcGVlZCBVU0IgUEhZIFYy
LiBJdCBzcGVjaWZpZXMgdGhhdCB0aGUgaGFyZHdhcmUgdXNlcyAKPiBTQ01JIHBvd2VyIGRvbWFp
bnMgdG8gbWFuYWdlIHJlc291cmNlcyBsaWtlIGNsb2NrcywgaW50ZXJjb25uZWN0cywgYW5kIAo+
IHJlc2V0cywgcmF0aGVyIHRoYW4gZGVmaW5pbmcgdGhlbSBpbmRpdmlkdWFsbHkuCj4KPj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxzYTgy
NTVwLXVzYi1ocy1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcWNvbSxzYTgyNTVwLXVzYi1ocy1waHkueWFtbAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
PiBpbmRleCAwMDAwMDAwMDAwMDAwLi4wOWY3Y2E2ZTdmNzI3Cj4+IC0tLSAvZGV2L251bGwKPj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNhODI1NXAt
dXNiLWhzLXBoeS55YW1sCj4KPiBbIC4uLiBdCj4KPj4gK3JlcXVpcmVkOgo+PiArICAtIGNvbXBh
dGlibGUKPj4gKyAgLSByZWcKPj4gKyAgLSAiI3BoeS1jZWxscyIKPj4gKyAgLSBwb3dlci1kb21h
aW5zCj4+ICsgIC0gcG93ZXItZG9tYWluLW5hbWVzCj4+ICsKPj4gK2FkZGl0aW9uYWxQcm9wZXJ0
aWVzOiBmYWxzZQo+Cj4gW1NldmVyaXR5OiBNZWRpdW1dCj4gU2luY2UgdGhpcyBJUCBibG9jayBp
cyBzdGlsbCB0aGUgU3lub3BzeXMgRmVtdG8gSGlnaC1TcGVlZCBVU0IgUEhZIFYyLCAKPiB3b3Vs
ZCBib2FyZCBjb25maWd1cmF0aW9ucyBmb3IgdGhpcyBwbGF0Zm9ybSBzdGlsbCBuZWVkIHRvIGFw
cGx5IHN0YW5kYXJkIAo+IGhhcmR3YXJlIHR1bmluZyBwYXJhbWV0ZXJzIChzdWNoIGFzIHFjb20s
c3F1ZWxjaC1kZXRlY3Rvci1icCk/Cj4KPiBXaGlsZSBjbG9ja3MgYW5kIHJlc2V0cyBhcmUgYWJz
dHJhY3RlZCBpbnRvIFNDTUkgcG93ZXIgZG9tYWlucyBoZXJlLCB0aGUgCj4gbWVtb3J5LW1hcHBl
ZCByZWcgc3BhY2UgaXMgc3RpbGwgcHJvdmlkZWQgYW5kIHR5cGljYWxseSB1c2VkIHRvIHByb2dy
YW0gCj4gdGhlc2Ugc2lnbmFsIGNoYXJhY3RlcmlzdGljcy4gV2l0aCBhZGRpdGlvbmFsUHJvcGVy
dGllcyBzZXQgdG8gZmFsc2UsIAo+IHNjaGVtYSB2YWxpZGF0aW9uIHdpbGwgZmFpbCBmb3IgYW55
IGJvYXJkIGRldmljZSB0cmVlIHRoYXQgYXR0ZW1wdHMgdG8gCj4gb3ZlcnJpZGUgdGhlc2UgdmFs
aWQgUEhZIHR1bmluZyBwcm9wZXJ0aWVzLgo+Cj4gTWlnaHQgaXQgYmUgbmVjZXNzYXJ5IHRvIGlu
Y2x1ZGUgdGhlc2UgdHVuaW5nIHByb3BlcnRpZXMsIHBlcmhhcHMgYnkgCj4gcmVmZXJlbmNpbmcg
YSBjb21tb24gc2NoZW1hLCBzbyB0aGF0IGJvYXJkcyBjYW4gc2FmZWx5IHR1bmUgc3F1ZWxjaCAK
PiBkZXRlY3Rpb24gYW5kIHByZS1lbXBoYXNpcyB3aXRob3V0IHRyaWdnZXJpbmcgdmFsaWRhdGlv
biBlcnJvcnM/CgpObywgZnJvbSB0aGUgdGVzdGluZyBJJ3ZlIGRvbmUgaXQncyBub3QgbmVlZGVk
IHRvIGFkZCBhbnkgUEhZIHR1bmluZyBwcm9wZXJ0aWVzLgoKPgo+PiArCj4+ICtleGFtcGxlczoK
Pj4gKyAgLSB8Cj4+ICsgICAgc29jIHsKPgo+IFsgLi4uIF0KPgo+IC0tIAo+IFNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDczMC1waHktcWNv
bS1zbnBzLWZlbXRvLXYyLTgyNTUtdjEtMC04YjhiZjUxMDVhNjhAa2VybmVsLm9yZz9wYXJ0PTEK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
