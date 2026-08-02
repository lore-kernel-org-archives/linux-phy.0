Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FE0AC55174
	for <linux-phy@archiver.kernel.org>; Sun,  2 Aug 2026 20:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkWkLiAkSWCtdcxg7Zr+P/lkq9PGRHgmpVXwN1G7f2Q=; b=SfffA6KTVKy0wj
	lN6g3b2tHuAiUhP6CKOnpdLBQGqUWiDUKOjA/YMYrA4Co6VDNPyt8qPPmzZYt+Puot260REv2iClU
	XvNZ1nHqZMlgkQGaA4fEKi7nFn/kS4iLSzn+Yc2OHHktXZkZH5E+JHsZwytUf/zeRuSfKjQ5H28VB
	FN+Q3/etgRs6HZt8DlvvEfWvtXuES70b+K+EMqTv1kOmS4N3utL3Dzrm8YWcnxig91kEZhpJC2ghW
	z4NFPQzx3vYdcfX0luNRbRqSnJjnBeMf4DgEHJ695E6CScuolJrCnqucIeGRZu62VKjxN6c3DAXyJ
	v8L55Bd8TBymE+9levHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdHI-0000000G3Kw-2aX8;
	Sun, 02 Aug 2026 20:59:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqdHH-0000000G3Kq-1n2c
	for linux-phy@lists.infradead.org;
	Sun, 02 Aug 2026 20:59:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 252A943AEE;
	Sun,  2 Aug 2026 20:59:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 554AA1F000E9;
	Sun,  2 Aug 2026 20:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785704363;
	bh=tLhe6NREIwjUModbpD3CsNyDmKnFvMNpUw+OMwsi7w8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fpfCFephWRgW8jaDnE9/VLKECYAPjTpg8BUNeUKnw4ZOo2cnOYZW+/1mgNInzAhQA
	 TZdBySx1catRmpIk2c+jJVmxe2k/p2RFi+Tmv02hFwAdsfuMvVkgHpSnuQjPanNjJ2
	 pCHN0w51Mmaerws4vHsp3iD35DazQMEoMaFmDnIy21XcuUe6SV52sTZIXuiLNu98DF
	 QMn7L/2EQvOywHTLXU/UOo9jiR5o4VuhVziJvvNwBmRyl15anCJWYFNku3/tQ44e2N
	 JORliBmS9cx7/tYPW9Me1fcgmt8oQyhI3cMtCSKTJRZ/FwCvstz0zqXbdfo/TsID/G
	 BML3SAfilgGUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 10/12] clk: zte: Introduce a driver for zx297520v3
 LSP clocks
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: conor+dt@kernel.org, lee@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260802-zx29clk-v9-10-d05530d85d28@gmail.com>
References: <20260802-zx29clk-v9-0-d05530d85d28@gmail.com>
 <20260802-zx29clk-v9-10-d05530d85d28@gmail.com>
Date: Sun, 02 Aug 2026 20:59:21 +0000
Message-Id: <20260802205922.554AA1F000E9@smtp.kernel.org>
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

PiAiTFNQIiBpcyBaVEUncyB0ZXJtIGZvciB0aGlzIHBhcnQgb2YgdGhlIFNvQywgSSBzdXNwZWN0
IGl0IHN0YW5kcyBmb3IKPiAibG93IHNwZWVkIHBlcmlwaGVyYWxzIi4gVGhlIG1haW4gVUFSVCBp
cyBoZXJlLCB0b2dldGhlciB3aXRoIHRoZSBmbGFzaAo+IGNvbnRyb2xsZXIgYW5kIG1vcmUgc3Vy
cGx1cyBwcm9wcmlldGFyeSB0aW1lcnMuCj4gCj4gSXQgYWxzbyBoYXMgb25lIG1vcmUgSTJDIGNv
bnRyb2xsZXIgdGhhdCBzdXBwb3NlZGx5IGNvbm5lY3RzIHRvIGEKPiBiYXR0ZXJ5IGNoYXJnZXIs
IFNQSSBmb3IgZGlzcGxheXMgYW5kIEkyUyBmb3IgYW5hbG9nIHRlbGVwaG9uZXMuIFRoZQo+IGJv
YXJkcyBJIGhhdmUgZG9uJ3QgaGF2ZSBhbnkgb2YgdGhlc2UgY29tcG9uZW50cyB0aG91Z2guCj4g
Cj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIETDtnNpbmdlciA8c3RlZmFuZG9lc2luZ2VyQGdtYWls
LmNvbT4KClNhc2hpa28gaGFzIHJldmlld2VkIHRoaXMgcGF0Y2ggYW5kIGZvdW5kIG5vIGlzc3Vl
cy4gSXQgbG9va3MgZ3JlYXQhCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODAyLXp4MjljbGstdjktMC1kMDU1MzBkODVkMjhAZ21h
aWwuY29tP3BhcnQ9MTAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
