Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 417A3C5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nJnSVuAhuCrOnMd0WARomveBbf0bRjTLp9rWxaVCcU=; b=ad0jf8d0CAB0LA
	rDkJDneM3UMvmTRE2YTCpCrxkjilnoNwNd7UtM1Yv6adXqXyJfAxg4cgeCMWI6rnBPbxBuK9pi5hS
	rJrpLKW3heHHTYlaVlPEHxWrAVCVQAnDq8p790jnWShQ5KQKFj8S+Bem5fMfmmk9+Kvl4Axyf68Yx
	yk1Tly6bYLuL6yZubZOKaJTNB6M0yWQO9ZTTWKKsh9HGtkgP8zkqhDfqTobxSzpAcuF9+Uzzze15E
	2aMoQpZA53qfU0H75ZB3BFz1BgcbYt/L75+7zR1HNvXef3asH+Kyq2iZ8jEcLfwhHoWS/ScvY56M6
	90okPinE8xCH30ZgclgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5f1-0000000Fozg-2h6P;
	Wed, 12 Aug 2026 09:54:11 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ez-0000000FozO-2SQl
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:54:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2DCDA4173C;
	Wed, 12 Aug 2026 09:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9671A1F00A3A;
	Wed, 12 Aug 2026 09:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786528449;
	bh=L7qBPA9QkUykans0mVcNSCRK+TqAYzR3MPKSlgnTPcc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MIT7XwlxRKSLVtazbPaV1UK4q0BCc0wa9VmRe4ZF9b6NGmy+fh4rZgq0ZsYA6zOPI
	 EH3I+WEH3Qw+ktXbaBX+yihkMDN0R0TTvGt0fMruQuwZsql3R/dLDt+uvRfp+/GkbW
	 DNrSmSeQCe4k95OQDN2PFy6x6rsiL3z2RWrC2f74rLrS9cZz56XN3ARaGlhFVQnUY7
	 d2NB5iSORAqt5OvWplsnYcAtHW7BA8umLSzdgCPbHMAQC59nrstu9R8MpXMURZ6RvK
	 7UUTPbtH0tq01A4rgaAE50JrPqzsYZjY86fy8AVYEgWV6AAdGLwg51GqGTwjLhgaP7
	 AtYw8DjlDcSSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 12/14] arm64: dts: qcom: ipq5332: Enable USB
 Super-Speed PHY
To: "George Moussalem" <george.moussalem@outlook.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, vkoul@kernel.org
In-Reply-To: <20260812-ipq5018-usb3-v2-12-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-12-8f355d7ff0ef@outlook.com>
Date: Wed, 12 Aug 2026 09:54:08 +0000
Message-Id: <20260812095408.9671A1F00A3A@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIEluY29ycmVjdCBEZXZp
Y2UgVHJlZSBDb21wYXRpYmxlIFN0cmluZwotIFtMb3ddIE1pc3NpbmcgVVNCIENvbnRyb2xsZXIg
UEhZIFJlZmVyZW5jZSAvIERldmljZSBUcmVlIEJ1aWxkIEZhaWx1cmUKLS0KCi0tLSBQYXRjaCBb
MTJdOiBbUEFUQ0ggdjIgMTIvMTRdIGFybTY0OiBkdHM6IHFjb206IGlwcTUzMzI6IEVuYWJsZSBV
U0IgU3VwZXItU3BlZWQgUEhZIC0tLQpjb21taXQgMzg3NmVkNzJhMWE3ZmFmN2FjNWQwZjc1ZWVk
MzA4ZDJjMTA4NWVjNgpBdXRob3I6IFByYXZlZW5rdW1hciBJIDxxdWljX2lwa3VtYXJAcXVpY2lu
Yy5jb20+Cgphcm02NDogZHRzOiBxY29tOiBpcHE1MzMyOiBFbmFibGUgVVNCIFN1cGVyLVNwZWVk
IFBIWQoKVGhpcyBjb21taXQgZW5hYmxlcyBVU0IgU3VwZXItU3BlZWQgUEhZIHN1cHBvcnQgb24g
dGhlIElQUTUzMzItUkRQNDY4CmJvYXJkLiBJdCBvdmVycmlkZXMgdGhlIFBDSWUgUEhZIGNvbXBh
dGlibGUgc3RyaW5nIHNvIHRoZSBjb21ibyBQSFkgaXMKaGFuZGxlZCBieSB0aGUgVVNCMyBQSFkg
ZHJpdmVyLCBhbmQgc2V0cyB0aGUgcmVxdWlyZWQgY2xvY2tzIGFuZCByZXNldHMuCgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vaXBxNTMzMi1yZHA0NjguZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9xY29tL2lwcTUzMzItcmRwNDY4LmR0cwo+IGluZGV4IDI1YTcwY2Q4
ODRjMDMuLjE2NGY5YTlhNmM3NTcgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9x
Y29tL2lwcTUzMzItcmRwNDY4LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9p
cHE1MzMyLXJkcDQ2OC5kdHMKWyAuLi4gXQo+IEBAIC0xMDAsMyArMTAwLDIyIEBAICZ1c2JwaHkw
IHsKPiAgCj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gKwo+ICsvKiB0aGlzIGNvbWJvIFBI
WSBzdXBwb3J0cyBQQ0llIGFuZCBVU0IzICovCj4gKyZwY2llMF9waHkgewo+ICsJY29tcGF0aWJs
ZSA9ICJxY29tLGlwcTUwMTgtdW5pcGh5LXVzYi1zcy1waHkiOwoKW1NldmVyaXR5OiBIaWdoXQpE
b2VzIHRoaXMgY29tcGF0aWJsZSBzdHJpbmcgdXNlIHRoZSB3cm9uZyBTb0MgdmVyc2lvbiBmb3Ig
dGhpcyBib2FyZD8KCkJlY2F1c2UgdGhpcyBpcyBhbiBJUFE1MzMyIGJvYXJkLCB1c2luZyB0aGUg
SVBRNTAxOCBjb21wYXRpYmxlIHN0cmluZyB3aWxsCmNhdXNlIHRoZSBwaHktcWNvbS11bmlwaHkt
dXNiLXNzLTIydWxsIGRyaXZlciB0byB3cml0ZSB0aGUgSVBRNTAxOAppbml0aWFsaXphdGlvbiBz
ZXF1ZW5jZSAodGFyZ2V0aW5nIG9mZnNldHMgbGlrZSAweGE4KSBpbnN0ZWFkIG9mIHRoZSBjb3Jy
ZWN0CklQUTUzMzIgc2VxdWVuY2UgKHRhcmdldGluZyAweDdDNCBhbmQgMHg3RTgpLiAKClRoaXMg
d2lsbCBjYXVzZSBpbml0aWFsaXphdGlvbiB0byBmYWlsIGFuZCBtYXkgY29ycnVwdCB1bnJlbGF0
ZWQgcmVnaXN0ZXJzLgoKPiArCj4gKwljbG9ja3MgPSA8JmdjYyBHQ0NfUENJRTNYMV9QSFlfQUhC
X0NMSz4sCj4gKwkJIDwmZ2NjIEdDQ19VU0IwX1BIWV9DRkdfQUhCX0NMSz4sCj4gKwkJIDwmZ2Nj
IEdDQ19VU0IwX1BJUEVfQ0xLPjsKPiArCj4gKwlyZXNldHMgPSAgPCZnY2MgR0NDX1VTQjBfUEhZ
X0JDUj47Cj4gKwo+ICsJcWNvbSxwaHktdXNiLW11eC1zZWwgPSA8JnRjc3IgMHgxMDU0MD47Cj4g
Kwo+ICsJdmRkLXN1cHBseSA9IDwmcmVndWxhdG9yX2ZpeGVkXzVwMD47Cj4gKwo+ICsJL2RlbGV0
ZS1wcm9wZXJ0eS8gbnVtLWxhbmVzOwo+ICsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKCltT
ZXZlcml0eTogTG93XQpJcyBhbiBvdmVycmlkZSBmb3IgdGhlIFVTQiBjb250cm9sbGVyIG5vZGUg
bWlzc2luZyBmcm9tIHRoaXMgZmlsZT8KCkFuIGVhcmxpZXIgcGF0Y2ggaW4gdGhpcyBzZXJpZXMg
YWRkcyBwaHlzID0gPCZ1c2JwaHkwPiwgPCZ1c2JwaHkxPjsgdG8KaXBxNTMzMi5kdHNpLCBidXQg
dXNicGh5MSBpcyBuZXZlciBkZWZpbmVkLiBUaGlzIHdpbGwgY2F1c2UgYSBkZXZpY2UgdHJlZQpi
dWlsZCBmYWlsdXJlIGR1ZSB0byB0aGUgdW5yZXNvbHZlZCBwaGFuZGxlLgoKU2hvdWxkIHRoaXMg
Ym9hcmQgZmlsZSBvdmVycmlkZSB0aGUgcGh5cyBwcm9wZXJ0eSBpbiB0aGUgJnVzYiBub2RlIHRv
IGxpbmsKdGhpcyBuZXdseSBjb25maWd1cmVkICZwY2llMF9waHkgY29tYm8gUEhZLCByZXBsYWNp
bmcgdGhlIG5vbi1leGlzdGVudAo8JnVzYnBoeTE+IHJlZmVyZW5jZT8gCgpXaXRob3V0IHRoaXMg
bGluaywgdGhlIFVTQiBjb250cm9sbGVyIHdpbGwgbm90IHVzZSB0aGUgY29tYm8gUEhZIGFuZCB3
aWxsCnJlbWFpbiBkZWdyYWRlZCB0byBIaWdoLVNwZWVkIDIuMC4KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MTItaXBxNTAxOC11
c2IzLXYyLTAtOGYzNTVkN2ZmMGVmQG91dGxvb2suY29tP3BhcnQ9MTIKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
