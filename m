Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 147D3CD8CAE
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jun 2026 05:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8rp9Q4XhUCRDdpgfApQTizRbRx+fp5ixi6/9ht8/io=; b=QtqhiOFAVYRAoB
	d5fuxXzwkO5j3yYmtE5zTSA7YghxqsrtW7IF8LPTcMqmemqZTfFWv6LseQKFvwSVYoUGqveM5ZprT
	cE1EPvZwUDmNPI66LpvUaqX1V9GI+7qQHYT/OmJlTLpXHVrglYUTqFv/hy6BdYlvKbnn4M3r7Q1XO
	iC0ZPiiQleGviZsabQXN+cIH2rNSfIHsh3oqABBFkR4EOvmLNotbqhWEnIiARg0NeRruc4tLLQybO
	ENeTbv1fOdcwK3T6cuzqvWlvS9D6ChA3GmRrXIzW/6ezxaYvowrDMTcAMiOP23ZzVgHat2anRBhJy
	i3fN2QBT3rbZ+w3p2itg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWono-00000004k8z-3LXj;
	Tue, 09 Jun 2026 05:15:04 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWonn-00000004k8q-3OZP;
	Tue, 09 Jun 2026 05:15:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7A1FA601E1;
	Tue,  9 Jun 2026 05:15:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B518D1F00893;
	Tue,  9 Jun 2026 05:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780982101;
	bh=/mWiyJV71B6TZ8JXu6VdyFVLqLGyT2eKcg2M8VPgZzI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=POEG9hwKBWmaw+Vc4biZ0wBtkhMqw8sNzWx4GqsPAmgQrO5zrCtTUmr7xXYQB0LGs
	 eGNpccNF0PWSOXBqoT0Dq9tSPWEbe0i/We4X1MJo5cAs3zCOCi4WBKz58C3nLchCS1
	 bNzYUDm/1lRyQKh4HUy4iYtg33CK79DFFOmGKq3BZ1M/yX7Y+frpBoO7ynxX/6zKi5
	 RqElCxNNmsI3YOXEA5AnrXaiVoVJh5QAfY42XCrDlYCwtf5kP0iXl1AgJmiAJlgbIr
	 Q+VfDBo3R1LUC8VWLk3jxa16869D/OZ30gfLZmwYenDmJzrfnRBasHKePoZ2vE0WHb
	 pYTt9PNkWAzWw==
Date: Mon, 8 Jun 2026 22:14:59 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Jisheng Zhang <jszhang@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>,
	Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 03/12] riscv: dts: thead: add device tree node for MISC
 clock controller
Message-ID: <aiehUzl-qZeZDjXP@thelio>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
 <20260507081710.4090814-4-zhengxingda@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260507081710.4090814-4-zhengxingda@iscas.ac.cn>
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

On Thu, May 07, 2026 at 04:17:01PM +0800, Icenowy Zheng wrote:
> The MISC_SUBSYS clock controller on TH1520 SoC is a clock controller
> mainly controlling USB-related clocks (which isn't utilized yet) and
> MMC/SD controllers' AHB bus clocks.
> 
> Add the device tree node for it along with the missing bus clock
> references for MMC/SD controllers.

Is there a functional reason to modify the mmc nodes in this series?

Thanks,
Drew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
