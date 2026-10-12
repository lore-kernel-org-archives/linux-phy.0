Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C17C4CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbNdHjpmDqYt+zYFZtnMcgCbuSDOtE3f8xF7TJkFDsk=; b=ozsrlzX9RGYnjb
	cnURvITvXXtgdZIJM99wBvTrYYkURFTW88zt55q/9O2Ar3sgT0neHMUoo1nhfLPfjdOwjMLFSIJ3K
	VC2IUvRpgcY9la9pnP+LccMKuZ3H/29KEWudF9yeEKH7yLMqxwgZ6cjLA/w/o6ot0q0H54+779vT0
	amMOW/RD9d05orfyGMysGB9MiEmx6fj8x+XIKqdml4zWcPv+D5wWD8PWwbgjVMJzVf/0BlrTafyH1
	s659gmLAXxkwwx6HHaVBObW9ULYA9DcXCWOyXnBvfcTfGRqtLKdga2V5KwEK5W/xsW8pQxqx1ufpO
	9/U4GuMyLfTHvUb6OhuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFdM-0000000AWNL-0TPf;
	Mon, 12 Oct 2026 13:00:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGFdJ-0000000AWM4-16NI
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:00:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C3CCD44863;
	Mon, 12 Oct 2026 13:00:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55F911F0089B;
	Mon, 12 Oct 2026 12:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791810000;
	bh=nU5zXdp4N0xFhenVIL2uwUzBmYngblLRRRvslYmnWyA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=edjxurcrsnfw+NLahQNJV82rFIsgNG7Y4jvukMKej9ftAbenljtDpnSzcWQuKkZB6
	 srQ+u/FBCJozG0s57ySYxFCnyaVHoDVD1hhyZ26dRw9VvoWNSoNJ93mCXtIltn/ISN
	 N/TWEQhEabWi9r/tg0/yXulWOMg9nzWgH/fno7nX4m/NdagOQH0Hs9PaP/U+4A15be
	 cEt5aDSKMDFEaRl4RsYnxlfHtf9p/CVygP+E8euC8M9km0HBbHJsTOZiNwZ0S63OtM
	 5wfCGDpxVCvACuhyiaozBLnK3KrIMaUEAOV2o0HihzkdcOKBPzYVfKyqJ/TZWCCoL1
	 D4+xwi53q9U+w==
Date: Mon, 12 Oct 2026 18:29:52 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
	kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, zhongling0719@126.com
Subject: Re: [PATCH v8 3/4] phy: ti-pipe3: Fix EPROBE_DEFER handling for
 clock  resources
Message-ID: <aszY8qjMRVOjaPLp@debian>
References: <20260909122630.1313205-1-zenghongling@kylinos.cn>
 <20260909122630.1313205-4-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909122630.1313205-4-zenghongling@kylinos.cn>
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

T24gV2VkLCBTZXAgMDksIDIwMjYgYXQgMDg6MjY6MjlQTSArMDgwMCwgSG9uZ2xpbmcgWmVuZyB3
cm90ZToKPiB0aV9waXBlM19nZXRfY2xrKCkgaGFzIHR3byBpc3N1ZXMgd2l0aCAtRVBST0JFX0RF
RkVSIGVycm9yIGhhbmRsaW5nOgo+IAo+IDEuIFdoZW4gZGV2bV9jbGtfZ2V0KCkgZm9yIHN5c2Ns
ayBmYWlscywgdGhlIGZ1bmN0aW9uIHJldHVybnMgLUVJTlZBTAo+ICAgIGluc3RlYWQgb2YgcHJv
cGFnYXRpbmcgdGhlIGFjdHVhbCBlcnJvciBjb2RlLiBUaGlzIG1hc2tzIC1FUFJPQkVfREVGRVIK
PiAgICB0byAtRUlOVkFMLCBicmVha2luZyB0aGUgcHJvYmUgZGVmZXJyYWwgbWVjaGFuaXNtIGFu
ZCBjYXVzaW5nIHBlcm1hbmVudAo+ICAgIGRyaXZlciBpbml0aWFsaXphdGlvbiBmYWlsdXJlIG9u
IHN5c3RlbXMgd2l0aCBub24tZGV0ZXJtaW5pc3RpYyBwcm9iZQo+ICAgIG9yZGVyaW5nLgo+IAo+
IDIuIEZvciBTQVRBIFBIWSByZWZjbGssIHRoZSBmdW5jdGlvbiBpZ25vcmVzIGFsbCBlcnJvcnMg
dG8gc3VwcG9ydCBvbGRlcgo+ICAgIERUQnMgbWlzc2luZyB0aGUgcmVmY2xrIHByb3BlcnR5LiBI
b3dldmVyLCB0aGlzIGluY29ycmVjdGx5IGlnbm9yZXMKPiAgICAtRVBST0JFX0RFRkVSIGFzIHdl
bGwsIGNhdXNpbmcgdGhlIGRyaXZlciB0byBwcm9jZWVkIHdpdGhvdXQgd2FpdGluZwo+ICAgIGZv
ciB0aGUgY2xvY2sgcHJvdmlkZXIgdG8gYmVjb21lIGF2YWlsYWJsZS4KPiAKPiBGaXggYm90aCBp
c3N1ZXM6Cj4gLSBSZXR1cm4gUFRSX0VSUihwaHktPnN5c19jbGspIGluc3RlYWQgb2YgLUVJTlZB
TCB0byBwcm9wYWdhdGUgYWxsCj4gICBlcnJvciBjb2RlcyBpbmNsdWRpbmcgLUVQUk9CRV9ERUZF
Ugo+IC0gVXNlIGRldm1fY2xrX2dldF9vcHRpb25hbCgpIGZvciBTQVRBIHJlZmNsayB0byBoYW5k
bGUgb3B0aW9uYWwKPiAgIGNsb2NrcyB3aGlsZSBwcm9wYWdhdGluZyAtRVBST0JFX0RFRkVSIGFu
ZCBvdGhlciBlcnJvcnMKPiAKPiBGaXhlczogYTcwMTQzYmJlZjZiICgiZHJpdmVyczogcGh5OiB1
c2IzL3BpcGUzOiBBZGFwdCBwaXBlMyBkcml2ZXIgdG8gR2VuZXJpYyBQSFkgRnJhbWV3b3JrIikK
PiBGaXhlczogN2YzMzkxMmQyOTc4ICgicGh5OiB0aS1waXBlMzogRml4IFNBVEEgYWNyb3NzIHN1
c3BlbmQvcmVzdW1lIikKPiBTdWdnZXN0ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFu
aXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSG9u
Z2xpbmcgWmVuZyA8emVuZ2hvbmdsaW5nQGt5bGlub3MuY24+CgpSZXZpZXdlZC1ieTogTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4K
Ci0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/g
rrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
