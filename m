Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09482CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 08:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxfbILYNDGVQyHqqmPtcH1X8DmKDO8+GxWZ3N2dNmss=; b=RQdb2vovi0S4oh
	bxwT6TTQR2iVgADiQHwqHkE8kIoEZOs0I7i9oxsbbpFMR7qAbjnGiWCQ56zuC/+00UDgxpIGrRwqu
	fZGVXK7zB9AIO5+j2d75DsKNXwq63Q9vXGMhoRww8YTOEOBdJedWs0jWV6Rzg4tr+V07r85VRbCey
	89G1inwZyslegQA68Xj0xLzqYHo37bxGBlwRHeCr9II4HvV/7wvuuF45IAWZwKLFS3juvoaRKLwGu
	2vtDal7k5RxDtgii5LA4ldss3nIMELi4ajTRGVPlML5UfvY+idVlbAFCzpbDdw6v7hR1sGXSiKStL
	C1flMqK7y6ucJz7VukYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNnhP-00000007iD7-3Mr6;
	Fri, 15 May 2026 08:15:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNnhO-00000007iCn-1cw8
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 08:15:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D137660581;
	Fri, 15 May 2026 08:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1B31C2BCB0;
	Fri, 15 May 2026 08:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778832909;
	bh=6PzZRQQ5+7QSrGyWy5bFF5fda83Kjv6ZTXX6Wia9FjE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rVGcqc32DQbYkM2eHRST48q5KUv4gN+fFt8r4bzXWaxWIKkSuSpZ/aD7beLPoNrF0
	 YU1qbLtvwuMHuUtxZePgtmZHN2rLU4eCFHYkC1sHDgu5k3IytkaSx098P2TJxNu4Sy
	 +QPQyKp7fX5Ccvd3gGsDmZ/9Lml3KEL8Dq1WPCvMiC96cTd4C/wcITePQ9mHW8a7sv
	 7nhEuyGJoo+S44vkfSUnrpeNUlyr4/4vA4VH0ON55zW5gsMc2uUlSXCg8VtCroXZ4x
	 cjhMilV5lp9oFVFaZqm53bF1JDLSce8A1JXMdtr6YQXM5DdgU1w5pLjXFlbY65xr2P
	 ltGRK+M1luQZQ==
Date: Fri, 15 May 2026 10:15:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 1/6] dt-bindings: usb: ci-hdrc-usb2: Document
 nvidia,external-control property
Message-ID: <20260515-lemming-of-enjoyable-blizzard-d32ad9@quoll>
References: <20260511135703.62470-1-clamor95@gmail.com>
 <20260511135703.62470-2-clamor95@gmail.com>
 <CAPVz0n2GkucfHqvgusF=K_KakqaJmZSLP=8VYMyVT5HAVDD_XQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPVz0n2GkucfHqvgusF=K_KakqaJmZSLP=8VYMyVT5HAVDD_XQ@mail.gmail.com>
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

T24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMDg6MzQ6NDVQTSArMDMwMCwgU3Z5YXRvc2xhdiBSeWhl
bCB3cm90ZToKPiDQv9C9LCAxMSDRgtGA0LDQsi4gMjAyNuKAr9GALiDQviAxNjo1NyBTdnlhdG9z
bGF2IFJ5aGVsIDxjbGFtb3I5NUBnbWFpbC5jb20+INC/0LjRiNC1Ogo+ID4KPiA+IERvY3VtZW50
IHRoZSBudmlkaWEsZXh0ZXJuYWwtY29udHJvbCBwcm9wZXJ0eSByZXF1aXJlZCwgZm9yIGV4YW1w
bGUsIGZvcgo+ID4gVVNCIGxpbmVzIGluIEhTSUMgbW9kZSBjb25uZWN0ZWQgdG8gYSBtb2RlbSwg
d2hlcmUgdGhlIG1vZGVtIHJlcXVpcmVzCj4gPiBwcmVjaXNlIGNvbnRyb2wgb3ZlciB0aGUgVVNC
IGJ1cyB0byBwcm9wZXJseSBlbnVtZXJhdGUgYWxsIGl0cyBzdGFnZXMgYW5kCj4gPiBpbnRlcm1l
ZGlhdGUgZGV2aWNlcy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBTdnlhdG9zbGF2IFJ5aGVsIDxj
bGFtb3I5NUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdXNiL2NpLWhkcmMtdXNiMi55YW1sIHwgNyArKysrKysrCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2NpLWhkcmMtdXNiMi55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jaS1oZHJjLXVzYjIueWFtbAo+ID4gaW5kZXggNjkx
ZDZjZjAyYzI3Li5hMTNjMWVmNDlhNTcgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvdXNiL2NpLWhkcmMtdXNiMi55YW1sCj4gPiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2NpLWhkcmMtdXNiMi55YW1sCj4gPiBAQCAt
NzUsNiArNzUsMTMgQEAgcHJvcGVydGllczoKPiA+ICAgICAgdHlwZTogYm9vbGVhbgo+ID4gICAg
ICBkZXByZWNhdGVkOiB0cnVlCj4gPgo+ID4gKyAgbnZpZGlhLGV4dGVybmFsLWNvbnRyb2w6Cj4g
PiArICAgIGRlc2NyaXB0aW9uOgo+ID4gKyAgICAgIEluZGljYXRlcyB0aGF0IHRoZSBjb250cm9s
bGVyIGlzIGNvbmZpZ3VyZWQgZXh0ZXJuYWxseSBhbmQgdGhhdCB0aGUgaG9zdAo+ID4gKyAgICAg
IHNob3VsZCBub3QgYXR0ZW1wdCB0byB0b3VjaCBpdC4gVXN1YWxseSB1c2VkIGJ5IGEgbW9kZW0g
d2hpY2ggcmVxdWlyZXMKPiA+ICsgICAgICBwcmVjaXNlIGJ1cyBjb25maWd1cmF0aW9uLgo+ID4g
KyAgICB0eXBlOiBib29sZWFuCj4gPiArCj4gCj4gV291bGQgc2NoZW1hIG1haW50YWluZXJzIG1p
bmQgaWYgSSBjcmVhdGUgc2VwYXJhdGUgc2NoZW1hIGxpa2UKPiBjaGlwaWRlYSx1c2IyLWlteC55
YW1sIGlzIGhhbmRsZWQ/IEF0IHRoZSBtb21lbnQgY2ktaGRyYy11c2IyIGhvbGRzIGEKPiBtaXhl
ZCBwcm9wZXJ0aWVzIG9mIHNldmVyYWwgU29DIGFuZCBjYW4gY2F1c2UgdW53YW50ZWQvdW5zdXBw
b3J0ZWQKPiBub2RlIGNvbWJpbmF0aW9ucy4KClRoaXMgaXMgYSBnb29kIGlkZWEuIEFsbCBudmlk
aWEgZGV2aWNlcyBhbmQgdGhlaXIgcHJvcGVydGllcyBzaG91bGQgYmUKbW92ZWQgdGhlcmUuCgpC
ZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
