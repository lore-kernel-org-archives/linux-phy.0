Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43CC9C87FCF
	for <linux-phy@archiver.kernel.org>; Sat,  9 Aug 2025 11:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yda8FJh2ly80CBFIC9J9GxPEfJaZWPFfuyhvaBznzTE=; b=OmJfgU31Oa5XPN
	208XLa3ouhXG4AcBkqxp0Fx38QYip4UHL/u75pirBjvUs/ty3Taa8P7fs5rEjWtih3LxPY9LzVSSk
	AoWw39emvB65aRbcv7m1uduojirdQ6F7AC3nq6vipN4lbmqG2qPaptmTET7baH0/zTQHGcQ5eu/Yn
	gzQMddcCpo3EjYIJKV/IGOgI1oj+X/HECEhUrqaq6ocV61LBNfWK8vJ1594Q1VfoFbsrI0D/F8i6y
	bKLH32V7DXKI7JTkda7Cn7omUBZSBILxH1uA3Sz7pSsB+ax3SVN+l27LYs3FPuk0QJlYITlqguLin
	6v2FUgMwE0V/Whc7keqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukhQ9-00000004PCw-3LLd;
	Sat, 09 Aug 2025 11:07:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukhQ6-00000004PCb-3UDd
	for linux-phy@lists.infradead.org;
	Sat, 09 Aug 2025 11:07:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4DDB05C4DAF;
	Sat,  9 Aug 2025 11:07:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BB1DC4CEE7;
	Sat,  9 Aug 2025 11:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754737645;
	bh=Vzcdy7Bmdprjq8PC3M/XGPvgtWnTKOmAgeFWKAdcUiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LZbRBrACf+A7SN4Jax2Mez9gcRca9ppiqBx4xniGcOYFRUeZ+lPqmKq/dIKluupjS
	 d5cbMKMmYlHmN2oeYlke5xXxKm83UDGuGcYAUINJb47ofcru3NXVRdU6dVOJjpbQn4
	 byZblDTmCZ07vXp5yVjk7pzi7FNp4+3QLp7yQ1KkcqttJrUn5olI9LgEJAsHEgWp/l
	 s/V8sz56fMT+jgIkGP+G+AoTm5vKxJirczpVBtMGFtkbKfZtaMQn9L0ZY9HTOETowd
	 wnlGGPnkpLQ85jdczZDM3rb9GzF4cgTCJ6fSzye1RrNyi3nZaIzTqEU69D52KE9x4i
	 wsR0lqg/vgZUA==
Date: Sat, 9 Aug 2025 16:37:16 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, vkoul@kernel.org, kishon@kernel.org, conor+dt@kernel.org, 
	bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH V1 2/4] arm64: dts: qcom: sm8750: add max-microamp for
 UFS PHY and PLL supplies
Message-ID: <rh3qxu2rijpjswfash3rpmmh6sw47l3b6j5p5upti6zffknasz@cywwm3fypghd>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-3-quic_nitirawa@quicinc.com>
 <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
 <9af71063-0629-4ccc-bc76-3fb588677bf4@oss.qualcomm.com>
 <292907f3-25d6-40d9-be6e-b6b83e646d73@kernel.org>
 <5e32be05-0dbd-4d6f-879d-8ce97fb430ba@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e32be05-0dbd-4d6f-879d-8ce97fb430ba@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250809_040726_953754_9D3556A3 
X-CRM114-Status: GOOD (  33.31  )
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

T24gRnJpLCBBdWcgMDgsIDIwMjUgYXQgMDg6NDk6NDVQTSBHTVQsIE5pdGluIFJhd2F0IHdyb3Rl
Ogo+IAo+IAo+IE9uIDgvOC8yMDI1IDM6MDkgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6
Cj4gPiBPbiAwOC8wOC8yMDI1IDEwOjU4LCBLb25yYWQgRHliY2lvIHdyb3RlOgo+ID4gPiBPbiA4
LzgvMjUgOToyOSBBTSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+ID4gPiBPbiBXZWQs
IEF1ZyAwNiwgMjAyNSBhdCAwOToxMzozOFBNICswNTMwLCBOaXRpbiBSYXdhdCB3cm90ZToKPiA+
ID4gPiA+IEFkZCBgdmRkYS1waHktbWF4LW1pY3JvYW1wYCBhbmQgYHZkZGEtcGxsLW1heC1taWNy
b2FtcGAgcHJvcGVydGllcyB0bwo+ID4gPiA+ID4gdGhlIFVGUyBQSFkgbm9kZSBpbiB0aGUgZGV2
aWNlIHRyZWUuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFRoZXNlIHByb3BlcnRpZXMgZGVmaW5lIHRo
ZSBtYXhpbXVtIGN1cnJlbnQgKGluIG1pY3JvYW1wcykgZXhwZWN0ZWQKPiA+ID4gPiA+IGZyb20g
dGhlIFBIWSBhbmQgUExMIHJlZ3VsYXRvcnMuIFRoaXMgYWxsb3dzIHRoZSBQSFkgZHJpdmVyIHRv
Cj4gPiA+ID4gPiBjb25maWd1cmUgcmVndWxhdG9yIGxvYWQgYWNjdXJhdGVseSBhbmQgZW5zdXJl
IHByb3BlciByZWd1bGF0b3IKPiA+ID4gPiA+IG1vZGUgYmFzZWQgb24gbG9hZCByZXF1aXJlbWVu
dHMuCj4gPiA+ID4gCj4gPiA+ID4gVGhhdCdzIG5vdCB0aGUgcHJvcGVydHkgb2YgcGh5LCBidXQg
cmVndWxhdG9yLgo+ID4gPiA+IAo+ID4gPiA+IEFsc28gcmVhc29uaW5nIGlzIGhlcmUgaW5jb21w
bGV0ZSAtIHlvdSBqdXN0IHBvc3QgZG93bnN0cmVhbSBjb2RlLiA6Lwo+ID4gPiAKPiA+ID4gVGhl
IHJlYXNvbiBmb3IgdGhpcyBjaGFuZ2UgaXMgZ29vZCwgYnV0IHBlcmhhcHMgbm90IGV4cGxhaW5l
ZCBjbGVhcmx5Cj4gPiA+IAo+ID4gPiBBbGwgb2YgdGhlc2UgdmFsdWVzIHJlZmVyIHRvIHRoZSBt
YXhpbXVtIGN1cnJlbnQgZHJhdyB0aGF0IG5lZWRzIHRvIGJlCj4gPiA+IGFsbG9jYXRlZCBvbiBh
IHNoYXJlZCB2b2x0YWdlIHN1cHBseSBmb3IgdGhpcyBwZXJpcGhlcmFsIChiZWNhdXNlIHRoZQo+
ID4gCj4gPiAKPiA+IEl0IHNvdW5kcyB2ZXJ5IGRpZmZlcmVudCB0aGFuIGhvdyBtdWNoIGl0IGNh
biBiZSBkcmF3bi4gSG93IG11Y2ggY2FuIGJlCj4gPiBkcmF3biBpcyB0aGUgcHJvcGVydHkgb2Yg
dGhlIHJlZ3VsYXRvci4gVGhlIHJlZ3VsYXRvciBrbm93cyBob3cgbXVjaAo+ID4gY3VycmVudCBp
dCBjYW4gc3VwcG9ydC4KPiAKPiBDb25zdW1lcnMgYXJlIGF3YXJlIG9mIHRoZWlyIGR5bmFtaWMg
bG9hZCByZXF1aXJlbWVudHMsIHdoaWNoIGNhbiB2YXJ5IGF0Cj4gcnVudGltZeKAlHRoaXMgYXdh
cmVuZXNzIGlzIG5vdCByZWNpcHJvY2FsLiBUaGUgcG93ZXIgZ3JpZCBpcyBkZXNpZ25lZCBiYXNl
ZAo+IG9uIHRoZSBjb2xsZWN0aXZlIGxvYWQgcmVxdWlyZW1lbnRzIG9mIGFsbCBjbGllbnRzIHNo
YXJpbmcgdGhlIHNhbWUgcG93ZXIKPiByYWlsLgo+IAo+IFNpbmNlIHJlZ3VsYXRvcnMgY2FuIG9w
ZXJhdGUgaW4gbXVsdGlwbGUgbW9kZXMgZm9yIHBvd2VyIG9wdGltaXphdGlvbiwgZWFjaAo+IGNv
bnN1bWVyIGlzIGV4cGVjdGVkIHRvIHZvdGUgZm9yIGl0cyBydW50aW1lIHBvd2VyIG5lZWRzLiBU
aGVzZSB2b3RlcyBoZWxwCj4gdGhlIHJlZ3VsYXRvciBmcmFtZXdvcmsgbWFpbnRhaW4gdGhlIHJl
Z3VsYXRvciBpbiB0aGUgYXBwcm9wcmlhdGUgbW9kZSwKPiBlbnN1cmluZyBzdGFibGUgYW5kIGVm
ZmljaWVudCBvcGVyYXRpb24gYWNyb3NzIGFsbCBjbGllbnRzLgo+IAo+IAo+IFN0YWJpbGl0eSBp
c3N1ZXMgY2FuIGFyaXNlIGlmIGVhY2ggY29uc3VtZXIgZG9lcyBub3Qgdm90ZSBmb3IgaXRzIG93
biBsb2FkCj4gcmVxdWlyZW1lbnQuCj4gRm9yIGV4YW1wbGUsIGNvbnNpZGVyIGEgc2NlbmFyaW8g
d2hlcmUgYSBzaW5nbGUgcmVndWxhdG9yIGlzIHNoYXJlZCBieSB0d28KPiBjb25zdW1lcnMuCj4g
Cj4gSWYgdGhlIGZpcnN0IGNsaWVudCByZXF1ZXN0cyBsb3ctcG93ZXIgbW9kZSBieSB2b3Rpbmcg
Zm9yIHplcm8gb3IgYSBtaW5pbWFsCj4gbG9hZCB0byByZWd1bGF0b3IgZnJhbWV3b3JrIGR1cmlu
ZyBpdHMgZHJpdmVyJ3MgTFBNIHNlcXVlbmNlLCBhbmQgdGhlIHNlY29uZAo+IGNsaWVudCAoZS5n
LiwgVUZTIFBIWSkgaGFzIG5vdCB2b3RlZCBmb3IgaXRzIG93biBsb2FkIHJlcXVpcmVtZW50IHRo
cm91Z2gKPiB0aGUgcmVndWxhdG9yIGZyYW1ld29yaywgdGhlIHJlZ3VsYXRvciBtYXkgdHJhbnNp
dGlvbiB0byBsb3ctcG93ZXIgbW9kZS4KPiBUaGlzIGNhbiBsZWFkIHRvIGlzc3VlcyBmb3IgdGhl
IHNlY29uZCBjbGllbnQsIHdoaWNoIGV4cGVjdHMgYSBoaWdoZXIgcG93ZXIKPiBzdGF0ZSB0byBv
cGVyYXRlIGNvcnJlY3RseS4KPiAKCkkgdGhpbmsgd2UgYWxsIGFncmVlIG9uIGNvbnN1bWVycyBz
ZXR0aW5nIHRoZSBsb2FkIGZvciBzaGFyZWQgcmVndWxhdG9ycywgYnV0CnRoZSBuYW1pbmcgYW5k
IGRlc2NyaXB0aW9uIG9mIHRoZSBEVCBwcm9wZXJ0eSBpcyB3aGF0IGNhdXNpbmcgY29uZnVzaW9u
IGhlcmUuClRoZXJlIGlzIG5vIHdheSB0aGUgY29uc3VtZXJzIGNhbiBzZXQgdGhlICptYXgqIGN1
cnJlbnQgZHJhdyBmb3IgYSBzaGFyZWQKcmVndWxhdG9yLiBUaGV5IGNhbiBvbmx5IHJlcXVlc3Qg
bG9hZCBhcyBwZXIgdGhlaXIgcmVxdWlyZW1lbnQuIEJ1dCB0aGUgbWF4CmN1cnJlbnQgZHJhdyBp
cyBhIHJlZ3VsYXRvciBjb25zdHJhaW50LgoKPiAKPiA+IAo+ID4gCj4gPiA+IHN1cHBseSdzIGNh
cGFiaWxpdGllcyBjaGFuZ2UgZGVwZW5kaW5nIG9uIHRoZSBtYXhpbXVtIHBvdGVudGlhbCBsb2Fk
Cj4gPiA+IGF0IGFueSBnaXZlbiB0aW1lLCB3aGljaCB0aGUgcmVndWxhdG9yIGRyaXZlciBtdXN0
IGJlIGF3YXJlIG9mKQo+ID4gPiAKPiA+ID4gVGhpcyBpcyBhIHByb3BlcnR5IG9mIGEgcmVndWxh
dG9yICpjb25zdW1lciosIGkuZS4gaWYgd2UgaGFkIGEgY2hhaW4KPiA+ID4gb2YgTEVEcyBoYW5n
aW5nIG9mZiBvZiB0aGlzIHN1cHBseSwgd2UnZCBuZWVkIHRvIHNwZWNpZnkgTlVNX0xFRFMgKgo+
ID4gPiBNQVhfQ1VSUiB1bmRlciB0aGUgImxlZCBjaGFpbiIgZGV2aWNlLCB0byBtYWtlIHN1cmUg
dGhhdCBpZiB0aGUKPiA+ID4gYWdncmVnYXRlZCBjdXJyZW50IHJlcXVpcmVtZW50cyBnbyBvdmVy
IGEgY2VydGFpbiB0aHJlc2hvbGQgKHdoaWNoIGlzCj4gPiA+IHVua25vd24gdG8gTGludXggYW5k
IGhpZGRlbiBpbiBSUE1oIGZ3KSwgdGhlIHJlZ3VsYXRvciBjYW4gYmUKPiA+ID4gcmVjb25maWd1
cmVkIHRvIGFsbG93IGZvciBhIGhpZ2hlciBjdXJyZW50IGRyYXcgKGxpa2VseSBhdCBzb21lCj4g
PiA+IGRvd25ncmFkZSB0byBlZmZpY2llbmN5KQo+ID4gCj4gPiAKPiA+IFRoZSBwcm9ibGVtIGlz
IHRoYXQgcmF0aW9uYWxlIGlzIGRvd25zdHJlYW0uIEluc3RlYWQgSSB3YW50IHRvIHNlZSBzb21l
Cj4gPiByZWFzb246IGUuZy4gZGF0YXNoZWV0cywgc3BlYywgdHlwZSBvZiBVRlMgZGV2aWNlICh0
aGF0IHdhcyB0aGUgYXJndW1lbnQKPiA+IGluIHRoZSBkcml2ZXIgcGF0Y2ggZGlzY3Vzc2lvbiku
Cj4gCj4gCj4gVGhlIFBIWSBsb2FkIHJlcXVpcmVtZW50cyBmb3IgY29uc3VtZXJzIHN1Y2ggYXMg
VUZTLCBVU0IsIFBDSWUgYXJlIGRlZmluZWQKPiBieSBRdWFsY29tbeKAmXMgUEhZIElQIGFuZCBh
cmUgd2VsbC1kb2N1bWVudGVkIGluIFF1YWxjb21t4oCZcyBkYXRhc2hlZXRzIGFuZAo+IHBvd2Vy
IGdyaWQgZG9jdW1lbnRhdGlvbi4gVGhlc2UgdmFsdWVzIGNhbiBkZXBlbmRpbmcgb24gdGhlIHBy
b2Nlc3Mgb3IKPiB0ZWNobm9sb2d5IG5vZGUsIGJvYXJkIGRlc2lnbiwgYW5kIGV2ZW4gdGhlIGNo
aXAgZm91bmRyeSB1c2VkLgo+IAo+IEFzIGEgcmVzdWx0LCB0aGUgbG9hZCB2YWx1ZXMgY2FuIGRp
ZmZlciBhY3Jvc3MgU29DcyBvciBtYXkgYmUgZXZlbgo+IGJvYXJkKHVubGlrZWx5IHRob3VnaCkg
ZHVlIHRvIHZhcmlhdGlvbnMgaW4gYW55IG9mIHRoZXNlIHBhcmFtZXRlcnMuCj4gCgpPa2F5LiBU
aGlzIGdvZXMgaW50byB0aGUgY29tbWl0IG1lc3NhZ2UgYW5kIHBvc3NpYmx5IHNvbWUgcGFydCBv
ZiBpdCB0byBwcm9wZXJ0eQpkZXNjcmlwdGlvbiBhbHNvLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
