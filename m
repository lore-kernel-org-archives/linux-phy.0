Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC8D1C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 00:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zIVyoB3LLGTyXzLzoS7gdJMdmyFQV8OAHfnx9+YVMQ=; b=QVyneJYd7W0hBz
	k4Jc0ktmMYxllwudMcrCcJhtT3gDXW6D/k0wi7jxjTTk8f50Jydf5PDtPi/JnuqcN83oMYxOyRxvl
	fkUIFl45MtZFde4zpMqxilYddxKReToBFyRtSak7acmlcnPb0vruVU+vglzPpQkeWxxBXVDWA0DpA
	JxgnOCOcV2HqsCDYsH5oHvCkJCPFnD5aUL1if6Axyrwl3m+f4yapINIilM3DIJQE1QblGk7pIvPZW
	0VNnGihXnE/tJZ4cFfhi9N0ItRxQxCN3lmMjIlUNxn2gE/XIqQNiXfATqq1mvoosQ0TeywEj/WBWa
	JQvzZ9m0hIiv6gKq+cjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4wO-00000003GbE-2L8H;
	Thu, 02 Jul 2026 00:06:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4wN-00000003Gb0-0vPe
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 00:06:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5788D6001D;
	Thu,  2 Jul 2026 00:06:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA63C1F000E9;
	Thu,  2 Jul 2026 00:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950762;
	bh=2ucsyRRJrI9ex/hcluclZIldMZXICSV6DnPiAbJVZPY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ThBo3ABZd+qksnOl0BDBG6lt28gn6R2+z6am37gOcWzQwdIv6GzyFq3uUryWzPtCf
	 ZF1EoOlMU1BAPuiUrdW+Le8Fa8l2w7cWPwbIKR5xiDDO970NcpKv49EWTDIJzIC3Sv
	 gxWmwSbqMIvy/uF6DzTUV/8AkjmNaxBeCU79+XCQvDljbxabeLpXUGp/e43naMnjek
	 PQbBEwUAduKmuhLJ+e07gBaYG20aX3Hk+3rTxhGtsLd/eO2rfBNHOI1CrTFOFdyikr
	 R0SDb1YOkt+s8d4ibpVZCIVfNj/M0kIbEsET+Jj5HtOxnBA7IvA3Vw1NOYXXIBDwK2
	 bx/kS5wgov3Sw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 38/38] phy: rockchip: usbdp: Power optimizations
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-38-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-38-e31efbb62d2e@collabora.com>
Date: Thu, 02 Jul 2026 00:06:00 +0000
Message-Id: <20260702000601.AA63C1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIERQLW9ubHkgUEhZIGlu
aXRpYWxpemF0aW9uIHdpbGwgYWx3YXlzIGZhaWwgd2l0aCBhIHRpbWVvdXQgYmVjYXVzZSBgcmtf
dWRwaHlfc3RhdHVzX2NoZWNrKClgIHdhcyBub3QgdXBkYXRlZCB0byB1c2UgdGhlIG5ldyBgbW9k
ZWAgcGFyYW1ldGVyLCBjYXVzaW5nIGl0IHRvIHBvbGwgdW5pbml0aWFsaXplZCBVU0IgUExMcy4K
LS0KCmNvbW1pdCBkZmQyMDJiOWMxNTY1NTkwN2FlOTdlOTM3ZTg1ZTY5YjcyZWIyZTMzCkF1dGhv
cjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cgpw
aHk6IHJvY2tjaGlwOiB1c2JkcDogUG93ZXIgb3B0aW1pemF0aW9ucwoKVGhpcyBwYXRjaCBjaGFu
Z2VzIHRoZSBpbml0aWFsaXphdGlvbiByb3V0aW5lIHRvIHJlcXVlc3QgcG93ZXIgb25seQpmb3Ig
c29mdHdhcmUgcmVxdWVzdGVkIG1vZGVzIHJhdGhlciB0aGFuIGFsbCBoYXJkd2FyZSBzdXBwb3J0
ZWQgbW9kZXMuClRoaXMgcmVkdWNlcyB3YXN0ZWQgcG93ZXIgd2hlbiBjZXJ0YWluIHBvcnRzIGFy
ZSBub3QgaW4gdXNlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
Ywo+IGluZGV4IGQwNTZkYTUzY2IxYzguLjdmOTBmNjY2MDc2YzMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwpbIC4uLiBdCj4gQEAgLTgzNyw3ICs4Mzcs
NyBAQCBzdGF0aWMgaW50IHJrX3VkcGh5X2luaXQoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSkKPiAg
CXVkZWxheSgxKTsKPiAgCj4gIAkvKiAgU3RlcCA1OiBkZWFzc2VydCBjbW4vbGFuZSByc3RuICov
Cj4gLQlpZiAodWRwaHktPmh3X21vZGUgJiBVRFBIWV9NT0RFX1VTQikgewo+ICsJaWYgKG1vZGUg
JiBVRFBIWV9NT0RFX1VTQikgewo+ICAJCXJldCA9IHJrX3VkcGh5X3Jlc2V0X2RlYXNzZXJ0KHVk
cGh5LCAiY21uIik7Cj4gIAkJaWYgKHJldCkKPiAgCQkJZ290byBhc3NlcnRfcmVzZXRzOwoKW1Nl
dmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY2F1c2UgRFAtb25seSBpbml0aWFsaXphdGlvbiB0byBm
YWlsIHdpdGggYSB0aW1lb3V0PwoKQmVjYXVzZSBya191ZHBoeV9zdGF0dXNfY2hlY2soKSB3YXNu
J3QgdXBkYXRlZCB0byB0YWtlIHRoZSBuZXcgbW9kZQpwYXJhbWV0ZXIsIGl0IHN0aWxsIGNoZWNr
cyB1ZHBoeS0+aHdfbW9kZSAmIFVEUEhZX01PREVfVVNCOgoKZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfc3RhdHVzX2NoZWNrKCkgewoJLi4uCglpZiAo
dWRwaHktPmh3X21vZGUgJiBVRFBIWV9NT0RFX1VTQikgewoJCXJldCA9IHJlZ21hcF9yZWFkX3Bv
bGxfdGltZW91dCh1ZHBoeS0+cG1hX3JlZ21hcCwgQ01OX0FOQV9MQ1BMTF9ET05FX09GRlNFVCwK
CS4uLgp9CgpJZiBzb2Z0d2FyZSByZXF1ZXN0cyBEUC1vbmx5IG1vZGUsIHRoZSBVU0IgcmVzZXRz
IGFyZSBzYWZlbHkgbGVmdCBhc3NlcnRlZApoZXJlIGluIHJrX3VkcGh5X2luaXQoKS4KCkhvd2V2
ZXIsIHdoZW4gcmtfdWRwaHlfaW5pdCgpIGxhdGVyIGNhbGxzIHJrX3VkcGh5X3N0YXR1c19jaGVj
aygpLCBpdCB3aWxsCnN0aWxsIHRyeSB0byBwb2xsIHRoZSB1bmluaXRpYWxpemVkIFVTQiBMQ1BM
TCBiZWNhdXNlIGh3X21vZGUgc3RpbGwgc3VwcG9ydHMKVVNCLiBUaGlzIHdpbGwgaW5ldml0YWJs
eSB0aW1lIG91dCBhZnRlciAxMDBtcyBhbmQgY2F1c2UgdGhlIGVudGlyZSBEUAppbml0aWFsaXph
dGlvbiB0byBhYm9ydC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDItcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12OS0wLWUzMWVm
YmI2MmQyZUBjb2xsYWJvcmEuY29tP3BhcnQ9MzgKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
