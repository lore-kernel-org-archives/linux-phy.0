Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B27BC5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 13:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNrRolmU6OXvY87zUy8fpSG3xfFaxUWAQxcLfemETA8=; b=QT/k77JdLLpAvI
	Y7+vZlI19/52PCw7MbbgJU4gI0h0S8ApOSHYILOvi9+4ZKVhtdajINZ/bsggG8SyBv0FcbRFpjN6p
	0oWEWTuSJ+L3P44S/nExriLcOEhv3lV9XcLHjoBsxfV4rdLnuilbQoh0wOIifQm/mpcurWd5oagBr
	LqphzSqd3qXdE2rq6hft18/EJLUXwInFV9IkD9jYbxIcTdiMMNWUo3Y45aNW7hmpnqtxUils06PK0
	S8WcCP1y22+mHFNgxLKsZ//ioS7weZhjWHG4EAUZiMXF/MNL2rAk3PUgC6r/lsTf4jO5tLOhaQ/aO
	7M8IqueD0yza1Ca8xdvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu99D-0000000GItN-1F3W;
	Wed, 12 Aug 2026 13:37:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu99B-0000000GIt7-0bFT
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 13:37:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8A6A543935;
	Wed, 12 Aug 2026 13:37:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49A681F000E9;
	Wed, 12 Aug 2026 13:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786541852;
	bh=mmpa4SQ/S2+nzVrwZJj7fMxCvYpLJfj65tubzeMPmR0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SlAemjX0teJrQoQ1IvCgZeC6VPVP5v2JF5xrZgg7a//qzo/g4rxNWlS8mk3a3YROb
	 +PIMerJhk35yN3f6oSqQB6tRdJTXl1McKnO0CN6wwLUIW+YGoMJql19GrMYesopajM
	 3roaGqvEzzpw+Dj88J0sGT5eGP7Mv3YfSGker/O6TWe8PjphkvfJ/qAX/Ab0HtL3he
	 RotmEnQx2CyGPRlw1683Etri6IVhti6SsrnhvALz+hjfGo6kFdvsT4+kjV4jOXe+EQ
	 47Jf/luGoO0PDo3ggiBglgl74b78jcBbbkYZ0Y5kgksmFWiAOdqQGKUVjwoq+xIw/Q
	 ZnEWeMj5Y/tbg==
Date: Wed, 12 Aug 2026 15:37:25 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aswath Govindraju <a-govindraju@ti.com>, 
	Swapnil Jakhade <sjakhade@cadence.com>, =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: cadence: Sierra: Do not modify register when
 getting parent clock
Message-ID: <mbx5knxgp66lhtrbd5p7fwfngeqf6rfi6kcyifzhtbk4t4f3ou@cpdu5j7wvkfc>
References: <20260306-fix_sierra_get_parent-v2-1-cafe89ee5382@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260306-fix_sierra_get_parent-v2-1-cafe89ee5382@bootlin.com>
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

T24gRnJpLCBNYXIgMDYsIDIwMjYgYXQgMTE6MjM6NThBTSArMDEwMCwgR3JlZ29yeSBDTEVNRU5U
IHdyb3RlOgo+IFRoZSBnZXRfcGFyZW50KCkgY2FsbGJhY2sgZm9yIHRoZSBQTExfQ01OTEMxIGNs
b2NrIHdhcyBpbmNvcnJlY3RseQo+IHdyaXRpbmcgdG8gdGhlIHJlZ2lzdGVyIHdoaWxlIGRldGVy
bWluaW5nIHRoZSBwYXJlbnQgY2xvY2sgaW5kZXguIFRoaXMKPiB1bmludGVuZGVkIHJlZ2lzdGVy
IGFjY2VzcyBmb3JjZXMgdGhlIFBIWSBiYWNrIGludG8gdHJhaW5pbmcgbW9kZS4gSWYKPiB0aGUg
UEhZIGlzIGFscmVhZHkgY29uZmlndXJlZCwgdGhpcyB1bmV4cGVjdGVkIGNoYW5nZSBwcmV2ZW50
cyBpdCBmcm9tCj4gZXhpdGluZyB0cmFpbmluZyBtb2RlLgo+IAo+IFJlbW92ZSB0aGUgcmVnaXN0
ZXIgd3JpdGUgb3BlcmF0aW9uIHRvIGVuc3VyZSB0aGUgUEhZIHJlbWFpbnMgc3RhYmxlCj4gZHVy
aW5nIHRoZSBnZXRfcGFyZW50KCkgY2FsbGJhY2suCj4gCj4gRml4ZXM6IGRhMDhhYWI5NDAwOTIg
KCJwaHk6IGNhZGVuY2U6IFNpZXJyYTogRml4IHRvIGdldCBjb3JyZWN0IHBhcmVudCBmb3IgbXV4
IGNsb2NrcyIpCj4gU2lnbmVkLW9mZi1ieTogR3JlZ29yeSBDTEVNRU5UIDxncmVnb3J5LmNsZW1l
bnRAYm9vdGxpbi5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5p
dmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
