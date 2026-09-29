Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 012BECA5FAD
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gDV7ORHCdKOcGPwY7OkJ5OUanLj1eWbuMMI58fH9fYE=; b=d0c4KoXZbKjo8w
	Swy75QvS6q/85ZEvs4ZWHN76p13yX7m+GL66z9gwUpPnDnDgYrhQEQR/l9NLNlyJgVeDh0a2VbW+N
	KcTw11BaAYQKt5MoyqF3AcnApgjuIWOPASCNO0W+2TWsX7ESVL0+J6H8IeyGgqbrJYhM8tCbTBok7
	U/a6bbswloXN7EXZwKzHQndbU5/qSe4h8vHjROWc7ERLe9JXOeFcz2BPNdYTIW5gyv9IH9dbEOB6X
	tRP2mLZXhnpr7hWGNzAjCeYtPO+5ymN5+J58AeW80zZsb0eyCuYiqFNknOksIebYp4nPL+uNPQ0QO
	F/J3FggfMZo2G1f2YZSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBOKP-00000002Bmu-2q9J;
	Tue, 29 Sep 2026 03:16:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBOKN-00000002Bm6-14xt
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 03:16:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BE2724036D;
	Tue, 29 Sep 2026 03:16:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09ED21F00898;
	Tue, 29 Sep 2026 03:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790651782;
	bh=xLqPBDxX/z5XHXrJJdZYoBFeEYJMYZzsdkw/9Q/j/aw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=dIkkvw/gHCeGIbWDg/aQJly4PgmeIcc+zAbpFeTgJeWMHrNyhfklT1lN44r0pFK1G
	 VBigjES+oCQcbXpNVWTdBXqBRwEuyysFkCW3wGFQEfaTtVILBVLA4OL2ixxtNC3cvm
	 LZMImjvkFVNnDAbFj7mHeEElVxPy4zIYyewqgb90/aBRkU8ETIlpU5gB+eooBmGslV
	 FMzNygAzn4POwWALHllgrPHEnz57/ykYCjrrWS3pWOebnK2P8Xkj8Y9Gv39yON3VIl
	 Jtm/Dkfv6Kn1jUAQD2GlrljiaGXbaAZVEvtwNIQo6G+0UC5cbuSLYFX8c4CGvekbcZ
	 PwpUbQ/mLTy+w==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Ulf Hansson <ulfh@kernel.org>,
	Kernel Team <kernel@oss.qualcomm.com>,
	Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
	Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
	Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Subject: Re: (subset) [PATCH V4 0/2] arm64: dts: qcom: Shikra SD Card support
Date: Mon, 28 Sep 2026 22:15:12 -0500
Message-ID: <179065170886.2673486.3376256399465170072.b4-ty@b4>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260804122054.3462145-1-monish.chunara@oss.qualcomm.com>
References: <20260804122054.3462145-1-monish.chunara@oss.qualcomm.com>
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


On Tue, 04 Aug 2026 17:50:52 +0530, Monish Chunara wrote:
> This is v4 of the Shikra SD Card support series.
> 
> This series adds SD card support for the Shikra platform.
> 
> The first patch adds the SDHC2 controller node and the necessary pinctrl
> configurations to the base Shikra SoC dtsi. The second patch enables
> this support on the Shikra EVK (CQS, CQM, and IQS variants) by defining
> the regulator supplies and the card detection GPIO.
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: qcom: Enable SD card for Shikra EVK
      commit: 87494196c2f551710b4ae90ea78912d4d3abcc6b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
