Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC613CA5FAB
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 05:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywLkfbkeJRTq2ieZ5jm2gvwOua28+YwjqZNh15zK0fo=; b=29dx6u1N879Gds
	29wL8J60PIvVAZ4nXAfVZ6rgPdWXrSsSkrqxTMKhcK75xtldMjXiCIWd9G/4QMor5gQG1OIRk07NV
	xeWZjlsbD9WlkCJf12qWbeeth6IHQQzVwCO4lNwGuH2Lxjeje7JODOz1iBlA2qWX5kEG8hYQfwzTl
	xkpNkkZ52gwPeyZs9sjFnTT+CkVD4RFM/RDBo42+YFl2+qm+ym7L0uXClgnn2GdZZDQhfmqZrMDho
	R8bPj5PcblURQ07/EYAsCxy5CgXMgvG/Ml33JrvsmRDa24MMpiOC4j1JFDECgRl01zN84xM9qsMUQ
	vdXKImO1WyGJ9VygIW1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBmgB-000000052Mu-09Fs;
	Wed, 30 Sep 2026 05:16:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBmg3-000000052L1-1rDh
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 05:16:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C261840744;
	Wed, 30 Sep 2026 05:16:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C68821F000FF;
	Wed, 30 Sep 2026 05:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790745382;
	bh=eQleIxJOBPv1KRFntodHoZ79/WxPDKFPhFZNfK7ap0o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=BA22HlaA5E3F7+u4XMqXTPdWQH0WWR+QICpy7gO+ug23l98iIzIbURSbMIcF7itwc
	 ackm2dnn0Mci2l8Q6i51HM/fc6BE6gbK95z+bwtmWoaUUc+mVzqwc0iKcQSInz1vWq
	 opl50ikHBVAwSmIeY5NSOlYdN0qlOn+HVMy8O97Ihz2T3g7Cv4rTs2t1x8kNudWY6o
	 cU1gzIuy5As8hHXxV4Xiw0iLbbsYnXk6aLDjqMG7M7QiX51JmOPTMNTSjJ/O1DoGjE
	 RlX02A2YhKV2UJNSged+SRrPA+9Ja0fDNuRVo+GTfolHieJ1672L+0ZNOdqe21ij+8
	 dVzUe/i4bUayw==
Message-ID: <e4a07d79-199b-4998-ae2d-a9e8b91a228c@kernel.org>
Date: Wed, 30 Sep 2026 07:16:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] phy: qcom: sgmii-eth: add Nord USXGMII support
To: Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Cc: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
 Shawn Guo <shengchao.guo@oss.qualcomm.com>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
 <CAFkd8hvoUi3dyff8w72pmRHce0XDNUepCsR=1gtimFMgA6gmBQ@mail.gmail.com>
 <20260928-steel-hornet-of-kindness-aa5e2f@quoll>
 <CAFkd8hs6H-WT6C2Nzns2jB1yHq1CfODijAX1VbMxUUAe7zH6Rg@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <CAFkd8hs6H-WT6C2Nzns2jB1yHq1CfODijAX1VbMxUUAe7zH6Rg@mail.gmail.com>
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

T24gMjkvMDkvMjAyNiAxMjo0OSwgWmhhbmdmZWkgR2FvIHdyb3RlOgo+IEhpLCBLcnp5c3p0b2YK
PiAKPiBPbiBNb24sIFNlcCAyOCwgMjAyNiBhdCA2OjE54oCvUE0gS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPj4KPj4gT24gV2VkLCBTZXAgMjMsIDIwMjYgYXQg
MDQ6NTg6MDNQTSArMDgwMCwgWmhhbmdmZWkgR2FvIHdyb3RlOgo+Pj4gT24gV2VkLCBTZXAgMjMs
IDIwMjYgYXQgODowNOKAr0FNIE1vaGQgQXlhYW4gQW53YXIKPj4+IDxtb2hkLmFud2FyQG9zcy5x
dWFsY29tbS5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gVGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZv
ciB0aGUgRXRoZXJuZXQgU2VyRGVzIGZvdW5kIG9uIHRoZSBRdWFsY29tbQo+Pj4+IE5vcmQgU29D
Lgo+Pj4+Cj4+Pj4gTm9yZCB1c2VzIGEgUU1QIHY3IFNlckRlcyBibG9jaywgd2hpY2ggaXMgYW4g
dXBkYXRlZCB2ZXJzaW9uIG9mIHRoZQo+Pj4+IFNHTUlJIFNlckRlcyBQSFkgSVAgYWxyZWFkeSBo
YW5kbGVkIGJ5IHBoeS1xY29tLXNnbWlpLWV0aC4gVGhlIGRyaXZlcgo+Pj4+IGN1cnJlbnRseSBz
dXBwb3J0cyB0aGUgMS4yNSBHYmF1ZCBhbmQgMy4xMjUgR2JhdWQgY29uZmlndXJhdGlvbnMgdXNl
ZCBieQo+Pj4+IFNHTUlJLCAxMDAwQkFTRS1YIGFuZCAyNTAwQkFTRS1YLiBOb3JkIGFkZGl0aW9u
YWxseSByZXF1aXJlcyB0aGUgU2VyRGVzCj4+Pj4gdG8gb3BlcmF0ZSBhdCAxMC4zMTI1IEdiYXVk
IGZvciBpdHMgMTAgR2lnYWJpdCBFdGhlcm5ldCBpbnRlcmZhY2VzLgo+Pj4+Cj4+Pj4gVGhlIHNl
cmllcyBjYW4gYmUgYnJvYWRseSBkaXZpZGVkIGludG8gdGhyZWUgcGFydHM6Cj4+Pj4KPj4+PiAg
IDEuIEFkZCB0aGUgcWNvbSxub3JkLWR3bWFjLXNnbWlpLXBoeSBjb21wYXRpYmxlIHRvIHRoZSBi
aW5kaW5nLgo+Pj4+ICAgMi4gUHJlcGFyZSB0aGUgZHJpdmVyIGZvciBQSFkgbW9kZXMgd2hpY2gg
cmVxdWlyZSBkaWZmZXJlbnQgU2VyRGVzCj4+Pj4gICAgICBwcm9ncmFtbWluZyBhbmQgcmVhZGlu
ZXNzIGNoZWNrcy4gRXhpc3RpbmcgU0E4Nzc1UCBiZWhhdmlvdXIgaXMKPj4+PiAgICAgIHVuY2hh
bmdlZC4KPj4+PiAgIDMuIEFkZCB0aGUgUU1QIHY3IHJlZ2lzdGVyIGRlZmluaXRpb25zLCAxMC4z
MTI1IEdiYXVkIHByb2dyYW1taW5nCj4+Pj4gICAgICBzZXF1ZW5jZSBhbmQgcmVhZGluZXNzIGNo
ZWNrcyByZXF1aXJlZCBmb3IgVVNYR01JSSBhbmQgMTBHQkFTRS1SLgo+Pj4+Cj4+Pj4gVGhlIGNo
YW5nZXMgaGF2ZSBiZWVuIHRlc3RlZCBvbiB0aGUgTm9yZCBSaWRlIFNYIHBsYXRmb3JtLCB3aGlj
aCBoYXMgYQo+Pj4+IE1WLVE2MjIzIHN3aXRjaCwgcnVubmluZyBpbiBmaXhlZCBsaW5rIFVTWEdN
SUkgMTBHIG1vZGUuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBNb2hkIEF5YWFuIEFud2FyIDxt
b2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4gLS0tCj4+Pj4gTW9oZCBBeWFhbiBBbndh
ciAoMyk6Cj4+Pj4gICAgICAgZHQtYmluZGluZ3M6IHBoeTogcWNvbSxzYTg3NzVwLWR3bWFjLXNn
bWlpLXBoeTogYWRkIE5vcmQgY29tcGF0aWJsZQo+Pj4+ICAgICAgIHBoeTogcWNvbTogc2dtaWkt
ZXRoOiBwcmVwYXJlIGZvciBhZGRpdGlvbmFsIFBIWSBtb2Rlcwo+Pj4+ICAgICAgIHBoeTogcWNv
bTogc2dtaWktZXRoOiBhZGQgTm9yZCBVU1hHTUlJIHN1cHBvcnQKPj4+Pgo+Pj4+ICAuLi4vYmlu
ZGluZ3MvcGh5L3Fjb20sc2E4Nzc1cC1kd21hYy1zZ21paS1waHkueWFtbCB8ICAgMSArCj4+Pj4g
IGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3Mtc2dtaWkuaCAgICAgIHwgICA1
ICsKPj4+PiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtY29tLXY3
LmggfCAgIDIgKwo+Pj4+ICAuLi4vcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1xc2VyZGVzLXR4
cngtdjcuaCAgICB8ICAgOSArCj4+Pj4gIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXNn
bWlpLWV0aC5jICAgICAgICAgIHwgMjI2ICsrKysrKysrKysrKysrKysrKy0tLQo+Pj4+ICA1IGZp
bGVzIGNoYW5nZWQsIDIxOSBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKPj4+PiAtLS0K
Pj4+PiBiYXNlLWNvbW1pdDogYThjNTkxZWQ2YjY3MjkxNWUwYmU1Nzg0M2Y5NDNhMmE3MjNhZmY0
MAo+Pj4+IGNoYW5nZS1pZDogMjAyNjA5MjMtbm9yZF9ldGhlcm5ldF9zZXJkZXMtYzQ4NmY3MTVm
MzgzCj4+Pj4KPj4+PiBCZXN0IHJlZ2FyZHMsCj4+Pj4gLS0KPj4+PiBNb2hkIEF5YWFuIEFud2Fy
IDxtb2hkLmFud2FyQG9zcy5xdWFsY29tbS5jb20+Cj4+Pj4KPj4+Cj4+PiBHb29kIEpvYu+8jAo+
Pj4KPj4+IFRlc3RlZC1ieTogWmhhbmdmZWkgR2FvIDx6aGFuZ2ZlaS5nYW9Ab3NzLnF1YWxjb21t
LmNvbT4KPj4KPj4gVGhpcyBoYXMgdG8gc3RvcC4KPj4KPj4gV2h5IGFnYWluIGFkZGluZyBmYWtl
IHRlc3RpbmcgdG8gdGhlIGJpbmRpbmdzPyBZb3UgY2Fubm90IHJlcGx5IHR3aWNlPwo+IFJlcGx5
IHR3aWNlIHNpbmNlIEkgdGhvdWdodCB0aGV5IGFyZSB0d28gZGlmZmVyZW50IHBhdGNoIHNldCwg
b25lIGlzIHBoeSwKCllvdSBkb24ndCBldmVuIHRyeSB0byB1bmRlcnN0YW5kIHRoZSBwcm9ibGVt
LgoKPiB0aGUgb3RoZXIgaXMgbmV0LCB3aGlsZSBuZXQgbWFpbnRhaW5lciBzYWlkIHRoYXQgaXMg
dG9vIGVhbHJ5IGZvciByZmMuCj4gCj4gVGhlIHRlc3RlZCBicmFuY2ggaXMKPiBodHRwczovL2dp
dGh1Yi5jb20vemhhbmdmZWktZ2FvL2tlcm5lbC10b3BpY3MvdHJlZS9uZXh0LTkuMjMgKCBhbmQK
PiA5LjI0LWV0aCksIGFuZCBtYXkga2VlcCB0ZXN0aW5nIGZvciBlYWNoIGN5Y2xlLgo+IGNvbnRp
YW5pbmcgZHRzLCBwaHksIG5ldCBhbmQgYWxsIHJlcXVpcmVkIHBhdGNoc2V0LCBhc3N1bWluZyBv
bmUKPiBpbnRlZ3JhdGVkIGJyYW5jaCB3aWxsIGJlIGVhc2llciBmb3IgaW50ZXJhbCB0cmFjay4K
PiBUaGUgZHRzIHdpbGwgYmUgc2VuZCBsYXRlci4KPiBUZXN0aW5nIGhhcmR3YXJlIGlzIHJpZGUg
YW5kIHJyZC4KPiAKCkV4cGxhaW4gSE9XIGRpZCB5b3UgdGVzdCB0aGUgYmluZGluZ3MgaW4gdGVy
bXMgb2YgTGludXgga2VybmVsIHRlc3RpbmcuCgpUaGVuIGV4cGxhaW4gV0hZIHlvdSBjYW5ub3Qg
Z2l2ZSB0aGUgdGFnIG9ubHkgdG8gYXBwcm9wcmlhdGUgcGxhY2VzLAppbnN0ZWFkIG9mIGJsYW5r
ZXQgb25lLgoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
