Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40900C5AC7A
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 05:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0kHqEOzcD9ZmJR71kPkgd2VxmvCGmOT7/MlAtphgFtU=; b=eCeIWqf5ctNaQW
	sbGxc94tuRkt/NscE1ZZF0b00ouch4agRKCXsh5GDLCEd7VT3JYl4K7LltTJ4KqVYUfKVRDzzD/52
	ObhE0U5lnyb/lJP0hS/02sOQ/pp4ZK3FafSUmVwe3KB0oFK0to/FRyIL44fAeLUd5zz5oo39vb8U9
	H7dGaTVbhR3AGQGRj/l9YlU9OsqH8H/+iiiM7SYQLbLIWcdsep0ux1VMs601kncsd/jurvbmo+Lge
	MyXrc3A8ILZjSRjJ9PAg2M9FMDAiSZqwD8TvJA1o6uYpp7c2xZPAbakM8AGyWL0jBnOmIqrdsJeTy
	XB89sh0x7uWAJwP1vP+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsCgs-000000076ef-23v0;
	Fri, 07 Aug 2026 05:00:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsCgr-000000076eY-1g0a
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 05:00:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B219E600B1;
	Fri,  7 Aug 2026 05:00:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA95D1F000E9;
	Fri,  7 Aug 2026 05:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786078814;
	bh=g+D3AJQFvhPRzkoa0tC39NTBMn/lH/wnQoRYJfVrN6E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=c+22CknR52MxQ5QmipW9AJNvWJIzeZdLGQCZLx6zwxqeuCX5PKIkyExW9XMCx6eS5
	 kkJW7HMJjTwxIsA/8W6bi0t6KmrQvTVIXnj5X7sAN2FqiK5afxmDaHfZJA2SkgYrXz
	 fpleSr2++RNZvTBkaYOvMRgbwvfy5lMk+Z/TZouyTfmtGF2HNQO0qxmOU3kqza/GU1
	 H7JGB595GwmKjuZ+2xo1AN5BBiLIAE9uzaIsYTxjdpq5nr4ffSQ6Ll5dMlZEylCIN7
	 fHnse4Osb0H9v47evb60F/x3EV4MejEDkogg/96oi8znWlINaLlUU1Ku6N0fPXFJnI
	 dKi0sxURLxtyg==
Date: Fri, 7 Aug 2026 06:59:53 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Wasim Nazir <wasim.nazir@oss.qualcomm.com>, 
	Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>, Umang Chheda <umang.chheda@oss.qualcomm.com>, 
	Yijie Yang <quic_yijiyang@quicinc.com>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/6] Fix regulator voting for the Qualcomm SGMII
 SerDes PHY
Message-ID: <efu6xalzkpim3cu2r4mkzksseviqrxqmpmblm24r3ip6bwt3dh@nqntulmbkgwa>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
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

T24gVHVlLCBBdWcgMDQsIDIwMjYgYXQgMTI6NTc6NTZBTSArMDUzMCwgTW9oZCBBeWFhbiBBbndh
ciB3cm90ZToKPiBUaGlzIGlzIGEgbG9uZyBvdmVyZHVlIHYyIG9mIHRoZSBvcmlnaW5hbCBwYXRj
aCBzZXJpZXMgd2hpY2ggdHJpZWQgdG8KPiBhZGRyZXNzIGEgU2VyRGVzIHBvd2VyLXVwIGZhaWx1
cmUgb2JzZXJ2ZWQgb24gdGhlIFFDUzgzMDAgUmlkZSBib2FyZAo+IHVzaW5nIHRoZSBwaHktcWNv
bS1zZ21paS1ldGggZHJpdmVyLiBBZnRlciBnb2luZyB0aHJvdWdoIGEgcmFiYml0IGhvbGUKPiBv
ZiBoYXJkd2FyZSBzY2hlbWF0aWNzIGFuZCBwb3dlciBkYXRhLCBJIG5vdyBoYXZlIGEgZnVsbGVy
IHBpY3R1cmUgb2YKPiB0aGlzIElQLgo+IAo+IFRoZSBRdWFsY29tbSBTR01JSSBTZXJEZXMgUEhZ
ICh1c2VkIGluIExlbWFucyBhbmQgTW9uYWNvIFNvQ3MpIGlzCj4gcG93ZXJlZCBieSB0d28gdm9s
dGFnZSByYWlscy4gVGhlIHNjaGVtYXRpY3MgY2FsbCB0aGVtIHZkZGEtMHA5IGFuZAo+IHZkZGEt
MXAyLCBzbyB0aGF0J3Mgd2hhdCB3ZSBmb2xsb3cgaW4gdGhlIHNlcmllcy4gQWRkaXRpb25hbGx5
LCB0aGUKPiAwLjlWIHJlZ3VsYXRvciBkcmF3cyBhIHBlYWsgY3VycmVudCBvZiA0NiBtQSBhbmQg
dGhlIDEuMlYgcmVndWxhdG9yCj4gZHJhd3MgYSBwZWFrIGN1cnJlbnQgb2YgMTUgbUEuCj4gCj4g
SWYgYm90aCByYWlscyBhcmUgbm90IGVuYWJsZWQsIHdlIHNlZSB0aGUgb3JpZ2luYWwgaXNzdWUg
d2hlcmUgdGhlCj4gU2VyRGVzIGNhbGlicmF0aW9uIHRpbWVzIG91dDoKPiAKPiAgIHFjb20tZHdt
YWMtc2dtaWktcGh5IDg5MDkwMDAucGh5OiBRU0VSREVTX0NPTV9DX1JFQURZX1NUQVRVUyB0aW1l
ZC1vdXQKPiAgIHFjb20tZXRocW9zIDIzMDQwMDAwLmV0aGVybmV0IGV0aDA6IF9fc3RtbWFjX29w
ZW46IFNlcmRlcyBwb3dlcnVwIGZhaWxlZAo+IAo+IEN1cnJlbnRseSwgdGhlIERUIG5vZGVzIGFj
cm9zcyBhZmZlY3RlZCBib2FyZHMgaW5jb3JyZWN0bHkgZGVzY3JpYmUKPiBvbmx5IGEgc2luZ2xl
IHJlZ3VsYXRvciB2aWEgdGhlIGdlbmVyaWMgJ3BoeS1zdXBwbHknIHByb3BlcnR5IChhbmQgaW4K
PiBzb21lIGNhc2VzIHBvaW50IHRvIHRoZSB3cm9uZyByYWlsIGVudGlyZWx5KS4gTW9yZW92ZXIs
IHRoZSBkcml2ZXIgZG9lcwo+IG5vdCBzZXQgdGhlIHByb3BlciBjdXJyZW50IGxvYWRzIGFuZCBq
dXN0IHJlbGllcyBvbiBhbiBlbmFibGUgdm90ZS4KPiAKPiBUaGlzIHNlcmllcyBjb3JyZWN0cyB0
aGlzIGJ5Ogo+IAo+ICAgMS4gRml4aW5nIHRoZSBEVCBiaW5kaW5nIHRvIGRlc2NyaWJlIGJvdGgg
bmFtZWQgc3VwcGxpZXMuCj4gICAyLiBGaXhpbmcgYWxsIGFmZmVjdGVkIGJvYXJkIERUUyB0byB1
c2UgdGhlIGNvcnJlY3QgdmRkYS0wcDktc3VwcGx5Cj4gICAgICBhbmQgdmRkYS0xcDItc3VwcGx5
IHByb3BlcnRpZXMuCj4gICAzLiBBZGRpbmcgYnVsayByZWd1bGF0b3Igc3VwcG9ydCB0byB0aGUg
UEhZIGRyaXZlciBzbyBpdCBlbmFibGVzIGJvdGgKPiAgICAgIHN1cHBsaWVzIGFuZCBzZXRzIHRo
ZSBwcm9wZXIgY3VycmVudCBsb2Fkcy4KPiAKPiBUaGUgcGF0Y2hlcyBhcmUgc2VxdWVuY2VkIHRv
IG1haW50YWluIGJpc2VjdGFiaWxpdHkuIFdpdGggdGhlIGRyaXZlcgo+IGNoYW5nZSwgdGhlIFBI
WSBmcmFtZXdvcmsgd2lsbCBjb250aW51ZSB0byB2b3RlIGZvciB0aGUgcmVndWxhdG9yCj4gZGVz
Y3JpYmVkIGJ5ICdwaHktc3VwcGx5Jy4gVGhlIERUIGNoYW5nZXMgd2hpY2ggZm9sbG93IHRoZW4g
cmVtb3ZlCj4gJ3BoeS1zdXBwbHknIGluIGZhdm91ciBvZiAndmRkYS0wcDknIGFuZCAndmRkYS0x
cDInLgo+IAo+IFRlc3Rpbmc6Cj4gVGhpcyBzZXJpZXMgd2FzIHRlc3RlZCBvbiB0aGUgZm9sbG93
aW5nIExlbWFucyBhbmQgTW9uYWNvIGJhc2VkIGJvYXJkcy4KPiAgIDEuIExlbWFucyBJUS05MDc1
IEVWSyB3aXRoIHRoZSBJRlArIE1lenphbmluZSBhdHRhY2ggKGR1YWwgR01BQyArCj4gIFFDT00g
U0dNSUkgU2VyRGVzICsgUUNBODA4MSBQSFkpCj4gICAyLiBMZW1hbnMgUUNTOTEwMCBSaWRlIChk
dWFsIEdNQUMgKyBRQ09NIFNHTUlJIFNlckRlcyArIEFRUjExNUMgUEhZKQo+ICAgMy4gTW9uYWNv
IElRLTgyNzUgRVZLIChzaW5nbGUgR01BQyArIFFDT00gU0dNSUkgU2VyRGVzICsgUUNBODA4MSBQ
SFkpCj4gICA0LiBNb25hY28gUUNTODMwMCBSaWRlIChkdWFsIEdNQUMgKyBRQ09NIFNHTUlJIFNl
ckRlcyArIEFRUjExNUMgUEhZKQo+IFRvIGNvbmNsdXNpdmVseSB0ZXN0IHRoZSBuZXcgcmVndWxh
dG9yIHZvdGluZywgSSB0ZXN0ZWQgYnVpbGRzIHdpdGggYWxsCj4gdGhlIG90aGVyIGNvbnN1bWVy
cyBvZiB0aGUgcmVndWxhdG9ycyBkaXNhYmxlZCBmcm9tIHRoZSBEVFMgdG8gZW5zdXJlCj4gdGhh
dCB0aGUgcGh5LXFjb20tc2dtaWktZXRoIGRyaXZlciBoZWxkIHRoZSBvbmx5IHZvdGUuCj4gCj4g
Q2hhbmdlcyBzaW5jZSB2MToKPiAgIC0gRml4ZWQgdGhlIERUIGJpbmRpbmdzIHRvIGRlc2NyaWJl
IHRoZSBhY3R1YWwgU2VyRGVzIFBIWSBoYXJkd2FyZSwKPiAgICAgd2hpY2ggYWN0dWFsbHkgaGFz
IHR3byBzdXBwbGllcyByYXRoZXIgdGhhbiBvbmx5IG9uZSAtIEtyenlzenRvZi4KPiAgIC0gVXNl
IHJlZ3VsYXRvcl9idWxrXyogQVBJcyB0byBwcm9wZXJseSBzZXQgdGhlIGN1cnJlbnQgbG9hZHMg
b2YgdGhlCj4gICAgIHR3byBzdXBwbGllcyAtIEtvbnJhZC4KPiAgIC0gRml4ZWQgTGVtYW5zIGJv
YXJkIERUUyBmaWxlcyB0aGF0IGluY29ycmVjdGx5IHZvdGVkIGZvciB2cmVnX2w1YTsKPiAgICAg
dGhlIGNvcnJlY3QgcmFpbHMgcGVyIHRoZSBwb3dlciBkaWFncmFtIGFyZSB2cmVnX2w0YSAoMC45
VikgYW5kCj4gICAgIHZyZWdfbDFjICgxLjJWKS4KPiAgIC0gTGluayB0byB2MTogaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtYXJtLW1zbS8yMDI1MTEyNC1zZ21paWV0aF9zZXJkZXNfcmVn
dWxhdG9yLXYxLTAtNzNhZThmOWNiZTJhQG9zcy5xdWFsY29tbS5jb20vVC8jbTBiOTNlMDZhMGQ2
YTA5YzRjMWI2NWM1MDBiNDc1OTU4ZWQ1ZTI4OGQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTW9oZCBB
eWFhbiBBbndhciA8bW9oZC5hbndhckBvc3MucXVhbGNvbW0uY29tPgoKUmV2aWV3ZWQtYnk6IE1h
bml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5j
b20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
