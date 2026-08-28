Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCB2DC61DD3
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 13:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEu/DD3AM7UqWBqUK+eubbU/eCNypHrncz18Khwv/eg=; b=MlC4XFpx2NHquV
	PV0AqsQWzuM03v1VjCfZk38Gg6pgHoUlu7cNOUGw969DyfDjyC6pOvpGmIKBjx5y3wJVtvCm+wrz/
	2VPOcZv4S07MUlKEZHV8oVIHbmAMHm5hdRhdybJ7gIeAlxE+cfxinmFhqdGoG6AFJaTNhzos2TleD
	1IzKfkLCHC1Ar3qRYlr46S5ORem5dT0lHIncDIXyxLEYovIRBdsG5bcqq1mVI2Mkoi3L5cdelWXkt
	tdoCAOsvx/1D8qzsvQIsIlWOrAnJiek0tVugoTk0ngVF1jQPixbUVEzRdfGXSwCle4non3za45u4G
	CkRp/EUCufvt+dAqru2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx20-00000005vA6-1vEe;
	Fri, 28 Aug 2026 13:54:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzx1y-00000005v9K-3Hl8
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 13:54:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 896F342A2A;
	Fri, 28 Aug 2026 13:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFEEE1F00A3A;
	Fri, 28 Aug 2026 13:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787925246;
	bh=maQivNSpVB6XnV3+sMBf45xqEAzNIfoDtkLG4/jfn8c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ca3Y43Chb02BOJL6TOm2FitB7BSMh0O48UZybds5F69yKQ9Zw+q7IHt9xIb7xndDF
	 R4RLcUp5Z2GO4iWA+vsf+XrF3mOA8Yptv+L19DUD3cZHFWBvKeoetGVlEIn+JCO+Zk
	 +Ef1ieO5BJI1jJg3q/P+2FNtQ3G+o1t8F5+yUSK1zLC6CQwgqjC3izyarMb9FbuddK
	 l9TmFrftUE1bQMPhktQybucAr1cIUosw9ECGrr0vLnbhLQal1WjjzB0ZVspApyrIfJ
	 tOhmvwrNtnhxAAR/dddL0E88TOvj+qVRFQ4bVmvWWDxCWBAYnRTJO7z1PZxTDusuv5
	 Wva5yANyblIEA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 01/15] dt-bindings: phy: Add
 starfive,jh7110-inno-hdmi-phy
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: devicetree@vger.kernel.org, lee@kernel.org, vkoul@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, mfd@lists.linux.dev, neil.armstrong@linaro.org, robh@kernel.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com
In-Reply-To: <20260828-jh7110-clean-send-v2-1-331680c8b9d1@samsung.com>
References: <20260828-jh7110-clean-send-v2-0-331680c8b9d1@samsung.com>
 <CGME20260828134815eucas1p2b2aabc17e9cc6346e5a93bde5c650958@eucas1p2.samsung.com>
 <20260828-jh7110-clean-send-v2-1-331680c8b9d1@samsung.com>
Date: Fri, 28 Aug 2026 13:54:04 +0000
Message-Id: <20260828135405.CFEEE1F00A3A@smtp.kernel.org>
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

PiBBZGQgdGhlIGR0LWJpbmRpbmcgZm9yIHRoZSBTdGFyRml2ZSBKSDcxMTAgSW5ub3NpbGljb24g
SERNSSBQSFkuCj4gCj4gVGhpcyBkZXZpY2UgaXMgYSBjaGlsZCBvZiB0aGUgc3RhcmZpdmUsamg3
MTEwLWhkbWktc3Vic3lzdGVtIG5vZGUuIEl0Cj4gZnVuY3Rpb25zIGFzIGJvdGggYSBQSFkgcHJv
dmlkZXIgZm9yIHRoZSBjb250cm9sbGVyIGFuZCBhcyBhIGNsb2NrCj4gcHJvdmlkZXIgZm9yIHRo
ZSB2YXJpYWJsZSBwaXhlbCBjbG9jayAoaGRtaV9wY2xrKSwgd2hpY2ggaXQgZ2VuZXJhdGVzCj4g
ZnJvbSBpdHMgcmVmb2Nsay4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2lsY3p5bnNraSA8
bS53aWxjenluc2tpQHNhbXN1bmcuY29tPgoKU2FzaGlrbyBoYXMgcmV2aWV3ZWQgdGhpcyBwYXRj
aCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEKCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA4Mjgtamg3MTEwLWNs
ZWFuLXNlbmQtdjItMC0zMzE2ODBjOGI5ZDFAc2Ftc3VuZy5jb20/cGFydD0xCgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
