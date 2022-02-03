Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E816C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 21:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=posFnHza//XLmRjwJwKbzVt2fchgIxyns6YjlXPnOTw=; b=mSXRC6KULMPjdS
	SKmeTOLo6MwMMHaYhIYTW4rdESq/9zMPOVFY6Re77sYQ3RiwhjBC12aCFQf3I8QXO1AG4dxPaBYks
	+nz+abjnT6P6xE0+DOxhgdm+Fx8CnvH+uuQyOvZEozJHsGUQmqswO/K+IymY0mdiz9PZNanDRvNiE
	56Ce6LC59ePWXx80QXgKlo9KDJkVnpFw9OvYoyhyh5dhJZsmVQizbBI8q+RHgA14vmkjnVmLUyqaZ
	cxin4mpivPoe8ADbqSDLJdYuilZ6ufvqaPSAbSKUBCRHQ60e8n9Yzvo0Dvxx19PBu5KG0l+5/Y/ru
	S5KTPddpbLEEjmIHR/rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFjuQ-002zbX-L4; Thu, 03 Feb 2022 21:44:54 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFjuN-002zac-9a
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 21:44:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 02B3BB83599;
 Thu,  3 Feb 2022 21:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2655C340E8;
 Thu,  3 Feb 2022 21:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643924688;
 bh=S4IcmWFgeEX5Rbg7yY3zjfyPk5tegN86fESCn+C8fo0=;
 h=From:To:Cc:Subject:Date:From;
 b=k5vQw+WtF5eUy9/pI1Hn8nuvU7u6z+UF5Xv75qyG6RwylvDGckI0IM3pxwJ6vXbbd
 oqsdj90fdj666FAmkJzH2C3/LgrFNujqRHjULs1/o4iCs37CMIgn5VCTL8yxEBkyWO
 SazewB8KyxqWl2155cbjeikqG1W5ithgnZaz6hT6QrTlVQ+1M2k3GHRK0r7yXn2kt7
 mq0WTR2lYjCuM9w9sUgui1ZURegX66dtenRa6YWwM7AyvSCBpG23f9w/I5vx19Ly0B
 SKYqA25JNSCeNoBb1Xrbr/a+S6Mb+OBL8BjiwQtuvi+N/wp3IHasyxIIiVwoeqQwnI
 Yh4O7RAi6nskg==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH phy v4 0/5] Armada 3720 comphy native implementation
Date: Thu,  3 Feb 2022 22:44:39 +0100
Message-Id: <20220203214444.1508-1-kabel@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_134451_638932_EB195C0A 
X-CRM114-Status: GOOD (  14.25  )
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

SGVsbG8gVmlub2QsCgp0aGlzIGlzIHY0IG9mIHNlcmllcyBjb252ZXJ0aW5nIEEzNzIwIGNvbXBo
eSB0byBuYXRpdmUga2VybmVsCmltcGxlbWVudGF0aW9uLgoKVGVzdGVkIG9uIFR1cnJpcyBNT1gg
YW5kIEVTUFJFU1NPYmluICh0ZXN0ZWQgYWxsIHN1cHBvcnRlZCBQSFkgbW9kZXM6CmV0aGVybmV0
LCBQQ0llLCBVU0IzLCBTQVRBKS4KCkNoYW5nZXMgc2luY2UgdjM6Ci0gYWRkcmVzc2VkIFZpbm9k
J3MgY29tbWVudHMsIHNlZQogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDIy
MDIwMzIyMzkxMy40MWU5ZjM3NUB0aGlua3BhZC9ULyN1Ci0gY2hhbmdlZCBjb21tZW50IG9mIHN0
ZXAgMTIgaW4gbXZlYnVfYTM3MDBfY29tcGh5X2V0aGVybmV0X3Bvd2VyX29uKCkKICBhIGxpdHRs
ZQoKQ2hhbmdlcyBzaW5jZSB2MjoKLSByZW1vdmVkIGRldmljZS10cmVlIGNoYW5naW5nIHBhdGNo
LCBHcmVnb3J5IGFwcGxpZWQgaXQgb24gbXZlYnUvZHQ2NAotIGNoYW5nZWQgcmF3IHNwaW4gbG9j
ayB0byBvcmRpbmFyeSBzcGluIGxvY2sKLSBmaXhlZCBpbmRlbnRhdGlvbiBvZiBnYmVfcGh5X2lu
aXRfZml4Ci0gdXNlIEZJRUxEX1BSRVAoKSBtYWNybwoKQ2hhbmdlcyBzaW5jZSB2MSAoYWxsIGNo
YW5nZXMgaW4gcGF0Y2ggMi82KToKLSByZWZhY3RvcmVkIHRvIHVzZSBHRU5NQVNLKCkKLSBmaXhl
ZCB2YXJpb3VzIHJlZ2lzdGVyIG5hbWVzIHRvIGNvbmZvcm0gdG8gRnVuY3Rpb25hbCBTcGVjaWZp
Y2F0aW9uCi0gcmVmYWN0b3JlZCB2YXJpb3VzIHJlZ2lzdGVyIG5hbWVzIHRvIGhhdmUgdW5pZm9y
bSBuYW1pbmcKLSByZWZhY3RvcmVkIHJlZ2lzdGVyIGFjY2VzcyBpbnRvIG9uZSBmdW5jdGlvbiwg
d2hpY2ggZGVjaWRlcyB3aGV0aGVyCiAgdGhlIGFjY2VzcyBzaG91bGQgYmUgZGlyZWN0IG9yIGlu
ZGlyZWN0LCBzbyBhcyB0byBub3QgaGF2ZSBhbGwgdGhlc2UKICBjaGVja3MgZG9uZSBldmVyeXdo
ZXJlIGluIHRoZSBjb2RlCi0gbW92ZWQgYXJvdW5kIG9uZSByZWdpc3RlciBkZWZpbml0aW9uIHRv
IGhhdmUgdGhlIHJlZ2lzdGVycyBzb3J0ZWQKICBhY2NvcmRpbmcgdG8gdGhlaXIgb2Zmc2V0Ci0g
YWRkZWQgY29tbWVudHMgdG8gc29tZSByZWdpc3RlciBkZWZpbml0aW9ucwotIGFkZGVkIHN1cHBv
cnQgZm9yIFBIWSByZXNldCgpIG1ldGhvZAotIHdoZW4gY2hhbmdpbmcgUEhZIG1vZGUsIHRoZSBk
cml2ZXIgbm93IHJlc2V0cyB0aGUgUEhZIGFuZCBpdHMKICByZWdpc3RlcnMgdG8gcHV0IHRoZSBQ
SFkgaW4ga25vd24gc3RhdGUKLSBmaXhlZCB0aGUgcG93ZXJfb2ZmKCkgbWV0aG9kCi0gYWRkZWQg
c3BpbmxvY2sgZ3VhcmQgd2hlbiBhY2Nlc3NpbmcgUEhZIFNlbGVjdG9yIHJlZ2lzdGVyLCBzaW5j
ZSBpdAogIGlzIHNoYXJlZCBiZXR3ZWVuIHRoZSBQSFlzIGFuZCBzbyB0aGUgUEhZIG11dGV4IGlz
IGluc3VmZmljaWVudAotIHVwb24gZHJpdmVyIHByb2JlIGNoYW5nZWQgdGhlIGNhbGxzIHRvIHBv
d2VyX29mZigpIHRvIHJlc2V0KCkKCgpUaGUgb3JpZ2luYWwgY292ZXIgbGV0dGVyIHNhaWQ6CgpU
aGUgUlBDIGNhbGxpbmcgdG8gQVJNIFRydXN0ZWQgRmlybXdhcmUgaW1wbGVtZW50YXRpb24gb2Yg
QXJtYWRhIDM3MjAKY29tcGh5IGRyaXZlciBjYXVzZWQgcXVpdGUgYSBudW1iZXIgb2YgaXNzdWVz
IChleHBsYWluZWQgbW9yZSBpbiBwYXRjaCAyKS4KClRoaXMgc2VyaWVzIGZpeGVzIHRob3NlIGlz
c3VlcyBieSByZWltcGxlbWVudGluZyB0aGUgZHJpdmVyIHRvIG5hdGl2ZQprZXJuZWwgaW1wbGVt
ZW50YXRpb24uCgpUaGUgbGFzdCAzIGNvbW1pdHMgcmV2ZXJ0IGNvbW1pdHMgaW4gQUhDSSwgVVNC
LCBhbmQgUENJIGRyaXZlcnMsIHRoYXQgd2VyZQppbnRyb2R1Y2VkIHRoZXJlIGJlY2F1c2Ugb2Yg
dGhvc2UgaXNzdWVzLgoKUGFsaSBSb2jDoXIgKDUpOgogIHBoeTogbWFydmVsbDogcGh5LW12ZWJ1
LWEzNzAwLWNvbXBoeTogUmVtb3ZlIHBvcnQgZnJvbSBkcml2ZXIKICAgIGNvbmZpZ3VyYXRpb24K
ICBwaHk6IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21waHk6IEFkZCBuYXRpdmUga2VybmVs
IGltcGxlbWVudGF0aW9uCiAgUmV2ZXJ0ICJhdGE6IGFoY2k6IG12ZWJ1OiBNYWtlIFNBVEEgUEhZ
IG9wdGlvbmFsIGZvciBBcm1hZGEgMzcyMCIKICBSZXZlcnQgInVzYjogaG9zdDogeGhjaTogbXZl
YnU6IG1ha2UgVVNCIDMuMCBQSFkgb3B0aW9uYWwgZm9yIEFybWFkYQogICAgMzcyMCIKICBSZXZl
cnQgIlBDSTogYWFyZHZhcms6IEZpeCBpbml0aWFsaXphdGlvbiB3aXRoIG9sZCBNYXJ2ZWxsJ3Mg
QXJtCiAgICBUcnVzdGVkIEZpcm13YXJlIgoKIGRyaXZlcnMvYXRhL2FoY2kuaCAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAgMiAtCiBkcml2ZXJzL2F0YS9haGNpX212ZWJ1LmMgICAgICAg
ICAgICAgICAgICAgICB8ICAgIDIgKy0KIGRyaXZlcnMvYXRhL2xpYmFoY2lfcGxhdGZvcm0uYyAg
ICAgICAgICAgICAgIHwgICAgMiArLQogZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZh
cmsuYyAgICAgICAgfCAgICA0ICstCiBkcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcw
MC1jb21waHkuYyB8IDEzNTAgKysrKysrKysrKysrKysrKy0tCiBkcml2ZXJzL3VzYi9ob3N0L3ho
Y2ktbXZlYnUuYyAgICAgICAgICAgICAgICB8ICAgNDIgLQogZHJpdmVycy91c2IvaG9zdC94aGNp
LW12ZWJ1LmggICAgICAgICAgICAgICAgfCAgICA2IC0KIGRyaXZlcnMvdXNiL2hvc3QveGhjaS1w
bGF0LmMgICAgICAgICAgICAgICAgIHwgICAyMCArLQogZHJpdmVycy91c2IvaG9zdC94aGNpLXBs
YXQuaCAgICAgICAgICAgICAgICAgfCAgICAxIC0KIDkgZmlsZXMgY2hhbmdlZCwgMTIyNiBpbnNl
cnRpb25zKCspLCAyMDMgZGVsZXRpb25zKC0pCgotLSAKMi4zNC4xCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
