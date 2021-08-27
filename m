Return-Path: <SRS0=0dgd=NS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 337A7C432BE
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 11:30:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E82EA60FE6
	for <linux-phy@archiver.kernel.org>; Fri, 27 Aug 2021 11:30:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E82EA60FE6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yNhyDrAwyf4PDmAsRX1KD+COs/uiI5I9mLHBNesNEUM=; b=X8bvdzvLW5zOTE
	MNvaY/yoPISbrg81ZskT5KtCIxf4iiFjzM7rqhqobkN+k/Moo2Ctae2L+IcUutMivZ4wgJHtui1dy
	ykif7LInK++0xjW5Xmx5TONJwFJEF/C1tIu5d/QQWD5py0/QB8uQqkEWdZP8aSR2ZXpcTxg4RLtRy
	86jewjc6OXXZncBOzSODseuNYc38l5t7D5ZiDXLvqZsPfymeVSd8pOr0ovQ0iyZp5Y2OFjoh112Ku
	mw9TApXqTK8AtU4H467KO9EeVsI7pFYbypv6RzBD24I7M+MO6VRZc44IcK1E9g+dx6YR5f6BJz24p
	4us1kc57syT17F5nkOFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJa3m-00CKs5-Gt; Fri, 27 Aug 2021 11:30:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJa3j-00CKrU-Ml
 for linux-phy@lists.infradead.org; Fri, 27 Aug 2021 11:30:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPS id 25FD760ED3;
 Fri, 27 Aug 2021 11:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1630063806;
 bh=d65t+subOEG3qQewz7dDf3KopTPvKOUXy2MviZdA920=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=uL+mDg6tMBzXw1zlmg6ITeHMoKt2DDXUSB6zCXD58Bm2W9avoa5R6lUbu1/5ROqP+
 tWyp+WZBBUe47tFnfWGF1axW9734zkGyJGUCtzpGDBeDOGk2BTg7QSBXhG6hN2slau
 nTGP9o8vIywmyhdIBzj1/ORT/tOIinWgAy2b8OHyLWZOejnsdSdKVZMmTLIdLE6iWk
 vMWiPGjwiYgaQDGIx0H2J/dwMfKMS/K8gwJeGl6JMbg2ZrJ7sMYQQR+CYkFBBfOIHJ
 pE6Wu/6Co5t83qS6fb0YoMkhLqfNG+1tiv+kEcUOEaO58EidWX5OtD6RZfeNt7b1S9
 I5pJz+jTdKcow==
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] phy: marvell: phy-mvebu-cp110-comphy: Rename HS-SGMMI
 to 2500Base-X
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <163006380609.3583.7131431178247172365.git-patchwork-notify@kernel.org>
Date: Fri, 27 Aug 2021 11:30:06 +0000
References: <20210827092753.2359-1-pali@kernel.org>
In-Reply-To: <20210827092753.2359-1-pali@kernel.org>
To: =?utf-8?b?UGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4=?=@ci.codeaurora.org
Cc: miquel.raynal@bootlin.com, kishon@ti.com, vkoul@kernel.org,
 rmk+kernel@armlinux.org.uk, andrew@lunn.ch, kabel@kernel.org,
 robh@kernel.org, linux-phy@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210827_043007_803901_179CC0A3 
X-CRM114-Status: UNSURE (   6.70  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGVsbG86CgpUaGlzIHNlcmllcyB3YXMgYXBwbGllZCB0byBuZXRkZXYvbmV0LW5leHQuZ2l0IChy
ZWZzL2hlYWRzL21hc3Rlcik6CgpPbiBGcmksIDI3IEF1ZyAyMDIxIDExOjI3OjUxICswMjAwIHlv
dSB3cm90ZToKPiBDb21waHkgcGh5IG1vZGUgMHgzIGlzIGluY29ycmVjdGx5IG5hbWVkLiBJdCBp
cyBub3QgU0dNSUkgYnV0IHJhdGhlcgo+IDI1MDBCYXNlLVggbW9kZSB3aGljaCBydW5zIGF0IDMu
MTI1IEdicHMgc3BlZWQuCj4gCj4gUmVuYW1lIG1hY3JvIG5hbWVzIGFuZCBjb21tZW50cyB0byAy
NTAwQmFzZS1YLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5v
cmc+Cj4gRml4ZXM6IGViNmExZmNiNTNlMiAoInBoeTogbXZlYnUtY3AxMTAtY29tcGh5OiBBZGQg
U01DIGNhbGwgc3VwcG9ydCIpCj4gRml4ZXM6IGMyYWZiMmZlZjU5NSAoInBoeTogbXZlYnUtY3Ax
MTAtY29tcGh5OiBSZW5hbWUgdGhlIG1hY3JvIGhhbmRsaW5nIG9ubHkgRXRoZXJuZXQgbW9kZXMi
KQo+IAo+IFsuLi5dCgpIZXJlIGlzIHRoZSBzdW1tYXJ5IHdpdGggbGlua3M6CiAgLSBbMS8zXSBw
aHk6IG1hcnZlbGw6IHBoeS1tdmVidS1jcDExMC1jb21waHk6IFJlbmFtZSBIUy1TR01NSSB0byAy
NTAwQmFzZS1YCiAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL25ldGRldi9uZXQtbmV4dC9jLzNm
MTQxYWQ2MTc0NQogIC0gWzIvM10gcGh5OiBtYXJ2ZWxsOiBwaHktbXZlYnUtYTM3MDAtY29tcGh5
OiBSZW5hbWUgSFMtU0dNTUkgdG8gMjUwMEJhc2UtWAogICAgaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9uZXRkZXYvbmV0LW5leHQvYy9iNzU2YmJlYzljZGQKICAtIFszLzNdIHBoeTogbWFydmVsbDog
cGh5LW12ZWJ1LWEzNzAwLWNvbXBoeTogUmVtb3ZlIHVuc3VwcG9ydGVkIG1vZGVzCiAgICBodHRw
czovL2dpdC5rZXJuZWwub3JnL25ldGRldi9uZXQtbmV4dC9jLzBjMWY1ZjJhNTU4MQoKWW91IGFy
ZSBhd2Vzb21lLCB0aGFuayB5b3UhCi0tCkRlZXQtZG9vdC1kb3QsIEkgYW0gYSBib3QuCmh0dHBz
Oi8va29yZy5kb2NzLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3B3Ym90Lmh0bWwKCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
