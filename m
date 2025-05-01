Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D86B3C369DC
	for <linux-phy@archiver.kernel.org>; Thu,  1 May 2025 12:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mKNbMJlVC0vuOGohXibs9QEmtunk4+Bcx2gOAvQx4o=; b=eDcTubnpdhpi8i
	dceKvnL/htpYpF9/QdhJGeBF1qAb9rE0T+1+nE7InaejsvpZeoSJWvnAfjl30t3ymV0olTzF1EPQ4
	q/cgET65xPK5S5XO9LCUhSlA/P4y5/eItzC0j/D5Es8s7Ahg1zpmuZDUCCdaUhaIy5FdwbUxtRjle
	b6SN6Y4q5kg9bKDLSBWI2l8oglQoq2DC1F9IG5bi/4cu9E3+Pi/mPOPSno/uFQyXKxlhfC6dRfqmL
	pYV1fdZ7D7H1ljc4R0dwsHgug41VHPCWnvmpFbEDm8vVPI+AVXEro4OIQk4w9aso1eLRqbTnQ4SKO
	HViJBW8TsdbkvY5HMjGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uATIT-0000000Fj0c-22mu;
	Thu, 01 May 2025 12:45:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAT2v-0000000FeyK-2aeG;
	Thu, 01 May 2025 12:29:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4xCRMisnHYG+rKe2zqaB+fT8Zsy5tgW+HFQAhsYb4aQ=; b=Rs9xhcaZnyE3EgO5NsWtKg+rGr
	HKneR3rv8W3Uu7rGQsCInI4mFx9Sex1+GQBO6NdgpG2QzURqWKxrcH7gxzewqBOKr0wQMBRKxOAMW
	suttM7urgjvAu+BXm2VBlVrWlj0lcZjnImryubfeJ87vJVH+fzJ0G/4E/V7mHz9iSnEHD1CNVWA9t
	0ldZ7u4k0EqBJq7Z8oZMNmUwtrZBoj70PzKeukMKVMhG3MN8R8FlZaHFEOGVDF4Bg3Ve1iCn61+oK
	JkgXMWYqT3XhDUHKXStoA+lSyfECRy6+mm2cXCDLDpiGlCJPNusI7qyEt85sDqogKH9C87O6JvxLz
	nfPVGqKw==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uAT2s-00012o-CU; Thu, 01 May 2025 14:29:42 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, cristian.ciocaltea@collabora.com,
 andy.yan@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v2] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output 50.25MHz
 error
Date: Thu, 01 May 2025 14:29:41 +0200
Message-ID: <23932150.6Emhk5qWAg@diego>
In-Reply-To: <20250427095124.3354439-1-algea.cao@rock-chips.com>
References: <20250427095124.3354439-1-algea.cao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_052945_655781_8E6F249A 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
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

QW0gU29ubnRhZywgMjcuIEFwcmlsIDIwMjUsIDExOjUxOjI0IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQWxnZWEgQ2FvOgo+IFdoZW4gdXNpbmcgSERNSSBQTEwgZnJlcXVl
bmN5IGRpdmlzaW9uIGNvZWZmaWNpZW50IGF0IDUwLjI1TUh6Cj4gdGhhdCBpcyBjYWxjdWxhdGVk
IGJ5IHJrX2hkcHR4X3BoeV9jbGtfcGxsX2NhbGMoKSwgaXQgZmFpbHMgdG8KPiBnZXQgUEhZIExB
TkUgbG9jay4gQWx0aG91Z2ggdGhlIGNhbGN1bGF0ZWQgdmFsdWVzIGFyZSB3aXRoaW4gdGhlCj4g
YWxsb3dhYmxlIHJhbmdlIG9mIFBIWSBQTEwgY29uZmlndXJhdGlvbi4KPiAKPiBJbiBvcmRlciB0
byBmaXggdGhlIFBIWSBMQU5FIGxvY2sgZXJyb3IgYW5kIHByb3ZpZGUgdGhlIGV4cGVjdGVkCj4g
NTAuMjVNSHogb3V0cHV0LCBtYW51YWxseSBjb21wdXRlIHRoZSByZXF1aXJlZCBQSFkgUExMIGZy
ZXF1ZW5jeQo+IGRpdmlzaW9uIGNvZWZmaWNpZW50IGFuZCBhZGQgaXQgdG8gcm9wbGxfdG1kc19j
ZmcgY29uZmlndXJhdGlvbgo+IHRhYmxlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFsZ2VhIENhbyA8
YWxnZWEuY2FvQHJvY2stY2hpcHMuY29tPgo+IFJldmlld2VkLWJ5OiBDcmlzdGlhbiBDaW9jYWx0
ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgoKQWNrZWQtYnk6IEhlaWtvIFN0
dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
