Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5539DC5B552
	for <linux-phy@archiver.kernel.org>; Wed,  4 Jun 2025 11:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoUMjYq0mxzf7M0I1GFYbT4UixB3JJUUWFaX1yvfDdA=; b=rK+ZfiXPxRZOrE
	Cco7uxtkTWLyyrzfc8H2Xmto+pg56xS3fI+mdBDxL55FmtYek+WCk750MM+er3crzjSjtMfKXUz57
	tOVpPXbWvmnHL2moCASDkKEEN3e5JzLpZUK3+Ql0urRXsWD/Vi5zwcrQcUza/7M1CX6HVMyoPvidR
	tk8I4cSdPiHaBvmd6e/9OqDnw+tmfBgdEHo57jXakdtAuf707PXHg7AeAqtTALOTzDevPqqEEH8D/
	qViqDcMo7tZybQkGMHMDkS0R1xNBP1J3TS67T5gmwi0rZRjuuQS6XeP0PXqHyUdqFFNJgF/mfEmaD
	s9D6a4bm2t2DhjKPgrkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmQz-0000000DDtJ-0PFF;
	Wed, 04 Jun 2025 11:37:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMmQx-0000000DDsg-04HF
	for linux-phy@lists.infradead.org;
	Wed, 04 Jun 2025 11:37:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9C0B05C4607;
	Wed,  4 Jun 2025 11:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A2A2C4CEE7;
	Wed,  4 Jun 2025 11:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749037046;
	bh=/03g7ApDlfWnALDbvW9C24ZKhfHyWDmZKHy+HvjP5Qk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qIoi8EPiVCeeIexPhQzxhsbNDeV5+YFZeBaPeV5UumRWr9GtbNhTLbr9C+wydFENz
	 kx1Bk1bq4zm83ioW3wVCZbXsRa/AYyJkrpcbkofIxaV046FsBlVCVOjG5zwuKxrKWg
	 Q5cnbbIsYHeuBgqgka3xaqIVpWszSXMkEPElqYHtNpWDN0oAqYRV2zQQqjHmC/Oinu
	 gwQMU127tE9uAPWBsqyLdBF8+gmyjO691efkCoiH40kMf9V2xONBIvoYmeX0Y+ZlQp
	 hul+qlP+DDye4hqg1yMLE80B0qUja2/ms3Y2DZROrh4Nuih5iF1v2mi6VgvT4PsDK6
	 4Ww672m79RfYg==
Message-ID: <9089f618-0df1-4710-8158-36f58c94a0c6@kernel.org>
Date: Wed, 4 Jun 2025 13:36:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
To: Qiang Yu <quic_qianyu@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org,
 manivannan.sadhasivam@linaro.org, robh@kernel.org, bhelgaas@google.com,
 krzk+dt@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
 kw@linux.com, conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250529035416.4159963-1-quic_ziyuzhan@quicinc.com>
 <20250529035416.4159963-3-quic_ziyuzhan@quicinc.com>
 <drr7cngryldptgzbmac7l2xpryugbrnydke3alq5da2mfvmgm5@nwjsqkef7ypc>
 <e8d1b60c-97fe-4f50-8ead-66711f1aa3a7@quicinc.com>
 <34dnpaz3gl5jctcohh5kbf4arijotpdlxn2eze3oixrausyev3@4qso3qg5zn4t>
 <43a6e141-adab-42e9-9966-ec54cb91a6de@quicinc.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <43a6e141-adab-42e9-9966-ec54cb91a6de@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_043727_143339_8C9EF3C8 
X-CRM114-Status: GOOD (  14.38  )
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

T24gMDQvMDYvMjAyNSAxMjowNSwgUWlhbmcgWXUgd3JvdGU6Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IFppeXVlIFpoYW5nIDxxdWljX3ppeXV6aGFuQHF1aWNpbmMuY29tPgo+Pj4+PiAtLS0KPj4+Pj4g
ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbCAgfCAx
MyArKysrKysrKystLS0tCj4+Pj4+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXNhODc3NXAueWFtbAo+Pj4+PiBp
bmRleCBlM2ZhMjMyZGEyY2EuLjgwNTI1OGNiY2YyZiAxMDA2NDQKPj4+Pj4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHBjaWUtc2E4Nzc1cC55YW1sCj4+
Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2ll
LXNhODc3NXAueWFtbAo+Pj4+PiBAQCAtNjEsMTEgKzYxLDE0IEBAIHByb3BlcnRpZXM6Cj4+Pj4+
ICAgICAgICAgLSBjb25zdDogZ2xvYmFsCj4+Pj4+ICAgICByZXNldHM6Cj4+Pj4+IC0gICAgbWF4
SXRlbXM6IDEKPj4+Pj4gKyAgICBtaW5JdGVtczogMQo+Pj4+PiArICAgIG1heEl0ZW1zOiAyCj4+
Pj4gU2hvdWxkbid0IHdlIGp1c3QgdXBkYXRlIHRoaXMgdG8gbWF4SXRlbXM6MiAvIG1pbkl0ZW1z
OjIgYW5kIGRyb3AKPj4+PiBtaW5JdGVtczoxIGZyb20gdGhlIG5leHQgY2xhdXNlPwo+Pj4gSGkg
RG1pdHJ5LAo+Pj4KPj4+IGxpbmtfZG93biByZXNldCBpcyBvcHRpb25hbC4gSW4gbWFueSBvdGhl
ciBwbGF0Zm9ybXMsIGxpa2Ugc204NTUwCj4+PiBhbmQgeDFlODAxMDAsIGxpbmtfZG93biByZXNl
dCBpcyBkb2N1bWVudGVkIGFzIGEgb3B0aW9uYWwgcmVzZXQuCj4+PiBQQ0llIHdpbGwgd29ya3Mg
ZmluZSB3aXRob3V0IGxpbmtfZG93biByZXNldC4gU28gSSB0aGluayBzZXR0aW5nIGl0Cj4+PiBh
cyBvcHRpb25hbCBpcyBiZXR0ZXIuCj4+IFlvdSBhcmUgZGVzY3JpYmluZyBhIGhhcmR3YXJlLiBI
b3cgY2FuIGEgcmVzZXQgYmUgb3B0aW9uYWwgaW4gdGhlCj4+IF9oYXJkd2FyZV8/IEl0J3MgZWl0
aGVyIHJvdXRlZCBvciBub3QuCj4gCj4gSSBmZWVsIGEgYml0IGNvbmZ1c2VkLiBBY2NvcmRpbmcg
dG8gdGhlIHRoZW9yeSBhYm92ZSwgZXZlcnl0aGluZyBzZWVtcyB0bwo+IGJlIG5vbi1vcHRpb25h
bCB3aGVuIGRlc2NyaWJpbmcgaGFyZHdhcmUsIHN1Y2ggYXMgcmVnaXN0ZXJzLCBjbG9ja3MsCj4g
cmVzZXRzLCByZWd1bGF0b3JzLCBhbmQgaW50ZXJydXB0c+KAlGFsbCBvZiB0aGVtIGVpdGhlciBl
eGlzdCBvciBkbyBub3QuCgpDYW4geW91IGNvbnN0cnVjdCBhIERUUyBiZWluZyBmdWxseSBjb21w
bGV0ZSBhbmQgY29ycmVjdCBwaWN0dXJlIG9mCmhhcmR3YXJlIHdpdGhvdXQgdGhlc2U/IElmIG5v
dCwgdGhleSBhcmUgbm90IG9wdGlvbmFsLCBiZWNhdXNlIGNvcnJlY3QKaGFyZHdhcmUgcmVwcmVz
ZW50YXRpb24gd291bGQgbmVlZCB0aGVtLgoKPiAKPiBTZWVtcyBsaWtlIEkgbWlzdW5kZXJzdGFu
ZCB0aGUgY29uY2VwdCBvZiAnb3B0aW9uYWwnPyBJcyAnb3B0aW9uYWwnIG9ubHkKPiB1c2VkIGZv
ciBjb21wYXRpYmlsaXR5IGFjcm9zcyBkaWZmZXJlbnQgcGxhdGZvcm1zPwo+IAo+IEFkZGl0aW9u
YWxseSwgd2UgaGF2ZSBkb2N1bWVudGVkIHRoZSBQQ0llIGdsb2JhbCBpbnRlcnJ1cHQgYXMgb3B0
aW9uYWwuIEkKPiB3YXMgdGF1Z2h0IHRoYXQsIGluIHRoZSBQQ0llIGRyaXZlciwgdGhpcyBpbnRl
cnJ1cHQgaXMgcmV0cmlldmVkIHVzaW5nIHRoZQo+IHBsYXRmb3JtX2dldF9pcnFfYnluYW1lX29w
dGlvbmFsIEFQSSwgc28gaXQgY2FuIGJlIGRvY3VtZW50ZWQgYXMgb3B0aW9uYWwuCj4gSG93ZXZl
ciwgdGhpcyBzdGlsbCBzZWVtcyB0byBjb250cmFkaWN0IHRoZSB0aGVvcnkgbWVudGlvbmVkIGVh
cmxpZXIuCgpBQkkgaXMganVzdCBvbmUgc2lkZSBvZiB0aGUgcmVxdWlyZWQgcHJvcGVydGllcy4K
CgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
