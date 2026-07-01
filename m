Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE3B6C43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 23:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMtvAG7Rs31KxI/FT3ZpmsWXyjSwtjeS4OzR8kSTOEA=; b=TyyyCLXIJcSQqE
	CVzGD8D/a8FcuJ3LZhBoomm3bW4ugrPn460jM/PiCEB32vIAf5RuCw5NKijYwYryvwYN4/c1w/EdN
	I6WJBppAXcgQL1pvBMxkNNh23ew4Yv23owU9eRhAUERVQlDkiNKLRaPV4RpAujcOBHpmju5ZjVrBf
	1cXSf49U62wWUuj16MhSuiNb+j7PYJ/XI47rr1VdYBI35caWDGnIB4Hp438DYpsbKiVFluCnGe7SI
	/lR9HpzRGDEg6oGFO3j1M8P3WzCc4uxUWQVRDRkDEEQRoF4ckeEAsqZIDpe+0XXcYqEgYsrsojWF5
	jd18OC2Xz2PbGtGL75bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4oU-00000003FuB-26EG;
	Wed, 01 Jul 2026 23:57:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf4oT-00000003Fu4-3MhF
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 23:57:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CAE07600AF;
	Wed,  1 Jul 2026 23:57:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B1B41F000E9;
	Wed,  1 Jul 2026 23:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782950272;
	bh=RhHB9fd4GiFtDnkrU/6QH+iCke89EIsXTQOsDoSI4W8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Vff2MXLj31dFLiShVTFTgRI78xeBV6zVCa+iy7VqpGRIhuNxGGmEkHIVU+CR9vyYr
	 Y4iQaP0TtciQphhCp1pYnCd/8+IXdez0Cb1PpEI6vH0M34204yqKHFioCsM/N/iYnq
	 zxt/IGBmdHmDBJ/dYrngZ0yt2XU+4NMkTYqMaZKaUE0gPW9kq0sIckoW082b29ITuB
	 F60CAjTlBcQATPOryJpBJFLspxLbBPY2RLQN8glwx5PmLE+Q7tnrBiXiPM2vV7j/n3
	 IH9TAYWvrWX+yGu1RmNEvmEf5retuMs+SyyA2wATXK0SaU/Sxmxs9AH/+PcWsNsx9B
	 UliosvPvYanBA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 08/38] phy: rockchip: usbdp: Keep clocks running on
 PHY re-init
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-8-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
 <20260702-rockchip-usbdp-cleanup-v9-8-e31efbb62d2e@collabora.com>
Date: Wed, 01 Jul 2026 23:57:51 +0000
Message-Id: <20260701235752.0B1B41F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBUaGlzIHByb2JsZW0gd2Fzbid0IGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0
IGBya191ZHBoeV9kcF9waHlfcG93ZXJfb24oKWAgcmV0dXJucyAwIChzdWNjZXNzKSB3aGVuIHRo
ZSBEUCBtb2RlIGlzIHVuc3VwcG9ydGVkIGJ5IHRoZSBjdXJyZW50IFR5cGUtQyBzdGF0ZSwgbGVh
ZGluZyBjYWxsZXJzIHRvIGFjY2VzcyBjbG9jay1nYXRlZCBNTUlPIHJlZ2lzdGVycyBhbmQgY2F1
c2luZyBhIFN5bmNocm9ub3VzIEV4dGVybmFsIEFib3J0IChTRXJyb3IpLgotLQoKY29tbWl0IDEx
MzUxMzU0NzFjMjFmNjdhODNjMjVhYWI4MjU0YTYwNTY5NzZjMzEKQXV0aG9yOiBTZWJhc3RpYW4g
UmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCiAgICBwaHk6IHJvY2tj
aGlwOiB1c2JkcDogS2VlcCBjbG9ja3MgcnVubmluZyBvbiBQSFkgcmUtaW5pdAoKVGhpcyBjb21t
aXQgbW9kaWZpZXMgdGhlIFBIWSBtb2RlIGNoYW5nZSBsb2dpYyBpbiBya191ZHBoeV9wb3dlcl9v
bigpIHRvIGF2b2lkCnVubmVjZXNzYXJpbHkgdG9nZ2xpbmcgdGhlIGNsb2NrcyBvZmYgYW5kIG9u
IGFnYWluLiBJdCBza2lwcyB0aGUgY2xvY2sgZGlzYWJsZQphbmQgc2V0dXAgc3RlcHMsIGRpcmVj
dGx5IGNhbGxpbmcgcmtfdWRwaHlfaW5pdCgpIGluc3RlYWQuCgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggNWQwZTRmODJkZTJmOC4uMmIyN2ZkMWMx
NWQ4ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNi
ZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4g
QEAgLTEwMjIsOCArMTAyMiw3IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfcG93ZXJfb24oc3RydWN0
IHJrX3VkcGh5ICp1ZHBoeSwgdTggbW9kZSkKPiAgCQlpZiAodWRwaHktPm1vZGUgPT0gVURQSFlf
TU9ERV9EUCkKPiAgCQkJcmtfdWRwaHlfdTNfcG9ydF9kaXNhYmxlKHVkcGh5LCB0cnVlKTsKPiAg
Cj4gLQkJcmtfdWRwaHlfZGlzYWJsZSh1ZHBoeSk7Cj4gLQkJcmV0ID0gcmtfdWRwaHlfc2V0dXAo
dWRwaHkpOwo+ICsJCXJldCA9IHJrX3VkcGh5X2luaXQodWRwaHkpOwoKW1NldmVyaXR5OiBIaWdo
XQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IHJrX3VkcGh5
X3Bvd2VyX29uKCkgcmV0dXJucyAwCihzdWNjZXNzKSB3aGVuIHRoZSByZXF1ZXN0ZWQgbW9kZSBp
cyBub3Qgc3VwcG9ydGVkIGJ5IHRoZSBjdXJyZW50IFR5cGUtQwpzdGF0ZSwgd2hpY2ggY2FuIGxl
YWQgdG8gYSBTeW5jaHJvbm91cyBFeHRlcm5hbCBBYm9ydCAoU0Vycm9yKS4KCklmIHJrX3VkcGh5
X2RwX3BoeV9wb3dlcl9vbigpIGNhbGxzIHJrX3VkcGh5X3Bvd2VyX29uKCkgYmVmb3JlIGEgVHlw
ZS1DIEFsdApNb2RlIGlzIG5lZ290aWF0ZWQsIHJrX3VkcGh5X3Bvd2VyX29uKCkgcmV0dXJucyAw
IHdpdGhvdXQgZW5hYmxpbmcgdGhlIEFQQgpjbG9ja3M6Cgpkcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYzpya191ZHBoeV9wb3dlcl9vbigpIHsKCWlmICghKHVkcGh5LT5t
b2RlICYgbW9kZSkpIHsKCQlkZXZfaW5mbyh1ZHBoeS0+ZGV2LCAibW9kZSAweCUwMnggaXMgbm90
IHN1cHBvcnRcbiIsIG1vZGUpOwoJCXJldHVybiAwOwoJfQouLi4KfQoKQmVjYXVzZSBya191ZHBo
eV9wb3dlcl9vbigpIHJldHVybnMgc3VjY2VzcywgcmtfdWRwaHlfZHBfcGh5X3Bvd2VyX29uKCkK
YXNzdW1lcyB0aGUgUEhZIGlzIHBvd2VyZWQgb24gYW5kIHByb2NlZWRzIHRvIGFjY2VzcyBjbG9j
ay1nYXRlZCBNTUlPCnJlZ2lzdGVyczoKCmRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC11c2JkcC5jOnJrX3VkcGh5X2RwX3BoeV9wb3dlcl9vbigpIHsKLi4uCglyZXQgPSBya191ZHBo
eV9wb3dlcl9vbih1ZHBoeSwgVURQSFlfTU9ERV9EUCk7CglpZiAocmV0KQoJCWdvdG8gdW5sb2Nr
OwoKCXJrX3VkcGh5X2RwbGFuZV9lbmFibGUodWRwaHksIGRwX2xhbmVzKTsKLi4uCn0KCkhlcmUs
IHJrX3VkcGh5X2RwbGFuZV9lbmFibGUoKSBwZXJmb3JtcyByZWFkL21vZGlmeS93cml0ZSBvcGVy
YXRpb25zIG9uCnVkcGh5LT5wbWFfcmVnbWFwLiBBY2Nlc3NpbmcgdGhlc2UgcmVnaXN0ZXJzIHdp
dGggZGlzYWJsZWQgQVBCIGNsb2Nrcwp0cmlnZ2VycyBhbiBTRXJyb3Igc3lzdGVtIGNyYXNoLgoK
VGhlIHNhbWUgdnVsbmVyYWJpbGl0eSBleGlzdHMgaW4gcmtfdWRwaHlfZHBfcGh5X3Bvd2VyX29m
ZigpIGFuZApya191ZHBoeV9kcF9waHlfY29uZmlndXJlKCksIHdoaWNoIHVuY29uZGl0aW9uYWxs
eSBhY2Nlc3MgdGhlIFBNQSByZWdpc3RlcnMKYmVmb3JlIHVwZGF0aW5nIG9yIGNoZWNraW5nIHRo
ZSBwb3dlciBzdGF0ZS4KCkNvdWxkIHJrX3VkcGh5X3Bvd2VyX29uKCkgcmV0dXJuIGFuIGVycm9y
IGNvZGUgaW5zdGVhZCBvZiAwIHdoZW4gdGhlIG1vZGUKaXMgdW5zdXBwb3J0ZWQsIG9yIGNvdWxk
IHRoZSBjYWxsZXJzIHZlcmlmeSBpZiB0aGUgUEhZIGFjdHVhbGx5IHBvd2VyZWQgb24KYmVmb3Jl
IGFjY2Vzc2luZyB0aGUgcmVnaXN0ZXJzPwoKPiAgCQlpZiAocmV0KQo+ICAJCQlyZXR1cm4gcmV0
Owo+ICAJCXVkcGh5LT5tb2RlX2NoYW5nZSA9IGZhbHNlOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3
IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwMi1yb2NrY2hpcC11c2Jk
cC1jbGVhbnVwLXY5LTAtZTMxZWZiYjYyZDJlQGNvbGxhYm9yYS5jb20/cGFydD04CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
