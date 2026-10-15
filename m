Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F926CC6B34
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 14:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0f8RHI/5QDj5qNUIQBmjBw8ItbFGSI1u/rWYJtgLkV0=; b=hvPc9Wy6yCJ+8x
	fdtIMeSW2qBD74C3/KhYPEHul9bVLJaWKnTEzwTECnr9m7dRRCFfl1gvrV7MWHijc4Jmat6BFz+wT
	UK8D47VryZApq87xbudRcA/RaBI+MUlVQaV59hSmdzZmEugTMJOGWxkd+yFY8QbeSKcsBqDcH7B+L
	s00eJ6iO0BBbzAArZaVFqn41i2bWbWueP8/CCv1MEVH8tOU0hzamw9HwW62EGaYbMQJsdKG7JnOYn
	wL8wQpQjZ87D8hDq6CuvNKs3XdwJ6wEU6NsnjF5YknlrYzGkIFM7oofVbv50iIQvsQclf9YDVJpvX
	XVZfO/8UCBmzzNkfLmqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHMNH-00000000M0Q-2jJB;
	Thu, 15 Oct 2026 14:24:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHMNG-00000000M03-1wbr
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 14:24:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8869360120;
	Thu, 15 Oct 2026 14:24:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C26AF1F000C5;
	Thu, 15 Oct 2026 14:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792074241;
	bh=kAQvCi2NgTn3vfjg1SkEBfJE/6zrPOW3vHosweeArbc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=SjnWGMyCbmD0su9hA+XiQM1geHSMw1xk4W8g/sQmzPo4KjdiWvcmwkzng8JoxAOuY
	 ucjh2DBxE9pXF80393L4VO6ULkJQwBEOSFq2DT9tHo/1kHtUHqSDKjHUQQxFSXMhwx
	 DfpkwvLwCOwzpoYA4M6xjFYqjFbPm8yiTqQJRA8nTLImagUdURXQXbKvA8Kv1HbunR
	 8xGpqg+ufNI98qsa0ZeQsZ48juTGJyPAoYjA5w+MNNv4/u5oXiSQG5RhfHA5TFLiM6
	 JxPNrRIZVvrZp3yDWlcUgViQaprrxx3VZTl3E2+5SUGeLLe6JH2+WcVAv8YNdygEYy
	 1pxeKdqVAjIUQ==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@oss.qualcomm.com>, Sriram Dash
 <quic_sriramd@quicinc.com>, Shazad Hussain <quic_shazhuss@quicinc.com>
Subject: Re: [PATCH v6 0/2] Add support for SA8255P in the qcom-qmp-usb phy
 driver
In-Reply-To: <20261002-phy-qcom-qmp-usb-8255-v6-0-bb7dfc5636b4@kernel.org>
References: <20261002-phy-qcom-qmp-usb-8255-v6-0-bb7dfc5636b4@kernel.org>
Date: Thu, 15 Oct 2026 16:23:58 +0200
Message-ID: <xhkdby0bz59fl.fsf@mkorpers-koolstof.csb>
MIME-Version: 1.0
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

Hi Mani,

On Fri, Oct 02, 2026 at 11:39, Mattijs Korpershoek <mkorpershoek@kernel.org> wrote:

> The Qualcomm automotive SA8255p SoC relies on firmware to configure
> platform resources, including clocks, interconnects and TLMM.
> The driver requests resources operations over SCMI using power protocols.
>
> The SCMI power protocol enables or disables resources like clocks,
> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
> such as resume/suspend, to control power on/off.
>
> Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
> whereas power domain "transfer" controls clocks and interconnects.
>
> Patch 1 adds the binding for sa8255p. Similarly to what has been done
> for I2C [1], this is a separate binding.
>
> Patch 2 adds the driver change, which is based on a public vendor
> patch from qualcomm [2].
> I did the following changes on top of that:
> * Use devm_add_action_or_reset() for dev_pm_domain_detach_list() instead
>   of implementing a driver .remove()
> * Drop the .lanes struct member since it no longer exists.
> * Re-order some functions
>
> This has been tested on next-20260706 with a Ride4 SA8775P board that
> has SCMI firmware (which is compatible).
>
> [1] https://lore.kernel.org/all/20260617-enable-i2c-on-sa8255p-v7-1-ad736dbeab57@oss.qualcomm.com/
> [2] https://git.codelinaro.org/clo/le/meta-qti-auto-kernel/-/blob/LY.AU.0.1.0.r1-16800-gen4meta.0/recipes-kernel/linux/files/usb/0011-PENDING-phy-qcom-qmp-usb-Add-support-for-SA8255P.patch

I've talked to Vinod at plumbers and he told me your review is mandatory
for these patches to get picked up.

Could you have a look at let me know what you think please?

Thanks
Mattijs

>
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>
> ---
> Changes in v6:
> - Applied R-b tags from Krzysztof and Neil
> - Link to v5: https://patch.msgid.link/20260903-phy-qcom-qmp-usb-8255-v5-0-e251e22b341e@kernel.org
>
> Changes in v5:
> - Move 'core' as first domain, before 'transfer' (Krzysztof)
> - Reworded binding commit message to be more precise about the various
>   domains ('core', 'transfer' and 'perf') (Krzysztof)
> - Dropped Krzysztof review due to the above binding changes
> - Set .num_vregs=0 since regulators are managed by firmware
> - Link to v4: https://patch.msgid.link/20260724-phy-qcom-qmp-usb-8255-v4-0-a90014fab476@kernel.org
>
> Changes in v4:
> * bindings: Use additionalProperties: instead of unevaluatedProperties:
>   (Krzysztof)
> - Link to v3: https://patch.msgid.link/20260722-phy-qcom-qmp-usb-8255-v3-0-e789070b48f7@kernel.org
>
> Changes in v3:
> * Binding changes:
>   * Use a separate binding file (Krzysztof)
>   * Remove 'usb_' prefix from power-domain-names (Krzysztof)
> * Driver changes:
>   * Remove 'usb_' prefix from power-domain-names
>   * Moved sa8255p_usb3_uniphy_cfg before sa8775p_usb3_uniphy_cfg
> * Link to v2: https://patch.msgid.link/20260709-phy-qcom-qmp-usb-8255-v2-0-3b6c26a45788@kernel.org
>
> Changes in v2:
> * Driver changes:
>   * Fix comment typo tranfer -> transfer
>   * Fix print statement to add a missing '(' in the string
>   * Use dev_err_probe() in qmp_usb_domain_attach() to reduce log noise
>   * Fix pm_runtime_put_sync() order in qmp_usb_d0_to_d3 (Sashiko)
>   * Fix runtime PM reference leak on usb_transfer (Sashiko)
>   * Fix runtime PM reference leak on error in qmp_usb_init (Sashiko)
>   * Reorder qmp_usb_d0_to_d3() to mirror init ordering in qmp_usb_exit()
>     (Sashiko)
>   * Reorder qmp_usb_d0_to_d3() to mirror resume ordering in
>     qmp_usb_runtime_suspend() (Sashiko)
>   * Fix error handling in qmp_usb_runtime_resume() (Sashiko)
> * Link to v1: https://patch.msgid.link/20260708-phy-qcom-qmp-usb-8255-v1-0-8d852a9535db@kernel.org
>
> ---
> Mattijs Korpershoek (1):
>       dt-bindings: phy: Add sa8255p USB PHY
>
> Sriram Dash (1):
>       phy: qcom: qmp-usb: Add support for SA8255P
>
>  .../phy/qcom,sa8255p-qmp-usb3-uni-phy.yaml         |  52 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 182 ++++++++++++++++++---
>  2 files changed, 212 insertions(+), 22 deletions(-)
> ---
> base-commit: 32b6ef9a5d0eca44f9cd91f52f4faa89f145a0de
> change-id: 20260708-phy-qcom-qmp-usb-8255-9986907cdbc9
>
> Best regards,
> -- 
> Mattijs Korpershoek <mkorpershoek@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
