Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB49DC5AD2B
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 22:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhRi/J/k5je0wYUyjrtzBlY0RlScxrLMqwyF27vds8Q=; b=oCRPUQyH0c8yc9
	astOgl/7xLmJ0+n2VkLAhOLF93CRRvXP0utNFqDAzyARjp7P9Nd0BbTOrFdoT8N0ncSEy2CkMVLoW
	eBrourbikH7IQeXqST2rIGB7A+2rI+fJ61IxyWZc3HOYznMfrM/EuS2laS8hgaGgBncucUZZMnOWa
	9LGVQWDyeKKNdMqk8QoaJdd/xmgKEd8uWh884rsYR3Y0HJ5DUHHg+21JJjQw6TRP/+i2FI4EgjJV3
	CO+Wyre+GI1mUaUyYXi5VptURNcJ7YeNVssu71TpZPU0IV32PxdHITBR+J2uv5DAr2BtQisQ64y1m
	bDQ+489dDxntBp+f3L3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsTWT-00000008qD9-1GLh;
	Fri, 07 Aug 2026 22:58:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsTWR-00000008qCw-3sOW;
	Fri, 07 Aug 2026 22:58:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 65FA940601;
	Fri,  7 Aug 2026 22:58:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1850B1F00A3A;
	Fri,  7 Aug 2026 22:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786143519;
	bh=qgInBwua0KUqVGKuYZJWYzxoohAhBjTD4eh1gVZ7K0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iDcH522zJTzA2rzdF1COT9Mk3P+fOQfQx4rc7GU5PEwIbnvkM4P8DVTqv9Jj2rzCL
	 SVNi1R/LH+2a6XUR9HD3jZXNO7XYQnBWqRWNgz8dngu/aVpjedIk886Hv/aOuSk/u6
	 Lmtuj8UtavBqD5SpF1az/9X6Us2c4J6Acjb+hEQ8qwSywzFWKDNNm0uHBw96av3dXg
	 tt0IheujypKLcoHNucMpdcSGTaUOL27nOAv11MxQ4osBJH5Ebktelqsgh3g/BYad4q
	 BVOIIigxP2eCJaJRu2x6caoD18RbP54rBsyLQFO0fx5Q/gghubRfr0I2942249/oG5
	 pcKp4SmXXKyoQ==
Date: Fri, 7 Aug 2026 17:58:38 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cody Kang <codykang.hk@gmail.com>
Cc: linux-clk@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
	linux-riscv@lists.infradead.org, Stephen Boyd <sboyd@kernel.org>,
	Paul Walmsley <pjw@kernel.org>, spacemit@lists.linux.dev,
	devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
	linux-kernel@vger.kernel.org, Alexandre Ghiti <alex@ghiti.fr>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Brian Masney <bmasney@redhat.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Haylen Chu <heylenay@4d2.org>,
	Yixun Lan <dlan@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
	Palmer Dabbelt <palmer@dabbelt.com>, linux-phy@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Vinod Koul <vkoul@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Simona Vetter <simona@ffwll.ch>
Subject: Re: [PATCH RESEND 01/17] dt-bindings: display: spacemit: add K3
 Saturn DPU controller
Message-ID: <178614351779.2207398.16648513134637713806.robh@kernel.org>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-1-6de34d80e86c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260725-k3-display-v1-1-6de34d80e86c@gmail.com>
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


On Sat, 25 Jul 2026 00:51:10 -0400, Cody Kang wrote:
> Document the Saturn display processing unit found on the SpacemiT K3 SoC.
> The K3 instantiates two of them, one per display path. They share a
> compatible: an instance differs only in which register window, interrupt,
> clock and reset lines it takes.
> 
> Signed-off-by: Cody Kang <codykang.hk@gmail.com>
> ---
>  .../display/spacemit/spacemit,k3-saturn-dpu.yaml   | 132 +++++++++++++++++++++
>  1 file changed, 132 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
