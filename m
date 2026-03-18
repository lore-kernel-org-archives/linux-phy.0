Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE98103E197
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 15:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ndlWfI5r6cVfOLzWfrV+mxdHhkrFuSSu1MGASlKDS8A=; b=SwIWV6JcYlJw7o
	ftNUK2bzJdSHR/NnFNeGVH+xBqwmOo8RYKUghyRG1zaIzzQrub8d7dXpNe9EHdx/mD5OngmzZIb0M
	IXksNkGDiDTTT3hN12ZETgiwoAgslcgBvStIHxC8f9fOXDhCgNb7hLYMJpbE4VrT95m40jIi4da3Z
	xlp0tRUXG4sPm+in0xjPWn1NuQjT02FKlZ+jE6vusrWdKJMnvr3Jej/DNyh6F1ch1mBADoHiS6qp5
	VRaxDvMdMo3RZXaL/cFGR4ydW6HBzpfCJkQHbEyWn+PA7TGEKApcOn63XQeKaEpCZH8VG6Al6/90R
	6K8NhTRsAog1K32yQZ3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2t7o-00000008kuw-0fmJ;
	Wed, 18 Mar 2026 15:48:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2t7m-00000008kuq-24aK
	for linux-phy@lists.infradead.org;
	Wed, 18 Mar 2026 15:47:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9EBB460053;
	Wed, 18 Mar 2026 15:47:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB980C19421;
	Wed, 18 Mar 2026 15:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773848877;
	bh=RTyfBxkZwbvXmv5eVw/ACzMIZeFuso5CWjPNp8sZMvI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=A9llyZlQ7EpMKH9s6UnF4vpcRhZ0687nFqv66OO3c/3VvMtOLYwZdH8rPIaU65kZ8
	 v3q1RQIwZITvdCLUKcGfw/FbvqwW4QNRU/JAiQnA9NuTkAHVp0GxxgaDQtOJLKLA8+
	 6t/rBs1AiXHBcL0vZdRkHZrIu5Jh6JxeGuW66ATE2ZhWJFCmCq7/cc7PFQ6oWcNjSv
	 rUTJGjCPg0477zsXKVlUIh4L2tndc1NkhG10oeBg0pEvb71CWvkM/ODj1v+OY6z6Ia
	 6elH/eNJ8Ds1WF5KI7DcGKDemTHUNFmji/0ToymhDicguLHNLFh392bmYa9PmG3vP7
	 UaOF229wyiraQ==
Message-ID: <baa40d8c-cd0e-4661-b951-fe992c8e96bd@kernel.org>
Date: Wed, 18 Mar 2026 15:47:53 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <LVgLN97iqkeyLxlaeg0ynzL1KDsmCLzzvTmrRhlZ3BP3AWB1hVEjhG4fu2CdoVrCVOpAlemwqN7mC_0P-fCVdg==@protonmail.internalid>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
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

T24gMTgvMDMvMjAyNiAxNTowNywgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMy8xOC8yNiAx
NDoxNywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPj4gT24gMTgvMDMvMjAyNiAxMDoxNSwgTmVp
bCBBcm1zdHJvbmcgd3JvdGU6Cj4+Pj4gK8KgwqDCoCAvKgo+Pj4+ICvCoMKgwqDCoCAqIHBoeV9j
b25maWd1cmVfb3B0c19taXBpX2RwaHkubGFuZXMgc3RhcnRzIGZyb20gemVybyB0bwo+Pj4+ICvC
oMKgwqDCoCAqIHRoZSBtYXhpbXVtIG51bWJlciBvZiBlbmFibGVkIGxhbmVzLgo+Pj4+ICvCoMKg
wqDCoCAqCj4+Pj4gK8KgwqDCoMKgICogVE9ETzogYWRkIHN1cHBvcnQgZm9yIGJpdG1hc2sgb2Yg
ZW5hYmxlZCBsYW5lcyBhbmQgcG9sYXJpdGllcwo+Pj4+ICvCoMKgwqDCoCAqIG9mIHRob3NlIGxh
bmVzIHRvIHRoZSBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5IHN0cnVjdC4KPj4+PiArwqDC
oMKgwqAgKiBGb3Igbm93IHRha2UgdGhlIHBvbGFyaXRpZXMgYXMgemVybyBhbmQgdGhlIHBvc2l0
aW9uIGFzIGZpeGVkCj4+Pj4gK8KgwqDCoMKgICogdGhpcyBpcyBmaW5lIGFzIG5vIGN1cnJlbnQg
dXBzdHJlYW0gaW1wbGVtZW50YXRpb24gbWFwcyBvdGhlcndpc2UuCj4+Pj4gK8KgwqDCoMKgICov
Cj4+Pgo+Pj4gVGhpcyBpcyB3cm9uZyBzaW5jZSB5b3UgbG9vc2UgdGhlIGxhbmVzIG1hcHBpbmcg
ZGVmaW5lZCBpbiBEVCwgd2hpY2ggaXMgc3RpbGwgaW4gQ0FNU1MKPj4+IGJ1dCBpcyBhIFBIWSBw
cm9wZXJ0eS4gVGhlIGxhbmVzIGxheW91dCBpcyBub3QgYSBwcm9wZXJ0eSBvZiB0aGUgQ1NJIGNv
bnRyb2xsZXIsCj4+PiBDU0kgY29udHJvbGxlciBvbmx5IG5lZWQgdG8ga25vdyB0aGUgbGFuZXMg
Y291bnQsIGFuZCBub3QgdGhlIGxheW91dC4KPj4KPj4gTGFuZSBsYXlvdXQgaXMgYSBQSFkgY29u
Y2VybiBidXQsIHRoZSBQSFkgQVBJIGdpdmVzIHVzIHBoeV9jb25maWd1cmVfb3B0c19taXBpX2Rw
aHkgd2hpY2ggc2hvdWxkIGJlIGV4dGVuZGVkIHRvIHByb3ZpZGUgbGF5b3V0IGFuZCBwb2xhcml0
eS4gVGhpcyB3b3VsZCB0aGVuIGJlIG9mIGJlbmVmaXQgdG8gbW9yZSB0aGFuIGp1c3QgcWNvbS9j
YW1zcy4KPiAKPiBXaHkgPyB0aGUgb25seSBjb25jZXJuIGJldHdlZW4gYSBjb250cm9sbGVyIGFu
ZCBhIFBIWSBpcyB0aGUgbGFuZSBjb3VudCB0byBjYWxjdWxhdGUgdGhlIGJhbmR3aWR0aCwgdGhl
IGFjdHVhbCBwaW4gbGF5b3V0IGlzIGNlcnRhaW5seSBub3QgYSBjb250cm9sbGVyIGNvbmNlcm4u
CgpDb250cm9sbGVycyBhbHJlYWR5IGdldCB0aGUgbGFuZSBjb3VudCBieSB3YXkgb2YgZGF0YS1s
YW5lcyA9IDx4IHkgeiBxPiAKb3IgPHggeT4gb3IgPHg+IGlmIHdlIGRpZG4ndCBkbyB0aGF0IHdl
IHdvdWxkIG5lZWQgdG8gc3BlY2lmeSB0aGUgCmRhdGEtbGFuZXMgaW4gdGhlIGNvbnRyb2xsZXIg
YW5kIGFnYWluIGluIHRoZSBQSFkuCgo+Pgo+PiBSaWdodCBub3cgbm9uZSBvZiB0aGUgQ0FNU1Mg
dXNlcnMgZm9yIHRoaXMgZHJpdmVyIGRlcGVuZCBvbiBhbnkgb3RoZXIgbWFwcGluZyBhbmQgSSBw
cm9wb3NlIGEgc2VwYXJhdGUgc2VyaWVzIHRvIGZpeCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9k
cGh5IHJhdGhlciB0aGFuIGludHJvZHVjZSBkYXRhLWxhbmVzIHRvIERQSFkuCj4gCj4gTm9uZSBv
ZiB0aGUgdXBzdHJlYW0gdXNlcnMgb2YgY2Ftc3MuCgpObywgd2UgYXJlIGVzdGFibGlzaGluZyBm
cm9tIHgxIHVzZSBvZiBzdGFuZGFyZCBkcml2ZXJzL3BoeS4gTmV3IHVzZXJzIAp3aWxsIGRvIGl0
IHRoaXMgd2F5LiBUaGUgcG9zdGVkIGR0c2kgZm9yIHRoZSBsYXB0b3BzIGNhbiB1c2UgdGhlIGxp
bmVhciAKbGFuZSBsYXlvdXQgYW5kIGRlZmF1bHQgcG9sYXJpdGllcy4KCkluIGEgZm9sbG93IG9u
IHNlcmllcyB3ZSBjYW4gZXh0ZW5kIHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkgdG8gCnBh
cnNlIGRhdGEtbGFuZXMgPSA8PiBpbnRvIGNvdW50IGFuZCBtYXNrLCB0byB0aGUgYmVuZWZpdCBv
ZiBhbnkgdXNlciBvZiAKcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeS4KClNpbmNlIHRoYXQg
d2lsbCB0b3VjaCBtb3JlIHRoZW4gcWNvbSBzcGVjaWZpYyBzdHVmZiBhbmQgd2lsbCB0b3VjaCBh
dCAKbGVhc3QgdHdvIHN1YnN5c3RlbXMsIHRoYXQgc2hvdWxkIGJlIGl0cyBvd24gc2VwYXJhdGUg
c2VyaWVzLgoKPiBUaGUgcHJvYmxlbSBpcyBldmVuIGxhcmdlciwgYXMgeW91IHJlcGxpZWQgaW4g
WzFdLCB0aGUgY3NpcGh5IGlzIHN0aWxsIGV4cG9zZWQgYXMgYSBtZWRpYSBlbGVtZW50IGZyb20g
dGhlIENBTVNTIGRyaXZlciwgdGhpcyBtZWFucyB0aGlzIGRyaXZlciBpcyBub3QgY29tcGxldGUs
Cj4gaXQgc2hvdWxkIGJlIGEgbWVkaWEgZHJpdmVyIGVudGlyZWx5IHdpdGggZXZlbnR1YWxseSBh
biBpbnRlcm5hbCBQSFkgYXV4IGRyaXZlciwgYnV0IHRoaXMgd291bGQgYmUgZW50aXJlbHkgaW1w
bGVtZW50YXRpb24gc3BlY2lmaWMuCj4gCj4gRWl0aGVyIHRoZSBQSFkgaXMgc3RhbmRhbG9uZSBh
bmQgdGhlIFBIWSBjb25zdW1lciBvbmx5IGNhbGxzIHBoeV9vcGVuL2luaXQvY29uZmlndXJlL3Bv
d2VyX29uL3Bvd2VyX29mZi9leGl0LCBvdGhlcndpc2UgaXQncyBub3QgYSBmdWxseSBzdGFuZGFs
aW5lIFBIWSBidXQgYSBjb21wb3NpdGUgZGV2aWNlIGxpa2UgaGVyZS4KClRoaXMgaXMgbm90IGEg
Y29tcG9zaXRlIGRldmljZSBhbnkgbW9yZSB0aGFuIHRoZSBleGlzdGluZyB1cHN0cmVhbQppbXBs
ZW1lbnRhdGlvbnMgd2hpY2ggZm9sbG93IHRoZSBzYW1lIG1vZGVsOgoKLSBDYWRlbmNlIENTSTJS
WCArIENhZGVuY2UgRFBIWSAoVEkgSjcyMUUvQU02MkEpCi0gUm9ja2NoaXAgcmtpc3AxICsgcGh5
LXJvY2tjaGlwLWlubm8tY3NpZHBoeQoKQm90aCB1c2UgcGh5cyA9IDwmcGhhbmRsZT4sIHRoZSBt
ZWRpYSBkcml2ZXIgbWFuYWdlcyBWNEwyIGVuZHBvaW50cwphbmQgbGFuZSBjb3VudHMsIHRoZSBQ
SFkgZHJpdmVyIGhhbmRsZXMgdGhlIGVsZWN0cmljYWwgbGF5ZXIgdmlhCnBoeV9jb25maWd1cmUo
KS4KClRvIHRoaXMgbGlzdCB3ZSB3aWxsIGFkZCBxY29tIGNhbXNzLCB0aGVyZSdzIG5vdGhpbmcg
ZXhvdGljIGJlaW5nIHByb3Bvc2VkLgoKPiBJIHByb3Bvc2UgdGhhdCB5b3Ugd3JpdGUgYSBwcm9w
ZXIgbWVkaWEgZHJpdmVyIGZvciB0aGUgcWNvbSBjc2lwaHksIHdoaWNoIGV2ZW50dWFsbHkgc3Bp
bnMgYSBQSFkgZHJpdmVyIGFzIGFuIGF1eCBkZXZpY2UuCgpOb25lIG9mIHRoZXNlIFNvQyBELVBI
WXMgYXJlIHdyaXR0ZW4gYXMgVjRMMiBtZWRpYSBkcml2ZXJzIHRoYXQgc3Bhd24gCmF1eGlsaWFy
eSBkZXZpY2VzLiBUaGV5IGFsbCB1c2UgdGhlIHBoeXMgPSA8JnBoYW5kbGU+IG1vZGVsLiBUaGUg
bWVkaWEgCmRyaXZlciBtYW5hZ2VzIHRoZSBWNEwyIGVuZHBvaW50cyBhbmQgbGFuZSBjb3VudHMs
IHBhc3NpbmcgdGhlIApjb25maWd1cmF0aW9uIGRvd24gdmlhIHBoeV9jb25maWd1cmVfb3B0c19t
aXBpX2RwaHkuCgpJIGp1c3QgZG9uJ3Qgc2VlIHdoYXQgaXMgc28gc3BlY2lhbCBhYm91dCBDQU1T
UyB0aGF0IGl0IG5lZWRzIHRvIGhhdmUgCml0cyBvd24gc3BlY2lhbCBQSFkgaW1wbGVtZW50YXRp
b24uIGRyaXZlcnMvcGh5IHRoZSBzdGFuZGFyZCBBUEkgYW5kIApzcGVjaWZpY2F0aW9uIG9mIGRh
dGEtbGFuZXMgZXRjIGluIHRoZSBjb250cm9sbGVyIHNlZW1zIHByZXR0eSAiYm9nIApzdGFuZGFy
ZCIuCgotLS0KYm9kCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
