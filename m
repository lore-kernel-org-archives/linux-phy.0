Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E796FC982DA
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 14:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HCISKxBkPJWC1BXt8tkagiSQpTJ+mWze0uAZo8iJoA=; b=2TQ1Z0pYvCzoN8
	33cRdrjpFh+AvoVty/4wPu92olNsdnkxczSnUTeNwL6xO8QK81UxfdNUdfemG0uIlapQ6S+o4PIyP
	vPYvELfrNiv8g0PQqcE9wcie+gO0jupjeU/clUnHKi1xsBKTDiMxXQx+gnZMRDi1wZpsTLHfokV9O
	jkrzH0DWRcC3YbSZ51hEVdGbsgfDPMGZrQSHwJa7VKub3GXJSMy8IojGt3nM4cbh70KQX2iF+Cd77
	Mc6qWBOqW4R7uztwRl1Em134PIrZ/divru1Glrgn22f4P48Tsb7hOPYf+bD7w9yEEr9YOdriPCxp7
	JvQq3G4yVI0iKH3/ZKFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZG1-0000000EfGx-2HzT;
	Fri, 18 Sep 2026 14:08:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ZFz-0000000EfGY-2knm
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 14:08:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7F8A6601FD;
	Fri, 18 Sep 2026 14:08:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5C1D1F000FF;
	Fri, 18 Sep 2026 14:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789740482;
	bh=H7Lm5aZFlpWNaJoqdVcvDWcRzm5tQ/Jd6Vf9qNCs9UI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=FwwFHOlevWjMt3HjhEzkBGcJv0GA7A+SYdiRpQ3fRg8mT9vlbAx+WKPFU3ltCjPDL
	 S6CZc73j6l8Bw1JX0Jum+/ZVS0E3yYvOEKHMLke9vACaI4GE9SYoNcL7gUOCLkDTPa
	 lTwXDyZuOcsyVFoRMjo4zIRjkxkvRcxILuPKp3icBYh2id/98wmF9URRKs/8TXBbOZ
	 T/edPkHGKbdzRrbiyJyIrUqA3cY2j7ryMkc7SlIGyuA5FjF5yfe12r1LRd+OwXyWyV
	 dnxVrW9DBr83Vtm4Rxq1zB7iMbMg1SiUTHMcWHFbaZiytwWp5+7Gixpe2jaEjmpXX8
	 DVa1o3V1yRkog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v20 4/6] phy: core: Add missing kerneldoc colon in two
 locations
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-4-dc244e124e71@linaro.org>
References: <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-0-dc244e124e71@linaro.org>
 <20260918-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v20-4-dc244e124e71@linaro.org>
Date: Fri, 18 Sep 2026 14:08:01 +0000
Message-Id: <20260918140801.A5C1D1F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiBjb21taXQgbWVz
c2FnZSBzYXlzIHR3byBsb2NhdGlvbnMgYnV0IG1vZGlmaWVzIHRocmVlCi0tCgpjb21taXQgNWEy
YjY5Y2ZmMmJiM2Y3ZDEyZDg4NjU2NDk3M2ZmMDc1YzI0YTg1MApBdXRob3I6IEJyeWFuIE8nRG9u
b2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKcGh5OiBjb3JlOiBBZGQgbWlzc2lu
ZyBrZXJuZWxkb2MgY29sb24gaW4gdHdvIGxvY2F0aW9ucwoKVGhpcyBwYXRjaCBjb3JyZWN0cyBt
aXNzaW5nIGNvbG9ucyBhZnRlciAiUmV0dXJuIiBpbiB0aGUga2VybmVsIGRvYyBmb3IgdGhlCnBo
eSBjb3JlLgoKPiBwaHk6IGNvcmU6IEFkZCBtaXNzaW5nIGtlcm5lbGRvYyBjb2xvbiBpbiB0d28g
bG9jYXRpb25zCgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IHRoZSBjb21t
aXQgc3ViamVjdCBzdGF0ZXMgdGhhdCAidHdvIGxvY2F0aW9ucyIgYXJlCmJlaW5nIHVwZGF0ZWQs
IHdoaWxlIHRoZSBwYXRjaCBhY3R1YWxseSBtb2RpZmllcyB0aGUga2VybmVsZG9jIGZvciB0aHJl
ZQpkaXN0aW5jdCBmdW5jdGlvbnM6IF9vZl9waHlfZ2V0KCksIG9mX3BoeV9nZXQoKSwgYW5kIHBo
eV9nZXQoKS4KClNob3VsZCB0aGUgY29tbWl0IG1lc3NhZ2UgYmUgdXBkYXRlZCB0byBhY2N1cmF0
ZWx5IHJlZmxlY3QgdGhlIHRocmVlCmxvY2F0aW9ucyBtb2RpZmllZD8KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTgtYjQtbGlu
dXgtbmV4dC0yNS0wMy0xMy1kdHNpLXgxZTgwMTAwLWNhbXNzLXYyMC0wLWRjMjQ0ZTEyNGU3MUBs
aW5hcm8ub3JnP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
