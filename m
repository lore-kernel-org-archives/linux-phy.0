Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62110C77B75
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 02:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjUoZNkcyzHUygdJNXMBS+y6gIT+Hizxl5SWwYSPce8=; b=V/J+AKiKuef0dp
	zziUf4Q7EyJfVGhBcXOyNHPCsmC+pqzYLJINmavjOlYIfVgh7A8Ekvi4v7mtKCfyw/n0f4LlsnygJ
	0rKeRW7zl8wI/gk3Sh14+xg5CLQarDmpOaHqamizijzWTuIzb+Rv293b+J1+Twr92c04//BAIzzLc
	jAmXgkr848nTBZXh2mjXLztQSg8thIYNgXy0HO/bPYaiXkmfloX0E/OPHyluAluVnnfsD/gzldv6j
	OkhkOrMXMFvUJaf4+EQ8PSHKEH+pISCCHEILUM0HoMHJbjeqluf3Fr23DFGvl5fYLJ2qqZgTCdcxT
	8qGoW3u39naWNWGfdLvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1IFT-008kla-0C;
	Tue, 23 May 2023 02:59:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1IFP-008kk8-00
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 02:59:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1DA8062E6F;
	Tue, 23 May 2023 02:59:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B07E1C433A0;
	Tue, 23 May 2023 02:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684810777;
	bh=iaF54ms6IH0bnXi+2diEMznR6cemeckPYPBcoHTVDAA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=d26unP7PksnDjeJFyaO0wvqbVF1s5hb4j7NrU4mZ+5QMgA6Se4f24t7FycADkijqP
	 Kq9G5pLLGiBMJWKsXYGzWfsaoAbXrWdzOyzASOFGZ5xhfWvWiaMvL8IrxinpyN/pko
	 WwuaQgW+RHaC6aHuQ7e06fvypNVzllKIUjV1IDAOHGJpvfUYsUUe7jHphjA92999Sn
	 mzk2KujwB2SnDgvIxuDYvqa0WRAxU3topHMhhBvkqaWxwjbVEm30hlDYhq6OSfjrVf
	 zc0/kVe8tcipQGivevvVv3nK9O3q7IKeVMtBmoCU+Ngp1S//wyb9mImvXal1K+pDqL
	 7bBk/uZfaLQTQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Johan Hovold <johan@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: (subset) [PATCH v3 0/8] phy: qcom-qmp-combo: Support orientation switching
Date: Mon, 22 May 2023 20:03:25 -0700
Message-Id: <168481094822.1229550.5193459918571454584.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230515032743.400170-1-quic_bjorande@quicinc.com>
References: <20230515032743.400170-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_195939_088538_622C6547 
X-CRM114-Status: UNSURE (   9.43  )
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

On Sun, 14 May 2023 20:27:35 -0700, Bjorn Andersson wrote:
> This adds support for USB and DisplayPort orientation switching to the
> QMP combo PHY, as well as updating the sc8280xp devices to include the
> QMP in the SuperSpeed graph.
> 
> Bjorn Andersson (8):
>   dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and
>     orientation-switch
>   phy: qcom-qmp-combo: Move phy_mutex out of com_init/exit
>   phy: qcom-qmp-combo: Extend phy_mutex to all phy_ops
>   phy: qcom-qmp-combo: Introduce orientation variable
>   phy: qcom-qmp-combo: Introduce orientation switching
>   phy: qcom-qmp-combo: Introduce drm_bridge
>   arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
>   arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph
> 
> [...]

Applied, thanks!

[7/8] arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
      commit: 507ceaa5ca9fac0d9fe2521c29d7d6237c1214f4
[8/8] arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph
      commit: 42b08375498e74f094425fad10d10c338fd29858

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
