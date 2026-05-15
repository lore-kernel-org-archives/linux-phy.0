Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06A4BCD4851
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 11:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boUk9T/A5E6hGWWFwYgu664E3lmiNhJpKwdGO1blliw=; b=KPKZhIt4InV+Rx
	xAmo55WYEB9HmL8m1rPOzphXOJu8XwW5TwwSn8cG83q/Zqw7609ncfKxnlt5OM43y1UWnwaC5Ni0y
	GxsjkotX3YF67SIjNycLoT/fh0+8rvEw1tLFpOle5vkmzRV8BgosmRFnhuzts8/yxV3sn0nK/uX59
	M3XEQgL/xPU0gpWK2+6ZzI8FEHw0xZjI19Y1wc/2aYa1m/l9Mooz+25cYXJxoVaFEybyk2jMxZpg9
	lWBogxmrGG6wPfavFaB5g8AJMwLqv+qrR6959PWfjucCCKJw+/tBsNpcP8PG4K7cTyK2s1TK6c5eT
	+wq8tYS+UtV1B8OHiZeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqiD-00000008Bn3-2cpL;
	Fri, 15 May 2026 11:28:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqiA-00000008Blw-3FFP
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 11:28:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 68D4B40ACC;
	Fri, 15 May 2026 11:28:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE5B9C2BCB0;
	Fri, 15 May 2026 11:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778844490;
	bh=PFdzFQ8z12U6QPw7WHvmKcX4PQwoOiB5fLp7t21R8Oc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Zr6O/ILV7VkYwK9nnpIpUHLLpe1mLXoE09pG2UsQp1Fh884GLZ74kqg0cjqUBLTsB
	 cn5DLO52WcgGQViaTFqk9rBS1jAwK+JFhaPA9UwgSKatv1/B6H1kaFIdq3HI089vJf
	 0J8G92wlqkW7i7d0RtlGsYQdeh3SdJpCrt2ICThau18h2mqxVYqx1lu+FhGojr+pMx
	 OrqR6HY8/XXuTad2NaHCc6FQNZpwYAAi+k99N4H1+dgE4AHZJML8R5j3Cy00M/rlMK
	 JxLr9Et3euSBXe8agTehCq/uNcZfIU9mZ/edvFLY3ysqPK7KYrCmhCVFHocacQoF5a
	 ujW+wKsYXdRSQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/5] phy: qcom-qusb2: add QUSB2 support for ipq5210
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260515-usb2phy-v1-5-5f8338d466bf@oss.qualcomm.com>
References: <20260515-usb2phy-v1-5-5f8338d466bf@oss.qualcomm.com>
Date: Fri, 15 May 2026 11:28:09 +0000
Message-Id: <20260515112809.EE5B9C2BCB0@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_042810_838113_0AAFE85F 
X-CRM114-Status: UNSURE (   8.68  )
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbW1pdCBt
ZXNzYWdlIGluY29ycmVjdGx5IGRlc2NyaWJlcyB0aGUgcGF0Y2ggY29udGVudHMuIEl0IGNsYWlt
cyB0byBhZGQgYW4gaW5pdCBzZXF1ZW5jZSBmb3IgJ1N1cGVyIFNwZWVkIHBvcnRzJywgYnV0IHRo
ZSBwYXRjaCBhY3R1YWxseSBtb2RpZmllcyB0aGUgUVVTQjIgUEhZIGRyaXZlciwgd2hpY2ggaXMg
cmVzcG9uc2libGUgZm9yIFVTQiAyLjAgKEhpZ2ggU3BlZWQgLyBGdWxsIFNwZWVkIC8gTG93IFNw
ZWVkKSBwb3J0cy4gRnVydGhlcm1vcmUsIHRoZSBwYXRjaCBkb2VzIG5vdCBpbnRyb2R1Y2UgYSBu
ZXcgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2U7IGl0IHNpbXBseSBtYXBzIHRoZSBuZXcgYHFjb20s
aXBxNTIxMC1xdXNiMi1waHlgIGNvbXBhdGlibGUgc3RyaW5nIHRvIHRoZSBleGlzdGluZyBgaXBx
NjAxOF9waHlfY2ZnYCBkYXRhLgotLQoKY29tbWl0IGEzMjcwNTVhZjA5YTE1MjBjZjhmODg3MzVi
MTEwZjFkZjc2NzRlNjQKQXV0aG9yOiBWYXJhZGFyYWphbiBOYXJheWFuYW4gPHZhcmFkYXJhamFu
Lm5hcmF5YW5hbkBvc3MucXVhbGNvbW0uY29tPgoKcGh5OiBxY29tLXF1c2IyOiBhZGQgUVVTQjIg
c3VwcG9ydCBmb3IgaXBxNTIxMAoKVGhpcyBjb21taXQgYWRkcyBhIG5ldyBjb21wYXRpYmxlIHN0
cmluZyBmb3IgdGhlIElQUTUyMTAgU29DIHRvIHRoZSBRVVNCMgpQSFkgZHJpdmVyLiBJdCBtYXBz
IHRoZSBuZXcgY29tcGF0aWJsZSBzdHJpbmcgdG8gdGhlIGV4aXN0aW5nCmlwcTYwMThfcGh5X2Nm
ZyBkYXRhIHN0cnVjdHVyZS4KCj4gQWRkIHRoZSBwaHkgaW5pdCBzZXF1ZW5jZSBmb3IgdGhlIFN1
cGVyIFNwZWVkIHBvcnRzIGZvdW5kCj4gb24gaXBxNTIxMC4KCkRvZXMgdGhpcyBjb21taXQgbWVz
c2FnZSBhY2N1cmF0ZWx5IGRlc2NyaWJlIHRoZSBwYXRjaCBjb250ZW50cz8KClRoZSBRVVNCMiBQ
SFkgZHJpdmVyIGlzIHJlc3BvbnNpYmxlIGZvciBVU0IgMi4wIHBvcnRzLCByYXRoZXIgdGhhbiBT
dXBlcgpTcGVlZCBwb3J0cy4gQWRkaXRpb25hbGx5LCB0aGUgcGF0Y2ggbWFwcyB0aGUgY29tcGF0
aWJsZSBzdHJpbmcgdG8gdGhlCmV4aXN0aW5nIGlwcTYwMThfcGh5X2NmZyBkYXRhIGluc3RlYWQg
b2YgYWRkaW5nIGEgbmV3IGluaXRpYWxpemF0aW9uCnNlcXVlbmNlLgoKQ291bGQgdGhlIGNvbW1p
dCBtZXNzYWdlIGJlIHVwZGF0ZWQgdG8gcmVmbGVjdCB0aGF0IGl0IGFkZHMgVVNCIDIuMCBQSFkK
c3VwcG9ydD8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA1MTUtdXNiMnBoeS12MS0wLTVmODMzOGQ0NjZiZkBvc3MucXVhbGNvbW0u
Y29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
