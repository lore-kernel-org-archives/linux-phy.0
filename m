Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDFABC36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhqWLTQD+bMhsgTX/COPpXgiTgrHPgvIfFj9idnwTsA=; b=ZpT/jnHyBz611U
	jmn28BD0Lud+yE8zhPEKFAaIHgke5tqHzVE18rG9O7NnmHWI+aLWt2uwJOBFkRVYlpkwi00MswADc
	5pHfmk08xPPgjFdk9GC2V7miSc+FGDlUhrQEeNw3NJEZwMh6bX7+Udkm88BGSZNtdKYQC2cG9BqP7
	DIUrK30uvzB4R/LrPYWNxQIa9qKfMGyCDwJzfey5P6wHA4s1AGEorqOkjs/rBCmauMzEjA5XH/vxh
	W6jZJ8EsPLlw+nsxJt7/xDmPRN7ImSjOrWj8tD4Z8c8sSGUxX4OP8cOUD3cPDXWqBij0IgaOi95pt
	8AaJFDRXDLWJPkZHsr3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDB-0000000DgS1-1uJC;
	Fri, 11 Apr 2025 12:10:21 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DD9-0000000DgR5-17Td
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 12:10:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8DCE0A4AADF;
	Fri, 11 Apr 2025 12:04:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 564EFC4CEE2;
	Fri, 11 Apr 2025 12:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373417;
	bh=Ncgr/bHwGWav0++g7h6qO7mSC7ga7BpzOJD/jKK+NKU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=N/wQGC7vrzvR7qbFAp5Haf03GN3YrAALauuaUPTYuw+nVIhvcnISJshYgzU0YIfh2
	 tYTPw+CfexM8MVtYpICAiQWAPWskohNC8N1T5YEXa09WC3TT3+M2x6+zfayEQ6q8bb
	 tGrolWJCtIHrRBRZ7cACRs4oQIZlyBqzizYlUaXjT9Tspb2fEwOItRST8aUac3IIrR
	 QBwvoXHFwseNY10lnv4L5CWKoEO/hNxG9+WSPGFZUW07hHDJmRYSqxdVzkYIH+UNG9
	 ul21nt68g8eFPYkqbrDUh8Ls+mQrBhbWybepk6BkBoZ0eCeoFquqdfL89Dz9H7Eo4f
	 8r/An6v9qRyqg==
From: Vinod Koul <vkoul@kernel.org>
To: jonathanh@nvidia.com, thierry.reding@gmail.com, jckuo@nvidia.com, 
 kishon@kernel.org, Wayne Chang <waynec@nvidia.com>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
In-Reply-To: <20250408030905.990474-1-waynec@nvidia.com>
References: <20250408030905.990474-1-waynec@nvidia.com>
Subject: Re: [PATCH V3 1/1] phy: tegra: xusb: Use a bitmask for UTMI pad
 power state tracking
Message-Id: <174437341497.673813.4496801277326172956.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:14 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051019_371515_CBC4E8BD 
X-CRM114-Status: UNSURE (   5.09  )
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


On Tue, 08 Apr 2025 11:09:05 +0800, Wayne Chang wrote:
> The current implementation uses bias_pad_enable as a reference count to
> manage the shared bias pad for all UTMI PHYs. However, during system
> suspension with connected USB devices, multiple power-down requests for
> the UTMI pad result in a mismatch in the reference count, which in turn
> produces warnings such as:
> 
> [  237.762967] WARNING: CPU: 10 PID: 1618 at tegra186_utmi_pad_power_down+0x160/0x170
> [  237.763103] Call trace:
> [  237.763104]  tegra186_utmi_pad_power_down+0x160/0x170
> [  237.763107]  tegra186_utmi_phy_power_off+0x10/0x30
> [  237.763110]  phy_power_off+0x48/0x100
> [  237.763113]  tegra_xusb_enter_elpg+0x204/0x500
> [  237.763119]  tegra_xusb_suspend+0x48/0x140
> [  237.763122]  platform_pm_suspend+0x2c/0xb0
> [  237.763125]  dpm_run_callback.isra.0+0x20/0xa0
> [  237.763127]  __device_suspend+0x118/0x330
> [  237.763129]  dpm_suspend+0x10c/0x1f0
> [  237.763130]  dpm_suspend_start+0x88/0xb0
> [  237.763132]  suspend_devices_and_enter+0x120/0x500
> [  237.763135]  pm_suspend+0x1ec/0x270
> 
> [...]

Applied, thanks!

[1/1] phy: tegra: xusb: Use a bitmask for UTMI pad power state tracking
      commit: b47158fb42959c417ff2662075c0d46fb783d5d1

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
