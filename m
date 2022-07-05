Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF184CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 06:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GjqSRYxCQMzVs4WuRbW5s5COo2gd4mxyouZhirU5mCs=; b=Px89Kbs2mo1G9S
	gcwKd6rdkx+WAyBghDWmlRqSMbwMW77k4P1JpE3LaGwPzRuUqcTWDQORoBNZiFjqhHek/TkuUnfx2
	f3BvM9Y0QfGZoNDAEZU+LhCT6qygdK+Yiy2WyKljesG40YG06PlCvFFOmV8Ddtd8mQXtWy5WjW76A
	ejDTZu8f5wH0OjfNLnS2GdzMDKTVKAHiLvgKM9NJRGDU0anIIGAOi6RRFweFX0N599x1Cm3YwSGmK
	kr+Jv7AqtNzBS6tnfxx+Ge4ScsLAbOzRxKQVLYoI5ZY7LIGK4C44dknoC3f7oaLL2KvhHRVRLMFyX
	MA6p/2LVc9pfZuEKyrjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8bq5-00EwkC-4l; Tue, 05 Jul 2022 06:15:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8bq3-00Ewih-2S
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 06:15:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 872766126B;
	Tue,  5 Jul 2022 06:15:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FCD7C341C7;
	Tue,  5 Jul 2022 06:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657001709;
	bh=GwzhUSg5G4GfWQMVGLNDGN64SfJXQ9e12gzTQs9kIcc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JHR8AHajN8RoxF8rmzeQ+z16cDidjgXd9tLwFuQrFAKVz306SAdrHYHwEM5lzHjTQ
	 buD8ZEPlXq57NAGL6pANfcuL0DoT7E/UFm6v1dlmNjB96y6wbuEGjxq0ia6J0XDfeH
	 4Wvx1Rt3Fmvkq0Bi3Oj72gUITMP56aar4VQRTyVl/BB2J90xRjXcf1pQL0wbHJr4Er
	 ++Ykwt1nEpTVVscDWXIhbhJOsIdnUSlccP5WdxFNI/PV2V/NjHNvNucsMAN2Ul1fHd
	 c8oHVlwuf3coYmxAHV2eUEhwJPyO4VmhTEm82Mk4WQlm3rajrxeDxEmBq6XfE9L9fk
	 2udx4UkmKXPQw==
Date: Tue, 5 Jul 2022 11:45:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh+dt@kernel.org,
	thierry.reding@gmail.com, jonathanh@nvidia.com, kishon@ti.com,
	kw@linux.com, krzk@kernel.org, p.zabel@pengutronix.de,
	mperttunen@nvidia.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V3 08/11] phy: tegra: Add PCIe PIPE2UPHY support for
 Tegra234
Message-ID: <YsPW6VKjMGP0qKSg@matsya>
References: <20220629060435.25297-1-vidyas@nvidia.com>
 <20220629060435.25297-9-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220629060435.25297-9-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_231511_192859_EA931750 
X-CRM114-Status: UNSURE (   8.59  )
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

On 29-06-22, 11:34, Vidya Sagar wrote:
> Synopsys DesignWare core based PCIe controllers in Tegra234 SoC
> interface with Universal PHY (UPHY) module through a PIPE2UPHY (P2U)
> module. For each PCIe lane of a controller, there is a P2U unit
> instantiated at hardware level. This driver provides support for the
> programming required for each P2U that is going to be used for a PCIe
> controller.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
