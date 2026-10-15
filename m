Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A604FCC6B39
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 15:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/fRfQxO8WdVjlJa6pnk46i5V41N4v7OQHvJmWVBkII=; b=VBgI8VbXaIntu3
	cYC5ADAGvY5HEDuRpzjqijjI0PMutPGcFHIr/4bV35/VQV5k5m+rGeJ7UMKCv8XzCdc8M7PWsI/4/
	jg6AYeyj51oRG6HedkNsGk2oMkgOHoofvgJ+VpuZ1cETV1SUyUMTlMJUk+SbVfKcNeBnAVgQUYTQA
	hZMgkR/5Lq1D3iWvCj4ng7Jk+1JBIIszgQAOCwIurdNjZJ5JJF1RDC2JQnR7hM7+WxR7aIxeVsJLB
	TCVkhWxG/hjPTSNRLkJdrs4H8OZ8x8eBc5jFbCBXtNtxACTXt5fVxbZJP4I9i7wsFfKn5HCNa2UwG
	np/1Zkfp6kie638Dp0XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHNBl-00000000XYb-0tss;
	Thu, 15 Oct 2026 15:16:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHNBi-00000000XY2-2qA7
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 15:16:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D310160120;
	Thu, 15 Oct 2026 15:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93C831F000C5;
	Thu, 15 Oct 2026 15:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792077369;
	bh=UqjSvLMacYdEM0FJSnnMucxWgLBPYNwo5CBuXCaVChA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=j45sdhR0JKHhaOrubKWmkVd+Km86fFPdWI699u0REHbB0iWYr0hhxexIz8Ewn4825
	 Io1zyZIWtI8bz0Ry/SlCmu/rZ3WjWLxBQHvv5MuDLEg2xo3ctUcr4dSRMlpjbyy7gS
	 crOztC2lra9V7jFbo+U9dZcrYTUqC2y7UAQMFVOqtCna0lytJynlUXUzh6JWVQBoW3
	 WP5lT05NUakRMmMfzqgBHQRxRRx8+f8fsQfa2MuUxxMhEDsvAte1Zcyo32iUgrqw7j
	 yiNUVX5TQiNyAEIW5y+vhsnVMEdFPdrICZc2hrfFwAlD2rvEkiuuYIhLJZHfFR42x/
	 bAxRNStUhWbHQ==
Date: Thu, 15 Oct 2026 20:45:49 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Sriram Dash <quic_sriramd@quicinc.com>
Subject: Re: [PATCH v3 0/2] Add support for SA8255P in the
 phy-qcom-snps-femto-v2 phy driver
Message-ID: <atDuBepNc7gwqYz_@debian>
References: <20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org>
 <xhkdbwlrj59fg.fsf@mkorpers-koolstof.csb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <xhkdbwlrj59fg.fsf@mkorpers-koolstof.csb>
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

T24gVGh1LCBPY3QgMTUsIDIwMjYgYXQgMDQ6MjQ6MDNQTSArMDIwMCwgTWF0dGlqcyBLb3JwZXJz
aG9layB3cm90ZToKPiBIaSBNYW5pLAo+IAo+IE9uIEZyaSwgT2N0IDAyLCAyMDI2IGF0IDExOjQx
LCBNYXR0aWpzIEtvcnBlcnNob2VrIDxta29ycGVyc2hvZWtAa2VybmVsLm9yZz4gd3JvdGU6Cj4g
Cj4gPiBUaGUgUXVhbGNvbW0gYXV0b21vdGl2ZSBTQTgyNTVwIFNvQyByZWxpZXMgb24gZmlybXdh
cmUgdG8gY29uZmlndXJlCj4gPiBwbGF0Zm9ybSByZXNvdXJjZXMsIGluY2x1ZGluZyBjbG9ja3Ms
IGludGVyY29ubmVjdHMgYW5kIFRMTU0uCj4gPiBUaGUgZHJpdmVyIHJlcXVlc3RzIHJlc291cmNl
cyBvcGVyYXRpb25zIG92ZXIgU0NNSSB1c2luZyBwb3dlciBwcm90b2NvbHMuCj4gPgo+ID4gVGhl
IFNDTUkgcG93ZXIgcHJvdG9jb2wgZW5hYmxlcyBvciBkaXNhYmxlcyByZXNvdXJjZXMgbGlrZSBj
bG9ja3MsCj4gPiBpbnRlcmNvbm5lY3QgcGF0aHMsIGFuZCBUTE1NIChHUElPcykgdXNpbmcgcnVu
dGltZSBQTSBmcmFtZXdvcmsgQVBJcywKPiA+IHN1Y2ggYXMgcmVzdW1lL3N1c3BlbmQsIHRvIGNv
bnRyb2wgcG93ZXIgb24vb2ZmLgo+ID4KPiA+IFBvd2VyIGRvbWFpbiAiY29yZSIgY29udHJvbHMg
dGhlIEdEU0MsIHJlc2V0cywgYW5kIFRMTU0gKEdQSU9zKQo+ID4gd2hlcmVhcyBwb3dlciBkb21h
aW4gInRyYW5zZmVyIiBjb250cm9scyBjbG9ja3MgYW5kIGludGVyY29ubmVjdHMuCj4gPgo+ID4g
UGF0Y2ggMSBhZGRzIHRoZSBiaW5kaW5nIGZvciBzYTgyNTVwLiBTaW1pbGFybHkgdG8gd2hhdCBo
YXMgYmVlbiBkb25lCj4gPiBmb3IgSTJDIFsxXSwgdGhpcyBpcyBhIHNlcGFyYXRlIGJpbmRpbmcu
Cj4gPgo+ID4gUGF0Y2ggMiBhZGRzIHRoZSBkcml2ZXIgY2hhbmdlLCB3aGljaCBpcyBiYXNlZCBv
biBhIHB1YmxpYyB2ZW5kb3IKPiA+IHBhdGNoIGZyb20gcXVhbGNvbW0gWzJdLgo+ID4gSSBkaWQg
dGhlIGZvbGxvd2luZyBjaGFuZ2VzIG9uIHRvcCBvZiB0aGF0Ogo+ID4gKiBVc2UgZGV2bV9hZGRf
YWN0aW9uX29yX3Jlc2V0KCkgZm9yIGRldl9wbV9kb21haW5fZGV0YWNoX2xpc3QoKSBpbnN0ZWFk
Cj4gPiAgIG9mIGltcGxlbWVudGluZyBhIGRyaXZlciAucmVtb3ZlKCkKPiA+ICogQ2hhbmdlZCBw
b3dlciBkb21haW4gbmFtZXMgdG8gZHJvcCAndXNiXycgcHJlZml4Cj4gPiAqIEZpeGVkIHZhcmlv
dXMgZXJyb3IgaGFuZGxpbmcgcGF0aHMKPiA+ICogQWRkZWQgc3VzcGVuZC9yZXN1bWUgc3VwcG9y
dAo+ID4KPiA+IFRoaXMgaGFzIGJlZW4gdGVzdGVkIG9uIG5leHQtMjAyNjA3Mjggd2l0aCBhIFJp
ZGU0IFNBODc3NVAgYm9hcmQgdGhhdAo+ID4gaGFzIFNDTUkgZmlybXdhcmUgKHdoaWNoIGlzIGNv
bXBhdGlibGUpLgo+ID4KPiA+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA2
MTctZW5hYmxlLWkyYy1vbi1zYTgyNTVwLXY3LTEtYWQ3MzZkYmVhYjU3QG9zcy5xdWFsY29tbS5j
b20vCj4gPiBbMl0gaHR0cHM6Ly9naXQuY29kZWxpbmFyby5vcmcvY2xvL2xlL21ldGEtcXRpLWF1
dG8ta2VybmVsLy0vYmxvYi9MWS5BVS4wLjEuMC5yMS0xNjgwMC1nZW40bWV0YS4wL3JlY2lwZXMt
a2VybmVsL2xpbnV4L2ZpbGVzL3VzYi8wMDE0LVBFTkRJTkctcGh5LXFjb20tc25wcy1mZW10by12
Mi1BZGQtc3VwcG9ydC1mb3ItU0E4MjUucGF0Y2gKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0
aWpzIEtvcnBlcnNob2VrIDxta29ycGVyc2hvZWtAa2VybmVsLm9yZz4KPiAKPiBJIGRvbid0IGtu
b3cgd2hhdCBoYXBwZW5lZCBidXQgc29tZWhvdyBJIGRpZCBub3QgYWRkIHlvdSBpbiBUby9DYyB1
c2luZwo+ICJiNCBwcmVwIC1jIgo+CgpObyB3b3JyaWVzLgogCj4gSSd2ZSB0YWxrZWQgdG8gVmlu
b2QgYXQgcGx1bWJlcnMgYW5kIGhlIHRvbGQgbWUgdGhhdCBJIHNob3VsZCByZXF1ZXN0Cj4gc29t
ZSByZXZpZXcgb24gdGhlc2UgcGh5IHBhdGNoZXMuCj4gCj4gQ291bGQgeW91IGhhdmUgYSBsb29r
IHdoZW5ldmVyIHlvdSBoYXZlIHNvbWUgdGltZT8KPiAKClN1cmUgdGhpbmcuIFRoaXMgc2VyaWVz
IGlzIG9uIG15IHF1ZXVlLiBXaWxsIGdldCB0byBpdCB2ZXJ5IHNvb24uCgotIE1hbmkKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
