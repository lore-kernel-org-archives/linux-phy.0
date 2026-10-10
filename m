Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E0EDCA6004
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 12:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9czGwEZTCqln2l5SqrPc+EF4X3HsQJqKZJuaD1TeuQ=; b=xGM77wQFd5vuT2
	1KUGR/LiigirleejT8BfqvHIN7EQTnfjrY9JxJPfbhLZx61TWiVQxKg+laSLvcmDjaIH5UOkIs2iR
	/HtqjYmPHNFfEHNNtAP0Vs8fImddnBVU+nzi1RZiK/nWGM5d5jBybfSwYnzWQ9q/BGZtLIj08OaPG
	zw1AVw6HEaq5lCast0r5wAJg7xhKsg3101U4OlDa5lgU+CfY8jzAXI3U6vWwBHsBaQhpQCMXCUTt4
	S5lCuXbC0YeR3sxyY6c2BpFer9U5ylTtBgsiOB9gRLgoXC3ctMYr6ntqVmW/ZELS0lC474kWI0XOp
	R8pEUXORfcMCRgrmeUfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVsM-0000000800g-0lZq;
	Sat, 10 Oct 2026 12:08:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVsL-0000000800a-2UhB
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 12:08:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AF75860204;
	Sat, 10 Oct 2026 12:08:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C27E21F000FF;
	Sat, 10 Oct 2026 12:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791634108;
	bh=7WHDSx4VLZtcN6zBFrATuVA/bE4Q6wOIlzLajOqITHY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nwAmOnv9XUSWNw1qBJ5zppXWTDJ/whPnTywhOc6oNIU9WyJwffsB/XCKFo6ur7qgr
	 0muVJu8nq2kQHTR3zGYJ8cp1x9ENvlxcK7BitWsFfAFfjzQph3CKYVyDxOB6jSOfHC
	 RD4WWB7ebclZ92XnN3VmV34L8dVY+c9kextqUNThBTMpM+2RXMik3wwYOzbClMe+7i
	 BCR3RW7I/bT7T1zNQgIelV0x+SQAsX4+DaGEsNrpJJWSBupJ20JQj62JEFL+4u7UOS
	 V7SBpXdA64i5ASC+gKZTaUyLUVd8GfWnrBLc57vCy0zBeJFHqTX++XoeT4ReWo6BYh
	 IEdzk3AWkLTXg==
Message-ID: <sashiko-outbox-166487@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 7/7] arm64: dts: mediatek: mt8167: Add HDMI display
 nodes
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: conor+dt@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, linux-clk@vger.kernel.org, olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20261010115539.9237-8-l.scorcia@gmail.com>
References: <20261010115539.9237-1-l.scorcia@gmail.com>
 <20261010115539.9237-8-l.scorcia@gmail.com>
Date: Sat, 10 Oct 2026 12:08:27 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHRzOiBtdDgxNjc6IGhk
bWlkZGMgY29tcGF0aWJsZSBhcnJheSB2aW9sYXRlcyBzY2hlbWEgZW51bSBjb25zdHJhaW50Ci0t
Cgpjb21taXQgYzIwZTIwMzM0NDExYjc1YjRlMmI0NDRjYTE5MWNjYjA0YjJhZDBlZgpBdXRob3I6
IEx1Y2EgTGVvbmFyZG8gU2NvcmNpYSA8bC5zY29yY2lhQGdtYWlsLmNvbT4KCmFybTY0OiBkdHM6
IG1lZGlhdGVrOiBtdDgxNjc6IEFkZCBIRE1JIGRpc3BsYXkgbm9kZXMKClRoaXMgY29tbWl0IGFk
ZHMgdGhlIHJlcXVpcmVkIGRldmljZSB0cmVlIG5vZGVzIHRvIGVuYWJsZSBIRE1JIG91dHB1dCBv
biB0aGUKbXQ4MTY3IFNvQy4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVk
aWF0ZWsvbXQ4MTY3LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE2Ny5k
dHNpCj4gaW5kZXggMjdjZjMyZDdhZTM1Zi4uYWI3NmUwNjM3ZWIxNSAxMDA2NDQKPiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210ODE2Ny5kdHNpCj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNjcuZHRzaQoKWyAuLi4gXQoKPiBAQCAtMTIwLDYgKzE0
MSwxNSBAQCBpb21tdTogbTR1QDEwMjAzMDAwIHsKPiAgCQkJI2lvbW11LWNlbGxzID0gPDE+Owo+
ICAJCX07Cj4gIAo+ICsJCWhkbWlkZGM6IGkyY0AxMTAxMTAwMCB7Cj4gKwkJCWNvbXBhdGlibGUg
PSAibWVkaWF0ZWssbXQ4MTY3LWhkbWktZGRjIiwgIm1lZGlhdGVrLG10ODE3My1oZG1pLWRkYyI7
CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIGNvbXBhdGlibGUgYXJyYXkgdmlvbGF0ZSB0aGUg
ZGV2aWNldHJlZSBzY2hlbWEgY29uc3RyYWludHM/CgpUaGUgbWVkaWF0ZWssaGRtaS1kZGMueWFt
bCBzY2hlbWEgdXNlcyBhbiBlbnVtIGNvbnN0cmFpbnQgZm9yIHRoZSBjb21wYXRpYmxlCnByb3Bl
cnR5OgoKcHJvcGVydGllczoKICBjb21wYXRpYmxlOgogICAgZW51bToKICAgICAgLSBtZWRpYXRl
ayxtdDc2MjMtaGRtaS1kZGMKICAgICAgLSBtZWRpYXRlayxtdDgxNjctaGRtaS1kZGMKICAgICAg
LSBtZWRpYXRlayxtdDgxNzMtaGRtaS1kZGMKClRoaXMgcmVzdHJpY3RzIHRoZSBwcm9wZXJ0eSB0
byBhIHNpbmdsZSBzdHJpbmcgYW5kIHByZXZlbnRzIGZhbGxiYWNrIGFycmF5cy4KCkNvbXBpbGlu
ZyB0aGUgZGV2aWNldHJlZSB3aXRoIG1ha2UgZHRic19jaGVjayB3aWxsIHRocm93IGEgc2NoZW1h
IHZhbGlkYXRpb24Kd2FybmluZyBoZXJlLgoKPiArCQkJcmVnID0gPDAgMHgxMTAxMTAwMCAwIDB4
MTA+Owo+ICsJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTEwIElSUV9UWVBFX0xFVkVMX0xPVz47
Cj4gKwkJCWNsb2NrcyA9IDwmdG9wY2tnZW4gQ0xLX1RPUF8yNk1fSERNSV9TSUZNPjsKPiArCQkJ
Y2xvY2stbmFtZXMgPSAiZGRjLWkyYyI7Cj4gKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwkJ
fTsKPiArCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3Bh
dGNoc2V0LzIwMjYxMDEwMTE1NTM5LjkyMzctMS1sLnNjb3JjaWFAZ21haWwuY29tP3BhcnQ9NwoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
