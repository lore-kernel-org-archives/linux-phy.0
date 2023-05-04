Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51AC1C77B78
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 18:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2qzfrOtpTPDbu7lzlvHWlFtLNZcZM+Dhxv8ChHZUWI=; b=VW5u/jj5dhkKkg
	fpKwXWsxgkKaTXfBAPNYTzKI3Ln22UzK+mpsU9E1uLXxP04F0nNXFjZS72rlLmnO8eKQLWIZ5JRkh
	hq+1KcC3JgDFqmD5E6BU8tXVqVjnz2t5LcuOQ9rcH6KgajVJR6R//j6UcDouYwgYpUaIRrJkfFofQ
	OiM178eL/D5mmFl49L3e0MxPmfD9JMAD98zfKcGb9jfjn8tr2VPF+8z/bx54NDYaSdpAkjpYmPxVf
	ag8JqnUwnughYmImEg8XpajLc8xjypMHILyihbalxEHA/fjEc3LKQlVopPzK7OB3ua9lQdvuOnnfH
	ksuqn3DT6qW1y6xWIDCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pudFy-008Twf-2w;
	Thu, 04 May 2023 18:00:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pudFw-008Tvv-19
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 18:00:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B89F963634;
	Thu,  4 May 2023 18:00:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97661C433D2;
	Thu,  4 May 2023 18:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683223239;
	bh=06QOaU+SpcqPDkz/s2qgwS7uJCNUwPpQEaMShjUZgRQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RZDSNz4lBk8iewUYJAPWmA3pIAWwgyW/Q5ooAHOoyBhT9tBeLHqklA0VwkbHK6tA5
	 LEySSXmzAO7/WM7k+uR7EvoF6FuwIC3PVzfYAcvZafjEmFQO9+G65Lmj7zU9Ip4jG7
	 ETB6dkCVWRPUQX76eg0ZarsKcVt6up7bRax/pCJQSykF2h0f3fuE+JTSluPNQN4kSC
	 4IcmuxdbOy93iNgwV98+Fr+DYaaUffYNGQfCi60+T6rifyhyxU5cX/SBCVBsqyvhbs
	 AyQFC1yKQ4hwwHkKbuOc2CYdYR5XbdoUYvPNFnDO/Vt30sUEEisHLBa0wOkeWCfqaz
	 oyP+/H4KfmhZg==
Date: Thu, 4 May 2023 23:30:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Phy <linux-phy@lists.infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>, llvm@lists.linux.dev
Subject: Re: [GIT PULL]: Generic phy updates for v6.4
Message-ID: <ZFPywqdpgESLD46Z@matsya>
References: <ZFI74eeUzVPKhi4f@matsya>
 <20230504150624.GA1000378@dev-arch.thelio-3990X>
 <ZFPPucb9VNLB8r8v@matsya>
 <CAHk-=wi-ve0h02vsNrzuox58rLXSbzcjay+k=XnUueWRh6cO2Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wi-ve0h02vsNrzuox58rLXSbzcjay+k=XnUueWRh6cO2Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_110040_435887_A9EBCF14 
X-CRM114-Status: GOOD (  23.38  )
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

T24gMDQtMDUtMjMsIDEwOjIzLCBMaW51cyBUb3J2YWxkcyB3cm90ZToKPiBPbiBUaHUsIE1heSA0
LCAyMDIzIGF0IDg6MzHigK9BTSBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPiB3cm90ZToK
PiA+IFNvcnJ5IGJldHdlZW4gdmFjYXRpb24gYW5kIHRyYXZlbCwgdGhpcyB3YXMgbWlzc2VkLgo+
ID4KPiA+IE5vIHdvcnJpZXMgd2UgaGF2ZSBwcm9jZXNzIHRvIGRlYWwgd2l0aCB0aGlzLCBzbyB0
aGlzIHNoYWxsIGdvIGluIGFzCj4gPiBmaXhlcy4uIEkgd2lsbCBkbyB0aGUgbmVlZGZ1bCBzaG9y
dGx5Cj4gCj4gWW91IG5lZWQgdG8gZG8gaXQgKm5vdyouCgpJdCB3YXMgYWxyZWFkeSBkb25lIGEg
Yml0IGFnbyBhbmQgYXBwbGllZCB0byBteSBmaXhlcyBhbmQgc2hvdWxkIGJlIGluCi1uZXh0IHRv
bW9ycm93LiBJIHdpbGwgd2FpdCBhIGRheSBiZWZvcmUgc2VuZGluZyB5b3UgZml4ZXMgdXBkYXRl
LgoKPiBZb3Ugc2hvdWxkIG5ldmVyIGhhdmUgc2VudCB0aGUgcHVsbCByZXF1ZXN0IHRvIG1lIGlu
IHRoZSBmaXJzdCBwbGFjZQo+IGlmIHlvdSBoYWRuJ3QgY2hlY2tlZCB0aGUgc3RhdHVzIGluIGxp
bnV4LW5leHQuCj4gCj4gVGhlIHBvaW50IG9mIGxpbnV4LW5leHQgaXMgdG8gZmluZCBmYWlsdXJl
cy4gQW5kIGlmIHlvdSBkb24ndCB0aGVuCj4gKmNhcmUqIGFib3V0IHRoZSBmYWlsdXJlcywgdGhl
biBpdCBoYXMgYWxsIGJlY29tZSAgZW50aXJlbHkgcG9pbnRsZXNzLAo+IGFuZCBpdCdzIGVmZmVj
dGl2ZWx5IHRoZSBzYW1lIGFzIGlmIGl0IGhhZCBuZXZlciBiZWVuIHRoZXJlIGluIHRoZQo+IGZp
cnN0IHBsYWNlLgo+IAo+IFNvIHRoaXMgbmVlZHMgdG8gZ2V0IGZpeGVkICpQUk9OVE8qLCBhbmQg
aXQgbmVlZHMgdG8gbmV2ZXIgZXZlciBoYXBwZW4gYWdhaW4uCgpBY2ssIGFncmVlIEkgc2hvdWxk
IGhhdmUgcGFpZCBpdCBtb3JlIGF0dGVudGlvbi4gQmV0d2VlbiB2YWNhdGlvbiBhbmQKdHJhdmVs
IGFuZCBzdHVmZiBJIGhhdmUgbWlzc2VkIGl0IHRoaXMgdGltZSwgd2lsbCBlbnN1cmUgdGhpcyBk
b2Vzbid0CmhhcHBlbiBhZ2Fpbi4KCj4gCj4gQmVjYXVzZSBpZiBpdCBkb2VzIGhhcHBlbiwgSSB3
aWxsIGNvbnNpZGVyIHlvdXIgY29kZSB0byBlZmZlY3RpdmVseQo+IG5ldmVyIGhhdmUgYmVlbiBp
biBsaW51eC1uZXh0LCBhbmQgdGh1cyBqdXN0IG5vdCBiZSBhbiBvcHRpb24gZm9yCj4gcHVsbGlu
Zy4KPiAKPiBUaGlzIGlzbid0IGRlYmF0YWJsZS4gWW91IGRvbid0IHB1dCB0aGluZ3MgaW4gbGlu
dXgtbmV4dCwgaWdub3JlIHRoZQo+IHJlcG9ydHMsIGFuZCB0aGVuIHNlbmQgdGhpbmdzIHVwc3Ry
ZWFtIGFueXdheS4KPiAKPiBJZiB5b3UgZG9uJ3QgaGF2ZSB0aW1lIHRvIGNoZWNrIHRoZSBzdGF0
dXMgb2YgeW91ciB0cmVlIGluIGxpbnV4LW5leHQsCj4geW91IGRvbid0IGhhdmUgdGhlIHRpbWUg
dG8gZG8gYSBwdWxsIHJlcXVlc3QuIFRoYXQncyBqdXN0IGhvdyBpdAo+IHdvcmtzLgo+IAo+ICAg
ICAgICAgICAgICAgICAgICAgICBMaW51cwoKLS0gCn5WaW5vZAoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
