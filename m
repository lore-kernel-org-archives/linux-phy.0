Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03F79D2D107
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 13:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qN0Ft4+/Zjcn2/1/MhO9Mt9aRD9gPG4VpWhIDZeymQ8=; b=kb2lsDwudjlc0C
	8ApRxrg6WNCF5BFwCRkLBa8I9VFvuiX7YMFro/Ipxv0ii8KqxogAJXvc2orNtZs4GkZBR8Kaa2KXb
	rDedA9/3OB4sKl6KuhnhSDEOZG9LV705mZ9D8i1MzUVL1PfxK1JE5Hk7XnkuyM3U63tmJqbvM67Wz
	WZuUcR7QANhSRcmZhwoqHOEUxDTN3Gb+UlvF/Nr2suwcdqJb/PQNXnAL2ajvWxtZD/vypDeQxcvr0
	sxFxkyvSrmsNCkijJhZv4g/JOPjcFWPe8anrU8eX7gmO9G9idL9VzPSb8hDKsGfVFbDnrVb5ZHtRI
	EMKN3GdvLnqKuLOznP1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfew0-00000007Bsw-2sKv;
	Tue, 13 Jan 2026 13:59:48 +0000
Received: from smtp1.tecnico.ulisboa.pt ([2001:690:2100:1::15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfevy-00000007BsP-1rYs
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 13:59:47 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTP id E745D60020FD;
	Tue, 13 Jan 2026 13:59:44 +0000 (WET)
X-Virus-Scanned: by amavis-2.13.0 (20230106) (Debian) at tecnico.ulisboa.pt
Received: from smtp1.tecnico.ulisboa.pt ([127.0.0.1])
 by localhost (smtp1.tecnico.ulisboa.pt [127.0.0.1]) (amavis, port 10025)
 with LMTP id BgFzxKaSSs0T; Tue, 13 Jan 2026 13:59:42 +0000 (WET)
Received: from mail1.tecnico.ulisboa.pt (mail1.ist.utl.pt [IPv6:2001:690:2100:1::b3dd:b9ac])
	by smtp1.tecnico.ulisboa.pt (Postfix) with ESMTPS id 157BB60020FA;
	Tue, 13 Jan 2026 13:59:42 +0000 (WET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnico.ulisboa.pt;
	s=mail2; t=1768312782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JO4R37mcEoyhSRhm7svRimrluDd63HB0W7nMcvakBb8=;
	b=nIMFDr1+HEkm4OwiWzcVOEr4CgcV1lko/yOAxN/wYpUZTVcKhsJZ1UXTeXAd0UyIk36U9Z
	sTMqPOXMvfbcykhY5X6dqFnrLNrCR9VNAsvtSYlIe6U2Nt4W31p4Z7a8mfATSO5j2OK3kl
	Cl6aln5IgDQdPY67JoxFIYc4VCNPYuklPYIuHdWWD2KH9xaUT6M3mocaIIhrAXSajh60s1
	LmIo+dqzSrQQROLk+osH3cYRCUdVgrxPan8g9I4955PASvXGvjj8br8XTYOonMmMIfIElc
	Yorw9jHL6zSbJCYslIG5eU/3u9JiyKJJ5OJyFzwx08dhFDtJUA3Ennrv8/td9Q==
Received: from [192.168.2.110] (unknown [148.63.39.39])
	(Authenticated sender: ist187313)
	by mail1.tecnico.ulisboa.pt (Postfix) with ESMTPSA id C9BB8360148;
	Tue, 13 Jan 2026 13:59:41 +0000 (WET)
Message-ID: <87364ee8-4cde-49f5-949c-b01674798c37@tecnico.ulisboa.pt>
Date: Tue, 13 Jan 2026 13:59:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] phy: tegra: xusb: Fix ordering issue when switching
 roles on USB2 ports
To: Jon Hunter <jonathanh@nvidia.com>, Mathias Nyman
 <mathias.nyman@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, JC Kuo <jckuo@nvidia.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20251204-diogo-tegra_phy-v1-0-51a2016d0be8@tecnico.ulisboa.pt>
 <20251204-diogo-tegra_phy-v1-3-51a2016d0be8@tecnico.ulisboa.pt>
 <e9f18b0d-6462-43e7-955f-45337914b321@nvidia.com>
 <6a0d379f-d215-4efc-bdd0-c9a74d31614a@nvidia.com>
Content-Language: en-US
From: Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>
In-Reply-To: <6a0d379f-d215-4efc-bdd0-c9a74d31614a@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_055946_769019_C3B63B58 
X-CRM114-Status: GOOD (  21.60  )
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

CgpPbiAxLzEzLzI2IDExOjQ0LCBKb24gSHVudGVyIHdyb3RlOgo+IAo+IE9uIDEzLzAxLzIwMjYg
MTE6MzUsIEpvbiBIdW50ZXIgd3JvdGU6Cj4+Cj4+IE9uIDA0LzEyLzIwMjUgMjE6MjcsIERpb2dv
IEl2byB3cm90ZToKPj4+IFRoZSBjdXJyZW50IGltcGxlbWVudGF0aW9uIG9mIFVTQjIgcm9sZSBz
d2l0Y2hpbmcgb24gVGVncmEgcmVsaWVzIG9uCj4+PiB3aGljaGV2ZXIgdGhlIHByZXZpb3VzIFVT
QiBjb250cm9sbGVyIGRyaXZlciB3YXMgdXNpbmcgdGhlIFBIWSB0byBmaXJzdAo+Pj4gInlpZWxk
IiBpdCBiYWNrIHRvIFVTQl9ST0xFX05PTkUgYmVmb3JlIHRoZSBuZXh0IGNvbnRyb2xsZXIgY29u
ZmlndXJlcwo+Pj4gaXQgZm9yIHRoZSBuZXcgcm9sZS4gSG93ZXZlciwgbm8gbWVjaGFuaXNtIHRv
IGd1YXJhbnRlZSB0aGlzIG9yZGVyaW5nCj4+PiB3YXMgaW1wbGVtZW50ZWQsIGFuZCBjdXJyZW50
bHksIGluIHRoZSBnZW5lcmFsIGNhc2UsIHRoZSBjb25maWd1cmF0aW9uCj4+PiBmdW5jdGlvbnMg
dGVncmFfeGhjaV9pZF93b3JrKCkgYW5kIHRlZ3JhX3h1ZGNfdXNiX3JvbGVfc3dfd29yaygpIGVu
ZCB1cAo+Pj4gcnVubmluZyBpbiB0aGUgc2FtZSBvcmRlciByZWdhcmRsZXNzIG9mIHRoZSB0cmFu
c2l0aW9uIGJlaW5nIEhPU1QtIAo+Pj4gPkRFVklDRQo+Pj4gb3IgREVWSUNFLT5IT1NULCBsZWFk
aW5nIHRvIG9uZSBvZiB0aGVzZSB0cmFuc2l0aW9ucyBlbmRpbmcgdXAgaW4gYQo+Pj4gbm9uLXdv
cmtpbmcgc3RhdGUgZHVlIHRvIHRoZSBuZXcgY29uZmlndXJhdGlvbiBiZWluZyBjbG9iYmVyZWQg
YnkgdGhlCj4+PiBwcmV2aW91cyBjb250cm9sbGVyIGRyaXZlciBzZXR0aW5nIFVTQl9ST0xFX05P
TkUgYWZ0ZXIgdGhlIGZhY3QuCj4+Pgo+Pj4gRml4IHRoaXMgYnkgaW50cm9kdWNpbmcgYSBoZWxw
ZXIgdGhhdCB3YWl0cyBmb3IgdGhlIFVTQjIgcG9ydOKAmXMgY3VycmVudAo+Pj4gcm9sZSB0byBi
ZWNvbWUgVVNCX1JPTEVfTk9ORSBhbmQgYWRkIGl0IGluIHRoZSBjb25maWd1cmF0aW9uIGZ1bmN0
aW9ucwo+Pj4gYWJvdmUgYmVmb3JlIHNldHRpbmcgdGhlIHJvbGUgdG8gZWl0aGVyIFVTQl9ST0xF
X0hPU1Qgb3IKPj4+IFVTQl9ST0xFX0RFVklDRS4gVGhlIHNwZWNpZmljIHBhcmFtZXRlcnMgb2Yg
dGhlIGhlbHBlciBmdW5jdGlvbiBhcmUKPj4+IGNob2ljZXMgdGhhdCBzZWVtIHJlYXNvbmFibGUg
aW4gbXkgdGVzdGluZyBhbmQgaGF2ZSBubyBvdGhlciBiYXNpcy4KPj4+Cj4+PiBUaGlzIHdhcyB0
ZXN0ZWQgb24gYSBUZWdyYTIxMCBwbGF0Zm9ybSAoU21hdWcpLiBIb3dldmVyLCBkdWUgdG8gdGhl
IAo+Pj4gc2ltaWxhcgo+Pj4gYXBwcm9hY2ggaW4gVGVncmExODYgaXQgaXMgbGlrZWx5IHRoYXQg
bm90IG9ubHkgdGhpcyBwcm9ibGVtIGV4aXN0cyAKPj4+IHRoZXJlCj4+PiBidXQgdGhhdCB0aGlz
IHBhdGNoIGFsc28gZml4ZXMgaXQuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGlvZ28gSXZvIDxk
aW9nby5pdm9AdGVjbmljby51bGlzYm9hLnB0Pgo+Pj4gLS0tCj4+PiAgIGRyaXZlcnMvcGh5L3Rl
Z3JhL3h1c2IuYyAgICAgICAgICAgIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAg
ZHJpdmVycy91c2IvZ2FkZ2V0L3VkYy90ZWdyYS14dWRjLmMgfCAgNCArKysrCj4+PiAgIGRyaXZl
cnMvdXNiL2hvc3QveGhjaS10ZWdyYS5jICAgICAgIHwgMTUgKysrKysrKysrKy0tLS0tCj4+PiAg
IGluY2x1ZGUvbGludXgvcGh5L3RlZ3JhL3h1c2IuaCAgICAgIHwgIDEgKwo+Pj4gICA0IGZpbGVz
IGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2IuYyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2Iu
Ywo+Pj4gaW5kZXggYzg5ZGY5NWFhNmNhLi5lMDVjM2YyZDE0MjEgMTAwNjQ0Cj4+PiAtLS0gYS9k
cml2ZXJzL3BoeS90ZWdyYS94dXNiLmMKPj4+ICsrKyBiL2RyaXZlcnMvcGh5L3RlZ3JhL3h1c2Iu
Ywo+Pj4gQEAgLTc0MCw2ICs3NDAsMjkgQEAgc3RhdGljIHZvaWQgCj4+PiB0ZWdyYV94dXNiX3Bh
cnNlX3VzYl9yb2xlX2RlZmF1bHRfbW9kZShzdHJ1Y3QgdGVncmFfeHVzYl9wb3J0ICpwb3J0KQo+
Pj4gICAgICAgfQo+Pj4gICB9Cj4+PiArYm9vbCB0ZWdyYV94dXNiX3VzYjJfcG9ydF93YWl0X3Jv
bGVfbm9uZShzdHJ1Y3QgdGVncmFfeHVzYl9wYWRjdGwgCj4+PiAqcGFkY3RsLCBpbnQgaW5kZXgp
Cj4+PiArewo+Pj4gKyAgICBzdHJ1Y3QgdGVncmFfeHVzYl91c2IyX3BvcnQgKnVzYjIgPSAKPj4+
IHRlZ3JhX3h1c2JfZmluZF91c2IyX3BvcnQocGFkY3RsLAo+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgaW5kZXgpOwo+Pj4gKyAgICBpbnQgcmV0cmllcyA9IDU7Cj4+
PiArCj4+PiArICAgIGlmICghdXNiMikgewo+Pj4gKyAgICAgICAgZGV2X2VycigmdXNiMi0+YmFz
ZS5kZXYsICJubyBwb3J0IGZvdW5kIGZvciBVU0IyIGxhbmUgJXVcbiIsIAo+Pj4gaW5kZXgpOwo+
Pj4gKyAgICAgICAgcmV0dXJuIGZhbHNlOwo+Pj4gKyAgICB9Cj4+PiArCj4+PiArICAgIGRvIHsK
Pj4+ICsgICAgICAgIGlmICh1c2IyLT5yb2xlID09IFVTQl9ST0xFX05PTkUpCj4+PiArICAgICAg
ICAgICAgcmV0dXJuIHRydWU7Cj4+PiArCj4+PiArICAgICAgICB1c2xlZXBfcmFuZ2UoNTAsIDYw
KTsKPj4+ICsgICAgfSB3aGlsZSAocmV0cmllcy0tKTsKPj4+ICsKPj4+ICsgICAgZGV2X2Vycigm
dXNiMi0+YmFzZS5kZXYsICJ0aW1lZCBvdXQgd2FpdGluZyBmb3IgVVNCX1JPTEVfTk9ORSIpOwo+
Pj4gKwo+Pj4gKyAgICByZXR1cm4gZmFsc2U7Cj4+PiArfQo+Pgo+Pgo+PiBUaGlzIHBhdGNoIGlz
IGNhdXNpbmcgdGhlIGZvbGxvd2luZyBidWlsZCBlcnJvciB0b2RheSB3aXRoIC1uZXh0IC4uLgo+
IAo+IFNvcnJ5IHRoaXMgaXMgbm90IGluIC1uZXh0LCBJIGhhZCBqdXN0IGFwcGxpZWQgbG9jYWxs
eSBvbiB0b3AhCj4gCj4+ICAgIE1PRFBPU1QgTW9kdWxlLnN5bXZlcnMKPj4gRVJST1I6IG1vZHBv
c3Q6ICJ0ZWdyYV94dXNiX3VzYjJfcG9ydF93YWl0X3JvbGVfbm9uZSIgW2RyaXZlcnMvdXNiLyAK
Pj4gaG9zdC8geGhjaS10ZWdyYS5rb10gdW5kZWZpbmVkIQo+Pgo+PiBUaGUgYWJvdmUgZnVuY3Rp
b24gc3ltYm9sIG5lZWRzIHRvIGJlIGV4cG9ydGVkLgoKWW91J3JlIHJpZ2h0LCB0aGFua3MgZm9y
IGNhdGNoaW5nIHRoaXMuIEknbGwgZml4IGl0IGluIHYyLgoKPiAKPiBOb25ldGhlbGVzcyB0aGlz
IG5lZWRzIHRvIGJlIGZpeGVkLgo+IAo+IEpvbgo+IAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
