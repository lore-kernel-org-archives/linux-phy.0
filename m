Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0EAAC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dcqgv5VDTduS3mxaRkdK71MFi5MmY/S7fsSLODdv6YE=; b=gLCUqpuN/nSXYc
	VvIJB9IollsnxZ27Xp62B3FK5jDcLNdK6KpptI3joAuXCWKCWzuekJxqXBLNpdpSyu1gOI1aKUIIT
	MbXHg1RwS5fJsVOUme32M5EjeL4BeBdLyA9OqzYwgpi5n27BkNuDoYQt766Bh7zgrW0qDJeGRr0jl
	FThou2DXSdtE3GzRH+exQrvfZbTKNlvD/Gs48HhSxPlaVHPbDetuc/c5Z2BpUL9XpeAgB9/eSq+1C
	HHLQTH5o7DRE1EJfJkwwY2t2//uJNaiCZViDd+APiwJvs1PusC3R/W7RQoWW8VAR+jMJFETYsF7m7
	K0WEaGFGpNeLV4TYYJ9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWPK-000svP-3T; Tue, 20 Sep 2022 06:06:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWPH-000ssl-5f
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:06:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 820226237A;
	Tue, 20 Sep 2022 06:06:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24E7EC433B5;
	Tue, 20 Sep 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663654013;
	bh=BQkXB+/vfTibc1u9AzBS7kbJyHVa3MoNygpirOCMwh8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RLKAitcSJJ3Loce7lwGfQi+XlNqc3Ni8/E2G6Qg5KjZZ17v3XxjAzpUnl+ZsvXrY+
	 +3vqhA1Oy+beEx5MgcYZkrB3iiP1GVLWqkrmiKtJJu1iPdEaUmdhzMmSdVLu7i/UOp
	 6odFoI8NPDqFYlTe7zLCm2DckqdBX0irR12sM83lsb6/zc5IFxv2AlYrdC593nwCca
	 9AOD1lwYHCfs3P4jHwM5eaM5Gqj6mgsfUZVwjQHKoWp7kls3BvJB/+mhrVxmrWiiSr
	 f+6123a61H2NJVTfJha2wR2QTLTV+rgzdA2Z0CkWIBlvFuBSSCQE56uLAMnfy7NFat
	 GojzHG7eAXqCw==
Date: Tue, 20 Sep 2022 11:36:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Iskren Chernev <iskren.chernev@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 5/8] dt-bindings: phy: qcom,qmp-ufs: Fix SM6115
 clocks, regs
Message-ID: <YylYeSuX/99jcllf@matsya>
References: <20220919180618.1840194-1-iskren.chernev@gmail.com>
 <20220919180618.1840194-6-iskren.chernev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220919180618.1840194-6-iskren.chernev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_230655_280887_7B6F351C 
X-CRM114-Status: UNSURE (   6.98  )
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

On 19-09-22, 21:06, Iskren Chernev wrote:
> The Sm6115 UFS PHY has 2 clocks and 3 regs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
