Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84BCDCC6B2F
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 08:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87h19kDL7Ab21E/MkcmZBy1Hu1Kh93YiW0onrr+UhYM=; b=tRJ0Su33n+sFZy
	DhG+OnrTT1SjDbmoSrqTeMaK47zY/gYiOD32oSDiv7idMiUHPAwBuS2DQobAhCuH7zJXZuYhbR8sO
	wHQs4aWAjKtm0gqauO/QqeSzjD4eIX605AV++D+FrFTQIhOhlETJ9Bg4J/8eQpm+4VR44gRKqOSFm
	5dtZdxdPgfIaMuyDwmojxoHrihR4YVA5FNhMkm2a7pfCpdQlLlBUnhWbvmzPeRFd0Y7NHJrcTnwyE
	4gVi4N98mAzBwNr9BUoq8SPoBSt10sjf0iIzzeTS2LGz8yhk/m/FXwNQh2S7cj1XVX+1jFsUicncQ
	C+iP3hZBTZs4gLlvc38A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGmr-0000000H94e-47ts;
	Thu, 15 Oct 2026 08:26:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGmr-0000000H94F-0uQ7
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 08:26:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 79AF76020C;
	Thu, 15 Oct 2026 08:26:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9D031F000C4;
	Thu, 15 Oct 2026 08:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792052764;
	bh=6n19YtRIF5Z2DjIPhwmvgVbruOHwvsSd8aB2SUvtKwU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Sdplh5p7bH5qE97mge+nmVilqoZWQo+1gM7XDTrX91WW6LmRyRMZzIom5q9RBUGLu
	 HLa2nVcffoNmtm9fsrf6Oqcxf5LsshrwKXUEiy1kx+wW4bkQHOkxhuQoDrrsjxdXov
	 sBJMT19629LGW+VhHrR12xLZ/CMn4LEel792lZcpFyNZBjHOC3cEcFNAdVm4Ccxl2i
	 vgLW9z2Bjpu4DPFIDbEZodX9g8+bDXejHThNSD4qEet48gqglMSQeI3BC7l1M/vNse
	 1hVBeBQVvaJXbGDfKhwfN8PTO7BGnDPfpxTOVcBs7Rg2iowFE2Y6dHnV/cS1MnDhX7
	 rU356XMlpvOAQ==
Message-ID: <sashiko-outbox-172487@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] phy: rockchip: snps-pcie3: Raise the SRAM init
 timeout
To: "Shawn Lin" <shawn.lin@rock-chips.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <1792051843-93245-1-git-send-email-shawn.lin@rock-chips.com>
References: <1792051843-93245-1-git-send-email-shawn.lin@rock-chips.com>
Date: Thu, 15 Oct 2026 08:26:03 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiByb2NrY2hpcDog
bWlzbGVhZGluZyBsb2cgYW5kIGJpdHdpc2UgT1Igb2YgZXJyb3IgY29kZXMKLS0KCmNvbW1pdCAz
YmNiNTAzMzM4N2UyZTVmZmZjNTZlMjlkNDE5N2ZlY2RiMTc4OTY4CkF1dGhvcjogU2hhd24gTGlu
IDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+CgpwaHk6IHJvY2tjaGlwOiBzbnBzLXBjaWUzOiBS
YWlzZSB0aGUgU1JBTSBpbml0IHRpbWVvdXQKClRoZSBTUkFNIGluaXRpYWxpemF0aW9uIG9mIHRo
ZSBQQ0llMyBQSFkgbWF5IHRha2UgbG9uZ2VyIHRoYW4gdGhlIDUwMHVzCmN1cnJlbnRseSBhbGxv
d2VkLiBUaGlzIGNvbW1pdCByYWlzZXMgdGhlIHRpbWVvdXQgdG8gMjBtcyBhbmQgdXNlcyBhIG5v
bi16ZXJvCnNsZWVwIGludGVydmFsIHRvIHlpZWxkIHRoZSBDUFUgaW5zdGVhZCBvZiB0aWdodC1s
b29waW5nLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXNucHMtcGNpZTMuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBj
aWUzLmMKPiBpbmRleCA0ZThmZmQxNzMwOTZhLi42OWJkYThiMjI1NWQxIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMKPiArKysgYi9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc25wcy1wY2llMy5jCgpbIC4uLiBdCgo+
IEBAIC0xODcsMTEgKzE4OSwxMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3AzcGh5X3JrMzU4OF9p
bml0KHN0cnVjdCByb2NrY2hpcF9wM3BoeV9wcml2ICpwcml2KQo+ICAJcmV0ID0gcmVnbWFwX3Jl
YWRfcG9sbF90aW1lb3V0KHByaXYtPnBoeV9ncmYsCj4gIAkJCQkgICAgICAgUkszNTg4X1BDSUUz
UEhZX0dSRl9QSFkwX1NUQVRVUzEsCj4gIAkJCQkgICAgICAgcmVnLCBSSzM1ODhfU1JBTV9JTklU
X0RPTkUocmVnKSwKPiAtCQkJCSAgICAgICAwLCA1MDApOwo+ICsJCQkJICAgICAgIDEwMDAsIFJL
X1BDSUVfU1JBTV9JTklUX1RJTUVPVVQpOwo+ICAJcmV0IHw9IHJlZ21hcF9yZWFkX3BvbGxfdGlt
ZW91dChwcml2LT5waHlfZ3JmLAo+ICAJCQkJCVJLMzU4OF9QQ0lFM1BIWV9HUkZfUEhZMV9TVEFU
VVMxLAo+ICAJCQkJCXJlZywgUkszNTg4X1NSQU1fSU5JVF9ET05FKHJlZyksCj4gLQkJCQkJMCwg
NTAwKTsKPiArCQkJCQkxMDAwLCBSS19QQ0lFX1NSQU1fSU5JVF9USU1FT1VUKTsKPiAgCWlmIChy
ZXQpCj4gIAkJZGV2X2VycigmcHJpdi0+cGh5LT5kZXYsICJsb2NrIGZhaWxlZCAweCV4LCBjaGVj
ayBpbnB1dCByZWZjbGsgYW5kIHBvd2VyIHN1cHBseVxuIiwKPiAgCQkJcmVnKTsKCltTZXZlcml0
eTogTG93XQpEb2VzIHRoaXMgc2VxdWVuY2Ugc2FmZWx5IGhhbmRsZSBlcnJvcnMgd2hlbiB0aGUg
Zmlyc3QgcG9sbCB0aW1lcyBvdXQgYnV0IHRoZQpzZWNvbmQgb25lIHN1Y2NlZWRzPwoKTG9va2lu
ZyBhdCByb2NrY2hpcF9wM3BoeV9yazM1ODhfaW5pdCgpLCBpZiB0aGUgZmlyc3QKcmVnbWFwX3Jl
YWRfcG9sbF90aW1lb3V0KCkgZmFpbHMsIGl0IHdpbGwgcmV0dXJuIGFuIGVycm9yIGNvZGUgYW5k
IGxlYXZlIHJlZwphdCBpdHMgZmFpbGluZyB2YWx1ZS4gSG93ZXZlciwgdGhlIGJpdHdpc2UgT1Ig
YXNzaWdubWVudCBleGVjdXRlcyB0aGUgc2Vjb25kCnBvbGwgcmVnYXJkbGVzcyBvZiB0aGUgZmly
c3QgcG9sbCdzIG91dGNvbWUuCgpJZiB0aGUgc2Vjb25kIHBvbGwgc3VjY2VlZHMsIHJlZyBpcyBv
dmVyd3JpdHRlbiB3aXRoIGEgc3VjY2Vzc2Z1bCBzdGF0ZS4KVGhlIGJpdHdpc2UgT1Igd2lsbCBj
b21iaW5lIHRoZSBlcnJvciBjb2RlIHdpdGggdGhlIHNlY29uZCBwb2xsJ3MgcmV0dXJuCnZhbHVl
LCB3aGljaCBtaWdodCBjb3JydXB0IHRoZSBlcnJvciBjb2RlIHJldHVybmVkIHRvIHRoZSBjYWxs
ZXIuCgpBZGRpdGlvbmFsbHksIHRoZSBlcnJvciBjaGVjayBldmFsdWF0ZXMgaWYgdGhlIGNvbWJp
bmVkIHJldCBpcyBub24temVybywKdHJpZ2dlcmluZyB0aGUgZXJyb3IgbG9nLiBUaGUgbG9nIHdp
bGwgcHJpbnQgdGhlIHBvdGVudGlhbGx5IHN1Y2Nlc3NmdWwgcmVnCnZhbHVlIGZyb20gdGhlIHNl
Y29uZCBsYW5lLCB3aGljaCBjb3VsZCBtaXNsZWFkIGRldmVsb3BlcnMgaW52ZXN0aWdhdGluZyBs
b2NrCmZhaWx1cmVzLgoKU2hvdWxkIHRoZSBzZWNvbmQgcG9sbCBiZSBza2lwcGVkIGlmIHRoZSBm
aXJzdCBvbmUgZmFpbHMsIG9yIHNob3VsZCBzZXBhcmF0ZQp2YXJpYWJsZXMgYmUgdXNlZCB0byB0
cmFjayB0aGUgc3RhdHVzIG9mIGVhY2ggbGFuZT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMTc5MjA1MTg0My05MzI0NS0xLWdpdC1zZW5k
LWVtYWlsLXNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
