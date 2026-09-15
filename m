Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EC00C88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56bjijepLHG2RZNIJ1SRJwDprk+yPcwj8ez4Uia85lA=; b=2iS+KP/I7jzliR
	F9Qz5Y2o1zRNGX8kmmKuPEhTXZuZVbZo4sqre+xd7ZbvKseDEBTx9yi9t8emYynbRmg4SG9Qb9rsz
	L5YlqE9h844/xMBHydpTAUCnl2aosynFh4wyRVsEvWvNhDlJz9NRVDkGCm/jOOdsswNZEQfXa841k
	J01SUdC9xVR0YEEXty6Jq+mKcOKYV+1FuKEPVy7rRDv8vWgN/5cDb+SZuKluBHVXatorA1zUTmH7m
	w16tclEo5eE5rcoc5PmKjgCTKsh5vtzp+JBheMHB72iok8+dqY9PO31JT+BO/LzVNzgFfGAFYjTlq
	ILe6InQsM8l5NuUcYV/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VHB-00000007GAM-0q7W;
	Tue, 15 Sep 2026 15:40:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6VH8-00000007GAA-3N4R
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:40:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C9C5B600C8;
	Tue, 15 Sep 2026 15:40:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD4731F000FF;
	Tue, 15 Sep 2026 15:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486849;
	bh=yPAbk7xHpMR4UIVrHHyhM9TISgEmvd92P6HdWfgzRAA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EwVsqkglB8nG7QQhouls1YoCYwZp6BueS50C5QZ2LEnxBF4uK8Rk0HOPKvNdYquTC
	 skVctbFd3T19TaI4YqtaKiVKMNMdFCbTUgjgNSkHoet7fqhLeybmJj6udQaKTa+8Yp
	 2ROddcj722mbG1T1EAFWl2B7MPRIpJj9woTRWrJKs3cs66jmyc5CRsCfLOLPSVtqfe
	 8xHRks81n7WSpy51DObQ6LGP0VqHc7m1v8QJGZfVl2O9XsR0THaldnj3nX49rbCg19
	 vgJV/zhhzu7HdFKLmn9c23q+jxZcDcMZz4P+q6OY87lIJe8sN+uRHQJEVCIAyz7HFG
	 DmRr1t/IWr+7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 11/20] drm/bridge: inno-hdmi: Make the PHY
 configuration table optional
To: "Michal Wilczynski" <m.wilczynski@samsung.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, olteanv@gmail.com, robh@kernel.org, lee@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, linux-clk@vger.kernel.org, mfd@lists.linux.dev
In-Reply-To: <20260915-jh7110-clean-send-v4-11-f0e4fd6f2cc8@samsung.com>
References: <20260915-jh7110-clean-send-v4-0-f0e4fd6f2cc8@samsung.com>
 <CGME20260915153233eucas1p2e26a6953a31c5f836aeaed03a4ae325e@eucas1p2.samsung.com>
 <20260915-jh7110-clean-send-v4-11-f0e4fd6f2cc8@samsung.com>
Date: Tue, 15 Sep 2026 15:40:48 +0000
Message-Id: <20260915154048.DD4731F000FF@smtp.kernel.org>
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

PiBUaGUgcHJlLWVtcGhhc2lzIGFuZCBkcml2ZS1zdHJlbmd0aCB2YWx1ZXMgaW4gaW5ub19oZG1p
X3BoeV9jb25maWcsIGFuZAo+IHRoZSByZWdpc3RlcnMgdGhleSBhcmUgd3JpdHRlbiB0bywgYmVs
b25nIHRvIHRoZSBQSFkgaW50ZWdyYXRlZCBpbnRvIHRoZQo+IGNvbnRyb2xsZXIuIEEgcGxhdGZv
cm0gd2hvc2UgUEhZIGlzIGEgc2VwYXJhdGUgZGV2aWNlIGhhcyBuZWl0aGVyLCBhbmQKPiBpdHMg
b3duIC5tb2RlX3ZhbGlkIGFscmVhZHkgdmFsaWRhdGVzIHRoZSBwaXhlbCBjbG9jayBhZ2FpbnN0
IHRoZSByZWFsCj4gUEhZLCBzbyB0aGUgdGFibGUgb25seSBib3VuZHMgdGhlIGdlbmVyaWMgY2hl
Y2suCj4gCj4gTGV0IHN1Y2ggYSBwbGF0Zm9ybSBvbWl0IHRoZSB0YWJsZTogc2tpcCB0aGUgaW50
ZWdyYXRlZC1QSFkgcmVnaXN0ZXIKPiB3cml0ZXMgaW4gdGhlIHBvd2VyLXVwIHBhdGggYW5kIHRo
ZSB0YWJsZSBsb29rdXAgaW4gLm1vZGVfdmFsaWQgd2hlbiBpdAo+IGlzIGFic2VudC4gUGxhdGZv
cm1zIHRoYXQgc3VwcGx5IG9uZSBhcmUgdW5hZmZlY3RlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBN
aWNoYWwgV2lsY3p5bnNraSA8bS53aWxjenluc2tpQHNhbXN1bmcuY29tPgoKU2FzaGlrbyBoYXMg
cmV2aWV3ZWQgdGhpcyBwYXRjaCBhbmQgZm91bmQgbm8gaXNzdWVzLiBJdCBsb29rcyBncmVhdCEK
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA5MTUtamg3MTEwLWNsZWFuLXNlbmQtdjQtMC1mMGU0ZmQ2ZjJjYzhAc2Ftc3VuZy5jb20/
cGFydD0xMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
