Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23737C5DF84
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 11:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGmDiqweyyMyazySHE3EfpTQ3VypKNQ4BwEKj0QsdMc=; b=V7G3CX4nQU4H3U
	p9yzjdj8u19A2J+KYKIFYjA8GDnjrD+exOc91pq4hOMj10XPM85Bs5JB09czHwzvsA1aAmMfzZu5Y
	LdFCwfXywPfV1syLjiFvKovmKZgqb0uEPPPqfuUWdLQq2GkpiAMgCio34c2BT4TTSf1v7UEG/IAvZ
	A9crXd+s9cf6lodXy5QrTdIP0/jMRdplnWCcxrDZbhpsbYG7ymBzByWSS5b4nyEImXX1G5Qji1bbm
	SGTTns3U0aVNT4ILRgdl6v69oV2F4N2ZJrbPnE2IC6q5xPox67rX7uf+YqQ4IZ/0HmOsITcEGKnJ1
	ez/IjCXi+7TvMJLo5Vzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwIDt-00000007rwQ-2iyA;
	Tue, 18 Aug 2026 11:43:17 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwIDr-00000007rvT-0GWL;
	Tue, 18 Aug 2026 11:43:16 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E0F3011C00F;
	Tue, 18 Aug 2026 13:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1787053387;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=9ZcN0w+bflhe6BRMhf9Wjukk4Z/S3kbcxpHbb9Y44iQ=;
	b=TkUwwvcAUXRRaxQI8sBMU9QIhZu4Qp/SPjiHNWps9dZ8EOKxynh+zjsyxh1VfduE7a4+rd
	B/G5e9L5nCec4TSqEkGe6RQi2TozkIXCm2c4eYm0mzHOSmTjaJEUF0cJk9ojpSx0L19hW8
	1VRKOspct39pI7cvMrYtFYTyDT6S0ClwLzlYpX10KxhCRxypYf5/CoZWWC9ZBY52w0ipWl
	cY6Xcazi1fRQ3sYKUsNwhzzLF/SYdhhPUdMmmcDY5lTuF1GC4P1g2KowduKJnetov+x0Mf
	m9VETLu60p8fgHa4vjCS8prShpAQSPrmpqzrtQcnHC0CfSnQWkT7NS/ohug59Q==
Message-ID: <0198d074-6fc8-45d4-9ef0-eac299ec9d82@nabladev.com>
Date: Tue, 18 Aug 2026 11:53:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/9] phy: stm32: Add support for ST STM32MP25
 USB2-FEMTO PHY
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>, linux-usb@vger.kernel.org
Cc: Pankaj Dev <pankaj.dev@st.com>, Rahul Kumar <rahul.kumar05@st.com>,
 Christian Bruel <christian.bruel@foss.st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Rosen Penev <rosenp@gmail.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
 kernel@dh-electronics.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20260816213849.1044073-1-marex@nabladev.com>
 <20260816213849.1044073-3-marex@nabladev.com>
 <e415f8de-f8dc-460d-80a9-5e1b2b34f8a8@foss.st.com>
 <f7b674b3-9490-453c-9eb9-96b19254d0a3@nabladev.com>
 <ed1d6988-251a-43d3-ba0e-aaa3e54ad07b@foss.st.com>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <ed1d6988-251a-43d3-ba0e-aaa3e54ad07b@foss.st.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_044315_268895_CB6D2569 
X-CRM114-Status: GOOD (  15.59  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gOC8xOC8yNiAxMToyOCBBTSwgRmFicmljZSBHYXNuaWVyIHdyb3RlOgoKSGVsbG8gRmFicmlj
ZSwKCj4+Pj4gK3N0YXRpYyBpbnQgc3RtMzJfdXNiMnBoeV9lbmFibGUoc3RydWN0IHN0bTMyX3Vz
YjJwaHkgKnBoeV9kZXYpCj4+Pj4gK3sKPj4+PiArwqDCoMKgIGNvbnN0IHN0cnVjdCBzdG0zMm1w
Ml91c2IycGh5X2h3X2RhdGEgKnBoeV9kYXRhID0gcGh5X2Rldi0+aHdfZGF0YTsKPj4+PiArwqDC
oMKgIHVuc2lnbmVkIGxvbmcgcmF0ZTsKPj4+PiArwqDCoMKgIGludCByZWZzZWwsIHJldDsKPiAK
PiBIZWxsbyBNYXJlaywKPiAKPiBKdXN0IG5vdGljZWQgcmVmc2VsIHNob3VsZCBiZSB1bnNpZ25l
ZCA/CgpJdCBtYWtlcyBubyBkaWZmZXJlbmNlIGluIHRoaXMgY2FzZSwgc2luY2UgdGhlIHZhbHVl
IGNhbiBiZSBlaXRoZXIgCjAvMS8yLCBidXQgZml4ZWQuCgo+Pj4+ICsKPj4+PiArwqDCoMKgIC8q
IENoZWNrIGlmIGEgcGh5IGlzIGFscmVhZHkgaW5pdCBvciBjbGs0OCBpbiB1c2UgKi8KPj4+PiAr
wqDCoMKgIGlmIChhdG9taWNfaW5jX3JldHVybigmcGh5X2Rldi0+ZW5fcmVmY250KSA+IDEpCj4+
Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+Pj4+ICsKPj4+PiArwqDCoMKgIHJhdGUgPSBj
bGtfZ2V0X3JhdGUocGh5X2Rldi0+cGh5cmVmKTsKPj4+PiArwqDCoMKgIGlmIChyYXRlID09IDE5
MjAwMDAwKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZWZzZWwgPSAwOwo+Pj4+ICvCoMKgwqAgZWxz
ZSBpZiAocmF0ZSA9PSAyMDAwMDAwMCkKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmVmc2VsID0gMTsK
Pj4+PiArwqDCoMKgIGVsc2UgaWYgKHJhdGUgPT0gMjQwMDAwMDApCj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIHJlZnNlbCA9IDI7Cj4+Pj4gK8KgwqDCoCBlbHNlCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiAtRUlOVkFMOwoKWy4uLl0KCj4+PiBBcyB5b3UgbWVudGlvbiB0aGUgZG93bnN0cmVhbSBk
cml2ZXIsIHBsZWFzZSBzZWUgdGhlcmUgYSBzcGVjaWZpYwo+Pj4gY29tbWVudCByZWdhcmRpbmcg
dGhlIDJuZCBjbG9jayBmb3IgT0hDSToKPj4+IC8qCj4+PiAqIFVTQjJQSFkgcHJvdmlkZXMgc2V2
ZXJhbCBjbG9ja3MgdXNlZCBlaXRoZXIgYnkgZWl0aGVyIFVTSEIKPj4+IChFSENJL09IQ0kpLCBP
VEcgb3IgVVNCM0RSLgo+Pj4gKiBJbiBjYXNlIG9mIE9IQ0ksIENNTiBiaXQgbXVzdCBiZSBjbGVh
cmVkIChjbGtvaGNpX2h3KS4gVGhpcyBjbG9jayBpcwo+Pj4gcmVxdWlyZWQgdG8gYWNjZXNzCj4+
PiAqIHRoZSByZWdpc3RlcnMsIHRvIHJlc3VtZSB0aGUgY29udHJvbGxlciBmcm9tIHN1c3BlbmRl
ZCBzdGF0ZS4KPj4+ICogU28gZGVjbGFyZSB0d28gY2xvY2tzLCB0aGUgUExMIHVzZWQgaW4gYWxs
IGNhc2UsIGFuZCB0aGUgT0hDSSBjbG9ja3MKPj4+IHVzZWQgYnkgT0hDSQo+Pj4gKiBjb250cm9s
bGVyLgo+Pj4gKi8KPj4gSXMgdGhpcyB3aGF0IHlvdSBoYXZlIGluIG1pbmQgPwo+IAo+IFllcywg
d2l0aCBvbmUgYWRkaXRpb24sIHBsZWFzZSBzZWUgbmV4dCBjb21tZW50ClsuLi5dCgo+PiAgwqBz
dGF0aWMgaW50IHN0bTMyX3VzYjJwaHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKPj4gIMKgewo+PiAtwqDCoMKgIHN0cnVjdCBjbGtfaW5pdF9kYXRhIGluaXQgPSB7IC5vcHMg
PcKgICZzdG0zMl91c2IycGh5X2NsazQ4X29wcyB9Owo+PiArwqDCoMKgIHN0cnVjdCBjbGtfaW5p
dF9kYXRhIGNsazQ4aW5pdCA9IHsgLm9wcyA9wqAgJnN0bTMyX3VzYjJwaHlfY2xrNDhfb3BzIH07
Cj4+ICvCoMKgwqAgc3RydWN0IGNsa19pbml0X2RhdGEgY2xrY21uaW5pdCA9IHsgLm9wcyA9Cj4+
ICZzdG0zMl91c2IycGh5X2Nsa2Ntbl9vcHMgfTsKPiAKPiBjbGtjbW5pbml0IHNob3VsZCBiZSBh
IGNoaWxkIG9mIGNsazQ4IHdoaWNoIGJhc2ljYWxseSByZXByZXNlbnQgdGhlIFBMTAo+ICg0ODBN
SHopIGFzIGl0IGlzIHN0aWxsIG5lZWRlZCBhcyBwYXJlbnQuIFNlZSBiZWxvdy4KPiAKPiBCVFcs
IG1haW5seSBhIG5pdDogY291bGQgcmVuYW1lIGNsazQ4IHRvIGNsa3BsbCBhbmQgdXBkYXRlIGZy
ZXF1ZW5jeSB0bwo+IDQ4ME0uCgpGaXhlZCBpbiBWMy4KCj4+ICvCoMKgwqAgcGh5X2Rldi0+Y2xr
NDhfaHcuaW5pdCA9ICZjbGs0OGluaXQ7Cj4+ICDCoMKgwqDCoCByZXQgPSBkZXZtX2Nsa19od19y
ZWdpc3RlcihwaHlfZGV2LT5kZXYsICZwaHlfZGV2LT5jbGs0OF9odyk7Cj4+ICDCoMKgwqDCoCBp
ZiAocmV0KQo+PiAgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gZGV2X2Vycl9wcm9iZShwaHlfZGV2
LT5kZXYsIHJldCwgIkZhaWxlZCB0byByZWdpc3RlciA0OAo+PiBNSHogY2xvY2tcbiIpOwo+Pgo+
PiAtwqDCoMKgIHJldCA9IGRldm1fb2ZfY2xrX2FkZF9od19wcm92aWRlcihwaHlfZGV2LT5kZXYs
Cj4+IG9mX2Nsa19od19zaW1wbGVfZ2V0LCAmcGh5X2Rldi0+Y2xrNDhfaHcpOwo+PiArwqDCoMKg
IHBoeV9kZXYtPmNsa2Ntbl9ody5pbml0ID0gJmNsa2NtbmluaXQ7Cj4gCj4gV291bGQgaW5pdGlh
bGl6ZSB3aXRoICh0byBhZGFwdCkgOgo+IAo+ICsgcGh5X2Rldi0+Y2xrY21uX2h3LmluaXQgPSBD
TEtfSFdfSU5JVF9IVyhuYW1lLCAmcGh5X2Rldi0+Y2xrNDhfaHcsCj4gKwkJCQkJICZzdG0zMl91
c2IycGh5X2Nsa2Ntbl9vcHMsIDApOwo+ICsKVGhhdCdzIG5pY2UsIGFsc28gYWRkZWQgdG8gVjMs
IHRoYW5rcyAhCgpbLi4uXQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
