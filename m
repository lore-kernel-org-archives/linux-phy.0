Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 601F3C4345F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Apr 2024 11:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGqPospRmEI/qcmDs8dAWOC7KRv4bqujEhsKHJ45XLs=; b=OeN9acBstvMTS8
	1wqLS2fCrHdPDClKgaiCFb0tAiuP2XB5iGJb+M75Hsv5W7W3E51UE0T/AV5ZG3MsqzACXpjj7foNI
	ssLeHYoR/xJ4Esx1IRCSLPYQTu+9MBphVlaVwH9Qpvm4okur6VkmSceB3ghM16SbDNQwohV8/XF9Y
	3HtlYzV8Vcd+CvO/qULyr6sZUhiGcg8RTVM7pp0RDAKZN+KkeRSEvrNo+ec4WsHLQeXQpKcpvLMZN
	jV2VV/NRTC/Us93sTh3PqwyF2AUdalu9HtRhoAs+ZrpOxZCgwzvl55v0au438gS4Wlwdeq2LsA2/U
	OCNPCiMdzyGmSfQ22KVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFCc-0000000GxVo-1svc;
	Fri, 12 Apr 2024 11:36:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvFCU-0000000GxPm-09YQ
	for linux-phy@lists.infradead.org;
	Fri, 12 Apr 2024 11:36:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 589D861BBA;
	Fri, 12 Apr 2024 11:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22A0AC113CD;
	Fri, 12 Apr 2024 11:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712921769;
	bh=2K0ocYh+mcoqTSBBpUDEzORES90ZTOdiCbK8YN+VJlc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TLDNY4nEGF/9GWTF/vPKunv6hKwYAOsbMuHne40e5B2LlkVqFG+I0bmNnFTLNcpzj
	 mLRs7TQPmjltd4zNx9WgLuza2R4LeQ9A0YQoFNnI379pWAeUSFHjCMuT0E6WCBP6O2
	 BaTVaiwTGH6BNJjdUVD4pgQS9T5m6VqPlZ+AbwjiXpWdk2zGvlbXy7yeS6lZofRiin
	 ndoVura5AK8FrelBGA6n7mMAR1ewdKDJEm41ImfXIH2khRvZVToaCKK9RYeZU9vEBs
	 XzO3Taq4YDXJI80eSS/QSapKJ9NIlfYB/MJfHz9sTuZtcEY/wt3MPy792hPa8aecfo
	 SpSGKmKhme4SA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>, 
 Marco Felsch <m.felsch@pengutronix.de>, kernel@pengutronix.de, 
 linux-phy@lists.infradead.org
In-Reply-To: <20240409161505.66619-2-u.kleine-koenig@pengutronix.de>
References: <20240409161505.66619-2-u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: Convert to platform
 remove callback returning void
Message-Id: <171292176673.599803.15644867894293201983.b4-ty@kernel.org>
Date: Fri, 12 Apr 2024 17:06:06 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_043610_502152_C3F04E30 
X-CRM114-Status: UNSURE (   8.34  )
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

Ck9uIFR1ZSwgMDkgQXByIDIwMjQgMTg6MTU6MDYgKzAyMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdy
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
dmUoKS4KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gcGh5OiBmcmVlc2NhbGU6
IGZzbC1zYW1zdW5nLWhkbWk6IENvbnZlcnQgdG8gcGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJl
dHVybmluZyB2b2lkCiAgICAgIGNvbW1pdDogYzQ5ZGU1NGM2MjI0MTAzYWI5YzRiOTg0NjRiMDNh
YjgyNzIxODM5YQoKQmVzdCByZWdhcmRzLAotLSAKflZpbm9kCgoKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
