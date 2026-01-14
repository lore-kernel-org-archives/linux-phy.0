Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B6F4D37E37
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 14:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MB0ljoGLy1qifw6zQCuRyVoYJ32EHRzk3qWJu9mw6PY=; b=DL0BBRz6GAyKAn
	xBFEMYKsX2xiOSWfPm/CpBXfBeg7lViq0H+nwrVsupTUEaqbtF+esgSCxT9TpU5QF/tKD6zD/wtsX
	dB+1Kt+kmsO1p53YJeCTSRTSDDP5STM9KroM+h4/1Ar+4Y1rxHd67E41jQdlO0jDBPRErpvWow/gV
	BubGQqxQqmzGeAt3+IyM2fmu1KVLQTW3sCqao5KmSUw+FKZDdPrherw1MojDWJO2Wxp9TKQlptu50
	zAmLN3CWn4uEjeEXd475IP0OKBLhiU7+Aos9XkQlEFWezqo8WRdfTl6VJuA10m/Q3FkfQHIAAW5UX
	7MhVrE8aFu0mG+Z4NKoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RS-00000009RLS-38ua;
	Wed, 14 Jan 2026 14:01:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg1RP-00000009RKX-3B54
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 14:01:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1173C43624;
	Wed, 14 Jan 2026 14:01:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1AFEC4CEF7;
	Wed, 14 Jan 2026 14:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768399302;
	bh=enCvrz8y/9rxsUlw1ssbCZBDFIf1yBnbNn8Z6/4K4hA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=QTbhI3eYuVO9pJXj0FPP9M9Z53GRE4eX9s7MgRSPPMH6LfCa2vPcyrbsf/sJtwCID
	 BT+gk+12FZyqsoZvMHQHzLHsyrc6Ut2vZOuB2VuMcZFd1rBiAsk9ZIfjahQDGXeh9x
	 1A8Jrm4lptla50UGAqWVu4gCqX+yO+cGkKAc4k9Py6hN5Qq11GWn1O2/wvLY8XLFwB
	 2+0MWgPfMi/U/NxKOMSPpoKczXetlS4IcWSv6DqKhVIeL40k8aH9JPcBohB7RjApXJ
	 Wx1jW3LAPcfdcH4OMkzVsVqjW/KnDuUkbSeP+5rLeHXe9qQ2oM1TSmWSRcIqxojxHf
	 i4QxvH0jplnTQ==
From: Vinod Koul <vkoul@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
Subject: Re: (subset) [PATCH v2 0/6] Enable UFS support on Milos
Message-Id: <176839929655.937923.9686904791516121188.b4-ty@kernel.org>
Date: Wed, 14 Jan 2026 19:31:36 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_060144_595748_6D3C145C 
X-CRM114-Status: UNSURE (   5.10  )
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


On Mon, 12 Jan 2026 14:53:13 +0100, Luca Weiss wrote:
> Add inline-crypto-engine and UFS bindings & driver parts, then add them
> to milos dtsi and enable the UFS storage on Fairphone (Gen. 6).
> 
> 

Applied, thanks!

[3/6] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the Milos QMP UFS PHY
      commit: ed0a26aa453b6ec7faec32ddb4fb3d4360e1676c
[4/6] phy: qcom-qmp-ufs: Add Milos support
      commit: 3554ded4f02aa8e95af66911aa666b2cd192022d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
