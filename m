Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C51CC44501
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 21:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfgrLV14zdEwvKo7wwygdS7D/iw80XPdC0L7EzcnEPQ=; b=nULg9/SyGikkUL
	9hqfUPAT6kyd4tLG6Hqfpipyv3+gAyLpv9vbT1w5b52BIH0RYiNxvdLwRSNMo57HsE1ob5M+o9wtg
	Di4PFvETVRith8R59yCjz2Yup9Layu/JDiYKJ86S1W+1x8HtFKEp7xaTMWyeZaePf99ZiTh2o5u+6
	Yyk8UTQbqgfHE0T35ANH08l52wKs+j9LFxT1AxQhWFvcfRi614wg/YjrjTWTKtuKZUlLjWozkKzZL
	40NTFiyxgjl/SItF4/5/eAUDPGgIZsXk1vFkAesBQLzOdcriBEu+2JxmFlUKHnTT21SKF/lZpLQ34
	svVXrfqa+/bW55PwQodA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIUW-00000005mB7-3qEH;
	Fri, 10 Jul 2026 21:10:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIUV-00000005mAU-0Zvv
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 21:10:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 928F060051;
	Fri, 10 Jul 2026 21:10:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07D621F000E9;
	Fri, 10 Jul 2026 21:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783717834;
	bh=UaaL8DVjnmwhzEkXotsyF7hIwgscLRo9iV92jQsHgbM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Y+g8vPieozjgeaOTdtmvDKD7v72yLyDAi0cHOiUXYG6HUpsjBT3CaSJVYTPFNNnlm
	 JiF8odHPicx+3zA5ornyNJoHEfx3/nKCkncIfS/iioh2v4qbYez/ChowIOPT4agXT1
	 yod2mRZBBBU53AWwZuWnvsZ/12UXewBohVqkYIrAfO/bRyMkd/OsJQsl67ZUNpDTet
	 tmtIsWTGROn2bBgojnQ4Bh8BAberd1R57KJmLIbu7Ag6qDR6FJTH5pTWLxxudatH+I
	 mIqQbXT3jCSLiy4IJs1xVrUFANpep5VAEHJwZUR7S+IiEbGRmOz7QYjwUsucCdxC9q
	 2CpCqwEJnGEmQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 18/36] phy: rockchip: usbdp: Rename mode_change to
 phy_needs_reinit
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-18-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
 <20260710-rockchip-usbdp-cleanup-v12-18-8b41a9a9bef0@collabora.com>
Date: Fri, 10 Jul 2026 21:10:32 +0000
Message-Id: <20260710211033.07D621F000E9@smtp.kernel.org>
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
IFtIaWdoXSBIYXJkd2FyZSBoYW5nIGR1ZSB0byB1bmNsb2NrZWQgbWVtb3J5LW1hcHBlZCByZWdp
c3RlciBhY2Nlc3MuCi0tCgotLS0gUGF0Y2ggWzE4XTogW1BBVENIIHYxMiAxOC8zNl0gcGh5OiBy
b2NrY2hpcDogdXNiZHA6IFJlbmFtZSBtb2RlX2NoYW5nZSB0byBwaHlfbmVlZHNfcmVpbml0IC0t
LQpjb21taXQgODc5YmEyODMxNTBmNDFhZTc3MjM2Y2E0MGEwNTM2YWY4YjhlODIzNgpBdXRob3I6
IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5
OiByb2NrY2hpcDogdXNiZHA6IFJlbmFtZSBtb2RlX2NoYW5nZSB0byBwaHlfbmVlZHNfcmVpbml0
CgpUaGlzIHBhdGNoIHJlbmFtZXMgdGhlIG1vZGVfY2hhbmdlIHByb3BlcnR5IHRvIHBoeV9uZWVk
c19yZWluaXQgdG8gYmV0dGVyCnJlZmxlY3QgdGhhdCB0aGUgUEhZIHJlcXVpcmVzIHJlLWluaXRp
YWxpemF0aW9uIG5vdCBqdXN0IG9uIG1vZGUgY2hhbmdlcywgYnV0CmFsc28gb24gY2FibGUgb3Jp
ZW50YXRpb24gc3dpdGNoZXMuIFRoaXMgcHJlcGFyZXMgdGhlIGRyaXZlciB0byBoYW5kbGUgRFAK
cmUtaW5pdCBwcm9wZXJseSBvbiBvcmllbnRhdGlvbiBjaGFuZ2VzLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGluZGV4IDI0MTA4ODE2ZTNiOTUuLmU0NGQx
OWM5ZDExOTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAu
YwpbIC4uLiBdCj4gQEAgLTk1MSwxNSArOTUxLDE1IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfcG93
ZXJfb24oc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgdTggbW9kZSkKCltTZXZlcml0eTogSGlnaF0K
VGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGNhbiB0aGlzIGxlYWQgdG8gYSBzeXN0
ZW0gaGFuZyB3aGVuIHRoZSBQSFkKaXMgdW5zdXBwb3J0ZWQ/CgpMb29raW5nIGF0IHJrX3VkcGh5
X3Bvd2VyX29uKCksIGlmIHRoZSByZXF1ZXN0ZWQgbW9kZSBpcyB1bnN1cHBvcnRlZCwKaXQgcmV0
dXJucyAwIGVhcmx5IHdpdGhvdXQgZW5hYmxpbmcgdGhlIGNsb2NrczoKCmRyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X3Bvd2VyX29uKCkgewoJaWYgKCEo
dWRwaHktPm1vZGUgJiBtb2RlKSkgewoJCWRldl9pbmZvKHVkcGh5LT5kZXYsICJtb2RlIDB4JTAy
eCBpcyBub3Qgc3VwcG9ydFxuIiwgbW9kZSk7CgkJcmV0dXJuIDA7Cgl9Ci4uLgp9CgpCZWNhdXNl
IHRoaXMgcmV0dXJucyAwIGluc3RlYWQgb2YgYW4gZXJyb3IgY29kZSwgcmtfdWRwaHlfZHBfcGh5
X3Bvd2VyX29uKCkKYXNzdW1lcyB0aGUgUEhZIGlzIGNsb2NrZWQgYW5kIHByb2NlZWRzIHRvIGNh
bGwgcmtfdWRwaHlfZHBfbGFuZV9lbmFibGUoKToKCmRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC11c2JkcC5jOnJrX3VkcGh5X2RwX3BoeV9wb3dlcl9vbigpIHsKLi4uCglyZXQgPSBy
a191ZHBoeV9wb3dlcl9vbih1ZHBoeSwgVURQSFlfTU9ERV9EUCk7CglpZiAocmV0KQoJCWdvdG8g
dW5sb2NrOwoKCXJrX3VkcGh5X2RwX2xhbmVfZW5hYmxlKHVkcGh5LCB1ZHBoeS0+ZHBfbGFuZXMp
OwouLi4KfQoKVGhpcyByZXN1bHRzIGluIGFjY2Vzc2luZyBtZW1vcnktbWFwcGVkIFBIWSByZWdp
c3RlcnMgdmlhIHBtYV9yZWdtYXAgd2hlbiB0aGUKY29ycmVzcG9uZGluZyBQSFkgY2xvY2tzIGFy
ZSBnYXRlZC4gQ291bGQgdGhpcyB0cmlnZ2VyIGEgc3luY2hyb25vdXMgZXh0ZXJuYWwKYWJvcnQg
YW5kIGEga2VybmVsIHBhbmljPwoKQWRkaXRpb25hbGx5LCB0aGlzIHNhbWUgc2VxdWVuY2UgYXBw
ZWFycyBpbiBya191ZHBoeV9kcF9waHlfcG93ZXJfb2ZmKCkKd2hpY2ggY2FsbHMgcmtfdWRwaHlf
ZHBfbGFuZV9lbmFibGUodWRwaHksIDApIHVuY29uZGl0aW9uYWxseSB3aXRob3V0IGNoZWNraW5n
CmlmIHRoZSBQSFkgd2FzIHN1Y2Nlc3NmdWxseSBwb3dlcmVkIG9uOgoKZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmM6cmtfdWRwaHlfZHBfcGh5X3Bvd2VyX29mZigpIHsK
CW11dGV4X2xvY2soJnVkcGh5LT5tdXRleCk7Cglya191ZHBoeV9kcF9sYW5lX2VuYWJsZSh1ZHBo
eSwgMCk7Cglya191ZHBoeV9wb3dlcl9vZmYodWRwaHksIFVEUEhZX01PREVfRFApOwouLi4KfQoK
U2hvdWxkIHJrX3VkcGh5X3Bvd2VyX29uKCkgcmV0dXJuIGFuIGVycm9yIGxpa2UgLUVJTlZBTCB3
aGVuIHRoZSBtb2RlIGlzIG5vdApzdXBwb3J0ZWQsIGFuZCBzaG91bGQgcmtfdWRwaHlfZHBfcGh5
X3Bvd2VyX29mZigpIGF2b2lkIGNhbGxpbmcKcmtfdWRwaHlfZHBfbGFuZV9lbmFibGUoKSBpZiB0
aGUgUEhZIGlzIG5vdCBwb3dlcmVkIG9uPwoKPiAgCj4gIAkJaWYgKHVkcGh5LT5tb2RlICYgVURQ
SFlfTU9ERV9VU0IpCj4gIAkJCXJrX3VkcGh5X3UzX3BvcnRfZGlzYWJsZSh1ZHBoeSwgZmFsc2Up
Owo+IC0JCXVkcGh5LT5tb2RlX2NoYW5nZSA9IGZhbHNlOwo+IC0JfSBlbHNlIGlmICh1ZHBoeS0+
bW9kZV9jaGFuZ2UpIHsKPiArCQl1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCA9IGZhbHNlOwo+ICsJ
fSBlbHNlIGlmICh1ZHBoeS0+cGh5X25lZWRzX3JlaW5pdCkgewo+ICAJCWlmICh1ZHBoeS0+bW9k
ZSA9PSBVRFBIWV9NT0RFX0RQKQo+ICAJCQlya191ZHBoeV91M19wb3J0X2Rpc2FibGUodWRwaHks
IHRydWUpOwo+ICAKPiAgCQlyZXQgPSBya191ZHBoeV9pbml0KHVkcGh5KTsKPiAgCQlpZiAocmV0
KQo+ICAJCQlyZXR1cm4gcmV0Owo+IC0JCXVkcGh5LT5tb2RlX2NoYW5nZSA9IGZhbHNlOwo+ICsJ
CXVkcGh5LT5waHlfbmVlZHNfcmVpbml0ID0gZmFsc2U7Cj4gIAl9Cj4gIAo+ICAJdWRwaHktPnN0
YXR1cyB8PSBtb2RlOwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDcxMC1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYxMi0wLThiNDFh
OWE5YmVmMEBjb2xsYWJvcmEuY29tP3BhcnQ9MTgKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
