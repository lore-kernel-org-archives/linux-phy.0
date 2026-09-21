Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20537C982DA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AV003RBNthb6PP5A7CBnzzYEh3eZEqr62RevQtmSQgE=; b=fxzwjUZtkul4i2
	5VcLu37YjI/pWtSlwlNPWBMjBkCdNUOyuUdt/tVAeEGltZVnHn17JD3Y9l7jmZbqrJRPglwboPojk
	0bamUCTL5EQEwigLI1WYd0zEPYWISbkW99M6UjOM5bCrIvulU9BeUt0U3ntuNxGgwS/AQO9+stql1
	aErb4rnFXD4Po1n/eJwcnNY2el9cVagvyyi23JCQQTeoWQDx9RIecuBgpKO9loizb6JjA2IgEEdNz
	MZzC2Elz9IdiUwrR3j6fos6XWu+4POm7hzogVeDAdbPmQEBEJBfffohuLQTediwUFOYLaCA7exkqx
	+B3ZQCuhrlXhCodx36kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8WnJ-00000000xKz-2xFt;
	Mon, 21 Sep 2026 05:42:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8WnH-00000000xJs-0TVF
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:42:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D71F84068F;
	Mon, 21 Sep 2026 05:42:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48A931F00893;
	Mon, 21 Sep 2026 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789969342;
	bh=qvvkfSYXJv7lXjlg3wYhqK1goazjJeFV14ZRhMtNh6Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eRgHaOmn0mKxPfM1g1zXgAMkEekKlhF6fjhFscNRr9B+njM41ioJuIEo3cOKYSX6V
	 sWcWhYOUtyICm/yktLs97kfu8+0r68i0FSGmtOzqKtj2wVEJc2LazUkNmixfx+RCCN
	 2mCIxwaq3+MvXgqQ5Kg6KBQOKbciCJQ8M/q1ivv7c3VmkpjskgpXxCoRMOr0BhWhmM
	 nrAk0E7/HqOSRgt611dqHfM0UuXmiBhaUZqsIQV9QGYCTokWFH/JPSEZqohpYNATF2
	 2ADqswDLin2YuYD5mDw+rmhls93KTdRbQSeIkf0WO7SHMPh5Bt+9CdO8pgxObJB8CF
	 wDm78sZnB9pKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/6] phy: qcom: qmp: Move
 qphy_setbits/clrbits/checkbits to common header
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260921-nord-v4-4-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-4-ed05c6e09240@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 05:42:21 +0000
Message-Id: <20260921054222.48A931F00893@smtp.kernel.org>
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

PiBxcGh5X3NldGJpdHMoKSwgcXBoeV9jbHJiaXRzKCkgYW5kIHFwaHlfY2hlY2tiaXRzKCkgd2Vy
ZSBkdXBsaWNhdGVkCj4gdmVyYmF0aW0gYWNyb3NzIHBoeS1xY29tLXFtcC1wY2llLmMsIHBoeS1x
Y29tLXFtcC1wY2llLW1zbTg5OTYuYywKPiBwaHktcWNvbS1xbXAtdWZzLmMsIHBoeS1xY29tLXFt
cC11c2IuYywgcGh5LXFjb20tcW1wLXVzYmMuYyBhbmQKPiBwaHktcWNvbS1xbXAtY29tYm8uYy4g
TW92ZSB0aGVtIHRvIHRoZSBzaGFyZWQgcGh5LXFjb20tcW1wLWNvbW1vbi5oLAo+IHdoaWNoIGFs
bCBvZiB0aGVzZSBkcml2ZXJzIGFscmVhZHkgaW5jbHVkZSwgYW5kIGRyb3AgdGhlIGxvY2FsIGNv
cGllcy4KPiAKPiBUaGlzIGFsc28gbWFrZXMgdGhlIGhlbHBlcnMgYXZhaWxhYmxlIHRvIHBoeS1x
Y29tLXFtcC1wY2llLW11bHRpcGh5LmMKPiB3aXRob3V0IGludHJvZHVjaW5nIHlldCBhbm90aGVy
IGNvcHkuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBRaWFuZyBZdSA8cWlhbmcueXVAb3NzLnF1YWxjb21t
LmNvbT4KPiBSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNh
ZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KPiBSZXZpZXdlZC1ieTogU2hhd24gR3VvIDxzaGVu
Z2NoYW8uZ3VvQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBDaGFp
dGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+CgpTYXNoaWtv
IGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdy
ZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRj
aHNldC8yMDI2MDkyMS1ub3JkLXY0LTAtZWQwNWM2ZTA5MjQwQG9zcy5xdWFsY29tbS5jb20/cGFy
dD00CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
