Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10640C61DB9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 08:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=at+pLhncb8qBI1C/CbNrw5vf8NildTYK5bDjydxR20E=; b=oLkwjjhDnsVLjU
	nUZqMctQquJ8XzMNMpTc2V6l0yxOqfrh335BV5FqXWrtGYDnAWQJ997N0bs3ByXovPiYkypey5Xab
	oVFQDmUQWAARVpVAbWI/5raJv5eKzMFTVrpgDpMgBf9RoCXHgQdM9ji/G6ciTK5a65L2AB2EgMH3r
	QWUj4FoNcr8Bw9NqD5FqKIkqjvN2ax05ReqRgZMpQyQQL4ivqxCXUfAsVjXJCykqH9bzeo8woExEE
	hD1uxyL9q0uXftf/FGWju8qKrLRyQ/7T31TQA6mAid/rmSHntOlrit//S64wAjg7qapZD9uccTtnb
	gLpivVaR7Kgfsy4tpCig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsHE-00000005Lll-2XUB;
	Fri, 28 Aug 2026 08:49:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsHC-00000005LhV-2vsg
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 08:49:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F3BA960209;
	Fri, 28 Aug 2026 08:49:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FB061F000E9;
	Fri, 28 Aug 2026 08:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787906969;
	bh=N/WZfwxHlf3MqIuYmN1yGO9l65CagoSx2/iPktSBTMQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LGQDdA6zQQpaOJp+m+67hD6PBJ5iFewCqGt41Zcvvgl1amdunLON+7/pg2Y8uea31
	 lr36kx0J273C/H4a2RO9mLeEyK79nJ1huvivASEWgua5qOeFYkM7yyX3zU6zLWrEza
	 4Ib18HW13QStzvs7dxGydII5wt/oDDuWdUKqtxGF8De4R1/dH5Qeu9jWR5lGmIassT
	 oE89nSni7U9dTgqY8kZiqPEvkdmhYI7nS2EzQoR614EVEKvxddQvQZio45Ia/wj0H+
	 RcOCd2tBd4d5teglTTM32CxIrYUa6LTYml311s7QFHVsidEl/5m1DuITtzNndwX1RM
	 BMjSyAd+9el+A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-pci@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260828-nord-v2-2-18bf59d19d6f@oss.qualcomm.com>
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
 <20260828-nord-v2-2-18bf59d19d6f@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 08:49:28 +0000
Message-Id: <20260828084929.2FB061F000E9@smtp.kernel.org>
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

PiBBZGQgdGhlIHFjb20sbm9yZC1wY2llIGNvbXBhdGlibGUgc3RyaW5nIHRvIHRoZSBRdWFsY29t
bSBQQ0llCj4gY29udHJvbGxlciBiaW5kaW5nLgo+IAo+IFRoZSBOb3JkIFBDSWUgY29udHJvbGxl
ciBpcyBjb21wYXRpYmxlIHdpdGggdGhlIFNBODc3NVAgUENJZQo+IGNvbnRyb2xsZXIgaW1wbGVt
ZW50YXRpb24gYW5kIHJldXNlcyB0aGUgc2FtZSBiaW5kaW5nIGRlZmluaXRpb24uCj4gCj4gU2ln
bmVkLW9mZi1ieTogS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9z
cy5xdWFsY29tbS5jb20+CgpTYXNoaWtvIGhhcyByZXZpZXdlZCB0aGlzIHBhdGNoIGFuZCBmb3Vu
ZCBubyBpc3N1ZXMuIEl0IGxvb2tzIGdyZWF0IQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDgyOC1ub3JkLXYyLTAtMThiZjU5ZDE5
ZDZmQG9zcy5xdWFsY29tbS5jb20/cGFydD0yCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
