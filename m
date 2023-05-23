Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08FCCC77B75
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 02:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkWNqvUguhe0TUVZPuj8675jNdCeDVm2ZTOiKc3zF/4=; b=lMOCsPeRQWVlfH
	ocgNx3cXtCPWuegXEbndu0o9O2latxYdYwXwoeL0axLad3cdX4XnElRWizpEuZHIcBkjZ8RZWWMbl
	wcGnXJ4Eys6am+V0RsUoQQoLQcvTbOuZK8KBknu1s1FFa3kCDYHu4JzZcVBiDMdHZr2R52OL6s9VT
	0/ZqsmiRDzRUNcSch+ZRCdPaDsdxXcXg+OxR0AgQaKWCAnYdkPEH8xHfrfky9NUzv/DZeZd7IJxsU
	7Qfb/T1jA0KlTq7R5YqG0D8KoEn4rDtIuKtY1ubIURiVhmygwY0nc3lpLH5INVGeKl4IhY7Pavt+5
	NzhmKv1cSqr69stZ9GVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1IFP-008kkZ-29;
	Tue, 23 May 2023 02:59:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1IFM-008kjm-2t
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 02:59:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2213E62E62;
	Tue, 23 May 2023 02:59:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9691C433EF;
	Tue, 23 May 2023 02:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684810775;
	bh=L1BWY7n5uV+djySaOrcQQBx8wTnk/CYzmuwPx6/o4WE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nAvgu6821dC6xU0l9r1c+H92bdKkRZMUf5DFGgQjOo17DRk3PIs8l2IC9PPrlsxdw
	 G5x8OasLhO4qOzIYX2YzdnVLGWI9SIwIDiT7pbS3rsphFTEDCt2MvHIYuC9sDWmeeK
	 ld/pk6ecPaxCUuVirQXa5CXSySTKSSnjdP5R3Csk5SksUM5zb56CJLzgNDlCN33+V+
	 W7VCqrIZOQJGDlfuJ3Lt0XbMey3fm//rynuakE1TBIOGrrd46B9kcp3D0ZTyFw1w+V
	 DPewEeDkyMoUZnRkasUbgdhmdmUtrbdb3UnkAObrUOqXkGiguRLU58aF0O0GdfLS/B
	 5wf7tPthLpn2w==
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
Subject: Re: [PATCH 0/7] phy: qcom-qmp-combo: Support orientation switching
Date: Mon, 22 May 2023 20:03:23 -0700
Message-Id: <168481094821.1229550.15816978324618259434.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_195936_990980_9F2A8341 
X-CRM114-Status: UNSURE (   9.46  )
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

On Mon, 24 Apr 2023 20:40:03 -0700, Bjorn Andersson wrote:
> This adds support for USB and DisplayPort orientation switching to the
> QMP combo PHY, as well as updating the sc8280xp devices to include the
> QMP in the SuperSpeed graph.
> 
> Bjorn Andersson (7):
>   dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and
>     orientation-switch
>   phy: qcom-qmp-combo: Move phy_mutex out of com_init/exit
>   phy: qcom-qmp-combo: Introduce orientation variable
>   phy: qcom-qmp-combo: Introduce orientation switching
>   phy: qcom-qmp-combo: Introduce drm_bridge
>   arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
>   arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add ports and orientation-switch
      (no commit info)
[2/7] phy: qcom-qmp-combo: Move phy_mutex out of com_init/exit
      (no commit info)
[3/7] phy: qcom-qmp-combo: Introduce orientation variable
      (no commit info)
[4/7] phy: qcom-qmp-combo: Introduce orientation switching
      (no commit info)
[5/7] phy: qcom-qmp-combo: Introduce drm_bridge
      (no commit info)
[6/7] arm64: dts: qcom: sc8280xp-crd: Add QMP to SuperSpeed graph
      commit: 507ceaa5ca9fac0d9fe2521c29d7d6237c1214f4
[7/7] arm64: dts: qcom: sc8280xp-x13s: Add QMP to SuperSpeed graph
      commit: 42b08375498e74f094425fad10d10c338fd29858

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
