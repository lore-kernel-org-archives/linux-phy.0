Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25A2EC433C1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 14:20:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3886619CB
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 14:20:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C3886619CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h8BRRgmm9xTQd2kc+O22ZRKD0RYWiH64l+1MgPpajCQ=; b=NhN9W8Z550rMc7f2vQaVe0pfc
	eYSrlEx0b68w6woWNiUFvF58y+zPuN9cUwFoXJEvJwS3+HJu2LhAnZ6Wlz6FsX36/36pKV/AZ64xQ
	5+2DrcAizn7QxvCDFg5CFvXOBu7lZBna4PX1vx4st+gsdUJrF+lHuVgWEHU4ZyT01573LcpcWB93k
	MX8LMXBvvtLPEMvKA7bhpRodpA8EzUSACM3ZqbzpMcNC/zXE8kXONxgYnOeGevF7/i9654IkzuY9k
	9fV3bALo4WR6a5LNC3TOSUYJTIpRl2jhouki2PtHioe0PpFATA10BglokReSHH+TDVraF9fZjxoge
	oRXnsp9TA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRFEM-003yie-87; Tue, 30 Mar 2021 14:20:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRFEH-003ygV-Ka
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 14:20:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 07770619C7;
 Tue, 30 Mar 2021 14:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617114024;
 bh=QcHxx2zsCVkFSj++zTZkHjusUnw+j8RM6dy2xwbFHic=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uwQgNOd57q894Ks8xKG5aFT8Q1GjegSdec1RRY/d7ykI5G2GoHEB4eSi4OMJxSM9f
 4UubpJB0ulbkbM1Ou5zDz4MN5H0A7MJPE4j/j5oWOa3e/LS0fh+cBHoNupOrbqAFUG
 gv6dHHxKAinpdiamybijZ/Taf4g4UCIQie5x2HHGFQWTfB2vX4yy/c1PK74n6Cc4O3
 4bGvrfy8SeLFNgpJF66JOm6fHD424dpjmKsJBwDuSikqLzEB7Saz7ZdBgztK+pDhxF
 diD6Z8L7nC2PyHq55hGqR1EaqiV8YhwC79ZoRWp1bgNvo3aGSCXjpgCsq7Ftd35jVv
 wgtFktSqJZmsA==
Date: Tue, 30 Mar 2021 19:50:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v8 04/13] phy: tegra: xusb: Rearrange UPHY init on Tegra210
Message-ID: <YGMzoxhv5UYR+t/e@vkoul-mobl.Dlink>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
 <20210325164057.793954-5-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325164057.793954-5-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_152025_934692_E4DE8C0D 
X-CRM114-Status: UNSURE (   9.43  )
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

On 25-03-21, 17:40, Thierry Reding wrote:
> From: JC Kuo <jckuo@nvidia.com>
> 
> This commit is a preparation for enabling XUSB SC7 support.
> It rearranges Tegra210 XUSB PADCTL UPHY initialization sequence,
> for the following reasons:
> 
> 1. PLLE hardware power sequencer has to be enabled only after both
>    PEX UPHY PLL and SATA UPHY PLL are initialized.
>    tegra210_uphy_init() -> tegra210_pex_uphy_enable()
>                         -> tegra210_sata_uphy_enable()
>                         -> tegra210_plle_hw_sequence_start()
>                         -> tegra210_aux_mux_lp0_clamp_disable()
> 
> 2. At cold boot and SC7 exit, the following bits must be cleared after
>    PEX/SATA lanes are out of IDDQ (IDDQ_DISABLE=1).
>    a. XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN,
>    b. XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN_EARLY
>    c. XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_VCORE_DOWN
> 
>    tegra210_pex_uphy_enable() and tegra210_sata_uphy_enable() are in
>    charge of bringing lanes out of IDDQ, and then AUX_MUX_LP0_* bits
>    will be cleared by tegra210_aux_mux_lp0_clamp_disable().
> 
> 3. Once UPHY PLL hardware power sequencer is enabled, do not assert
>    reset to PEX/SATA PLLs, otherwise UPHY PLL operation will be broken.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
