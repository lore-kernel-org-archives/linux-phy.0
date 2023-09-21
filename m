Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58FEFE7107F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABlgs5+wyqa+uhg4++jM49J5L9wyZ1cjRymC5jl86EM=; b=o7MJOY9h4sricG
	Rn6Z35E4ytFom+rooKRJkeNqvQ7TF84VlonqzdyqQy9J0Xh6UnvaMWHmPhtGUbwLFnCP3qLR9+V35
	K9OnuLD+69Q8meBw/LwfawY5UXVVMMoiCY2CWDaF1oqM6aTPkFcMjuwYKvL6Sb8we1LHPLt58csUN
	IPb60vzTenCPtcedpGsWekT1od3zIdSYCRfyQbAteqX4+uE92fqGJIpT2DbUXWI2DhFWZGwkoQOzn
	P95Em+wgNtNPcpaIKUm7Jf/2IKFDPNRYOno/H+6CoXzPtksyS1DkOaTgWONyzDvtqWhv36If/55kz
	6acFtFoHfpOLUK+cVUxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKd7-006GHL-0F;
	Thu, 21 Sep 2023 14:26:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKd5-006GGh-16
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:26:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 393F0601FF;
	Thu, 21 Sep 2023 14:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E2B1C4E754;
	Thu, 21 Sep 2023 14:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306365;
	bh=FbNBg5D3RQWN0Cdv+taMkLeKD+tXLximpqthPlCjosY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=sUWxmRF1MQ3/QEh7UXTYv0tsdK8FEPUjr6GoZOkTSonnEjd8jPTROG+N56NvwmChi
	 wL5LCvdl88NPBcmRa67bwbPOK8BJFFG20ZCtv0JVkKQiMnnqTjuLlxlhkSr/fs9aQC
	 jV0kz2Ftx2xxetbJPDpDiK8RHsFMruk3XEaJnttt2K2Po0kSlC33s9uBY0B5llAmVq
	 ir27Faab4WI8aiBzc0ice66g27ddOucRcyKIgoqjxz1j9AzQFOIO2Trc1bNlSIktRW
	 QzWsKpssLQWDsYeYBWooUZElowvRGNj1M4eySVtCaT7GxKtRYVqdWaW5+o5wIbvy4S
	 5T/xSo6NMxuVQ==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Shazad Hussain <quic_shazhuss@quicinc.com>, 
 Adrien Thierry <athierry@redhat.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20230828152353.16529-1-athierry@redhat.com>
References: <20230828152353.16529-1-athierry@redhat.com>
Subject: Re: [PATCH v2 0/2] phy: qcom-qmp-usb: fix initialization of
 PCS_USB
Message-Id: <169530636318.106093.4451140958293220977.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:26:03 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072607_426084_FEF1FE3D 
X-CRM114-Status: UNSURE (   9.99  )
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


On Mon, 28 Aug 2023 11:23:49 -0400, Adrien Thierry wrote:
> This series attempts at making sure PCS_USB registers are properly
> initialized. I tested it on the sa8775p. AFAICT there's no noticeable
> change before/after the patch series: lsusb and dmesg output are the same.
> USB is still working properly. I don't know what those PCS_USB registers
> do exactly on the qmp PHY and I don't have access to the PHY datasheet, so
> it's hard for me to tell the impact of them being initialized vs not.
> 
> [...]

Applied, thanks!

[1/2] phy: qcom-qmp-usb: initialize PCS_USB registers
      commit: 2d3465a75c9f83684d17da6807423824bf260524
[2/2] phy: qcom-qmp-usb: split PCS_USB init table for sc8280xp and sa8775p
      commit: c599dc5cca4dd6a5c664e4a8837246e68a96cb4c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
