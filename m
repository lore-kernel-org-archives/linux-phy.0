Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A67A1C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 13:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jureR26+acmZ0v2N1ZInfru+l3qmcjtiIgWIqSWRTys=; b=VLr3MgO5Zteec3
	WPYjjspj1P00a+dgRoWnqhh7UpTcFZG78uRD1mwBJ0TU7t2viAw8kKdSD+9P9qCzZlpYdNNvi1uxL
	sN8iarS0zAQrP1EJsJ3hy3adKeJbPE+p184LD+UDhc3ow9nR4FpHI6Oe7myTEGGtuX2YDpErntdni
	cbP40sRrD8oQsYvksXK5lzM3HEqsgPXHd9zfNNA1XaWcOBRcpKAPYTDHh1czXZd+EkSKJoR+BeTO7
	Ba8a8l1JjNMeqCw1/nIrFQgVMhOuKkD+xaGNQMvY3FgR07uL57DGdmihRIZLDb0A2OoVZLfWxLoYO
	pNgCMO0Is1ZJok7npPXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueCtV-00000002X3G-1J7L;
	Tue, 22 Jul 2025 13:18:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueC0t-00000002PuE-0wyp
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 12:22:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A5FE4419C6;
	Tue, 22 Jul 2025 12:22:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E6B4C4CEEB;
	Tue, 22 Jul 2025 12:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753186950;
	bh=tsa1Roe7wGwli/LZJRe4GgFwBYhR9gq3UlMLlPNQNc8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hfifZ1woUL7CNtXmT7O6E5+ES5/yr5VykYclG/J7ymFsOoncvwXwNQEqTpluFaYNH
	 KOxyeLKuNNC8vqdCKFFcAdqhDMId6oC+wvgtrtE/CkqYOiSv6VeVVUzV0MRS+w8d5V
	 fJdS3eaOOhunXeQk05MOpiR5CAvSu/FRhV5xe+WKBfMPhlCTKQiXeHRJl8Y56hsn6n
	 T1+j5LDOM8rWFGA/d1UAVlESp7qW7UcsV95H7xYISg9x3qUk30/3wIELRXxRNO9Mhc
	 o1ks4itqkjiLGHUEyxe7gS/Vz1DQSTHTG3bjtWXReT7sWi6kpuBBvq/R5ocftfCoHG
	 Ne0gcnGzvy8cw==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueC0h-000000002qX-1Zj5;
	Tue, 22 Jul 2025 14:22:20 +0200
Date: Tue, 22 Jul 2025 14:22:19 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
	lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
	johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
Message-ID: <aH-Ce0obEcm1S2N9@hovoldconsulting.com>
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-4-ziyue.zhang@oss.qualcomm.com>
 <aHobmsHTjyJVUtFj@hovoldconsulting.com>
 <86e14d55-8e96-4a2d-a9e8-a52f0de9dffd@oss.qualcomm.com>
 <c7342ed4-5705-4206-8999-e11d13bea1f2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7342ed4-5705-4206-8999-e11d13bea1f2@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_052231_328864_0724FB32 
X-CRM114-Status: GOOD (  22.68  )
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

T24gVHVlLCBKdWwgMjIsIDIwMjUgYXQgMDE6MTM6MzRQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gT24gNy8xOC8yMDI1IDY6NTMgUE0sIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gPiBPbiA3
LzE4LzI1IDEyOjAyIFBNLCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4gPj4gT24gRnJpLCBKdWwgMTgs
IDIwMjUgYXQgMDQ6MTc6MTdQTSArMDgwMCwgWml5dWUgWmhhbmcgd3JvdGU6Cj4gPj4+IGdjY19h
dXhfY2xrIGlzIHVzZWQgaW4gUENJZSBSQyBhbmQgaXQgaXMgbm90IHJlcXVpcmVkIGluIHBjaWUg
cGh5LCBpbgo+ID4+PiBwY2llIHBoeSBpdCBzaG91bGQgYmUgZ2NjX3BoeV9hdXhfY2xrLCBzbyBy
ZW1vdmUgZ2NjX2F1eF9jbGsgYW5kCj4gPj4+IHJlcGxhY2UgaXQgd2l0aCBnY2NfcGh5X2F1eF9j
bGsuCj4gPj4gRXhwYW5kaW5nIG9uIHdoeSB0aGlzIGlzIGEgY29ycmVjdCBjaGFuZ2Ugd291bGQg
YmUgZ29vZCBzaW5jZSB0aGlzIGRvZXMKPiA+PiBub3QgeWV0IHNlZW0gdG8gaGF2ZSBiZWVuIGZ1
bGx5IHJlc29sdmVkOgo+ID4+Cj4gPj4gCWh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvOTgw
ODgwOTItMTk4Ny00MWNjLWFiNzAtYzlhNWQzZmRiYjQxQG9zcy5xdWFsY29tbS5jb20vCgo+ID4g
SSBkdWcgb3V0IHNvbWUgZGVlcCBtZW1vcmllcyBhbmQgcmVjYWxsZWQgdGhhdCBfUEhZX0FVWF9D
TEsgd2FzCj4gPiBuZWNlc3Nhcnkgb24geDFlIGZvciB0aGUgR2VuNCBQSFkgdG8gaW5pdGlhbGl6
ZSBwcm9wZXJseS4gVGhpcwo+ID4gY2FuIGJlIGVhc2lseSByZXByb2R1Y2VkOgoKPiA+IEBAIC0z
MzEyLDcgKzMzMTIsNyBAQCBwY2llM19waHk6IHBoeUAxYmUwMDAwIHsKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInFjb20seDFlODAxMDAtcW1wLWdlbjR4OC1wY2ll
LXBoeSI7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHgwMWJlMDAwMCAw
IDB4MTAwMDA+Owo+ID4gICAKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwm
Z2NjIEdDQ19QQ0lFXzNfUEhZX0FVWF9DTEs+LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
Y2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfM19BVVhfQ0xLPiwKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUENJRV8zX0NGR19BSEJfQ0xLPiwKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8JnRjc3IgVENTUl9QQ0lFXzhMX0NMS1JFRl9F
Tj4sCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZnY2MgR0NDX1BDSUVf
M19QSFlfUkNITkdfQ0xLPiwKPiA+Cj4gPiA9PT4KPiA+IFsgICAgNi45NjcyMzFdIHFjb20tcW1w
LXBjaWUtcGh5IDFiZTAwMDAucGh5OiBwaHkgaW5pdGlhbGl6YXRpb24gdGltZWQtb3V0Cj4gPiBb
ICAgIDYuOTc0NDYyXSBwaHkgcGh5LTFiZTAwMDAucGh5LjA6IHBoeSBwb3dlcm9uIGZhaWxlZCAt
LT4gLTExMAo+ID4KPiA+IEFuZCB0aGUgKG5vbi1QSFlfKUFVWF9DTEsgaXMgbmVjZXNzYXJ5IGZv
ciBhdCBsZWFzdCBvbmUgb2YgdGhlbSwgYXMKPiA+IHJlbW92aW5nIGl0IGNhdXNlcyBhIGNyYXNo
IG9uIGJvb3QKClRoYW5rcyBmb3IgY2hlY2tpbmcuIEkgdG9vIGhhZCBub3RpY2VkIHRoYXQgdGhl
IHBjaWU0IGFuZCBwY2llNSB3YXMKdXNpbmcgdGhlIG5vbi1waHkgYXV4IGNsb2NrcywgYW5kIHRo
b3NlIGFyZSBpbmRlZWQgZ2VuMy4KCj4gSSB0cmllZCByZW1vdmUgUEhZX0FVWF9DTEsgaW4gc2E4
Nzc1cCBwbGF0Zm9ybSBsaWtlIHRoaXMsIGFuZAo+IGl0IHdpbGwgY2F1c2UgYSBjcmFzaCBvbiBi
b290LiBBbmQgSSBjaGVja2VkIHRoZSBjbG9jayBkb2N1bWVudGF0aW9uCj4gZm9yIHNhODc3NXAg
YW5kIGZvdW5kIHRoYXQgdGhlIFBIWV9BVVhfQ0xLwqAgaXMgYWxzbyByZXF1aXJlZC4KClRoYW5r
cywgd291bGQgc3RpbGwgYmUgZ29vZCB0byBzYXkgc29tZXRoaW5nIGluIHRoZSBjb21taXQgbWVz
c2FnZSBhYm91dAp0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSBQSFlfQVVYX0NMSyBhbmQgQVVY
X0NMSyBjbG9ja3MgYW5kIHdoeQoob25seT8pIHRoZSBnZW40IFBIWXMgbmVlZCBpdCAod2Ugc2Vl
bSB0byBoYXZlIG90aGVyIFF1YWxjb21tIG5vbi1nZW40ClBIWXMgdXNpbmcgdGhlIFBIWV9BVVgg
Y2xvY2sgdG9vKS4KClRoYXQgaXMsIHBsZWFzZSBjbGFyaWZ5IHdoaWNoIFBIWXMgbmVlZCB0aGUg
UEhZX0FVWF9DTEsgYW5kIHdoeSB0aGV5CmRvbid0IGFsc28gbmVlZCB0aGUgQVVYX0NMSyBsaWtl
IHNvbWUgUEhZcyBkby4KCkpvaGFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
