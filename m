Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11386CD3427
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSZWt9tJTigjEJK9d0GAJa8Txq/pYntDXu75GYFW6Bk=; b=kjUo9SVGgH04oi
	gbMzeKNkezPfPvOfwYXQQmrIy7U9bTS+OvqGRPlSlC8tTi7Tr9fdcv7s7yp8BvaBM/Ana764g+ILk
	VAwRP6pbiA5BZtmOWMiEFldt2T71V8MoH0kj8SUPqaaHfdH+8pBOOjLw2ch3ZyvTyq2uErjfhMfhd
	lBE5preXt1ZwvZqHmPsoWzf30oKm0G0wEPVwhD5r6z+JxBGyfdkEpZ/JWljO6VtcjfMcCsqwXtTwO
	I/0lpuLUrRKb4KcCL4s21Al7DhEI03T3TFptBhsf4xJ2Lws26scrigldII9gMhUVLBKFmJdRwKemB
	ZchvCSiVOtNbDDA2tMbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CI-0000000AhUz-1mB0;
	Sun, 10 May 2026 12:23:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3CH-0000000AhUa-1hcM
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:23:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D7EE160121;
	Sun, 10 May 2026 12:23:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96487C2BCB8;
	Sun, 10 May 2026 12:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778415828;
	bh=x1WogqHFVAt69woD/1Gf7Lf61vggakdMrNHQ3WQm5Yg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JgCk0u3sKA1e8f+nIhQbrj8DuqU8X0ml4I4RpPPTnqlAThnQE/HCnec8Ian6oZExP
	 YP6lJaQFa1Cu2JZeG9pF8m2Dp5dyPPHUBwqh0T5KlUyeeGBaLQMnVNZYyZMsLlmuNW
	 219aeKJMZbk2zOcXMGHF6cWM4VGncHUc6+OWqv80CErr0gSFgPVedZ+q8k0LRXAfvh
	 ViqAXYCYya0TDeWkUW3HpXIJj4b3gpFetVDXdu4y5W+SOJVv00gLEIEILhjZvqE6Qb
	 WrfvmRyL9GLyoQvPrqbi9zdTQXlpR03htjep8HTaxpXcOk+DB2ZEnxXWrM2XbZZl+S
	 aG9mhG/1CXSog==
From: Vinod Koul <vkoul@kernel.org>
To: Jonathan Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Wei-Cheng Chen <weichengc@nvidia.com>
Cc: Wayne Chang <waynec@nvidia.com>, WK Tsai <wtsai@nvidia.com>, 
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260504033305.2283145-1-weichengc@nvidia.com>
References: <20260504033305.2283145-1-weichengc@nvidia.com>
Subject: Re: [PATCH v2] phy: tegra: xusb: Fix per-pad high-speed
 termination calibration
Message-Id: <177841582520.420676.17804594742388538049.b4-ty@kernel.org>
Date: Sun, 10 May 2026 17:53:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 04 May 2026 11:33:05 +0800, Wei-Cheng Chen wrote:
> The existing code reads a single hs_term_range_adj value from bit field
> [10:7] of FUSE_SKU_CALIB_0 and applies it to all USB2 pads uniformly.
> However, on SoCs that support per-pad termination, each pad has its own
> hs_term_range_adj field: pad 0 in FUSE_SKU_CALIB_0[10:7], and pads 1-3
> in FUSE_USB_CALIB_EXT_0 at bit offsets [8:5], [12:9], and [16:13]
> respectively.
> 
> [...]

Applied, thanks!

[1/1] phy: tegra: xusb: Fix per-pad high-speed termination calibration
      commit: da110228b54f2e2143d97ea7151e0dc22e539d67

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
