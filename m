Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 048AAEEB57D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 11:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuxSpzAbnVmU7MlphqfgUufoMl0FPKzSk3zTdFA9kxE=; b=aC74BtCk5UlCcv
	YkfUBM+IBvwnoHtYrDqk5hP0STq/SqLmUAtYSaUs+Aut74ekvfAea6Pyi6EAdmSkW9gC5NEWh3jr3
	zruuPL87vNJexzV2JZ/NlTi+mh5eQrB7cv4ApFVrAQmHIjx++WaUpZ2BoLeanGvmo5x0yPNpFFQGF
	BPLyHSRxX53eWAMBNgRswTcjjIPoApSFQk81rh/iGsewgljr7TZE+bMA1CFOUlh82ZTlUq4W8VTLa
	McvLwAtaRzYDUKPb8nUUsijrd5Wlxqq+/J2DtLZZCQCP7vGHOI1wUIL0wyeHOnpkdJrCpMS93hpvV
	B7v1OzPh+YbBcgzUmYlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXk-00000006o7S-3AOb;
	Thu, 01 Jan 2026 11:08:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXj-00000006o6i-3SwI
	for linux-phy@lists.infradead.org;
	Thu, 01 Jan 2026 11:08:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 443D760008;
	Thu,  1 Jan 2026 11:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D98FEC4CEF7;
	Thu,  1 Jan 2026 11:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767265715;
	bh=uym4i3wRVVpuxWkdrqU3bgwZsTdQ5VxDIcBIqb/kR/A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=itKf3+wZjHXkCXHLZC6Fl7f1qtRG4toxqoKD7bk8NKiYMaYflWYly1us5GAzn+JQQ
	 iLNJhwPpEDCrlfOtvFUd8zu4+qVyuRHrsqRFPVki3soMkpMvAtce1c2g4ks3EmnwKK
	 n452YREKjyS4+HGqqytcoYtKm62g+hy5cz5K1QtjzH7iQUAQfq8yGWIddsXH6FaG8X
	 b58JLxrSoLTVfGgxIi1E0liGoFrkrq4wBCq9fyOU341oT9MqeTv1/ZsWoQdIGYTcWt
	 Q8gXee3Eby+A5zqLYWj2G51FSGXMc4269u4pEoRPBbzC6ntv5V2+iirJ5qzhC6wXH6
	 RYtcaBq+oeBww==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Dmitry Baryshkov <lumag@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
Subject: Re: [PATCH RESEND v6 0/4] phy: qcom: edp: Add support for Glymur
 platform
Message-Id: <176726571052.201416.15965935591275974441.b4-ty@kernel.org>
Date: Thu, 01 Jan 2026 16:38:30 +0530
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


On Wed, 24 Dec 2025 13:10:43 +0200, Abel Vesa wrote:
> The Glymur platform implements the eDP/DP PHY version 8.
> Add the necessary registers, rework the driver to accommodate
> this new version and add the Glymur specific configuration data.
> 
> This patchset depends on:
> https://lore.kernel.org/r/20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com/
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: Add DP PHY compatible for Glymur
      commit: 8f97b9b34f0d26339e8b0d26c2f466eeb188939b
[2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers count
      commit: 2d472a675ced00397440caed78168db5fdecf3a3
[3/4] phy: qcom-qmp: qserdes-com: Add v8 DP-specific qserdes register offsets
      commit: 212cdedcac11c411d0e7c277e1cdcac5f1a20ba2
[4/4] phy: qcom: edp: Add Glymur platform support
      commit: add66a6673bc4aacd0ef0f3c4a51271501770b17

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
