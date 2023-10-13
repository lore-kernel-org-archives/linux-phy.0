Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A932CDB483
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jty4kS96PBpz3N3BE7csQWWtU5YHll1W+z1zY/3ZkU4=; b=QYR69qD0a5pU0t
	zJ9mYJ9MWF8Z8mWOgZYicL4jGlwJQiHGtb+gvxJtlNmBxrFsWx1WLBEQ3UnQ2v+3iy7z3Vb0QeNMa
	XP8xMTGiPbweoQ4mgSkUnoU2kqjNXntLCWRNSsnPMSrS2D/YyyAkbI96Xgz4Qex+7fO64KZnP183+
	cHwgZ6Nod179apvfijybtl4/IJiowya/gyyOE1Csp2s0QKYWUQK6CULL7/BRA2zyXi4IXRb87H+cy
	qMpmGHo4xCToP4hZ3EapwJjEgPC9kzKgbOl1B2GJvJ+16Pi9q0SuKRECG9dr4pbx3yXN4hoO7n9IO
	1+CHcgHW3/dzc4hSksBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFdv-003E85-2g;
	Fri, 13 Oct 2023 10:43:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFds-003E7l-2u
	for linux-phy@lists.infradead.org;
	Fri, 13 Oct 2023 10:43:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5BD316204F;
	Fri, 13 Oct 2023 10:43:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEAFBC433C8;
	Fri, 13 Oct 2023 10:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193820;
	bh=TyNV48zrKAaS0i38ucLSEY6vFMJzYVMrLSVh1MF0r4Q=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=rjfpMoiiH+7TOYnrYGGdgwIpio7z+qxqdZT3CIHsJAXhGeQf5iuNnbvRZ4riJ7929
	 on51y9vvNusWADLMBotE0coQ27DbzJdiUXLudUy9yTgKMqSjpVU1z5yrayjYRxAp89
	 nQDEtcPCbirSxiB81MTJLaMbfBdtPMeXZ1sU4lO9GG2zCpqEtPZr4g0JQ/iJri51Nn
	 oDOK5ZAAdkyLpNVRZeKjxGh2agd/l0dr/RXOTMb1X4QHYpy1EwpnFN4I1NnRJZgqeB
	 /Frk7VgRczqW/a7wCLIB+7q5qme503ZHzZlNahVZGcDh7sgTM9UtfKrYYNVRN962Lx
	 MfBM+3T5KBXsg==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20230928105445.1210861-1-dmitry.baryshkov@linaro.org>
References: <20230928105445.1210861-1-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v3 0/3] phy: qcom-qmp-combo: correct USB v6 registers
Message-Id: <169719381727.165658.9377101716537787206.b4-ty@kernel.org>
Date: Fri, 13 Oct 2023 16:13:37 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034341_002374_0BA533E7 
X-CRM114-Status: UNSURE (   5.69  )
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


On Thu, 28 Sep 2023 13:54:42 +0300, Dmitry Baryshkov wrote:
> Move and rework USB QMP PHY v6 register names to follow the usual practice.
> 
> Changes since v2:
> - Renamed the series from 'phy: qcom-qmp-combo: correct sm8550 PHY
>   programming', since the fix for sm8550 was landed separately (via [1])
> - Removed the comment regarding v5-v6 difference, which looks invalid
>   now (Konrad)
> 
> [...]

Applied, thanks!

[1/3] phy: qcom-qmp-combo: fix the prefix for the PCS_USB v6 registers
      commit: 579483ecd81987fc30a8b13650323a17cb1c14e3
[2/3] phy: qcom-qmp-usb: move PCS v6 register to the proper header
      commit: 5077b136fd594d0c9e7df0a749bda75ba6114e3c
[3/3] phy: qcom-qmp-combo: use v6 registers in v6 regs layout
      commit: b5ec2824d74e71f16a0243446933542584acd440

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
