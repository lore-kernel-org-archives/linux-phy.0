Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F76DC982D6
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYI+SkPtZ+TRwCmp5XQyrdIVavqm05OoRpPUWi4LOOM=; b=huVLS5nK67sltI
	YfvuBG/YtQeiq2XtnxvifWP4H6za8jJNk+9/L8YV+hCSDnB6rmNgcpg4/vs8rRslc7hVOVyiSwQlC
	YYcdPaP+XiMXRG8lq/Sl1bjAuOkoqOzxJ6Qssb0xr5cQ1LaeW8AJxyxv7ufyT1N0tRIGiGlD+bte8
	IMweFkBOOCTWjOQfQCPQEkBHNlsPYw2clVIqFuSFGz64GY4YDKhJDhDtJokSteuaxxh0cBoBGtqsA
	5gjC/54E7bAmhkkJXDhx3lSAaKbpdHoNMJ8lULw0vGNo1UvR1/1kQaE9ae7VyMYxI/q/5G/VR+nqG
	PHqXE7HAXNLsziWtsPcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EBS-0000000Bhr2-41zd;
	Thu, 17 Sep 2026 15:37:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7EBR-0000000Bhqp-0Q9t
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:37:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9904543222;
	Thu, 17 Sep 2026 15:37:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 258D21F00899;
	Thu, 17 Sep 2026 15:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789659476;
	bh=3TzLXrcGuASJ1qHzqcwSdM1+hZ8ISdHdTfVfEWZJH1Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BFTxNrKsWrlaB7PZVZc3eA3KAUUTyyBRbFrDbSnvc/A1WiZBX5Tn3PJAlaySwQLJw
	 Tp8N1EdNSgmwTFyOC1k38xUjhmG0iWm1i5Z8+OxsjCAzEkz2MQWnAZsqmRJw02UYMT
	 FqowuUSV+mARg5b/GPLg2xRhHtpKmS2QRR2QNYm1g5XIzd9uLKQHyZODDrFEwy+b9a
	 6CY71BWZ1RDjCMhmOA8RiP3VBJpM4bPWvVSMnThpb7nTt8XE/aIla0rKZ6gO2Zpuhx
	 3WDXyTs3OWxpn6ZbJmZ5urATbkNRQu0QJqSwTbLa6jGnZtOgBtQuYtoHkWoiKrKIH7
	 gDHBcyCj6expA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v19 4/5] media: qcom: camss: Add support for PHY API
 devices
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: conor+dt@kernel.org, linux-clk@vger.kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-4-21ad8a76e941@linaro.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-4-21ad8a76e941@linaro.org>
Date: Thu, 17 Sep 2026 15:37:55 +0000
Message-Id: <20260917153756.258D21F00899@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0ga2NvbmZpZzogc2Vs
ZWN0aW9uIG9mIG5vbi1leGlzdGVudCBzeW1ib2wgUEhZX1FDT01fTUlQSV9DU0kyCi0tCgpjb21t
aXQgNTg1ZTFkNTJlYjBmNzA1ZWQxOWRmMjJkYzlmNDViOGJlZjE0YzhhOQpBdXRob3I6IEJyeWFu
IE8nRG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgoKbWVkaWE6IHFjb206IGNh
bXNzOiBBZGQgc3VwcG9ydCBmb3IgUEhZIEFQSSBkZXZpY2VzCgpUaGlzIGNvbW1pdCBhZGRzIHRo
ZSBhYmlsaXR5IHRvIHVzZSBhIFBIWSBwb2ludGVyIHdoaWNoIGludGVyYWN0cyB3aXRoIHRoZQpz
dGFuZGFyZCBQSFkgQVBJLiBJbiB0aGUgZmlyc3QgaW5zdGFuY2UgdGhlIGNvZGUgd2lsbCB0cnkg
dG8gdXNlIHRoZSBuZXcKUEhZIGludGVyZmFjZSwgZmFsbGluZyBiYWNrIHRvIGEgbGVnYWN5IG1l
dGhvZCBpZiBubyBQSFlzIGFyZSBwcmVzZW50IGluCnRoZSBkZXZpY2UgdHJlZS4KCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNvbS9jYW1zcy9LY29uZmlnIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNzL0tjb25maWcKPiBpbmRleCA0ZWRhNDhjYjFhZGYw
Li4xZWRjNWU1YTE4MjllIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcWNv
bS9jYW1zcy9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9xY29tL2NhbXNz
L0tjb25maWcKPiBAQCAtNywzICs3LDQgQEAgY29uZmlnIFZJREVPX1FDT01fQ0FNU1MKPiAgCXNl
bGVjdCBWSURFT19WNEwyX1NVQkRFVl9BUEkKPiAgCXNlbGVjdCBWSURFT0JVRjJfRE1BX1NHCj4g
IAlzZWxlY3QgVjRMMl9GV05PREUKPiArCXNlbGVjdCBQSFlfUUNPTV9NSVBJX0NTSTIKCltTZXZl
cml0eTogTWVkaXVtXQpEb2VzIHRoaXMgc3RhdGVtZW50IHNlbGVjdCBhIEtjb25maWcgc3ltYm9s
IHRoYXQgZG9lcyBub3QgZXhpc3QgaW4gdGhlIGtlcm5lbAp0cmVlPwoKV2hlbiBhIHVzZXIgY29u
ZmlndXJlcyB0aGUga2VybmVsIHdpdGggVklERU9fUUNPTV9DQU1TUywgdGhpcyBzZWxlY3QKc3Rh
dGVtZW50IHRhcmdldHMgUEhZX1FDT01fTUlQSV9DU0kyLCB3aGljaCBhcHBlYXJzIHRvIGJlIG1p
c3NpbmcuIFRoaXMKbGVhdmVzIHRoZSByZXF1aXJlZCBQSFkgZHJpdmVyIGRpc2FibGVkIGJ5IGRl
ZmF1bHQsIGNhdXNpbmcgdGhlIGNhbWVyYQpzdWJzeXN0ZW0gdG8gZmFpbCBhdCBydW50aW1lIGJl
Y2F1c2UgdGhlIFBIWSBkZXZpY2Ugd2lsbCBub3QgYmUgcHJlc2VudC4KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTctYjQtbGlu
dXgtbmV4dC0yNS0wMy0xMy1kdHNpLXgxZTgwMTAwLWNhbXNzLXYxOS0wLTIxYWQ4YTc2ZTk0MUBs
aW5hcm8ub3JnP3BhcnQ9NAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
