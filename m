Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0129AC38147
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XmgSgZBoKRtYyB4hgTTGpUBz4i2Lk2dEu9q5XP8Q/P8=; b=CfQeKRRDF0UOph
	7Ho9os0td27WyseBDN/JqA8EpWUN4VdDU/MG/Ar93CccKHekEqt6RxrfvIA2GEGVnnKoYLfXrum++
	idsO7aaGpa5NHRk1GVHhXCeCmzPmbRBlXjCuLSCmD/qVrBD9eyH5+j2dKPUdmhIFOafTjBnNT0uNH
	sRj1OPRqk1e9CGRfY169Yt695nh+5p2oJXaQ9YuzLd/1Ikmdu6inDigQONN16u4LDj5fuMvgY2+TI
	DpVm3gKMOb9C32mJAH79iQH6wZj1ZfNx+iZyqHY7HbZtIHESy1m7D/6BXTLlBVQrypkhHmcY+977m
	l68QUyRvrswt2Rs0KeLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICCn-00213m-Ex; Wed, 18 Jan 2023 17:26:33 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pICCk-00212i-VC
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 17:26:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id A3A3CCE1C4D;
	Wed, 18 Jan 2023 17:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F421C433EF;
	Wed, 18 Jan 2023 17:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674062785;
	bh=Ie8gYGGf5+xcu1uU0rnQr9KYWVko0DdTHmrDJiqVhVs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N9YJdpRKAsc+RIFHGEI11cQ1FSgRNsehYucyNBBuGzvp7wwHeweHsBroVChj3fvkD
	 c5mar+fT5cKko4SLHwkJKlIUzSPbjMYCfFG6jPgeRHIXOruzZbuCn/aWRNLSQNuHJ4
	 /j1aFJg+y5NP1EsPUCpzVPZLtxjTy3TJ4jC4s+GkZ87S5HTZkeys8qZsUajydGcFSc
	 0BpwHuUT1ETF7jW3sYdq3R5tzjkt5ri4aIYs2Qwa0VeunCAiF+yY3CHPS2POWT8/W+
	 k/j6mEXj+FSUgH20NjJzOKoIXOl9q4QkQudKzfaD5bn0T/I2p23X0KsCsZuSZT+yYm
	 d8KeHVHGVXnjw==
Date: Wed, 18 Jan 2023 22:56:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jon Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: phy: tegra-xusb: Convert to json-schema
Message-ID: <Y8grvSQa7raCn8q5@matsya>
References: <20230113150804.1272555-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230113150804.1272555-1-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_092631_205809_2E5A8086 
X-CRM114-Status: UNSURE (   7.43  )
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

On 13-01-23, 16:08, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Convert the Tegra XUSB pad controller bindings from free-form text
> format to json-schema.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
