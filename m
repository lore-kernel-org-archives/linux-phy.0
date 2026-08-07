Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94FA6C2A09B
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 13:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdTRm2q6y3pRv4p/WKRNRSGCWAaHTG91DahlGJREv0E=; b=eEmvTTU+bITa0q
	vAggzEan5MzcSAJuADkd8FcqvjYGZ7w24kO0/37eTchvmlUoYkPmpohnWWef9n6+XTpFHRIqecb7S
	qYufrnDhEimK0rSV9iUaNxVcrcrPSNBrIkZEpUlfMXxet0MACC75HlgSQ6w5Lzm5Hai5JOF31/JA+
	KIMRxNdaY09JpwiuAEMMUmf3hQnj1yBKtcEhEhJBHZrD0kuK5RBQFhgSvA/XA+fN+E2ezgII5BCQW
	lMP4HmxYTh8mfg2p+g/SzkQu6VOpwj8kGoOToB9SeN6fdraljUpyoI1D8ZKEwSJ8t5qPnByXl7F6q
	m/QfJKO3YmGw97PftSSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKIJ-000000084S3-1BVI;
	Fri, 07 Aug 2026 13:07:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKII-000000084Ra-08pR;
	Fri, 07 Aug 2026 13:07:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C4BCC4040F;
	Fri,  7 Aug 2026 13:07:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16CC21F00A3A;
	Fri,  7 Aug 2026 13:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786108045;
	bh=VfGSB4cRPyZ91JBGoqZHrOUvB/yFMHL0qZ43xcXvMEA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QmL2BtEJQdD8xwOQTGZcg1RqhCPOt8nHrKh8n7SxuCS5zBTockhDcJSpzsnAEXEiX
	 XQ7Lz2rluD3gZa4cneu4RJSpCu9urzyncHA51xUGN7rBkoAULhFu6eoxwUII2+prv1
	 gAfAFCPZinp0RLTvhbIm3aPHHly5tQGTOEBUoUwESXVfwwX/HXfr9h0aD/iTP8u5Ee
	 wzDOTbItM0QzfcHr8HSBHKUBJLlPcLrKcxP4FYwKpqVvIir6DonNrLpmNzs5FQWWRz
	 4o/oEEiV9Amm7NohF+r/PUvwbK/Va102NVTt4/PJgh68PkllpVAK9U0al29tKGI0Q2
	 utprM1y1Fh8NQ==
Date: Fri, 7 Aug 2026 15:07:18 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 07/10] phy: rockchip: samsung-hdptx: Consolidate
 consumer_put on error path
Message-ID: <7pshndmrl3yy6oulomog26vjfppcuh6bxbn5fy7rys3w34pizo@psbah2rng6tz>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-7-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-7-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NTBQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IHJrX2hkcHR4X3BoeV9jb25zdW1lcl9wdXQoKSBpcyBpbnZva2VkIGluIGJv
dGggYnJhbmNoZXMgb2YgdGhlIG1vZGUKPiBjaGVjayBjb25kaXRpb25hbCBpbiBya19oZHB0eF9w
aHlfcG93ZXJfb24oKSBvbiB0aGUgZXJyb3IgcGF0aC4KPiAKPiBTaW1wbGlmeSB0aGUgY29kZSBi
eSBtb3ZpbmcgdGhlIHNpbmdsZSBjYWxsIHRvIHRoZSBlbmQgb2YgdGhlCj4gZnVuY3Rpb24uCj4g
Cj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ3Jp
c3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KClJldmll
d2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3Mu
cXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
