Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FBF2C9832F
	for <linux-phy@archiver.kernel.org>; Sun, 27 Sep 2026 21:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEE305s0gDp6XTrxwFzILuf0zTVXybVfkuUODVihkRs=; b=Eb6sonbgnOivNC
	3L/XwjuGVu7eIrHA/bF6gpldlst/BOTrcT8UW5u2M3lC2OSy+mUSH2GSwE6j4DUyxFf7/Vn7Tf2pf
	n7Bq9Z6g6X6M9euOazw227UmCXuCtec8WqqujUegoMYksbw+OJaq77Qui1cHfSCKD7v2OsSRiMmPQ
	Oirn6xgMR+K6l/js42OKw83JyckcxJq7Iopghd0vkVBkUyebTilpkKrkN4aAi5u1oni1Bo/KsD8ki
	FUJp8fM7P/w1NnY1cwuWhyYNDmGqaZ/JbBIdl1Onfrj8J+DyLvkuOooIof9eon51hPiiToBDSZaNP
	NDOfdCg6id4joZ36mrYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvyf-0000000GrL1-40mB;
	Sun, 27 Sep 2026 21:00:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAvyf-0000000GrKv-10ME
	for linux-phy@lists.infradead.org;
	Sun, 27 Sep 2026 21:00:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D872C43AC8;
	Sun, 27 Sep 2026 21:00:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30CA21F000FF;
	Sun, 27 Sep 2026 21:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790542804;
	bh=ECHXd0Gx47fFhedt/UnYKtwYHQCncZ3Rp4xDBN0Azvw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IZLjf55RnAVlD9c7Vjf6Zdyeb9JA7nRcoZDVqpYXnK2EeJEa6K1nMxyz0F9qm8KZj
	 uudohVcF4wSWPjn9dLyfFHzKqiCM253xjq46MN1xnKcFyIbok1+OibBra8QIrv89/0
	 QVrOvV1kJWjN3n1Vc25FIOjjii840sr9tUt4Z85+6+n4nYMv9LoGR3luO7bkpkm+Gi
	 z8m8zfX8ZEhEnkpp39+0BHP3370wM/voAmVyooobNDZCPa8jq+cAhck5S1aCtG6yAp
	 t2w0Qz52bFYi/qXwdJWxL7neZv0uJJ2ko7eGV6YeRjaWoj30GRrnHDA8bi7d1mScBB
	 lHJ2Q7dtNRIRQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 09/13] clk: zte: Introduce a driver for zx297520v3
 top clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org, olteanv@gmail.com, mfd@lists.linux.dev, lee@kernel.org, linux-clk@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260927-zx29clk-v13-9-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
 <20260927-zx29clk-v13-9-70d8f673386c@gmail.com>
Date: Sun, 27 Sep 2026 21:00:03 +0000
Message-Id: <20260927210004.30CA21F000FF@smtp.kernel.org>
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

PiBUaGlzIHJlZ2lzdGVyIHNwYWNlIGNvbnRyb2xzIGNvcmUgZGV2aWNlczogUExMcywgdGhlIEFI
QiBidXMsIGEgbG90IG9mCj4gdGltZXJzLCB0aGUgVVNCIGNvbnRyb2xsZXIsIHRoZSBDb3J0ZXgg
TTAgcHJvY2Vzc29yIHRoYXQgYm9vdHMgdGhlIGJvYXJkCj4gYW5kIGEgZmV3IG90aGVyIGRldmlj
ZXMuIEZvciBzb21lIHJlYXNvbiB0aGUgTFRFIGNvcHJvY2Vzc29yIGlzIGFsc28KPiBwYXJ0aWFs
bHkgY29udHJvbGxlZCBieSBpdC4gVGhlIG1haW4gYXBwbGljYXRpb24gcHJvY2Vzc29yIGFuZCBE
RFIKPiBtZW1vcnkgYXJlIG5vdCBmb3VuZCBoZXJlIHRob3VnaC4KPiAKPiBUaGUgcmVnaXN0ZXIg
dG8gcmVib290IHRoZSBib2FyZCBpcyBmb3VuZCBoZXJlLCBhcyB3ZWxsIGFzIGEgcmVnaXN0ZXIg
dG8KPiBjb250cm9sIHdoZXRoZXIgd2F0Y2hkb2cgZXhwaXJpZXMgY2F1c2UgYSBib2FyZCByZXNl
dC4KPiAKPiBSZXZpZXdlZC1ieTogQnJpYW4gTWFzbmV5IDxibWFzbmV5QHJlZGhhdC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWlsLmNv
bT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4g
SXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtv
LmRldi8jL3BhdGNoc2V0LzIwMjYwOTI3LXp4MjljbGstdjEzLTAtNzBkOGY2NzMzODZjQGdtYWls
LmNvbT9wYXJ0PTkKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
