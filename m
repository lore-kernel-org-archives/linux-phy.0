Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18EB1C3ABDE
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 12:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csRHW6nSBBXu9/MGdWslIRMNiJaNWgPYgGHnkNvxIog=; b=oZi5lnZxAd/sLT
	wMjjJ6pf3B4VraspLsheUGDW5kBYiWWNtg7sQwEC6mqNZljEKi4Pmndz3SzOIDrNbVYXCpnT4vGj2
	2IE8Z0Mct5OgQmywTiWJduHVPw5mGEYBJGjAbtrlAObO7/MUfOXgh8ZEN7ozxk8xR3Z/TLR2KNhz+
	YONHo5+6yseN8yDRWZ+bN0F6YUAnOovEBiGhSP6AAAFaRmTlvGDZfqcuniIwaVjd+Nvw0FHXdOFtX
	jpphzABBlG0FZuRRqPRRUnrAOlG+znw+N8NNFel3isNbo0MHBF64A+L3BexJGgruZGXu6EEFZZ5Ku
	VyFdIiBkMcJPeEAfXw9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFB6K-0000000F4bc-1hH6;
	Wed, 14 May 2025 12:20:44 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQT-0000000EuRj-1tMB;
	Wed, 14 May 2025 11:37:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 933B2A4D38D;
	Wed, 14 May 2025 11:37:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FF1FC4CEEB;
	Wed, 14 May 2025 11:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222648;
	bh=QBZg9ajvmrl3SpUn5aZzbOp5nzqEVoNIB4YA06ESVQs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=T7WeLSqNOdHzt4AbmZhuc1tD0i4CAtVNQ8HjgGVnFn7UGSdetiaAcZ691NtRjOoPc
	 /OKootVEK0361QHSVwDGD812DW865qfS7q6iaqhC6EAxjBGNMEO6Zj04eMaHtNU0B+
	 hpULSQAyeOrWdwHfRxumHrefUABj54bXRw7rnFozYHN1WIsTp2tPTAb+kCASImYKhU
	 GWCJve/M6LPq8K/VtNlm2klNY5lnPIf+LWAR+FbeoxXs29NfTirR8sc7RBZpHlqKFh
	 6vzTu454sK4z9f2FuXE/cMbBA+je/4VA6aEr4oYMbyBvNbSwXBV9NpA3NBIe/ucp4/
	 x6eZeyxIcKQlg==
From: Vinod Koul <vkoul@kernel.org>
To: chunfeng.yun@mediatek.com, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, matthias.bgg@gmail.com, chunkuang.hu@kernel.org, 
 p.zabel@pengutronix.de, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com
In-Reply-To: <20250416120220.147798-1-angelogioacchino.delregno@collabora.com>
References: <20250416120220.147798-1-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: mediatek,dsi-phy: Add support
 for MT6893
Message-Id: <174722264485.85510.16108514718041133697.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:24 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043729_563209_888142B5 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
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


On Wed, 16 Apr 2025 14:02:19 +0200, AngeloGioacchino Del Regno wrote:
> Add support for the MediaTek Dimensity 1200 (MT6893) SoC: the DSI
> PHY found in this chip is fully compatible with the one found in
> the MT8183 SoC.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: mediatek,dsi-phy: Add support for MT6893
      commit: fe750a871d90e081c52ce1988e1fbc85576152a3
[2/2] dt-bindings: phy: mediatek,tphy: Add support for MT6893
      commit: 1b1e949924fb59e98d9401681b139e92e75686ac

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
