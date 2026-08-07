Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7748C5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vaz+ElTY/XQDH8lPZfrXAyUF/+5XwxDRYKZCan8JPuk=; b=Wk21vsvHNzO+jD
	1p+QPjrURY18yZWH8z6Cbhvc396dTyG8rfO+oZ2AEvhZHxUulB0+GvG7oCZ3K/P1gBEn/1z3IWT2y
	c8nuazHRJDOA5JKKe/WjPtQFjpxzrGtjS1crJCpTlsW0R1TPL93ZEdMDl5Gqi82BLEoHOVBdKhnmt
	jsh759g4j8iIajp/ZHomr5DG0y0okHVqUMnTII6Yhb0JsWhVw/O3qUxSxTe/pu2QjpRoEav6LUAwU
	rEbjIASuuTy7Ggcx/EOz3svM0Usgzd8jRh3qx/Rc9zmjqy4xlXDHt56IDHdE/2P4SrveC9oLn0L3V
	aUnpSscVxrk1icxWV/dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK9I-000000082wG-1XYs;
	Fri, 07 Aug 2026 12:58:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK9G-000000082vg-1mSe;
	Fri, 07 Aug 2026 12:58:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A7DA940322;
	Fri,  7 Aug 2026 12:58:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7950F1F000E9;
	Fri,  7 Aug 2026 12:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786107484;
	bh=nCBMWcitatTJabf7wK8SLh17rK3LgMa3gsz/Kq7ZCPk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=T3HKPohsyH+vrIfS+xfAbgMr9BPPFO4lT2+WuyDKr1Uo/iwUlZNdIBg8yP5px0DyW
	 0Pc+W13JbNfWtmi8fDlihPhQQ853C6N36hwJdXmVmOq5svRyCbqEWvMhKRvwDB4WoN
	 zkIk+idpOa51XgdINfgqr9Ajgo/qturgcC37QspmviC3oA5NnV6UewlOXOhI+DNyTQ
	 QlzmmLzPiQ3wdE+pbPOmgYnFI/O1aliYGQXp56HYyfZtDHlTkbYxMnMtIPfXadoNlo
	 8v80MsE5ek8P7z+tWnR3dbBJwFUG4FKPn5V0EmsJ6bF0BD1jHjdeZaKhScm3PI5RKC
	 7qGZVRXQKmcaA==
Date: Fri, 7 Aug 2026 14:57:55 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>, 
	Diederik de Haas <diederik@cknow-tech.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v5 04/10] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for 3.2GHz FRL
Message-ID: <ejrrn7ryqjduxcadevo72ekujtsmmph6ijiywnvakpgidxi2ml@4dyx7anjoabk>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-4-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-4-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NDdQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IHJrX2hkcHR4X3BoeV9jbGtfY2FsY19yYXRlX2Zyb21fcGxsX2NmZygpIGlz
IGN1cnJlbnRseSB1bmFibGUgdG8gaGFuZGxlCj4gY2FzY2FkZSBtb2RlIGZvciB0aGUgMy4yR0h6
IEZSTCBvcGVyYXRpbmcgbW9kZSwgYXMgaXQgcmVsaWVzIHNvbGVseSBvbgo+IExDUExMX0xDVkNP
X01PREVfRU5fTUFTSyB0byBkZXRlcm1pbmF0ZSB0aGUgcmF0ZSBmcm9tIHRoZQo+IHJrX2hkcHR4
X2ZybF9sY3BsbF9jZmcgYXJyYXkuICBTaW5jZSB0aGVyZSBpcyBubyBlbnRyeSBmb3IgdGhpcwo+
IHBhcnRpY3VsYXIgcmF0ZSwgdGhlIGZ1bmN0aW9uIHJldHVybnMgMC4KPiAKPiBUaGlzIGlzIHRo
ZSBvbmx5IHJhdGUgd2hpY2ggcmVxdWlyZXMgTENfUkVGX0NMS19TRUwgdG8gYmUgc2V0IGluCj4g
R1JGX0hEUFRYX0NPTjAsIGhlbmNlIGV4dGVuZCB0aGUgRlJMIG1hdGNoaW5nIGFjY29yZGluZ2x5
Lgo+IAo+IFJlcG9ydGVkLWJ5OiBTYXNoaWtvIDxzYXNoaWtvLWJvdEBrZXJuZWwub3JnPgo+IENs
b3NlczogaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjExLWhkcHR4LWNsay1m
aXhlcy12My0wLTY3YjFiMGMwMGUxNkBjb2xsYWJvcmEuY29tP3BhcnQ9MQo+IEZpeGVzOiBkZTVk
YmE4MzMxMTggKCJwaHk6IHJvY2tjaGlwOiBzYW1zdW5nLWhkcHR4OiBBZGQgSERNSSAyLjEgRlJM
IHN1cHBvcnQiKQo+IFRlc3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ct
dGVjaC5jb20+ICAjIE5hbm9QQy1UNiBMVFMKPiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtv
diA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgo+IFJldmlld2VkLWJ5OiBBbmR5
IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4g
Q2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5
OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNv
bW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
