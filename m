Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1BC0CC6B34
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 14:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOb3ln7s+UapcIijR/mWDzKwLVd2Po1dZ8RHhfptPzM=; b=VdWzbUHnXTtxRr
	9LtZLown8YImhRNXa7nvDPlRxdmS4A+nNqTHwY1zCAyTGGZ/+TonHooH292tB6dN/YlEwPY3Afqbk
	Wp80yIPUAaWm4BxM+EGmtnVXGjyJVHIKj4PxVUiKWO0a6VOasATfJL9loDUykEO4jlQ00xzekiK/M
	bEHT5BA3gkXUtpE7+n+8QeOvfQadUVAuE+UEAKcTCvGl7s0aAsL6Q22qHyQpHO9I1TIgOFQWXCEa8
	nqK+d5GZTqsIeoTEqETDQgf+HbGI9Kx/1WKz3pNDKxbbJ9DMoWOYrioI04y31mZwVSJQ6YsFoL/0/
	hUmHTVn/9FUo5x25NMzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHMNO-00000000M1W-3Yu7;
	Thu, 15 Oct 2026 14:24:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHMNK-00000000M0l-1gjA
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 14:24:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D4EDA6022B;
	Thu, 15 Oct 2026 14:24:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A6061F000C4;
	Thu, 15 Oct 2026 14:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792074245;
	bh=83o5oAGezQuqWB70mpgy17Ppmc2cKbsFE/dC/tCNuqg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=mx//5sdlbCAlDhmo/AwHO0AHYj7cFO6peARJnidsstXroYzw2oiGGzmkMKngYcnUO
	 yqGLIfzzdKp3ReBJ37LGo/1Zj6YStJSQZa8kzUJBFSbd+dCB7oygBd0dMWSlZ/spG8
	 k6z7XC7y/tYZrlH0XSS5vYukh0WRtDagwTcKg520mmpfd6/bWezvZAdNjJpPTnTeWq
	 0Oi9f0i7xYQtXLZwHbzHaGr9ptwYcSSXMg58BtOUprkvguxQ7GZ6RZejz0jDNd9xtW
	 fA/wvOHfYRAdO+Q55pEcONMNaAAj56kwfLUh6O4tOnbJYOv+974t0AfAe0v/igwtiR
	 o1+aiIoTpN7FA==
From: Mattijs Korpershoek <mkorpershoek@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Manivannan Sadhasivam
 <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Krzysztof
 Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Sriram Dash
 <quic_sriramd@quicinc.com>
Subject: Re: [PATCH v3 0/2] Add support for SA8255P in the
 phy-qcom-snps-femto-v2 phy driver
In-Reply-To: <20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org>
References: <20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org>
Date: Thu, 15 Oct 2026 16:24:03 +0200
Message-ID: <xhkdbwlrj59fg.fsf@mkorpers-koolstof.csb>
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

On Fri, Oct 02, 2026 at 11:41, Mattijs Korpershoek <mkorpershoek@kernel.org> wrote:

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
> * Changed power domain names to drop 'usb_' prefix
> * Fixed various error handling paths
> * Added suspend/resume support
>
> This has been tested on next-20260728 with a Ride4 SA8775P board that
> has SCMI firmware (which is compatible).
>
> [1] https://lore.kernel.org/all/20260617-enable-i2c-on-sa8255p-v7-1-ad736dbeab57@oss.qualcomm.com/
> [2] https://git.codelinaro.org/clo/le/meta-qti-auto-kernel/-/blob/LY.AU.0.1.0.r1-16800-gen4meta.0/recipes-kernel/linux/files/usb/0014-PENDING-phy-qcom-snps-femto-v2-Add-support-for-SA825.patch
>
> Signed-off-by: Mattijs Korpershoek <mkorpershoek@kernel.org>

I don't know what happened but somehow I did not add you in To/Cc using
"b4 prep -c"

I've talked to Vinod at plumbers and he told me that I should request
some review on these phy patches.

Could you have a look whenever you have some time?

Thanks a lot for your help.
Mattijs

> ---
> Changes in v3:
> - Applied R-b from Krzysztof and Neil
> - Link to v2: https://patch.msgid.link/20260831-phy-qcom-snps-femto-v2-8255-v2-0-dc6197ffde1b@kernel.org
>
> Changes in v2:
> - Move 'core' as first domain, before 'transfer' (Krzysztof)
> - Reworded binding commit message to be more precise about the various
>   domains ('core', 'transfer' and 'perf') (Krzysztof)
> - Link to v1: https://patch.msgid.link/20260730-phy-qcom-snps-femto-v2-8255-v1-0-8b8bf5105a68@kernel.org
>
> ---
> Mattijs Korpershoek (1):
>       dt-bindings: phy: Add sa8255p high-speed USB PHY
>
> Sriram Dash (1):
>       phy: qcom-snps-femto-v2: Add support for SA8255P
>
>  .../bindings/phy/qcom,sa8255p-usb-hs-phy.yaml      |  52 +++++++++
>  drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 127 +++++++++++++++++++--
>  2 files changed, 170 insertions(+), 9 deletions(-)
> ---
> base-commit: e30626823a406725ce29bc75cb8ec467d3e1e326
> change-id: 20260729-phy-qcom-snps-femto-v2-8255-90ffe7674001
>
> Best regards,
> -- 
> Mattijs Korpershoek <mkorpershoek@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
