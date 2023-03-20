Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4456BC7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 07:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8azCD/EZcoRFIt13FrnWPlNEmFtyxyn3iU0q8aLNQ1c=; b=KBT75iqAW6gGBa
	9V68XvaAKhI6u7cAMi1GsVmHBAu1vVtJJagHQxQksv43U7liNQ1nRV+pxTJuik1KpHH+Be+ScYhsN
	fSErYhGDM79OvKMezOOGkcWbrauTeHWEVVsCjdrmjF/Mw6/N0pKPkgMAIjs6I1NraT3YA7rKY9NwI
	LDE4Os7pEvbs3Bs+3QNXj68dtW6wc3aP97YARiM2L0Bj7dKFMfp9ll9yjZwogqhd5zWHQ1eOateS8
	Ov+1RZ2pM/mnJfesVhL9+0E09Ss5b/yZYwc1HDYNsE392AznB60bSsMsLxiClvLyy0vMcNruDK/QA
	OqdhuERFztRZVeC7TfAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe9wR-008Ixr-2q;
	Mon, 20 Mar 2023 07:28:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe9wO-008IwU-1s;
	Mon, 20 Mar 2023 07:28:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CEB71611DA;
	Mon, 20 Mar 2023 07:28:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C57AC433D2;
	Mon, 20 Mar 2023 07:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679297303;
	bh=QDq3psYYPI1XmtNVdVpK0cyJmaeS12aYbyEfukWS36E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UDCbyys/slXK5DDVUObA4SBOtaa8YAdB+OqCPeP8nqwHsxDAIDCkfBEfiwUMGiTaD
	 LqQr2CiMvEgVlJJb9IlBF7wGYguOlmGF1rypy6g5LLDuCGvWayecp943rG5xBP/0lz
	 wTFXv8W5NHwRND1G5ozBAXND4N8DtGAXT369dsE08VAGO7qVTfrRn9opP/A1j21Ahr
	 ICpJ2yWfq7NTOui/uxyfuGiqNjpJ4Q/RWBda9DTaudL497rqozGJGEg5iG1vOFzF/K
	 T7pHENHw1+U7982Jg3wJkPY3sDtBpV7boFEo1y00D/xVPbgIIOfjQgl06kZwcalgtc
	 9aJUhZA2qThvg==
Date: Mon, 20 Mar 2023 12:58:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: rashmi.a@intel.com
Cc: ulf.hansson@linaro.org, michal.simek@xilinx.com, p.zabel@pengutronix.de,
	linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kishon@kernel.org, yuancan@huawei.com,
	andriy.shevchenko@linux.intel.com, linux-phy@lists.infradead.org,
	mgross@linux.intel.com, kris.pan@linux.intel.com,
	adrian.hunter@intel.com, mahesh.r.vaidya@intel.com,
	nandhini.srikandan@intel.com, vasavi.v.itha@intel.com,
	kenchappa.demakkanavar@intel.com, furong.zhou@intel.com,
	mallikarjunappa.sangannavar@intel.com
Subject: Re: [PATCH v2 4/4] dt-bindings: phy: intel: Remove Thunder Bay eMMC
 PHY bindings
Message-ID: <ZBgLEv9FMphyaHyO@matsya>
References: <20230316120549.21486-1-rashmi.a@intel.com>
 <20230316120549.21486-5-rashmi.a@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230316120549.21486-5-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_002824_657392_349952FA 
X-CRM114-Status: UNSURE (   6.57  )
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

On 16-03-23, 17:35, rashmi.a@intel.com wrote:
> From: "A, Rashmi" <rashmi.a@intel.com>
> 
> Remove Thunder Bay specific code as the product got cancelled
> and there are no end customers or users.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
