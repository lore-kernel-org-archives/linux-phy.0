Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7396CC6B2F
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 07:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/GHK0Dpgg59GafpB+0Z95VdEKVjiQPVEoqTgH3nYus=; b=aTs4zGdKcOk6qC
	AGcXquyYGh1nsqdDzrBWM+8y/4J1o27bxq7/3rM1N0T88A5K/QF2MTpuYxFUo4BJ3jfR/2bSU0Mu6
	hqtyumC4dFD9KAhJlN9Ky4ZVPwtimwOHdMMEau504Fj0T/lJFYaA5w42wVQ2kVaL4Qxztab4+HjR5
	wgOZlfF1eUW5/L9q/TbubYvvOiybbmbghgqedwvZ8ds5hZRN5x48oDv78gYGwUUJZSlr0PgIASI/l
	fmKfP2B0j2gYSTMaOuNlV3UkvF0TJvWXVNyk+PvQ6I2cyAxYFp7c8EYE5aqJldhCF/jror3jrbnlD
	dIJWotElCAHim5lFp4VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHFpS-0000000H1zy-1LoW;
	Thu, 15 Oct 2026 07:24:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHFpR-0000000H1zm-0rwV
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 07:24:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 59DC160A74;
	Thu, 15 Oct 2026 07:24:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6DC01F000C7;
	Thu, 15 Oct 2026 07:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792049080;
	bh=+xelRklAnQuRlWLvvTrJpGYiZf+GEhBjDYw8jtClUjg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OaAXzFgFaCijcQd4FmUkpX377IZ1M39o9TTTYqLOdIpYlRTSARsynyiD3Y2jlcxSb
	 ICyPF67J2Ou+P4e3JZciCaIr0VeRQ9CZi284qplBSL9GVSQAZ5t98wOrBJadtN49tW
	 D2+oq6kIofwo96d0AhGx4uNw1AieN5MbtoUWA3JUU8rvEG533+NZsZCsDJJBUxPw9U
	 YpZ8Ie0DkcbqbuAQ05wEQx/OX7QsXRud5EZ1TC/sOLYI/ZLCcO2RRa7kf0F4qwK4v8
	 UQ2wZWCMT3ilYBH6snb3Nxq/OZjD+184kjP85QoORv+61pf/PnDcxGxzNWCEpkBYuG
	 PFhmhceFUMAhA==
Message-ID: <sashiko-outbox-172404@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 10/24] dt-bindings: phy: Add ZTE ZX279128S PCIe PHY
 binding
To: "Navid Ghahremani" <ghahramani.navid@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261014072109.1759502-11-ghahramani.navid@gmail.com>
References: <20261014072109.1759502-1-ghahramani.navid@gmail.com>
 <20261014072109.1759502-11-ghahramani.navid@gmail.com>
Date: Thu, 15 Oct 2026 07:24:39 +0000
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IGR0
X2JpbmRpbmdfY2hlY2sgcmVnX2Zvcm1hdCBmYWlsdXJlIGluIGV4YW1wbGUgZHVlIHRvIG1pc3Np
bmcgcGFyZW50IGNvbnRleHQKLSBbTG93XSBkdC1iaW5kaW5nczogcGh5OiBJbnZhbGlkIHJlZyBw
cm9wZXJ0eSBlbnVtIGNvbnN0cmFpbnQKLS0KCmNvbW1pdCA3ZmY5OWZiOGVmMzE2MWFiNmVkOTVm
ODVlNzU3NTc1NDUyYzQ3M2M2CkF1dGhvcjogTmF2aWQgR2hhaHJlbWFuaSA8Z2hhaHJhbWFuaS5u
YXZpZEBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBBZGQgWlRFIFpYMjc5MTI4UyBQQ0ll
IFBIWSBiaW5kaW5nCgpBZGQgRGV2aWNlIFRyZWUgYmluZGluZyBmb3IgdGhlIFBDSWUgU2VyRGVz
IFBIWSBmb3VuZCBpbnNpZGUgdGhlCnRvcGNybSBibG9jayBvZiB0aGUgWlRFIFpYMjc5MTI4UyBT
b0MuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3p0ZSx6eDI3OTEyOHMtcGNpZS1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvenRlLHp4Mjc5MTI4cy1wY2llLXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi43YmZhMzYzMjk0YzA1Cj4gLS0tIC9kZXYvbnVs
bAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvenRlLHp4Mjc5
MTI4cy1wY2llLXBoeS55YW1sCgpbIC4uLiBdCgo+ICtwcm9wZXJ0aWVzOgo+ICsgIGNvbXBhdGli
bGU6Cj4gKyAgICBjb25zdDogenRlLHp4Mjc5MTI4cy1wY2llLXBoeQo+ICsKPiArICByZWc6Cj4g
KyAgICBkZXNjcmlwdGlvbjogUG9ydCBpbmRleCAoMCBvciAxKQo+ICsgICAgaXRlbXM6Cj4gKyAg
ICAgIC0gZW51bTogWzAsIDFdCgpbU2V2ZXJpdHk6IExvd10KV2lsbCB0aGlzIHNjaGVtYSBkZWZp
bml0aW9uIGZvciB0aGUgcmVnIHByb3BlcnR5IHBhc3MgdmFsaWRhdGlvbj8gCgpUaGUgZHQtc2No
ZW1hIHRvb2wgdHJhbnNsYXRlcyByZWcgcHJvcGVydGllcyBpbnRvIGFycmF5cyBvZiBhcnJheXMg
KG1hdHJpY2VzKS4KRW5mb3JjaW5nIGEgc2NhbGFyIGVudW0gYWdhaW5zdCB0aGUgYXJyYXkgdHVw
bGUgZ3VhcmFudGVlcyBhIHNjaGVtYSB2YWxpZGF0aW9uCmZhaWx1cmUsIGFzIGEgbGlzdCBjYW5u
b3QgZXF1YWwgYW4gaW50ZWdlci4gQ291bGQgdGhpcyBiZSBjb3JyZWN0ZWQgYnkgc2V0dGluZwpt
YXhJdGVtcyB0byAxIGluc3RlYWQgb2Ygc3BlY2lmeWluZyBpdGVtcyB3aXRoIGFuIGVudW0gbGlz
dD8KCj4gKwo+ICsgICIjcGh5LWNlbGxzIjoKPiArICAgIGNvbnN0OiAwCj4gKwo+ICtyZXF1aXJl
ZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gIiNwaHktY2VsbHMiCj4gKwo+
ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+
ICsgICAgcGh5QDAgewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAienRlLHp4Mjc5MTI4cy1wY2ll
LXBoeSI7Cj4gKyAgICAgICAgcmVnID0gPDA+OwoKW1NldmVyaXR5OiBMb3ddCkNvdWxkIHRoaXMg
c3RhbmRhbG9uZSBleGFtcGxlIHRyaWdnZXIgYSBjb21waWxhdGlvbiB3YXJuaW5nIGR1cmluZyBt
YWtlCmR0X2JpbmRpbmdfY2hlY2s/CgpCZWNhdXNlIHRoZSBwaHlAMCBub2RlIGlzIHBsYWNlZCBh
dCB0aGUgcm9vdCBsZXZlbCB3aXRob3V0IGEgcGFyZW50IGNvbnRhaW5lciwKZHRjIGFwcGxpZXMg
dGhlIGRlZmF1bHQgI2FkZHJlc3MtY2VsbHMgPSA8MT4gYW5kICNzaXplLWNlbGxzID0gPDE+LiBB
CnNpemUtY2VsbHMgdmFsdWUgb2YgMSByZXF1aXJlcyB0aGUgcmVnIHByb3BlcnR5IHRvIGNvbnNp
c3Qgb2YgYm90aCBhbiBhZGRyZXNzCmFuZCBhIGxlbmd0aCAoMiBjZWxscyBpbiB0b3RhbCkuCgpU
aGUgMS1jZWxsIHJlZyBwcm9wZXJ0eSBzaG93biBoZXJlIHRyaWdnZXJzIGEgcmVnX2Zvcm1hdCB3
YXJuaW5nIGluIGR0YywKY2F1c2luZyBtYWtlIGR0X2JpbmRpbmdfY2hlY2sgdG8gZmFpbCBhcyB3
YXJuaW5ncyBhcmUgdHJlYXRlZCBhcyBlcnJvcnMuCgpTaG91bGQgdGhlIGV4YW1wbGUgYmUgZW5j
bG9zZWQgaW4gYSBwYXJlbnQgbm9kZSAoc3VjaCBhcyBzb2MgeyAuLi4gfSkgdGhhdApzZXRzICNh
ZGRyZXNzLWNlbGxzID0gPDE+IGFuZCAjc2l6ZS1jZWxscyA9IDwwPj8KCj4gKyAgICAgICAgI3Bo
eS1jZWxscyA9IDwwPjsKPiArICAgIH07CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDE0MDcyMTA5LjE3NTk1MDItMS1naGFocmFt
YW5pLm5hdmlkQGdtYWlsLmNvbT9wYXJ0PTEwCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
