Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BC29C55162
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 20:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gP/gUTc/6MdejWxpyefSaB0MSuwyrjQMvYZf84QNoug=; b=2l9JXBDUx9Y3zz
	ZZi2rwJRG0eni2gg3gB4B/Cc8liAvK7OjGdqd0nT2J84GNjEuZ7orZLisu8p0NC3yrNqJV2Yz42XI
	XfQ6C6d4iHcDJcJBUHxdsrvZkYziF3/+PVAOXEhDIncb1+WadEVKTsk4OJheYnrve/DvnUr5ctlmG
	rpUq0ZEE8+yrS96IwSL6tQT9nV7WB7jHMf9CraK2vKGXC5MxRiBUEcRrUMQY0gig93dAlH8UVXC7X
	RaxX+InCkXxvqS6K1tOvKwBD3O2GULp7s2zatPo5BvFHh2WXy7XCqagHskmWk2SWBRB2A/H0SUkyI
	msEVXGRbvZpd4mLU3P5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqd17-0000000G2vN-0wC8;
	Sun, 02 Aug 2026 20:42:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqd15-0000000G2vH-2Rtf
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 20:42:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C6CEC403CD;
	Sun,  2 Aug 2026 20:42:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AEB51F000E9;
	Sun,  2 Aug 2026 20:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785703358;
	bh=Yzb1IUVtrW/BYGvbNYqw8sM94sCUSt7uUetrixeRpLk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AhFM6tLiYWx3M/zhtNlbl0Klo2wDddDOAnv7z8gd4n1EGUC0bY3IEK2PQXYP7iwZ4
	 TLdzu93kvGQciUYohuXIRKRdjcrDPjINzjc0J38U8XgPa821GYyde9Z7ynZLBVUpVk
	 QWDDDLXhPfm/7EAtZnjuSBEx8rECc3p364trFPWjGKb4qw+lf3jW8TOC5a9xsYEgU0
	 +vAgf83P6nJoOXuteK7+9ZUVFYpHQiftsxiCCbONw9Yiwmu9KRr1ZAQjYD/9gOqEQd
	 QKwrLPw0Y9QtfSPYesl3bqKhikiqCYZw/N+e6Jv3fN8tGtFQVQxP1cBpQkj/zIcLY2
	 VW0cWgWwkjO+Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 02/12] dt-bindings: clk: zte: Add zx297520v3 matrix
 clock and reset controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, mfd@lists.linux.dev, lee@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260802-zx29clk-v9-2-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-2-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 20:42:37 +0000
Message-Id: <20260802204238.1AEB51F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gT3ZlcmxhcHBpbmcg
bWFjcm8gZGVmaW5pdGlvbnMgaW4gc2hhcmVkIGR0LWJpbmRpbmdzIGhlYWRlcnMgY3JlYXRlIGEg
bmFtaW5nIGNvbGxpc2lvbiByaXNrLgotLQoKLS0tIFBhdGNoIFsyXTogW1BBVENIIHY5IDAyLzEy
XSBkdC1iaW5kaW5nczogY2xrOiB6dGU6IEFkZCB6eDI5NzUyMHYzIG1hdHJpeCBjbG9jayBhbmQg
cmVzZXQgY29udHJvbGxlciAtLS0KY29tbWl0IDUwNGYzYzUzOTNmNGE4MTQ0NTA4NDUzZDM4YzMw
NmViMGYyNWMzZjQKQXV0aG9yOiBTdGVmYW4gRMO2c2luZ2VyIDxzdGVmYW5kb2VzaW5nZXJAZ21h
aWwuY29tPgoKZHQtYmluZGluZ3M6IGNsazogenRlOiBBZGQgengyOTc1MjB2MyBtYXRyaXggY2xv
Y2sgYW5kIHJlc2V0IGNvbnRyb2xsZXIKClRoaXMgY29tbWl0IGFkZHMgZGV2aWNlIHRyZWUgYmlu
ZGluZ3MgZm9yIHRoZSB6eDI5NzUyMHYzIG1hdHJpeCBjbG9jayBhbmQKcmVzZXQgY29udHJvbGxl
ci4gSXQgaW50cm9kdWNlcyBuZXcgbWFjcm9zIGZvciBjbG9ja3MgYW5kIHJlc2V0cyBpbiB0aGUK
ZXhpc3RpbmcgenRlLHp4Mjk3NTIwdjMgaGVhZGVycyB0byBzdXBwb3J0IHRoZSBtYXRyaXhjcm0g
YmxvY2suCgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3p0ZSx6eDI5
NzUyMHYzLWNsay5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2My1j
bGsuaAo+IGluZGV4IDNhZWQ5NGNjYzI2ZmUuLmE4NDc3ZTliMmExNDkgMTAwNjQ0Cj4gLS0tIGEv
aW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2My1jbGsuaAo+ICsrKyBiL2lu
Y2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svenRlLHp4Mjk3NTIwdjMtY2xrLmgKPiBAQCAtNjMsNCAr
NjMsNDUgQEAKPiAgI2RlZmluZSBaWDI5NzUyMFYzX0hTSUNfV0NMSwkJCTU0Cj4gICNkZWZpbmUg
WlgyOTc1MjBWM19IU0lDX1BDTEsJCQk1NQo+ICAKPiArI2RlZmluZSBaWDI5NzUyMFYzX1NZU19U
SU1FUl9XQ0xLCQkwCj4gKyNkZWZpbmUgWlgyOTc1MjBWM19DUFVfV0NMSwkJCTEKCltTZXZlcml0
eTogTWVkaXVtXQpDb3VsZCB0aGlzIG5hbWluZyBjb252ZW50aW9uIGxlYWQgdG8gc2lsZW50IG1p
c2NvbmZpZ3VyYXRpb25zIGluIGRldmljZSB0cmVlcz8KClRoZXNlIG5ldyBtYXRyaXhjcm0gbWFj
cm9zIHNoYXJlIHRoZSBleGFjdCBzYW1lIFpYMjk3NTIwVjNfIHByZWZpeCBhcyB0aGUKZXhpc3Rp
bmcgdG9wY3JtIG1hY3JvcyBpbiB0aGlzIGhlYWRlciwgYW5kIHRoZWlyIGluZGljZXMgc3RhcnQg
b3ZlciBhdCAwLgoKU2luY2UgYm90aCBzZXRzIG9mIG1hY3JvcyByZXNvbHZlIHRvIHZhbGlkIGlu
dGVnZXJzIHdpdGhpbiB0aGUgc2FtZSBuYW1lc3BhY2UsCmFjY2lkZW50YWxseSByZWZlcmVuY2lu
ZyBhIHRvcGNybSBtYWNybyBpbnN0ZWFkIG9mIGEgbWF0cml4Y3JtIG1hY3JvIGluIGEKZGV2aWNl
IHRyZWUgd2lsbCBub3QgdHJpZ2dlciBhIGNvbXBpbGVyIGVycm9yLCBtYWtpbmcgaGFyZHdhcmUg
bWlzY29uZmlndXJhdGlvbnMKZGlmZmljdWx0IHRvIGRlYnVnLgoKWyAuLi4gXQoKPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC96dGUsengyOTc1MjB2My1yZXNldC5oIGIv
aW5jbHVkZS9kdC1iaW5kaW5ncy9yZXNldC96dGUsengyOTc1MjB2My1yZXNldC5oCj4gaW5kZXgg
ZjYwYWFjY2YwZjRkNy4uZDc5ZmE2MDFhZmE2OCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2R0LWJp
bmRpbmdzL3Jlc2V0L3p0ZSx6eDI5NzUyMHYzLXJlc2V0LmgKPiArKysgYi9pbmNsdWRlL2R0LWJp
bmRpbmdzL3Jlc2V0L3p0ZSx6eDI5NzUyMHYzLXJlc2V0LmgKPiBAQCAtMjcsNCArMjcsMTYgQEAK
PiAgI2RlZmluZSBaWDI5NzUyMFYzX1VTQl9SRVNFVAkJCTE4Cj4gICNkZWZpbmUgWlgyOTc1MjBW
M19IU0lDX1JFU0VUCQkJMTkKPiAgCj4gKyNkZWZpbmUgWlgyOTc1MjBWM19DUFVfUkVTRVQJCQkw
Cj4gKyNkZWZpbmUgWlgyOTc1MjBWM19ERFJfQ1RSTF9SRVNFVAkJMQoKW1NldmVyaXR5OiBNZWRp
dW1dCkRvZXMgdGhpcyBjYXJyeSB0aGUgc2FtZSBuYW1lc3BhY2UgY29sbGlzaW9uIHJpc2sgYXMg
dGhlIGNsb2NrIG1hY3JvcyBhYm92ZT8KClNpbmNlIHRoZSBtYXRyaXhjcm0gcmVzZXQgaW5kaWNl
cyBhbHNvIHN0YXJ0IGF0IDAgYW5kIHVzZSB0aGUgaWRlbnRpY2FsClpYMjk3NTIwVjNfIHByZWZp
eCBhcyB0aGUgZXhpc3RpbmcgdG9wY3JtIHJlc2V0IGRlZmluaXRpb25zLCB0aGVyZSBpcyBubyBi
dWlsdC1pbgpwcm90ZWN0aW9uIGFnYWluc3QgbWl4aW5nIHRoZW0gdXAgd2hlbiB3cml0aW5nIHRo
ZSBkZXZpY2UgdHJlZS4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28u
ZGV2LyMvcGF0Y2hzZXQvMjAyNjA4MDItengyOWNsay12OS0wLWQwNTUzMGQ4NWQyOEBnbWFpbC5j
b20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
