Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD25C2BB41
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 19:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2HwmLQVoFYUNpDqJq+5R5VygF8Zh8iB1PUE30rYwHwk=; b=TqQMww5kKKqNYT
	yWJ3Drg4eAfkyRMFvEZJbFqDsbxHX+08K/Vegm2CQEhjRUO5C7T4xWU3e8KkPsSsBj3p+usL4JkjZ
	zUpsgmEJi4KLaqNi/YUp/bb1qzm0xdme9vGU64KZWUohbIGZtJu2D35Iq/BPqAEcZjRxqhLg89n3z
	unkJtcgIIfWBfOmegp+JHJWH+x6P7fEDNxDgxCKXTXj4tb2lbu95xWK2i44xMTKHJeUpjQckjNJD7
	UYRVXQs1ZLAFFxJgq7GWBo/PSW2QP1OI/u2gvt2pY9mF/wOooxG+1Ddi1xd7na2Yn/3S2Kp1C5GhM
	Difn5NERJrAM6NjSbRxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOlK-005kI0-Qh; Wed, 17 Aug 2022 19:31:34 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOOlI-005kBq-5S
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 19:31:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 516E5B81F49;
	Wed, 17 Aug 2022 19:31:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FF80C433D6;
	Wed, 17 Aug 2022 19:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660764685;
	bh=folaEiqwvPtEOi1ekaQcirtyCHSCVGrI+j/lwWcW9o4=;
	h=From:To:Cc:Subject:Date:From;
	b=cBDJ7OdwSban6nhrj+lYajXImQUp/x28+Vh//RpP1ThS8CLRlGJYbseB5U+LQh98P
	 8jLEihOuV+itRpV4zyUuXusoF3qJqRmJZ6b9XqORWlrHLUiGvcpw7ppWVoWm0boDHM
	 6mDDmOIM5GRXCIFzXbMJgNkRShMbmhjjUNl6h99ezfCqFZFQaC51tOUQ5U4jKmmNS4
	 rpyZZrV3v3al3Dy3mM1sgjmQsptXMyOip2f/goUqzNU8KbNhlzQMPgQdFcPWVkoEpd
	 63b3DkTFgFfOHbdj49L2jUq+Da+fvF5R0SNplPZuwhVRhN9q9QEHoW6ccKHJJafi8o
	 G14hfwD8UywYg==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Linux Phy <linux-phy@lists.infradead.org>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Kees Cook <keescook@chromium.org>,
	linux-kernel@vger.kernel.org,
	pali@kernel.org,
	josef.schlehofer@nic.cz,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH linux-phy 0/4] mvebu a3720 comphy: Fix serdes transmit amplitude
Date: Wed, 17 Aug 2022 21:31:15 +0200
Message-Id: <20220817193119.4463-1-kabel@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_123132_387162_DEFAF09B 
X-CRM114-Status: GOOD (  10.70  )
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

VGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciBzZXR0aW5nIHNlcmRlcyB0cmFuc21pdCBhbXBs
aXR1ZGUgZm9yCmV0aGVybmV0IG1vZGVzIChzZ21paSwgMTAwMGJhc2UteCwgMjUwMGJhc2UteCkg
aW4gdGhlIE1hcnZlbGwgQTM3MjAKY29tcGh5IGRyaXZlci4KClRoZSBhbXBsaXR1ZGUgaXMgc2V0
IGFjY29yZGluZyB0byBzZXR0aW5nIGluIGRldmljZSB0cmVlLgoKRmluYWxseSB0aGUgVHVycmlz
IE1PWCBkZXZpY2UgdHJlZSBpcyBjaGFuZ2VkIHRvIHNldCB0aGUgMjUwMGJhc2UteAptb2RlIHR4
IGFtcGxpdHVkZSB0byAxMDI1IG1WLgoKVGhpcyBpcyBuZWVkZWQgdG8gZml4IGEgd2VpcmQgaXNz
dWUgd2hlcmVpbiB3aGVuIEEzNzIwIHNlbmRzIGEgcGFja2V0CnRvIFRvcGF6LCBhbmQgdGhlIHBh
Y2tldCBjb250YWlucyBhIGxvbmcgc2VxdWVuY2Ugb2YgJ0oncyBvciAnXHhiNScKYnl0ZXMgKHRo
ZXNlIHRyYW5zbGF0ZSB0byAnMDEwMTAxMDEwMTAxJy4uLiBpbiA4Yi8xMGIgZW5jb2RpbmcpLCB0
aGUKcGFja2V0IG1heSBiZSBsb3N0IG9uIFRvcGF6IGR1ZSB0byBGQ1MgZXJyb3IuIFRoZSBwcm9i
YWJpbGl0eSBvZgpsb3NzIGdyb3dzIHdpdGggbnVtYmVyIG9mICdKJ3M6CgogIGxvc3MKICAgICAg
ICAgICAgICAgICAgICAgICAgIF9fX19fXwogIDEwMCUgICAgICAgICAgICAgICAgLi1eCiAgICAg
ICAgICAgICAgICAgICAgIC8KICAgICAgICAgICAgICAgICAgICAvCiAgIDUwJSAgICAgICAgICAg
ICAvCiAgICAgICAgICAgICAgICAgIC8KICAgICAgICAgICAgICAgICAvCiAgICAwJSAgX19fX19f
Li1eCiAgICAgICAgICAgIDkwICAgIDExNCAgICAxMjUgICAgIG51bWJlciBvZiBjb25zZWN1dGl2
ZSAnSidzCgpNYXJlayBCZWjDum4gKDQpOgogIHN0cmluZy5oOiBBZGQgc3RyX2hhc19wcm9wZXJf
cHJlZml4KCkKICBkZXZpY2UgcHJvcGVydHk6IEFkZCB7Zndub2RlL2RldmljZX1fZ2V0X3R4X3Ay
cF9hbXBsaXR1ZGUoKQogIHBoeTogbWFydmVsbDogcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeTogU3Vw
cG9ydCBjaGFuZ2luZyB0eCBhbXBsaXR1ZGUKICAgIGZvciBldGhlcm5ldAogIGFybTY0OiBkdHM6
IGFybWFkYS0zNzIwLXR1cnJpcy1tb3g6IENoYW5nZSBjb21waHkgdHggYW1wbGl0dWRlIGZvcgog
ICAgMjUwMGJhc2UteCBtb2RlCgogLi4uL2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1t
b3guZHRzICAgIHwgIDEwICsrCiBkcml2ZXJzL2Jhc2UvcHJvcGVydHkuYyAgICAgICAgICAgICAg
ICAgICAgICAgfCAxMzAgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3Bo
eS1tdmVidS1hMzcwMC1jb21waHkuYyAgfCAxMDkgKysrKysrKysrKysrKystCiBpbmNsdWRlL2xp
bnV4L3Byb3BlcnR5LmggICAgICAgICAgICAgICAgICAgICAgfCAgIDUgKwogaW5jbHVkZS9saW51
eC9zdHJpbmcuaCAgICAgICAgICAgICAgICAgICAgICAgIHwgIDE4ICsrKwogNSBmaWxlcyBjaGFu
Z2VkLCAyNzEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKLS0gCjIuMzUuMQoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
