Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA02BC5AC81
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/s0GBYsyKFXcQClqzbjeXgjE7pEorOGhqiPWyD++ppQ=; b=y8BpqiuDc3tGVw
	KCLYYOUJ6DB3BLAM0+FHY7kwvKILqezy/QnEwgV1rWHJlDK/8zEBKzyCsbm2fUTEEcXLftwAYSqTl
	tXBVAGQOWzDuvaORip6pWiQ4/45vD+SGDSZoq3zYr6dKjkC+OwE6mShC0fRHVkrPgOiptGd7ItkZm
	t6X+ucz3QL42nAyKINRQUriMF9o+MVjr6MwD9DsoJi66Hsaio8g4XrHVSLMVwEuENQLHBOw7MgluS
	DFlWVyCcKDQmhmeM56jI6Nu4kOjhEgr01/OMFJTAWooUkWVtiWFrQubYQ3HjsG9ycj2Cvv8VpE9K6
	kKHTsATBdcS55996jB5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJm3-000000081Mj-2YTr;
	Fri, 07 Aug 2026 12:34:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJm2-000000081MO-0aN8
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:34:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E146640A5A;
	Fri,  7 Aug 2026 12:34:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEE871F000E9;
	Fri,  7 Aug 2026 12:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786106045;
	bh=Yn9pjlqdfb1eSBTBxF5h1eZXiVnuu7qMZZ7olQYY1Q8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=HOZAlrOCWI0ekgndaLJz8KUrIJrL6Eo1i/TdH2myEs8OBa7MjOOlMpe/su83CPkZf
	 wdfYA7jfdWFmZP3zAXz2QXhd6q8JDHxlaxi8HgeQn0ir7DPQQyZr34e8NYvguImvIs
	 kVbwdKJwUlBL6LKRAxiUZKJUSbShhkPQ/+h3CwtDzhwPcU0vgQ8s2yrNx7tCHI87rP
	 Uoq1ooORwjQgxMB5WPoQNRdgL4tENUuwij4aE+jNgvleiHbSlyypl+dCtpLjAptNKH
	 sr7I0Y34c5vL1dQrdpdfI4TZg/JvKlBRPkH5/srUukpmKRl/jNi4J9xZ10ElvUvshp
	 gZXZbpVbLAjeA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
References: <20260722-qcom-usb-phy-fix-null-v6-0-534f7e61b9a6@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/7] phy: qcom: Fix possible NULL-deref and runtime
 PM race conditions
Message-Id: <178610604135.740291.8433622032837294506.b4-ty@kernel.org>
Date: Fri, 07 Aug 2026 18:04:01 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 22 Jul 2026 15:45:13 +0200, Loic Poulain wrote:
> Address potential NULL pointer dereferences and race conditions related
> to runtime PM in several Qualcomm PHY drivers. In all cases, enabling
> runtime PM before the PHY instance is fully initialized can lead to
> crashes during early runtime suspend callbacks.
> 
> - Attach driver data before enabling runtime PM.
> - Introduce initialization flags where needed to avoid dereferencing
> uninitialized pointers.
> - Reorder pm_runtime_enable() and pm_runtime_forbid() calls to prevent
> unnecessary suspend/resume cycles during driver probe.
> - Use devres-managed PM runtime helpers for proper cleanup.
> 
> [...]

Applied, thanks!

[1/7] phy: qcom: qmp-combo: Prevent unnecessary PM runtime suspend at boot
      commit: 729e0af3c2b938a9405e6245aaab97d025e3f427
[2/7] phy: qcom: qmp-usbc: Prevent unnecessary PM runtime suspend at boot
      commit: 991339420f6ddd299d9f34316866dda83dccd72a
[3/7] phy: qcom: qmp-usb-legacy: Fix possible NULL-deref on early runtime suspend
      commit: 8e3687f7e18fe84372e86875709d56c37e7525a8
[4/7] phy: qcom: qmp-usb-legacy: Prevent unnecessary PM runtime suspend at boot
      commit: a9b9feb37bfa684f495e3a3553342191d2b30eee
[5/7] phy: qcom: snps-femto-v2: Fix possible NULL-deref on early runtime suspend
      commit: c271a6926ea7d3c9566b033d63fd4e8c488dc860
[6/7] phy: qcom: qmp-usb: Fix possible NULL-deref on early runtime suspend
      commit: 142c5593379273264474f31d5956b1a0065cd576
[7/7] phy: qcom: qmp-usb: Prevent unnecessary PM runtime suspend at boot
      commit: fedcff16a9b60a94e68e2a0478ceda309566d61a

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
