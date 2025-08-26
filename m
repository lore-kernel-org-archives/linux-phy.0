Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA7BBCA0FE9
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 11:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETf9SATKTU3ioevtVNwycp6B1f1rjSFjlIEKVn9mIC0=; b=LlrdhgWZa06Sr7
	Ufdc927em1snnkjAYK2JT5uxclmc5PG1egwUuDbByo7GlFTgK+aY1MjroWm5da1/RkrMsaYQocvPe
	iA0I2XBcu4/5q0hQrH7EvOlE8BouvY6K5crEY8vTqteY8oPT4WOo2iBQ9PBDfIMrR1Y9Uf0zsdIYY
	gvZr6wXBc73+DjVy1ZzHZQepmkNXBNuxipnGO9DZl7ymuj/MfVdr31uLg5jjyRg1PCn0tlW/Nor8h
	6ypFUuccW5UL110LfOfdniX5Lv30bTUlUzsOUZhRXptiYvrOXqOaf+EE7eFfJyf6w0+Qptvq6xGXf
	6tMO+RjC+713T3Dm3jzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqrnL-0000000Bliy-2S5v;
	Tue, 26 Aug 2025 11:24:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqqmt-0000000BbyL-4AM7
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 10:20:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 499F75C4756;
	Tue, 26 Aug 2025 10:20:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21DEEC4CEF1;
	Tue, 26 Aug 2025 10:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756203622;
	bh=SQj19bRsv81q+ZnWFUSYxGQesSOr+XBdXk7u/2A7UuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PXbW7b99egZTEWGT1MOnJm6owvmmBX7wjKJ68UPHQ4t+T88ZRP3BYOsTChItPpnv6
	 Xd322TOoLmSp5R3HCzBO0hjvAl9YH3eJzCt4+qzYyIbzAwMRc7VgtjggQPqQ+LbGJ3
	 cW/GWOM40AhYiyVNllhWNaNPIGXm6pbe1LNtLnt8fBo5jEpXNpGk4D9PezQ5IUGIw3
	 BWyUhnubNlPqpVIq7wPpcPas5Wv9dnZKqcXY0D5kxBUERYBfr1D0FtUq4aGQr2oH7c
	 PXMrlac5qeGwmiS+llwIWBzryBN9+sX3oQGHgthnLMEmAnM+Vvrz8ENzV9gObaSFSA
	 DPR/cWj27bSiA==
Date: Tue, 26 Aug 2025 15:50:07 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com, 
	quic_mrana@quicinc.com
Subject: Re: [PATCH v2 3/3] PCI: qcom: Restrict port parsing only to pci
 child nodes
Message-ID: <ei7qtgj7jegwaafrjdccoaz3tg7klnms4dyiqdumwxdvnucp4c@euose4y6vkqg>
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
 <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
 <rurdrz3buvb7paqgjjr7ethzvaeyvylezexcwshpj73xf7yeec@i52bla6r5tx7>
 <b7529529-9677-4713-920f-bf36863459ca@kernel.org>
 <p6yacm6hkhp4rgtl2xn677kek24ksczvtuersxnou4kmxmp7go@tmoy7gn4hrhx>
 <dfd9cc8b-8103-4fa9-8b3b-c31ae7c4970a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dfd9cc8b-8103-4fa9-8b3b-c31ae7c4970a@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_032024_128378_0599CDF0 
X-CRM114-Status: GOOD (  25.20  )
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

T24gVHVlLCBBdWcgMjYsIDIwMjUgYXQgMTE6Mjk6MzdBTSBHTVQsIEtyenlzenRvZiBLb3psb3dz
a2kgd3JvdGU6Cj4gT24gMjYvMDgvMjAyNSAxMToyNiwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdy
b3RlOgo+ID4gT24gVHVlLCBBdWcgMjYsIDIwMjUgYXQgMTA6Mjg6NTFBTSBHTVQsIEtyenlzenRv
ZiBLb3psb3dza2kgd3JvdGU6Cj4gPj4gT24gMjYvMDgvMjAyNSAwODoxNywgTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIHdyb3RlOgo+ID4+PiBPbiBUdWUsIEF1ZyAyNiwgMjAyNSBhdCAxMDo0ODoxOUFN
IEdNVCwgS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSB3cm90ZToKPiA+Pj4+IFRoZSBxY29tX3Bj
aWVfcGFyc2VfcG9ydHMoKSBmdW5jdGlvbiBjdXJyZW50bHkgaXRlcmF0ZXMgb3ZlciBhbGwgYXZh
aWxhYmxlCj4gPj4+PiBjaGlsZCBub2RlcyBvZiB0aGUgUENJZSBjb250cm9sbGVyJ3MgZGV2aWNl
IHRyZWUgbm9kZS4gVGhpcyBjYW4gbGVhZCB0bwo+ID4+Pj4gYXR0ZW1wdHMgdG8gcGFyc2UgdW5y
ZWxhdGVkIG5vZGVzIGxpa2UgT1BQIG5vZGVzLCByZXN1bHRpbmcgaW4gdW5uZWNlc3NhcnkKPiA+
Pj4+IGVycm9ycyBvciBtaXNjb25maWd1cmF0aW9uLgo+ID4+Pj4KPiA+Pj4KPiA+Pj4gV2hhdCBl
cnJvcnM/IEVycm9ycyB5b3UgYXJlIHNlZWluZyBvbiB5b3VyIHNldHVwIG9yIHlvdSBlbnZpc2lv
bj8KPiA+Pj4KPiA+Pj4+IFJlc3RyaWN0IHRoZSBwYXJzaW5nIGxvZ2ljIHRvIG9ubHkgY29uc2lk
ZXIgY2hpbGQgbm9kZXMgbmFtZWQgInBjaWUiIG9yCj4gPj4+PiAicGNpIiwgd2hpY2ggYXJlIHRo
ZSBleHBlY3RlZCBub2RlIG5hbWVzIGZvciBQQ0llIHBvcnRzLgo+ID4+Pj4KPiA+Pj4+IFNpZ25l
ZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3Mu
cXVhbGNvbW0uY29tPgo+ID4+Pgo+ID4+PiBTaW5jZSB0aGlzIGlzIGEgZml4LCAnRml4ZXMnIHRh
ZyBpcyBuZWVkZWQuCj4gPj4+Cj4gPj4+PiAtLS0KPiA+Pj4+ICBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLXFjb20uYyB8IDIgKysKPiA+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspCj4gPj4+Pgo+ID4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29t
LmMKPiA+Pj4+IGluZGV4IDI5NGJhYmUxODE2ZTRkMGMyYjIzNDNmZTIyZDg5YWY3MmFmY2Q2Y2Qu
LjVkYmRiNjlmYmRkMWI5Yjc4YTNlYmJhM2NkNTBkNzgxNjhmMmQ1OTUgMTAwNjQ0Cj4gPj4+PiAt
LS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ID4+Pj4gKysrIGIv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiA+Pj4+IEBAIC0xNzQwLDYg
KzE3NDAsOCBAQCBzdGF0aWMgaW50IHFjb21fcGNpZV9wYXJzZV9wb3J0cyhzdHJ1Y3QgcWNvbV9w
Y2llICpwY2llKQo+ID4+Pj4gIAlpbnQgcmV0ID0gLUVOT0VOVDsKPiA+Pj4+ICAKPiA+Pj4+ICAJ
Zm9yX2VhY2hfYXZhaWxhYmxlX2NoaWxkX29mX25vZGVfc2NvcGVkKGRldi0+b2Zfbm9kZSwgb2Zf
cG9ydCkgewo+ID4+Pj4gKwkJaWYgKCEob2Zfbm9kZV9uYW1lX2VxKG9mX3BvcnQsICJwY2llIikg
fHwgb2Zfbm9kZV9uYW1lX2VxKG9mX3BvcnQsICJwY2kiKSkpCj4gPj4+Cj4gPj4+IE1heSBJIGtu
b3cgd2hpY2ggcGxhdGZvcm0gaGFzICdwY2knIGFzIHRoZSBub2RlIG5hbWUgZm9yIHRoZSBicmlk
Z2Ugbm9kZT8gQUZBSUssCj4gPj4+IGFsbCBwbGF0Zm9ybXMgZGVmaW5pbmcgYnJpZGdlIG5vZGVz
IGhhdmUgJ3BjaWUnIGFzIHRoZSBub2RlIG5hbWUuCj4gPj4KPiA+PiBJdCBkb2VzIG5vdCBtYXR0
ZXIuIElmIEkgbmFtZSBteSBub2RlIG5hbWUgYXMgInBjIiBpdCBzdG9wcyB3b3JraW5nPwo+ID4+
Cj4gPj4gTm8sIFF1YWxjb21tIGNhbm5vdCBpbnRyb2R1Y2Ugc3VjaCBoaWRkZW4gQUJJLgo+ID4g
Cj4gPiBUaGVyZSBpcyBubyBoaWRkZW4gQUJJIHRoYXQgUWNvbSBpcyBpbnRyb2R1Y2luZy4gV2Ug
YXJlIGp1c3QgdHJ5aW5nIHRvIHJldXNlIHRoZQo+ID4gc3RhbmRhcmQgbm9kZSBuYW1lcyBkb2N1
bWVudGVkIGluIHRoZSBkZXZpY2V0cmVlIHNwZWMuIFNvIHlvdSBhcmUgc2F5aW5nIHRoYXQKPiA+
IHdlIHNob3VsZCBub3QgcmVseSBvbiBpdCBldmVuIHRob3VnaCBpdCBpcyBkb2N1bWVudGVkPyBN
YXliZSBiZWNhdXNlLCB0aGUgZHQKPiA+IHRvb2xpbmcgaXMgbm90IHlldCBzY3JlYW1pbmcgaWYg
cGVvcGxlIHB1dCBub24tc3RhbmRhcmQgbmFtZXMgaW4gRFQ/Cj4gPiAKPiAKPiBJZiBpdCBpcyBk
b2N1bWVudGVkLCB5b3UgY2FuIHVzZSBpdCwgYnV0IEkgZG91YnRlZCBmaXJzdCB0aGUgYXV0aG9y
IGV2ZW4KPiBjaGVja2VkIHRoYXQuIE90aGVyd2lzZSBjb21taXQgbWVzc2FnZSB3b3VsZCBzYXkg
dGhhdC4KPiAKPiBBcyBJIG1lbnRpb25lZCBpbiBvdGhlciByZXNwb25zZSwgSSBzdGlsbCBmaW5k
IGl0IGRpc2NvdXJhZ2VkIHBhdHRlcm4gaWYKPiB5b3UgaGF2ZSAoYW5kIHlvdSBkbyBoYXZlISkg
Y29tcGF0aWJsZXMuCj4gCgpDb21wYXRpYmxlcyBmb3IgdGhlIFBDSSBicmlkZ2VzIGFyZSBub3Qg
bWFuZGF0b3J5LCBzbyB3ZSBjYW5ub3QgdXNlIGl0LiBCdXQKJ2RldmljZV90eXBlJyBpcyBhbmQg
S3Jpc2huYSBpcyBnb2luZyB0byB1c2UgdGhhdCBpbnN0ZWFkLgoKLSBNYW5pCgotLSAK4K6u4K6j
4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
