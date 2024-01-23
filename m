Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 065B1C47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 14:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Q4hMpQj6ws2lX4l5BeHUSk4E/VDChO0AaPp+I3s4Vo=; b=Hqx56Su8U69fU0
	a9mvS/DKYCq8vVmR5wyIH6ltUE2y27EDU8z0nShiSSWPzY6yW85/FpK3gUfCf7OTagjDE79+shueQ
	g8eauRk5zL8R1e9V5l0oQRDc0qjQD5oVufZ3bWUNzXApwS/PDxbHf7nypEypLEoyRQlGek3tGcWdb
	iqqQdjJfaj5w8L9WAULs6pEq9xVZIQrnV0F8jkXR9W9ewncaIf5bt9zSdEeQ73TEF+BTTTBoUeHED
	iZH3V3/JVkcS9uQTgtLEM+Wu9hp69mVZ8r7R0XJXn/94y+cEkli5DXJ6eaHs6x4Xyl2VRz/03B5YH
	+7aUMTdL95qeLtJ0ow8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHef-00Gn5k-1l;
	Tue, 23 Jan 2024 14:21:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHeU-00Gn0C-2M
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 14:21:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3A93661E04;
	Tue, 23 Jan 2024 14:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BFE6C433C7;
	Tue, 23 Jan 2024 14:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706019652;
	bh=BSqpNwWvvj06ZNWgnkxVT5ti2mYYSuS4FzKVFq6L3Q4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ZndW9YLr0E9gHuSZrXWZVLpxpOChQ+pzpMFveSt+0RdKJ4fHC4KcBYbA/bfv2pDoR
	 LJqO6ofO1EeTMU8WVCDmpvtw5hSwLJWR4uY/9HdfGBysczZq+wDfIwjkmMDF1W6izE
	 yKU0s/++Go+Aam+XRea8A/9djoFQdlfAGaj5MjtSnzFZFTTCpAhz4O5fq2XHeLGSh/
	 wBjwojPAuQqM9EwuXZBwHOl/3Kk1REoop8E/AqJiqla3rSX3l5hSB/bWz9FlEeX//j
	 L8hmUjrNPEcfnVdNEGCsKc30BfpzzWv2G+qHXbcdLpwF8n83zP5qFI+9NYMUYFFzT0
	 PINdGtXOzUYYA==
From: Vinod Koul <vkoul@kernel.org>
To: bvanassche@acm.org, mani@kernel.org, abel.vesa@linaro.org, 
 dmitry.baryshkov@linaro.org, neil.armstrong@linaro.org, 
 Can Guo <quic_cang@quicinc.com>
Cc: linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
In-Reply-To: <1703557892-1822-1-git-send-email-quic_cang@quicinc.com>
References: <1703557892-1822-1-git-send-email-quic_cang@quicinc.com>
Subject: Re: [PATCH v10] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
Message-Id: <170601964819.371263.15091699444243668502.b4-ty@kernel.org>
Date: Tue, 23 Jan 2024 19:50:48 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_062122_823960_FA9E126F 
X-CRM114-Status: UNSURE (   7.46  )
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


On Mon, 25 Dec 2023 18:31:30 -0800, Can Guo wrote:
> On SM8550, two sets of UFS PHY settings are provided, one set is to support
> HS-G5, another set is to support HS-G4 and lower gears. The two sets of PHY
> settings are programming different values to different registers, mixing
> the two sets and/or overwriting one set with another set is definitely not
> blessed by UFS PHY designers.
> 
> To add HS-G5 support for SM8550, split the two sets of PHY settings into
> their dedicated overlay tables, only the common parts of the two sets of
> PHY settings are left in the .tbls.
> 
> [...]

Applied, thanks!

[1/1] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed Gear 5 support for SM8550
      commit: b34ae8598c9c3a95e7f8eaeaa1fcf6fdba0aef68

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
