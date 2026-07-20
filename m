Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 299CCC44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 10:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQQX+g1X9lF99xrbF8uKNCqCdv0KDGmwYPh9lT36HYI=; b=LeSdnA7fEmgWKh
	+NjZxFBPZKquon46x+PTW0Ln6xOgU0cmJf5UveQ8a9UAl7JsGc9/mMXi9OzkpLSYw81JjxgX8fyaw
	wJtyrfpQEAviBza2EIvAdLhAC3Yrtq/p4Zo7+NCsUYgv0GDdHWgYAWfG9y8BNO4lItqzYMeV8zTUN
	zgAQQqHZHd1VjzKpGEwJ3fMODy58Ez6O8MMPC9O+9dkZZ32HlM3/RP7n/lDN6E4jTvY0vMC1UdTaz
	OLKPzbGtCwuS47nMKyZmNW/qA+P4ygjvl5pqnSj/fq9Cez2MIg6r1sY1mrJ140i0LKA4sj1NV78xE
	CEOnuUCuWD1X5OGHTrjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wllIP-00000006UZ8-3ZxN;
	Mon, 20 Jul 2026 10:32:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wllIP-00000006UZ0-0p3t
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 10:32:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A051F60254;
	Mon, 20 Jul 2026 10:32:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5C971F000E9;
	Mon, 20 Jul 2026 10:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784543544;
	bh=cZ4KvFsj7lin1MOwAQcffs7M9qMgzSuLVTIResijBP8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Nk70z+hKnXiY1Z98GcEBTeIbJFgUrROF7nsCkoze+Sj6PwjFIdZPSUGPHm1MOYgfz
	 wtdUYYaJe4z0BSbZvuD2CQ2u6/+z36IPB637igk9czvARPRg9x8jufz+hGU+U+Bh9i
	 U+EfNY38EFBFkHBQ0TDhISyf+5yl65eeHjLHls8CTmGLvo3l417sRCXfw6AN0x7s0Z
	 SU7jWuJncEo188QKWBP5/0mLQWlIgC7gfP1yww1cVf4j3YQsIuzQ2vXkyCYnnAy4Aa
	 yA4O7yrnXxYU268ywoK5r+TWjZSsyvbWpIrtF0FFESd0YBD1WPioYzTSZCj4d0N/17
	 DSQbEr77kxshQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
To: "Joey Lu" <a0987203069@gmail.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260720102222.251179-3-a0987203069@gmail.com>
References: <20260720102222.251179-1-a0987203069@gmail.com>
 <20260720102222.251179-3-a0987203069@gmail.com>
Date: Mon, 20 Jul 2026 10:32:23 +0000
Message-Id: <20260720103223.E5C971F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIGB1c2JfcGh5YCBu
b2RlIGlzIHBsYWNlZCBpbnNpZGUgYSBgc2ltcGxlLWJ1c2Agd2l0aG91dCBhIGByZWdgIHByb3Bl
cnR5LCB0cmlnZ2VyaW5nIGEgYHNpbXBsZV9idXNfcmVnYCBkdGMgd2FybmluZy4KLS0KCi0tLSBQ
YXRjaCBbMl06IFtQQVRDSCB2NCAyLzNdIGFybTY0OiBkdHM6IG51dm90b246IG1hMzVkMTogYWRk
IFVTQiBjb250cm9sbGVycyBhbmQgZHVhbC1wb3J0IFBIWSBub2RlIC0tLQpjb21taXQgY2YzYWVh
NzhkZTU1NTA2MjAzZjQ4NTU2YTY0MDQwNmE2ZGNjYjliYwpBdXRob3I6IEpvZXkgTHUgPGEwOTg3
MjAzMDY5QGdtYWlsLmNvbT4KCmFybTY0OiBkdHM6IG51dm90b246IG1hMzVkMTogYWRkIFVTQiBj
b250cm9sbGVycyBhbmQgZHVhbC1wb3J0IFBIWSBub2RlCgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBV
U0Igc3Vic3lzdGVtIG5vZGVzIGZvciB0aGUgTUEzNUQxIFNvQywgaW5jbHVkaW5nIHRoZQpEV0My
IGdhZGdldCwgRUhDSS9PSENJIGhvc3RzLCBhbmQgYSBkdWFsLXBvcnQgUEhZIG5vZGUuIEl0IGFs
c28gdXBkYXRlcwp0aGUgYm9hcmQgZmlsZXMgdG8gY29uZmlndXJlIHBpbmN0cmwgYW5kIGVuYWJs
ZSB0aGUgbm9kZXMuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL251dm90b24v
bWEzNWQxLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL251dm90b24vbWEzNWQxLmR0c2kKPiBp
bmRleCA3MjI4YWQ0NzM1YjVjLi41YTdhMzliMWI1MTQzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvbnV2b3Rvbi9tYTM1ZDEuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvbnV2b3Rvbi9tYTM1ZDEuZHRzaQo+IEBAIC04OCw2ICs4OCwxNCBAQCBzeXM6IHN5c3RlbS1t
YW5hZ2VtZW50QDQwNDYwMDAwIHsKPiAgCQkJI3Jlc2V0LWNlbGxzID0gPDE+Owo+ICAJCX07Cj4g
IAo+ICsJCXVzYl9waHk6IHVzYi1waHkgewoKW1NldmVyaXR5OiBMb3ddCkRvZXMgcGxhY2luZyB0
aGlzIG5vZGUgaW5zaWRlIHRoZSBzb2Mgc2ltcGxlLWJ1cyB3aXRob3V0IGEgcmVnIHByb3BlcnR5
CnRyaWdnZXIgYSBzaW1wbGVfYnVzX3JlZyBkdGMgY29tcGlsZXIgd2FybmluZz8KClRoZSBEZXZp
Y2UgVHJlZSBzcGVjaWZpY2F0aW9uIHN0YXRlcyB0aGF0IGNoaWxkcmVuIG9mIGEgc2ltcGxlLWJ1
cyBtdXN0CnJlcHJlc2VudCBtZW1vcnktbWFwcGVkIGRldmljZXMsIHNvIG5vZGVzIHdpdGhvdXQg
YSByZWcgb3IgcmFuZ2VzIHByb3BlcnR5CnVzdWFsbHkgdHJpZ2dlciBhIHdhcm5pbmcgd2hlbiBw
bGFjZWQgZGlyZWN0bHkgdW5kZXIgYSBzaW1wbGUtYnVzLgoKPiArCQkJY29tcGF0aWJsZSA9ICJu
dXZvdG9uLG1hMzVkMS11c2IyLXBoeSI7Cj4gKwkJCWNsb2NrcyA9IDwmY2xrIEhVU0JIMF9HQVRF
PjsKPiArCQkJbnV2b3RvbixzeXMgPSA8JnN5cz47Cj4gKwkJCSNwaHktY2VsbHMgPSA8MT47Cj4g
KwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwkJfTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MjAxMDIyMjIuMjUxMTc5LTEt
YTA5ODcyMDMwNjlAZ21haWwuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
