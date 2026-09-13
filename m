Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 139E0C88E56
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 06:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7yNLsrDnoFhqDc1t5G92TdeUyvkj3ogtdIpRe9a8rkU=; b=woHGgnd2L0WoPn
	4GfDpPvX5L5l6td0oVAHPeM4ubHiUEFDUBp1vx5N3usNznrjNFF24x9Y2qdlvF/3CLSFwoneJKTUx
	/zRuS9VweLrKY6iZAVkFXc+amav98Md5PjeOetHMVKqWCNcIGbv299hrAosnZQuADpj3rzYzVkpXv
	5+L0QGTOjJ4hAK3l4cUbcfiB+XmIxl8Swoh9j4UT4QkFlpMgcH+By+7wPRUoIan5jcsfjBxMxr+dg
	j/z0mFjd5+C/9m6I0M8Cev9FZamHGez+ehdswLvRtfSb4P6uqOQx0lyqa7NALgQk7THpckC93o9Y5
	+xgU+bYbWwUaaoEtLoYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5dSR-00000001S5y-1re7;
	Sun, 13 Sep 2026 06:12:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5dSP-00000001S5s-3ICZ
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 06:12:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2F2C541953;
	Sun, 13 Sep 2026 06:12:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F5801F000FF;
	Sun, 13 Sep 2026 06:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789279973;
	bh=QSyp8ho+krENqcCqtD8mgyjv4BFYhN5HZH/k2CfA1Ng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=e6vlzCgQxDcz90hMbxxtPxhE5h6HGH8zwsWBdGGRaKLvrFT+nIe8nz3ZvQRB+j7F2
	 x6SOK8+qlefol7r0HAOcQWmBJEC6aIMfI8WXFk7+3Z3etJo5jO2wcsJgM1npW0I9AH
	 lcpJCt5Gl+64CUja4L+jhQ9M/6vwlJafenyvM5Y8Ske2LFD8eCPZca6k+EGpMt5E+6
	 P5r9ba03wrq81uEUp4+x2E3YEuNJOJsDcsWfov8CaNctjBKq0Cr+4V6LN+5xsvdfN4
	 7Mm2vwZwLAPOEGMAnGhnzyb6xav268b2VIhPzWTkflt5UNbdOgPPyB5fWev6MdgSCF
	 i0/nqVEdriAJQ==
Date: Sun, 13 Sep 2026 11:42:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev, konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com
Subject: Re: [PATCH v3 0/2] phy: qcom: usb-hs: MSM8x60 vendor ULPI init
Message-ID: <aqY-4ExEFebqU0ZP@parshuram>
References: <20260616-submit-phy-usb-hs-vendor-init-seq-v3-0-7d21fb1d1484@herrie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260616-submit-phy-usb-hs-vendor-init-seq-v3-0-7d21fb1d1484@herrie.org>
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

On 16-06-26, 15:26, Herman van Hazendonk wrote:
> v3 (this round):
>  - Re-introduce a much smaller DT binding patch following Konrad's
>    "do we have values for MTP/QRD" question and Dmitry's
>    "qcom,hsdrvslope (or similarly named) property in DT" suggestion.
>  - Survey of every MSM8x60-class downstream tree I could reach --
>    Qualcomm reference (SURF/FFA/Fluid/Dragon/Fusion via
>    board-msm8x60.c on android.googlesource.com), Samsung Galaxy S2
>    family (Q1 / Celox / Dali / generic 8x60 MTP), Sony MSM8660
>    (sony-kernel-msm8660), HTC MSM8660 ports
>    (shooter / holiday / pyramid / doubleshot / shooter_u / ruby) and
>    HP TouchPad -- shows that pre-emphasis, CDR auto-reset and SE1
>    gating values are *identical* across every reference board.
>    Only the 4-bit HS driver slope in reg 0x32 [3:0] varies.
>  - Patch 1/2 adds a single qcom,hs-drv-slope DT property (u32,
>    range 0..15) gated to the qcom,usb-hs-phy-msm8660 compatible.
>  - Patch 2/2 hardcodes the three platform-wide writes in the driver
>    behind the same compatible match, consumes qcom,hs-drv-slope for
>    the board-specific bits, and leaves the silicon default in place
>    when the property is absent -- which matches Qualcomm's own MTP,
>    Samsung and Sony reference behaviour.
>  - The bit-level meaning we *do* have comes from Code Aurora's
>    downstream arch/arm/mach-msm/include/mach/msm_hsusb_hw.h, which
>    Samsung and HP both shipped byte-for-byte identical.
>  - Per Dmitry's request, both commit messages call out explicitly
>    that there is no public Qualcomm documentation describing how the
>    4-bit slope value maps to an actual slew rate / V/ns / %.  The
>    field is an opaque hardware control; boards must copy the value
>    from their vendor / downstream kernel as a measured-per-layout
>    knob, not a derived one.
> 
> v2:
>  - Dropped the original qcom,vendor-init-seq DT property entirely
>    and folded all the vendor-register programming into the driver
>    behind the qcom,usb-hs-phy-msm8660 compatible.
>  - HS driver slope was hardcoded in v2.  v3 promotes that one
>    varying value to a DT property as Dmitry requested.
> 
> Companion TouchPad DTS work (flipping the PHY compatible from
> "qcom,usb-hs-phy-apq8064" to "qcom,usb-hs-phy-msm8660" and adding
> qcom,hs-drv-slope = <5>) will be sent separately with the rest of
> the apq8060-tenderloin DT series.
> 
> On-device validation (HP TouchPad / APQ8060):
>  - Booted with v3 + the upcoming DTS hookup.  PHY driver bound,
>    msm_hsusb HS link came up at high-speed.  No regression vs the v2
>    hardcoded build.
> 
> Build / schema verification:
>  - dt_binding_check DT_SCHEMA_FILES=.../qcom,usb-hs-phy.yaml: clean.
>  - dtbs_check on qcom-apq8060-dragonboard.dtb and
>    qcom-msm8960-cdp.dtb (the two existing in-tree usb-hs-phy
>    consumers): clean.
>  - drivers/phy/qualcomm/phy-qcom-usb-hs.o builds clean.
>  - checkpatch.pl --strict: no warnings on either patch.

Hey, this fails to apply for me, can you please rebase on phy/next and
send

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
