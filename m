Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 012D2CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 17:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptS45iOqR0Uh0B8VwkTA1aiq/i7m7vuwV5ZT1+y5PGo=; b=JQeeV3KM4wnYel
	MBFRXsxF4vnBw31uTuofsF/YTj/sXqcWFlFbm9FSmYiFI/5aab7X00xGzKbV+UUDn8CXlLUIufgFB
	TBJxLvdGg+q6zgk43oEFvUFn+XEmS/Y55wizHezRRTXW5IPD2iID180PoXAeCfZL8fKR/U86fQHul
	5amVuR3y+ffORw/QLmblnijtlOZqzsZqdUzsP+0JDym3BT6f4bO4SKE3aQx8Q6nBejGZZbmdlLc+j
	BfggHlgtSlxmz0K2NOGdRkGvzNsKYRxMVLhuh3oAm9lxQX/HkNT5xSKe8IgoZO6FoP+XBPup6ONqs
	yBLpbZVK32e8fFUL6+ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn43-000000089mc-2HqW;
	Fri, 05 Apr 2024 17:09:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn3x-000000089id-2eTj;
	Fri, 05 Apr 2024 17:09:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 185706190F;
	Fri,  5 Apr 2024 17:09:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BCAEC433C7;
	Fri,  5 Apr 2024 17:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712336952;
	bh=8t2H8FLs/1/uH2aIckaTpiaoX1z48XV57VOz781Bu7k=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=niema7RpOjQRX0mF+8zXga2Ek+PXt1OT186fSnAwFgJXx5m56RbEDz2AQzOuFCPXO
	 B1Rjhqxglpl/8njLO+brFP7Nm4bQ99DEryCK14l2WyKQOdChnNV/wlagvXHfBkzNKJ
	 LcMNZyJpB1/F+tzpl2o/FXDar2XfD3pWio41vU1ut5/l87110O3pzTw65KScN7a3A9
	 DinCApdIb4i4q5IVEOxIC+O/L03m7gx9QID9sHgFNv7+0zkA6AVevQHt22iOYkOIZ7
	 Cbieh3HznQg4oxU2+8VT+LJamzPUGsrPTYVjwtsq0bJ8PFoTAc+70xKz/OpzegpfPk
	 pIiNh8qqf4Sbg==
From: Vinod Koul <vkoul@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michal Simek <michal.simek@amd.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
In-Reply-To: <57a3338a1cec683ac84d48e00dbf197e15ee5481.1709886922.git.u.kleine-koenig@pengutronix.de>
References: <57a3338a1cec683ac84d48e00dbf197e15ee5481.1709886922.git.u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] phy: xilinx: Convert to platform remove callback
 returning void
Message-Id: <171233694977.304553.16769485052582751352.b4-ty@kernel.org>
Date: Fri, 05 Apr 2024 22:39:09 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_100913_780526_C194377C 
X-CRM114-Status: UNSURE (   9.04  )
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

Ck9uIEZyaSwgMDggTWFyIDIwMjQgMDk6NTE6MTMgKzAxMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdy
b3RlOgo+IFRoZSAucmVtb3ZlKCkgY2FsbGJhY2sgZm9yIGEgcGxhdGZvcm0gZHJpdmVyIHJldHVy
bnMgYW4gaW50IHdoaWNoIG1ha2VzCj4gbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3Vt
ZSBpdCdzIHBvc3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5Cj4gcmV0dXJuaW5nIGFuIGVy
cm9yIGNvZGUuIEhvd2V2ZXIgdGhlIHZhbHVlIHJldHVybmVkIGlzIGlnbm9yZWQgKGFwYXJ0Cj4g
ZnJvbSBlbWl0dGluZyBhIHdhcm5pbmcpIGFuZCB0aGlzIHR5cGljYWxseSByZXN1bHRzIGluIHJl
c291cmNlIGxlYWtzLgo+IAo+IFRvIGltcHJvdmUgaGVyZSB0aGVyZSBpcyBhIHF1ZXN0IHRvIG1h
a2UgdGhlIHJlbW92ZSBjYWxsYmFjayByZXR1cm4KPiB2b2lkLiBJbiB0aGUgZmlyc3Qgc3RlcCBv
ZiB0aGlzIHF1ZXN0IGFsbCBkcml2ZXJzIGFyZSBjb252ZXJ0ZWQgdG8KPiAucmVtb3ZlX25ldygp
LCB3aGljaCBhbHJlYWR5IHJldHVybnMgdm9pZC4gRXZlbnR1YWxseSBhZnRlciBhbGwgZHJpdmVy
cwo+IGFyZSBjb252ZXJ0ZWQsIC5yZW1vdmVfbmV3KCkgd2lsbCBiZSByZW5hbWVkIHRvIC5yZW1v
dmUoKS4KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gcGh5OiB4aWxpbng6IENv
bnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCiAgICAgIGNv
bW1pdDogN2RjYjg2NjhhZWRjNTYwM2NiYTFmMjYyNWM2MDUxYmVmZjAzNzk3ZAoKQmVzdCByZWdh
cmRzLAotLSAKflZpbm9kCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
