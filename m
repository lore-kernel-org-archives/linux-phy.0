Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34BEACEE350
	for <linux-phy@archiver.kernel.org>; Wed,  9 Oct 2024 21:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGY8XMN0e6vjesbwoauzaGZV4OJZ8BqZLKqSXGYuzvE=; b=3TAR2q1iiTAZZx
	4a+jyu/AWJ74YDCYjjcP5IzV0pmy8BoLQaTUCS+6s2ii+teN97bDEqgfHputoGIhWsCiZJbiEt/dp
	DxU7cFGUbv/dAT5PkSqTuOQ/EysFfnpFaFDAjrpQdBvdKtPUq/zrlQriKOQnVkJorZRSg8pAlEVgV
	Ics3cBXGmvBjnm100fU7HAY12rY/sSlAOcuZtnMcDdiigKbdgYXzvvq5RH8kA+kSP9h1Tgox93J3S
	uOQwfnN7oYqIovX2T1qsx9qEsDgoOfYnHiuPMBdhW9j7kemmn9pPBOs5SfD8gCVi75WnEmhzZS14k
	IBEWKaqTyesj256McoiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syeIa-0000000AnS3-3Khe;
	Wed, 09 Oct 2024 21:32:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syeIX-0000000AnRW-2AsD
	for linux-phy@lists.infradead.org;
	Wed, 09 Oct 2024 21:32:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4EBC55C5E1A;
	Wed,  9 Oct 2024 21:32:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08140C4CEC3;
	Wed,  9 Oct 2024 21:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728509564;
	bh=k4l2bGxX3ZLEwSZGVSUBeP6tqyyYf5DoUtxR8lkUQnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dte6lDD4x3WQww5KVG7zR1g7a7pBEF0d/UV/fJIK9MEFrOzakuj5kyAY2D0GS9JgS
	 gqS+cMcTlz5Q3qLXrNuxojFFe42fCy1I8ryQNohVtP10NlVG3zBWxBV/IfvXN21OCk
	 nsyJ5QCYYb7BGozON355Cnom8QwBu9cW4ffk/A9smxo7fl6vgXlksjSnl+txGNApiS
	 pkUXbQW7NyG1adXWlglKJtcoXukki7QrXebulv4EVA8dKYfKBXjna2ULAJS/ND/cQd
	 gh3//3mNVCsgtZsYKm3tMZLejoixOSMG1awrbgf5x7PwDtmSDLygZCtwbtD+weZkmn
	 a/Xj9gRuVTALw==
Date: Wed, 9 Oct 2024 16:32:43 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, Mantas Pucka <mantas@8devices.com>,
	quic_ppratap@quicinc.com, Vinod Koul <vkoul@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	quic_jackp@quicinc.com, Konrad Dybcio <konradybcio@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH 3/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add
 QCS8300 compatible
Message-ID: <172850948209.746650.7541249019180404346.robh@kernel.org>
References: <20241009195348.2649368-1-quic_kriskura@quicinc.com>
 <20241009195348.2649368-4-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241009195348.2649368-4-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_143246_731587_FC9369BC 
X-CRM114-Status: UNSURE (   7.48  )
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


On Thu, 10 Oct 2024 01:23:47 +0530, Krishna Kurapati wrote:
> Update dt-bindings to add QCS8300 to QMP Uni Phy list.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
