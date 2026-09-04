Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A455FC624D3
	for <linux-phy@archiver.kernel.org>; Fri,  4 Sep 2026 14:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwn9BB/lEY4qMUtcJIfm/GqjbUwNK55QQ1yj89MpHdQ=; b=Miw9+pk6Dgv6d1
	w9bYiCmyVdvNQrPi5xGNSDB2F7TQBhjHeK03sF8WjMFtw+9l7of/rZz/562q6MoDHqa2g1k9I8D2L
	YFgkgU0q5RFCzjVrKqJYBuhyo2ot5h32vtrzw4UUtQyDtUZF9/tLi6hxdCOggqir3jtgXUOF+wUom
	ldlhprCWlNiw9/4MaQSXr4ldip0h3nqQK8TkxWS8merelfFKJXT/GAxCFv7P2mHnmKFngwcoaNVW0
	v2yqJzGwZ8oIJe23O2RteCzbHKnGfv5bihfYbn91+xbI2Jip9ZZt0hmaMYg9bMbFNC3/y/KDuVyHW
	7Hhl20O046L3Ycf1AXbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2USb-00000002Jcq-1cjP;
	Fri, 04 Sep 2026 14:00:05 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2USZ-00000002Jas-3FBo
	for linux-phy@lists.infradead.org;
	Fri, 04 Sep 2026 14:00:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3BC9E6020A;
	Fri,  4 Sep 2026 14:00:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D41261F00AC4;
	Fri,  4 Sep 2026 14:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788530401;
	bh=HVxtnXcXhjuu7nWb7gwK1VYqDBwl6ZvENMEGX7Jr8wg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IBQAWG+IPOS+e7Vh5QXnmuBASkA6sMeOvrWV8KfonJ7XTmzl/ajTvO9Mlzu8V4owd
	 tYYNxWkDhm4Jpz1XmXKdKChQxFhU3Blosmti9Wf5tIfG/76X9gpo0PKR/M/AEIcbFA
	 MhcfSXqKZjfM1J/LDVMjwTbR3vKmYDRtcB/eDD7R+5Wxqbl8k8ze7JROn6b8XvpfX0
	 zp/UtgCOPsSjLXjc1jkgRbU0compX339FIgibrxSEytk0yUDf0SWxGmdfvC20b9cyW
	 /hp77buCFHXg5xrjAMYNpEe88zRFQnt3b7WXRDLr+vpkbAhGV5FYdmWVsYL405bvG5
	 XLdL1YfMJmUGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 16/19] phy: rockchip: inno-hdmi: Use the common
 Innosilicon PHY helpers
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, robh@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, lee@kernel.org
In-Reply-To: <20260904-jh7110-clean-send-v3-16-484f9ae72715@samsung.com>
References: <20260904-jh7110-clean-send-v3-0-484f9ae72715@samsung.com>
 <CGME20260904132739eucas1p223161c8aa461d6ad18786635ab3c9de4@eucas1p2.samsung.com>
 <20260904-jh7110-clean-send-v3-16-484f9ae72715@samsung.com>
Date: Fri, 04 Sep 2026 13:59:59 +0000
Message-Id: <20260904140000.D41261F00AC4@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVW51c2VkIG1hY3JvcyBg
UkszMzI4X1NQUkVBRF9TUEVDVFJVTV9NT0RfRE9XTmAgYW5kIGBSSzMzMjhfU1BSRUFEX1NQRUNU
UlVNX01PRF9ESVNBQkxFYCB3ZXJlIGxlZnQgYmVoaW5kIGRlc3BpdGUgdGhlIGNvbW1pdCBtZXNz
YWdlIGNsYWltaW5nIHRoYXQgdW51c2VkIHByZS1QTEwgbWFjcm9zIHdlcmUgcmVtb3ZlZC4KLS0K
CmNvbW1pdCAxMDNlNzIyOThlZTE5OTM0NDBiYWY2YzQ0NTc0OTVmMDM0ZDg4MTg1CkF1dGhvcjog
TWljaGFsIFdpbGN6eW5za2kgPG0ud2lsY3p5bnNraUBzYW1zdW5nLmNvbT4KCnBoeTogcm9ja2No
aXA6IGlubm8taGRtaTogVXNlIHRoZSBjb21tb24gSW5ub3NpbGljb24gUEhZIGhlbHBlcnMKClRo
aXMgY29tbWl0IHJlZmFjdG9ycyB0aGUgUkszMzI4IHByZS1QTEwgcHJvZ3JhbW1pbmcgdG8gdXNl
IHNoYXJlZApJbm5vc2lsaWNvbiBQSFkgaGVscGVycy4gSXQgcmVtb3ZlcyBsb2NhbCBjb3BpZXMg
b2YgcmVnaXN0ZXItbGV2ZWwgY29kZSwKbWFjcm9zLCBhbmQgdGFibGUgbG9va3Vwcy4gVGhlIFJL
MzIyOCByZXRhaW5zIGl0cyBvd24gcmVnaXN0ZXIgY29kZSB3aGlsZQpzaGFyaW5nIHRoZSB0YWJs
ZSBsb29rdXAuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtaW5uby1oZG1pLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1o
ZG1pLmMKPiBpbmRleCBjM2QyNTdhMGY0YTY1Li4xNzIyOWQwMzkxMzJlIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWhkbWkuYwo+ICsrKyBiL2Ry
aXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWhkbWkuYwo+IEBAIC0xMzAsNDIg
KzEzMSwxNyBAQAo+ICAjZGVmaW5lIFJLMzMyOF9JTlRfVlNTX0FHTkRfRVNEX0RFVAkJCUJJVCgx
KQo+ICAjZGVmaW5lIFJLMzMyOF9JTlRfQUdORF9WU1NfRVNEX0RFVAkJCUJJVCgwKQo+ICAvKiBS
RUc6IDB4YTAgKi8KPiAtI2RlZmluZSBSSzMzMjhfUENMS19WQ09fRElWXzVfTUFTSwkJCUJJVCgx
KQo+IC0jZGVmaW5lIFJLMzMyOF9QQ0xLX1ZDT19ESVZfNSh4KQkJCVVQREFURSh4LCAxLCAxKQo+
ICAjZGVmaW5lIFJLMzMyOF9QUkVfUExMX1BPV0VSX0RPV04JCQlCSVQoMCkKPiAgLyogUkVHOiAw
eGExICovCj4gLSNkZWZpbmUgUkszMzI4X1BSRV9QTExfUFJFX0RJVl9NQVNLCQkJR0VOTUFTSyg1
LCAwKQo+IC0jZGVmaW5lIFJLMzMyOF9QUkVfUExMX1BSRV9ESVYoeCkJCQlVUERBVEUoeCwgNSwg
MCkKPiAgLyogUkVHOiAweGEyICovCj4gIC8qIHVuc2V0IG1lYW5zIGNlbnRlciBzcHJlYWQgKi8K
PiAgI2RlZmluZSBSSzMzMjhfU1BSRUFEX1NQRUNUUlVNX01PRF9ET1dOCQkJQklUKDcpCj4gICNk
ZWZpbmUgUkszMzI4X1NQUkVBRF9TUEVDVFJVTV9NT0RfRElTQUJMRQkJQklUKDYpCgpbU2V2ZXJp
dHk6IExvd10KQXJlIHRoZXNlIG1hY3JvcyBzdGlsbCBuZWVkZWQ/IFRoZSBjb21taXQgbWVzc2Fn
ZSBzdGF0ZXMgdGhhdCB1bnVzZWQgcHJlLVBMTAptYWNyb3MgYXJlIGJlaW5nIHJlbW92ZWQsIGJ1
dCB0aGVzZSBhcHBlYXIgdG8gaGF2ZSBiZWVuIGxlZnQgYmVoaW5kLiBTaW5jZQp0aGUgc2hhcmVk
IGhlbHBlciB1c2VzIGl0cyBvd24gZGVmaW5pdGlvbnMsIGFyZSB0aGVzZSBub3cgb3JwaGFuZWQg
ZGVhZCBjb2RlPwoKPiAtI2RlZmluZSBSSzMzMjhfUFJFX1BMTF9GUkFDX0RJVl9ESVNBQkxFCQkJ
VVBEQVRFKDMsIDUsIDQpCj4gLSNkZWZpbmUgUkszMzI4X1BSRV9QTExfRkJfRElWXzExXzhfTUFT
SwkJCUdFTk1BU0soMywgMCkKPiAtI2RlZmluZSBSSzMzMjhfUFJFX1BMTF9GQl9ESVZfMTFfOCh4
KQkJCVVQREFURSgoeCkgPj4gOCwgMywgMCkKPiAgLyogUkVHOiAweGEzICovCgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTA0LWpo
NzExMC1jbGVhbi1zZW5kLXYzLTAtNDg0ZjlhZTcyNzE1QHNhbXN1bmcuY29tP3BhcnQ9MTYKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
