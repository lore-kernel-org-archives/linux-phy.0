Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B812BC982ED
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Y/sdhDFohd/OsAAP3LzTPztFeCSMU4FCJyeI5xHqtw=; b=CpRHXy5d/cj9Oq
	qJJjGqJ90PgBj7O5jfHtIJBgg+UcYKj/qJMKcMbtlBGpl1F7qiKu/RJZPejP+mV0w8eaV3jKq8/0k
	BuF6MX8TyUvibf9wINxuynZ7aonils6oseKUeuwMrr19ljj2/3ELeg4ree28ve26g9HpLuZkqPFvo
	32yNDz9kQoQ/PTIAfgm9kUEEw5635eHovKAI9co7CNM/OIm92SeEK/xpUt9IxfrT66qIU1U7I+O9I
	kVIXO4iyvq5bHA06plr168pIyhQCynX4U8KNOE9rrKC/9uIw4mtlKzQ97M8UjOuZn1KBZ7IL4R0UP
	BN8vrn5/xKQ2eUshsgWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8c3c-00000001sm3-1Yii;
	Mon, 21 Sep 2026 11:19:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8c3a-00000001skn-1vJi
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:19:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 019D7434E8;
	Mon, 21 Sep 2026 11:19:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CE051F000FF;
	Mon, 21 Sep 2026 11:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789989573;
	bh=Kmle2851CT2rrH/ZXl9tTf7iQH+HFLHgSHpYkxoiEtM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OQpNcSVrI8jWkTyBEIRPgC5hn0ARe7/4bMaLxMEINJd6DH/pTLw2eE6l42gqfJU4y
	 9kTVcC6Q9sqCw1DkwemWVJmVwOLLn7yFdU7HbavemZKvVdNzEoyKgQ6+OEe/6hdeM0
	 yGGlhNrIsR1fHEk3+NNWX1moUV0JmjWZtL8rFlLJUajWPN3B1THRBwdVp2P/lJM7gG
	 0pQUqdKmdPtF3JvFFIfdFMmcObA1GGZfPSzgRmLQ2R0Wnqy55E1h99UAk/1F4HyoZa
	 OqeTcjf5jpVx//Olce3lT4uRA12i0zupQWVUgS8KkHg1NV3vJM7tZiDf7Puui64rxp
	 AIkQ+9SD4/iXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/6] phy: qcom: qmp-pcie: Add endpoint PHY configuration
 for QCS8300
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: linux-pci@vger.kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, vkoul@kernel.org, conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260921-monaco_ep-v1-3-63c5282fb0db@oss.qualcomm.com>
References: <20260921-monaco_ep-v1-0-63c5282fb0db@oss.qualcomm.com>
 <20260921-monaco_ep-v1-3-63c5282fb0db@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 11:19:32 +0000
Message-Id: <20260921111933.5CE051F000FF@smtp.kernel.org>
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

PiBNb25hY28gc3VwcG9ydHMgUENJZSBFbmRwb2ludCBtb2RlIG9uIGJvdGggUENJZSBjb250cm9s
bGVycy4gUmV1c2UKPiB0aGUgZXhpc3RpbmcgU0E4Nzc1UCBFbmRwb2ludCBQSFkgcHJvZ3JhbW1p
bmcgZm9yIHRoZSAxNiBHVC9zIHgyIFBIWSBhbmQKPiBhZGQgYSBuZXcgMTYgR1QvcyB4NCBFbmRw
b2ludCBQSFkgY29uZmlndXJhdGlvbiB3aXRoIHRoZSByZXF1aXJlZCBSWAo+IHR1bmluZyBwYXJh
bWV0ZXJzLgo+IAo+IFRoaXMgYWxsb3dzIGJvdGggTW9uYWNvIFBDSWUgY29udHJvbGxlcnMgdG8g
b3BlcmF0ZSByZWxpYWJseSBpbgo+IEVuZHBvaW50IG1vZGUuCj4gCj4gU2lnbmVkLW9mZi1ieTog
S3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5j
b20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3VuZCBubyBpc3N1ZXMu
IEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDkyMS1tb25hY29fZXAtdjEtMC02M2M1MjgyZmIwZGJAb3Nz
LnF1YWxjb21tLmNvbT9wYXJ0PTMKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
