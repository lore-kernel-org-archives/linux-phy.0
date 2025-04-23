Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03AF7C369D1
	for <linux-phy@archiver.kernel.org>; Wed, 23 Apr 2025 13:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UeeF5E98m94nLBD05B938hLKnF6S5p9mEX1Ltu67ZI=; b=1PlrFcRjQBdTzs
	s6MVs+e+ci4KUZW1hHy14uwL6/NS30XSy+y31ctcSy7CP+1H2kPWwFrli6b03n02NstvBquZ/vmYj
	j+5wm2601kKPlMgqdCC5AplcVvvlC0HzhR1p4cguFTyeJ4z7a2d1+Ki6HVW6Mrx+RFPxNp6frs4UY
	h6CdWf12wtUvzy5S+5RbPeSVIx0Tm9De9FieC7J8tuYAxrbJ+rUUj8Ahj5tD9LJUuYQ7pnH9c8Ljx
	p62ED8EPVAj+yWcDAfGDE30R3X4NCieawyt9DQ1qSgOpL2JF8JO+j/WJoAfYsF00Xw5w9aUbtNX3Q
	cd/FthKSUldjEQcEVaZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7aWO-0000000AgEc-2x6E;
	Wed, 23 Apr 2025 13:52:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7ZIM-0000000AU1t-2Nxt;
	Wed, 23 Apr 2025 12:33:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D8EAF615EA;
	Wed, 23 Apr 2025 12:33:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 374AEC4CEE2;
	Wed, 23 Apr 2025 12:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745411621;
	bh=1OZA2BJ+ka4V8KUJAigHCTHxTTWKg7dPGzgtDNIHTbI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pxypDDlDgf8d/WAnT+0dNXjXiQcZe4Trx2Jt6dlXQzkSYMhzDXzY51HP5vpTOOFkO
	 T0b3u+xyiS7D4HuB2QjG2e9gwoItjgaPkHFffgS0scXFCuk0NUqDtf8f+ymMv6UZTS
	 nd8FtNDyw2kzcHGVwH5D2Dyu1bWq7khN9lcIALDmth1cjWRePNHE2+pgM9GldoTJEb
	 6Sl0Fjzy85zidXpU51tMbbQCDEdszE427KuejLgHU6+zi0z4GntP69I8fH1yTb3wsk
	 JKECKIBaTgdm82Fk6qGs9jat7F+0LsEDIGPrbm9WIErcaoDiT+36Bto3/Fg4sUpI9l
	 EsUwchrXV3pPw==
Date: Wed, 23 Apr 2025 07:33:39 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Daniel Golle <daniel@makrotopia.org>,
	Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 1/8] dt-bindings: arm: mediatek: add bpi-r4 2g5 phy
 variant
Message-ID: <20250423123339.GA191369-robh@kernel.org>
References: <20250422132438.15735-1-linux@fw-web.de>
 <20250422132438.15735-2-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250422132438.15735-2-linux@fw-web.de>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Apr 22, 2025 at 03:24:24PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add new compatible for Bananapi R4 with 2.5G phy.
> Base board is compatible with existing BPI-R4 only 1 SFP is replaced
> by RJ45 port and use mt7988 internal phy.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>

You didn't add Krzysztof's acks on these patches.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
