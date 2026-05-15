Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6BD4CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 11:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkIMNUfdwTYHivTJYpDbYfo5Zwu9LfaQu6iHl7B8kVg=; b=BIElgtk0Xlh6q6
	YVndfV+0Hf/cEBtvapW2SGCyHcnTVnzosjr/peU19lShVMO5qEgWYgGimU0Tv3mo97F4q4tv3pG2+
	mo02dAHZFp3ebruZV0zpb3Kfpl2fdhSqu8jPpN1C7kYvsaJrLQAd598zY6TBk2+wDBN2M9mejH7LH
	K7egiwMGzzDjKB4shiCyaHrWjgFMc4tdpSkomxfkilTsHYGXxFoI3mnRlHmEjjb6qhLCQ4PskiKwE
	j0DoQ1Y0lkj06E9s4l/ihmMsHEpwLjUD0XVDecn2GUfB2EzirrCi8eIYoQ+8wapg1KUBBdzmy7Gm1
	YAAGikh4+al2DEmK09pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqd5-00000008AhJ-2bYN;
	Fri, 15 May 2026 11:22:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqd4-00000008Ah1-35st
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 11:22:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 90FE060008;
	Fri, 15 May 2026 11:22:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E684CC2BCB0;
	Fri, 15 May 2026 11:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778844173;
	bh=n6vPndmDX81xjEhOctO+/4d40aylt23r+5ajLWjHvjM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=WBo0Ss/XmvtavW47WP4VGnic8gNk8banDFM+JPa/ee5RZuveQjIgyrQd+VBZCuyrI
	 lP0uSkJAPtRRStU6nxACAZcdi3394Cn1nXl9JlnYa/zHLgi8GWVI4OWF4I4U4zcfs8
	 La756hyaj5XVNAPJHcd1cSzFs7fxrHG4vzXOzAPlfpUtOROgcV6EvfovVjZkD9eAdu
	 AE+sOC5Ycz+hNAuQWF/MghtbLxsxEAuOwAdtk8XUoZ1l/TnmqDuzeFJ9bFVPE/uDKj
	 lJhHBrh4VDSC6+CsR+9BUAsEuLV/kwC3zSwsISPWMblZJi7ftiL3Lp99H/2XUwhX/l
	 C1eCVCUQfWYEw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 phy-next 2/2] phy: ti: add PHY driver for TI
 DS125DF111 Dual-Channel Retimer
To: "Ioana Ciornei" <ioana.ciornei@nxp.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, robh@kernel.org
In-Reply-To: <20260515110145.1925579-3-ioana.ciornei@nxp.com>
References: <20260515110145.1925579-3-ioana.ciornei@nxp.com>
Date: Fri, 15 May 2026 11:22:52 +0000
Message-Id: <20260515112252.E684CC2BCB0@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgZGVsYXkg
b3IgcG9sbGluZyBhZnRlciBzZXR0aW5nIGEgc2VsZi1jbGVhcmluZyBoYXJkd2FyZSByZXNldCBi
aXQuCi0tCgpjb21taXQgNTlhNWNhNzQxMTMwOGE4MWMxNDZkNjYwYjhjMDRlMGJlOGZlOGZiYgpB
dXRob3I6IElvYW5hIENpb3JuZWkgPGlvYW5hLmNpb3JuZWlAbnhwLmNvbT4KCnBoeTogdGk6IGFk
ZCBQSFkgZHJpdmVyIGZvciBUSSBEUzEyNURGMTExIER1YWwtQ2hhbm5lbCBSZXRpbWVyCgpUaGlz
IGNvbW1pdCBhZGRzIGEgZ2VuZXJpYyBQSFkgZHJpdmVyIGZvciB0aGUgVEkgRFMxMjVERjExMSBN
dWx0aS1Qcm90b2NvbApEdWFsLUNoYW5uZWwgUmV0aW1lci4gSXQgc3VwcG9ydHMgMTBHIGFuZCAx
RyBsaW5rIHNwZWVkcywgbW9kZWxpbmcgZWFjaCBvZgp0aGUgdHdvIGNoYW5uZWxzIGFzIGEgc2Vw
YXJhdGUgUEhZIGRldmljZS4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3RpL3BoeS1kczEy
NWRmMTExLmMgYi9kcml2ZXJzL3BoeS90aS9waHktZHMxMjVkZjExMS5jCj4gbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9waHkvdGkvcGh5LWRzMTI1
ZGYxMTEuYwoKWyAuLi4gXQoKPiArc3RhdGljIGludCBkczEyNWRmMTExX2NvbmZpZ3VyZShzdHJ1
Y3QgcGh5ICpwaHksCj4gKwkJCQljb25zdCBzdHJ1Y3QgZHMxMjVkZjExMV9jb25maWcgKmNmZykK
PiArewoKWyAuLi4gXQoKPiArCS8qIFJlc2V0IENoYW5uZWwgUmVnaXN0ZXJzICovCj4gKwllcnIg
PSBpMmNfc21idXNfcmVhZF9ieXRlX2RhdGEoaTJjLCBEUzEyNURGMTExX0NIX0NUUkwpOwo+ICsJ
aWYgKGVyciA8IDApIHsKPiArCQlkZXZfZXJyKGRldiwgIkVycm9yIHJlc2V0dGluZyBjaGFubmVs
IGNvbmZpZ3VyYXRpb25cbiIpOwo+ICsJCWdvdG8gb3V0Owo+ICsJfQo+ICsJdmFsID0gKHU4KWVy
cjsKPiArCXZhbCB8PSBEUzEyNURGMTExX0NIX0NUUkxfUkVTRVQ7Cj4gKwllcnIgPSBpMmNfc21i
dXNfd3JpdGVfYnl0ZV9kYXRhKGkyYywgRFMxMjVERjExMV9DSF9DVFJMLCB2YWwpOwo+ICsJaWYg
KGVyciA8IDApIHsKPiArCQlkZXZfZXJyKGRldiwgIkVycm9yIHJlc2V0dGluZyBjaGFubmVsIGNv
bmZpZ3VyYXRpb25cbiIpOwo+ICsJCWdvdG8gb3V0Owo+ICsJfQo+ICsKPiArCS8qIFByb2dyYW0g
dGhlIFZDTyBncm91cCBmcmVxdWVuY2llcyAqLwo+ICsJZm9yIChpID0gMDsgaSA8IERTMTI1REYx
MTFfTlVNX1ZDT19HUk9VUF9SRUc7IGkrKykgewo+ICsJCWVyciA9IGkyY19zbWJ1c193cml0ZV9i
eXRlX2RhdGEoaTJjLAo+ICsJCQkJCQlEUzEyNURGMTExX1ZDT19HUk9VUF9CQVNFICsgaSwKPiAr
CQkJCQkJY2ZnLT52Y29fZ3JvdXBbaV0pOwoKSXMgYSBkZWxheSBvciBwb2xsaW5nIGxvb3AgbmVl
ZGVkIGFmdGVyIHRyaWdnZXJpbmcgdGhlIGNoYW5uZWwgcmVzZXQ/CgpUaGUgRFMxMjVERjExMV9D
SF9DVFJMX1JFU0VUIGJpdCBpcyBkZWZpbmVkIGFzIHNlbGYtY2xlYXJpbmcsIGJ1dCB0aGUgY29k
ZSAKaW1tZWRpYXRlbHkgcHJvY2VlZHMgdG8gcHJvZ3JhbSB0aGUgVkNPIGdyb3VwIGZyZXF1ZW5j
aWVzIHdpdGhvdXQgY2hlY2tpbmcgaWYKdGhlIHJlc2V0IGhhcyBmaW5pc2hlZC4KClNpbmNlIGhh
cmR3YXJlIHJlc2V0cyB1c3VhbGx5IHRha2UgYSBub24temVybyBhbW91bnQgb2YgdGltZSwgd3Jp
dGluZyB0byB0aGUKcmVnaXN0ZXJzIHJpZ2h0IGF3YXkgY291bGQgcmVzdWx0IGluIHRoZSBkZXZp
Y2UgTkFDS2luZyB0aGUgdHJhbnNhY3Rpb25zIG9yCnNpbGVudGx5IGRyb3BwaW5nIHRoZSBuZXcg
Y29uZmlndXJhdGlvbi4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA1MTUxMTAxNDUuMTkyNTU3OS0xLWlvYW5hLmNpb3JuZWlAbnhw
LmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
