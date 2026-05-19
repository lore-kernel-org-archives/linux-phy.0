Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30983CD4F57
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 10:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhHpu+z77Rw2tXKL1KY53awQa3y8QPUOO+4qBuU45n4=; b=XcoESgTaT23U7v
	Hj5qlnUSu9dRT1kPAnQKcM4By4k8/W+Onu7yNnxgrC30pEhzARGYJgzMfYNQ3m3TEbErZxWoh6k+A
	PwAizZnruLWgmBm1652zxU/7hFIOaO384dEhwV2DS4Gv4yesh7CJToXflRHNKmU0ZIwtRRUQya9VM
	MTmU0ziueNMHMM+BO00RNT7YmeSuO++PQl7gNdM3XJIxz0U2T7ghOoj6GyxHqLzR3XSIPaAFCTP0I
	TFUCxN/Ohc3m6jeEULknvf6Vgx8d+UdtTMaYznFiFjSA3bMCelH+nBzW8710VJeQKJIDWw2pQpKGr
	g+jlR8hzHTG5v3U2CPOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPI0A-00000001CSs-32PN;
	Tue, 19 May 2026 10:48:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPI08-00000001CRi-1gPT
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 10:48:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E156C438D9;
	Tue, 19 May 2026 10:48:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18F5BC2BCB3;
	Tue, 19 May 2026 10:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779187719;
	bh=NYscWIIdn27D8ru0GipGO7b5M2awRNJFfMLXgM3nqSI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=q5LeBsGAhNWdj4jVvAswEPAuoNvM6n5JVUylY+cwqQ0dbCfWnQ4r/L7TvrYK3TYNJ
	 RWAKPNPHVkjFM7Xzua1BiyT3GJp0E/82/ubR4MYJ2gi8vMhJ+IpBQ+jNXP2mTOF9dT
	 Ekk59VvMFPwIlVqpOhIPbrEuogDzGfO6zx41s8ONE2m4eKEmnKe3aVdAyFHnETn4DL
	 AuwTUj+N+8wRke7kz1QtW81bSjFPcSK+CrtX8WE+FgQXE/+VMXvsnM8ODl1eh3V+sk
	 H5ETIsOP81hA/TNtnjpIZTpUFP6h0EEMXY9Qpm3qXwUoBQ60iqAFERqJW3sTAb9K4y
	 nx9txYaUor3Xg==
From: Vinod Koul <vkoul@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Val Packett <val@packett.cool>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260304190827.176988-1-val@packett.cool>
References: <20260304190827.176988-1-val@packett.cool>
Subject: Re: [PATCH v3] phy: qcom: qmp-combo: Move pipe_clk on/off to
 common
Message-Id: <177918771672.269794.9873642333004848259.b4-ty@kernel.org>
Date: Tue, 19 May 2026 16:18:36 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_034840_465694_DECB875E 
X-CRM114-Status: UNSURE (   6.49  )
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


On Wed, 04 Mar 2026 16:06:23 -0300, Val Packett wrote:
> Keep the USB pipe clock working when the phy is in DP-only mode, because
> the dwc controller still needs it for USB 2.0 over the same Type-C port.
> 
> Tested with the BenQ RD280UA monitor which has a downstream-facing port
> for data passthrough that's manually switchable between USB 2 and 3,
> corresponding to 4-lane and 2-lane DP respectively.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: qmp-combo: Move pipe_clk on/off to common
      commit: f546912bcac6463a22c5825e27a7952f8b48c887

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
