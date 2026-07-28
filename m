Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6125FC53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 21:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YfnO85vgmRFXPITWoFPuqv3tUfLL+rhOUAQTbi0T6w=; b=xFMdkCsCX01wRm
	+NJp7qOuth1zevXyiZUjwj2GFiRXCzzBc/numN/X52U6sJDq0CC/lulqmR0feCgrtiWtMO9zrttX7
	g2HeOWNSGgsuomLqKbYBnxoPOFVKUGIGLJBYalRcKSb3dGZ8N+As7y6OLfI8D7jKk53cQfYuEcMxE
	cMqM+bPEZV93QRoSY50ru1bDaz8WqR6RLH6KcNyJYnmByLDAV49umEJS6e2y31qrXpoIpu67hAoiQ
	y+MO9wfwK6Ois40Chgjv2VXqQbThg45ts5hI4tw9XQfd3qtu/9rs12n28THxxSOGRbKFO3Zl8ELfm
	swSOe1zxITNw/XKPwoBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wopbX-00000006MML-2W7w;
	Tue, 28 Jul 2026 21:44:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wopbV-00000006MLv-2xB2
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 21:44:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C2F4460A5E;
	Tue, 28 Jul 2026 21:44:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EE3F1F000E9;
	Tue, 28 Jul 2026 21:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785275088;
	bh=ydnGs5+SvUGu/cMH0rWpcTt/UFbIzII65j9MTyYxVuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LFJZswlJbEZ5vCLjwKbIc+cUiUQu4KuMDbtT9X0e0fVpXUZ2lwxtWE7LDD+adU5uB
	 bQQwcJvtW510W7ZYm344cpnMROEbSEoG2xRWx8YIw3L52POaUSaVhOzzMRRNsPuhKd
	 DfLsBSf5/qW0MCeToYHyYtYAvLjiM3x8vzOklguIcu0CQvwM+HblPMBGMIPEbtK61o
	 jZLPz3sUXECucqlTgSslsLiGMF6XHYV3YnhzoJVI69xtcz7Cc0l+d+8JNhd5AoAciQ
	 nG3UbgjpTs7/WPFiIp/cVZln5NCXKb7h0AoDwooGM7B66r6P2z//3nBgT0Q2pRWEnO
	 xY4L9srP0vZwQ==
Date: Tue, 28 Jul 2026 14:44:46 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Wei Fu <wefu@redhat.com>,
	Drew Fustini <dfustini@tenstorrent.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Han Gao <rabenda.cn@gmail.com>,
	Yao Zi <ziyao@disroot.org>, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 2/2] phy: add a driver for T-Head TH1520 USB PHY
Message-ID: <amkizlBd6lUUG08g@x1>
References: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
 <20260723084316.3573714-3-zhengxingda@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723084316.3573714-3-zhengxingda@iscas.ac.cn>
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

On Thu, Jul 23, 2026 at 04:43:16PM +0800, Icenowy Zheng wrote:
> The USB PHY on T-Head TH1520 SoC is a Synopsys USB 3.0 FemtoPHY, with
> some PHY parameters exported as another system controller along with it.
> 
> As a few PHY parameters' default value isn't ready to work, add a driver
> configuring them before letting the PHY run, in addition to
> clock/reset/regulator management.

The second paragragh might read better as:

"A few PHY parameters have unusable defaults. Add a driver that programs
them before releasing the PHY from reset. [..]"

Thanks,
Drew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
