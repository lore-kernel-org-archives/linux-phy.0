Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3652EE7107F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekIrXsnpUcO2TSxaQMEmAeb0+lGJbPbbkjK1JAZfIc8=; b=DwpAAlJv1AXKW4
	oCS7Dfizo4C1zN/jSzFzBqEo6kL27sMKIMuLeM6Bd9iImcMnx06YqVDYHL9VDvxdJD01n0coJVVyg
	1c0+In/xzGAZxdr4uPRI5+MJZLISwC2UAADrdN+pyB1xGzL/B0zd0Sm2wcgV06iEaPL9cNZIZntGM
	f2KtjqQ5MpdR1wRZ3RH/xyHmX3Ht9UY6sryAkNZecQBbi7Ueea9foFcAsR4OfwA2/PpMY5h2It3VK
	mwECQoD8w6CW7svjByWH0A9J3iXgjOUOJv7oISwcRrWTfJ1CdQwEEx+w6BbGYA0HC12FJ0sgxW+pS
	BMQk/UM1IHbEjJtcaOHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgJ-006H1S-2y;
	Thu, 21 Sep 2023 14:29:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKgH-006Gyy-02
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:29:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 981D8B820DB;
	Thu, 21 Sep 2023 14:29:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85EC5C4E765;
	Thu, 21 Sep 2023 14:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306563;
	bh=5pqxliWwkemKk42Pc3VBjDLFEFWsPXjl1Fd5EvGj9lc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kp86v85AlW0PiTRcSowcXwNk+7N/m+mCEpy3HLzKWDLLQYRSzsde5Zw4a4N+sEshx
	 yMueOYJrdz2sVQXSPzcQCiwU3RpObeX3NW78bU3k6gsZLF1Shle89Vis62tra2pMiu
	 XgKP3f9aoWBhGxMzSv7z9RR1Rc27VR++yRbVo9d0wr2ZfBxOtmTPTTCYW9Sr0EnNjW
	 qWCwEw5y+GiOSizlEepHCKPD+kFD1y2QtfSyprxM81xaQb0Yvvfgwy4xglkyej8pav
	 kNJrt8Dl4gETkWSxyle8IgiULxbPTsVEPVoGIRuhrUYjkT5TRrNCwR19p5k2CryBQl
	 fsQRJXvVHoHwg==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 conor+dt@kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20230918205037.25658-1-quic_nitirawa@quicinc.com>
References: <20230918205037.25658-1-quic_nitirawa@quicinc.com>
Subject: Re: [PATCH V4 0/2] Add Phy Configuration support for SC7280
Message-Id: <169530656019.106263.17026016793514428546.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:20 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072925_214828_36A3F38B 
X-CRM114-Status: UNSURE (   7.16  )
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


On Tue, 19 Sep 2023 02:20:35 +0530, Nitin Rawat wrote:
> This patch adds Phy configuration support for Qualcomm SC7280 SOC.
> 
> Changes from v3:
> - Addressed dmitry comment to update correct binding for clk entry
> 
> Changes from V2:
> - Addressed Vinod comment to replace upper case character with lower case
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: Add QMP UFS PHY comptible for SC7280
      commit: 79eeac2e262545077be482b1a1700669e0c7d90c
[2/2] phy: qcom-qmp-ufs: Add Phy Configuration support for SC7280
      commit: 8abe9792d1ff7e60f911b56e8a2537be7e903576

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
