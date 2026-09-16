Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AE68C88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 06:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhU8dwqsuMTTdoYqq0ichFZnUgtCuwz6v/NDXJhSMwQ=; b=XSWvGrxZXO3sO3
	i8dKin9riui4axmtyiALuMcN/TNlrtMuSyKb0lCWKxRaiOUUHTy45APj2Wukp3ZfDagTqY5XC2b4S
	tbTQskjUhMNpMiVBxzZy6W0spT8Zi0Lj1CCUndsIIs3dzQ7gHS+ANFeplReicz7DLkBIZbB9NRLsg
	QNycID0ypsvH+D1b/q/NH31i/2poxQ0uRlSHDI8yW52p5kLlYphHLgpIi6qqPPWq9krpo7L6HQVBr
	tWmyW9oymeca0LDWqhXj69imgHsKfPoTS/tLXJvzPehcGywZuJXkfccGSYAGVwEGlv9qj0KuhpknI
	8oLBKi4hp3tuADalrBCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6irQ-00000008Sdy-2es3;
	Wed, 16 Sep 2026 06:11:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6irO-00000008SdO-2FKK
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 06:11:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B754D60210;
	Wed, 16 Sep 2026 06:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F1121F000FF;
	Wed, 16 Sep 2026 06:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789539069;
	bh=NCLyW2U7Cg7iRtEr6A2o9YjBvnZgZgctra/PFVpckUA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C3rv1RDfeh43O/M5nmjX8g+3W5clExB8IyPiMhC4P4n1YPAJ0tGiXLu0kKruqV0+f
	 W4g6bLuqmePiJmGVJFtE47Kfx06cgYb8T2CoEnsn+7f+JobGTpog+ybcMJYPDYhlzO
	 bgCcHP913cjxe5fDZpuxlrKGN+KMGBQhoCxX3tGb4u+D8AwNLSt70ezcbK01w8pghD
	 mB15k9wL0g40oBKKIpQ1eCF746XpttbX6HLTOON1+BHl3GHIknaBws1uu5tDke5A1S
	 1KmwrCrB7Axa1uJRLhEmnJ17WjkriOarCqY0pt4u9qI2WAp94aUdr6ktbiIMF1+5LP
	 NP7qPG16VMsaA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/4] phy: qcom-qmp-pcie-multiphy: Split phy_ops into
 init/exit/reset/power_on
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-3-0b2195836f30@oss.qualcomm.com>
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
 <20260915-align_pcie_init_sequence_0916-v1-3-0b2195836f30@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 06:11:08 +0000
Message-Id: <20260916061109.1F1121F000FF@smtp.kernel.org>
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

PiBQZXIgSFBHLCB0aGUgY29udHJvbGxlciBub3cgY2FsbHMgcGh5X2luaXQoKSBmcm9tCj4gcWNv
bV9wY2llX2hvc3RfaW5pdCgpIGFuZCBwaHlfcmVzZXQoKSBmcm9tIGluc2lkZSBpdHMgb3duIGNv
cmUgcmVzZXQKPiBhc3NlcnQvZGVhc3NlcnQuIE1ha2luZyB0aGF0IGFjdHVhbGx5IGhhcHBlbiBo
ZXJlIG5lZWRzIHBoeV9vcHM6OmluaXQKPiBhbmQgcGh5X29wczo6cmVzZXQgaW1wbGVtZW50ZWQs
IGFuZCBwaHlfb3BzOjpwb3dlcl9vbiBhZGp1c3RlZCB0bwo+IG1hdGNoLiBTcGxpdCB0aGUgY29t
YmluZWQgcGh5X29wczo6cG93ZXJfb24vcG93ZXJfb2ZmIGludG8KPiBwaHlfb3BzOjppbml0L2V4
aXQvcmVzZXQvcG93ZXJfb24gdG8gZG8gdGhhdC4KPiAKPiBwaHlfb3BzOjppbml0IGVuYWJsZXMg
cG93ZXIgZG9tYWlucywgcmVndWxhdG9ycywgYW5kIGFsbCBQSFkgY2xvY2tzCj4gKHBpcGUgY2xv
Y2sgZmlyc3QpLiBwaHlfb3BzOjpyZXNldCBkb2VzIHRoZSBuby1DU1IgcmVzZXQgYXNzZXJ0Lwo+
IGRlbGF5L2RlYXNzZXJ0L2RlbGF5LiBwaHlfb3BzOjpwb3dlcl9vbiBpcyBsZWZ0IHdpdGgganVz
dCB0aGUgUENTCj4gc3RhdHVzIHBvbGwuIHBoeV9vcHM6OmV4aXQgbWlycm9ycyBwaHlfb3BzOjpp
bml0IGluIHJldmVyc2U7Cj4gcGh5X29wczo6cG93ZXJfb2ZmIGlzIGRyb3BwZWQgc2luY2Ugbm90
aGluZyByZW1haW5zIGZvciBpdCB0byBkby4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8
cWlhbmcueXVAb3NzLnF1YWxjb21tLmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0
Y2ggYW5kIGZvdW5kIG5vIGlzc3Vlcy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSBy
ZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTE1LWFsaWduX3Bj
aWVfaW5pdF9zZXF1ZW5jZV8wOTE2LXYxLTAtMGIyMTk1ODM2ZjMwQG9zcy5xdWFsY29tbS5jb20/
cGFydD0zCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
