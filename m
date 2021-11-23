Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 498EEC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 07:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tCLVlh3UfGQh7hYaORaIIwNci/5jImjDZ6UHY5Qevs=; b=HeJwgXfYyOt1Wv
	OMTYuhfA3lkjPs12MCCQJH3XRRGP6q1UcRCM41sdSSC+kQytszNNcjA6tbcSCNWfDOdfWQs82akLI
	lSNjpTpz+OT5kKnTJwjjOY7t946irs8iyOkp0G4KY/VHuw8mdkeUqMyEQk8GWsqbvoDQbbkMqo+Eh
	8nT2TTxk/fu3U0evCfeyS0lzx6Fn/Wi6qhEa9mHd53H680PEKybXv0QRz1neWV0XLbRI82TeJ373p
	WysmwWZNIX5MrInNX79T75wpB8I12JpxNhcDpTRLSm36c1FN8zXny9ch0ercJqwC7caKkUAALfwrn
	8wcJ79s7n+FWBihRfYnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpQRn-0015FL-NK; Tue, 23 Nov 2021 07:42:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpQRW-0015Az-KX; Tue, 23 Nov 2021 07:42:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4D22560E94;
 Tue, 23 Nov 2021 07:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637653338;
 bh=TbYdLFnqcgIXjTzcGnFmxKgBN6m6L2wwXqicA4xY4V8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cJftIbTfBmKJXlMCLrNa00rm63AJmqdB8IvmcPWW+/Te7iAVxKHkknVEPkKJTWn8K
 DpetsTa7h20T0OPgNiZnAe+1iAQEBGkPN9KyVSroto+fw/3vmtBiOIDFc8nb7o76Wo
 caysg3jsgfAH/O0lUvLgDy4XxYFY6O6Kjst3VY4cuBKgUKR5Kxh0e8PjiQ12LNs8cq
 SrVMdHQsPMiMwQ1aY5EQw7l4sF+78bJ6P7BedVKJ9rRj0vB6JKuy10FsU5K4I21Raw
 +mofe7xTaNJ6AYVhu2P5Ts6RCtxTjukBk2L4AxIGp7mJ3t2hly7uS1COCnGVVGvy1P
 rEjwwWfevSS/Q==
Date: Tue, 23 Nov 2021 13:12:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: rashmi.a@intel.com
Cc: michal.simek@xilinx.com, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com,
 andriy.shevchenko@linux.intel.com, linux-phy@lists.infradead.org,
 mgross@linux.intel.com, kris.pan@linux.intel.com,
 furong.zhou@intel.com, mallikarjunappa.sangannavar@intel.com,
 adrian.hunter@intel.com, mahesh.r.vaidya@intel.com,
 nandhini.srikandan@intel.com
Subject: Re: [RESEND PATCH v2 4/4] phy: intel: Add Thunder Bay eMMC PHY support
Message-ID: <YZybVkfMCI1durcN@matsya>
References: <20211027115516.4475-1-rashmi.a@intel.com>
 <20211027115516.4475-5-rashmi.a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211027115516.4475-5-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_234218_728305_6678E8D7 
X-CRM114-Status: UNSURE (   4.55  )
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

On 27-10-21, 17:25, rashmi.a@intel.com wrote:
> From: Rashmi A <rashmi.a@intel.com>
> 
> Add support of eMMC PHY for Intel Thunder Bay SoC,
> uses the Arasan eMMC phy

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
