Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9E04CD6E79
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 22:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lm+4zI4BP48vTFgJdFwHdZjgNhOlJRXDSI4bQUhFu1I=; b=JzzIOFRAl+Eeal
	YvRbHVaYB3PbDXxZwDk1i1Mbpo5JjyuQg9x8qTGT+G5DlPPB4OF77AiGoogeF3h9lbko5ldn4l+tX
	bRMdQbc0rsAwGtmpsL66G9ayc+yNO1ClkAr8fVGzZgTrme+GJ1ke8VIEHlY9eujO3mRP92RIcN2YO
	qNx2rAObZkVA2DZLsoUtvAu6qIx1j366k08dmBAI6Mr9a+S7urbnOG37/OaWKy7P4ckNBY/Q24t+j
	FCifVPzqi7bYe3ozTpJw/xfpqNZMHt8ULQzeGKcZFBDpvtkKSF02RJBPGdl9XvDMdyKwgea6KPQQ4
	uxnti0Rw+XpQ03L/9zMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiOq-00000004UWt-16KC;
	Mon, 08 Jun 2026 22:24:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWiOp-00000004UWn-3RGr
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 22:24:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2B7966001D;
	Mon,  8 Jun 2026 22:24:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D0C81F00893;
	Mon,  8 Jun 2026 22:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780957490;
	bh=CVyk79MmiHqnAxLp8RUfvePV2mOvBowsRaXGCEU2ckE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lwp3xC6UhRLiMNdc7LaccMY0X3Afo6MemgFuZQAyFPRFLlNhFVu1NnDS2tw7Kf3hs
	 /IH/p6Qk5e6PlGfL4DQ10HjeG5ZSSsWFo4bWKXmgsSguhrCHF08RPDaFUX3f52HAFT
	 G5ni9wOOs9KILhOXndr6bli9TB8JcxvQxHkzpnXH1CuL/7yCrADgoQxxbdpEcW4iHx
	 r6wYkWLf9F7fK5yx0qPngcXccLQU0bQRnEujqqJP6r+oixsuAlPfQefLU88YvDQtRy
	 Z2qvxCmXUq5otd1+xOXO9E8CtgieQjY37cERmWd8/Jxlw3sEGqMTrmDuXs1jC/xONj
	 Z+wiSQAtzRKmg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 phy-next 03/16] phy: lynx-28g: move lane mode helpers
 to new core module
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260608221710.1572971-4-vladimir.oltean@nxp.com>
References: <20260608221710.1572971-4-vladimir.oltean@nxp.com>
Date: Mon, 08 Jun 2026 22:24:50 +0000
Message-Id: <20260608222450.9D0C81F00893@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gR2xvYmFsIG5hbWVzcGFj
ZSBwb2xsdXRpb24gZnJvbSBnZW5lcmljIGVudW0gdmFsdWVzIGluIHB1YmxpYyBoZWFkZXIuCi0t
Cgpjb21taXQgMzc5Y2RkMGUxZTMyODZiZDU0OGY5NzAxOWU1Njg1YTQ4YjNhM2NhMgpBdXRob3I6
IFZsYWRpbWlyIE9sdGVhbiA8dmxhZGltaXIub2x0ZWFuQG54cC5jb20+CkRhdGU6ICAgTW9uIEp1
biA4IDIyOjE2OjU3IDIwMjYgKzAwMDAKCnBoeTogbHlueC0yOGc6IG1vdmUgbGFuZSBtb2RlIGhl
bHBlcnMgdG8gbmV3IGNvcmUgbW9kdWxlCgpUaGlzIGNvbW1pdCBtb3ZlcyBsYW5lIG1vZGUgaGVs
cGVycyBpbnRvIGEgbmV3IGNvcmUgbW9kdWxlIGFzIHByZXBhcmF0aW9uCmZvciB0aGUgdXBjb21p
bmcgbHlueC0xMGcgZHJpdmVyLiBBcyBwYXJ0IG9mIHRoaXMgcmVmYWN0b3JpbmcsIHRoZSBsYW5l
Cm1vZGVzIGFyZSBleHBvcnRlZCB0byBhIHB1YmxpYyBoZWFkZXIgdG8gYWxsb3cgY29vcmRpbmF0
aW9uIHdpdGggdGhlIFNvQwpkcml2ZXIuCgpbIC4uLiBdCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L3NvYy9mc2wvcGh5LWZzbC1seW54LmggYi9pbmNsdWRlL3NvYy9mc2wvcGh5LWZzbC1seW54LmgK
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjkyZTgyNzJkNWFl
MTUKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvaW5jbHVkZS9zb2MvZnNsL3BoeS1mc2wtbHlueC5o
Cj4gQEAgLTAsMCArMSwxNiBAQAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MCsgKi8KPiArLyogQ29weXJpZ2h0IDIwMjMtMjAyNiBOWFAgKi8KPiArCj4gKyNpZm5kZWYgX19Q
SFlfRlNMX0xZTlhfSF8KPiArI2RlZmluZSBfX1BIWV9GU0xfTFlOWF9IXwo+ICsKPiArZW51bSBs
eW54X2xhbmVfbW9kZSB7Cj4gKwlMQU5FX01PREVfVU5LTk9XTiwKPiArCUxBTkVfTU9ERV8xMDAw
QkFTRVhfU0dNSUksCj4gKwlMQU5FX01PREVfMTBHQkFTRVIsCj4gKwlMQU5FX01PREVfVVNYR01J
SSwKPiArCUxBTkVfTU9ERV8yNUdCQVNFUiwKPiArCUxBTkVfTU9ERV9NQVgsCj4gK307CgpbU2V2
ZXJpdHk6IExvd10KU2luY2UgZW51bSBseW54X2xhbmVfbW9kZSBpcyBtb3ZpbmcgZnJvbSBhIHBy
aXZhdGUgZHJpdmVyIHNvdXJjZSBmaWxlIHRvIGEKcHVibGljIGluY2x1ZGUgaGVhZGVyLCBjb3Vs
ZCB0aGVzZSBnZW5lcmljIGVudW0gbmFtZXMgbGlrZSBMQU5FX01PREVfVU5LTk9XTgphbmQgTEFO
RV9NT0RFX01BWCBjYXVzZSBuYW1lc3BhY2UgY29sbGlzaW9ucyB3aXRoIG90aGVyIHN1YnN5c3Rl
bXM/CgpXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gYWRkIGEgc3Vic3lzdGVtIHByZWZpeCwgc3VjaCBh
cyBMWU5YX0xBTkVfTU9ERV8gb3IKRlNMX0xZTlhfTEFORV9NT0RFXywgdG8gdGhlc2UgdmFsdWVz
IG5vdyB0aGF0IHRoZXkgYXJlIGdsb2JhbGx5IHZpc2libGU/Cgo+ICsKPiArI2VuZGlmIC8qIF9f
UEhZX0ZTTF9MWU5YX0hfICovCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjA4MjIxNzEwLjE1NzI5NzEtMS12bGFkaW1pci5vbHRl
YW5AbnhwLmNvbT9wYXJ0PTMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
