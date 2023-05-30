Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E781C77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 16:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VffOz4KMvJ3fganmLy8gwlotPU4xo2mutgLjN5kywWY=; b=qoOV44xzXD5yex
	CxP0IdTIRkOZpio7t9nxVRM6e6Jmy+jOflWbRtLD2aPXMjQfeARKfSK12O1+fZGfZwQRdBPU/ZbtD
	qPjMXhG9CdGbUYOD2xrT5DbXE06ypu/B/jygQ6rOKOx3ZIx+XHt6wRjOd00Si1/3qGGM2icKrImfQ
	DsA9b2oABARYDxjbDAaAEAhs/ZTnpcnamlw3swgjWqyaSPfIJ7xGqO2n+k10uPIEoJIBAneAdRL5M
	RikXm4akPMoyDntRy3H5UZeQYwblyl28gWJqznlWvPf0i9tXIUKof3izKuqVVGLoeh/NoT5NsiZsu
	aI8dNpYb5gtlVufHw2GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q42NT-00EbQt-0W;
	Tue, 30 May 2023 16:39:19 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q42NQ-00EbQI-2Q
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 16:39:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DDD7D626B9;
	Tue, 30 May 2023 16:39:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8632CC4339C;
	Tue, 30 May 2023 16:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685464755;
	bh=pCw/yAUgX4VqGATHPpeynViRxl3uTY1cK42ALnidtRk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SIO+fZbPMP1yDn/Tcxd8g5BnSkAoJoLxRnpGWR7BX33dFORZSZNDVwyzikamzd4oL
	 IF51I8DTWMCx/h3zQ881s5h+zE8vFRk+Jy5N4hil6cfo+1j2vSTvoObf0c85abEjIq
	 EdEsGqtVOhuGAqosU5tWWr0TiLtkO47KJiE/9Y6yFBiEBnMKiGxJFX2j+HeSBYLUge
	 T2S1rWBbcSnuHU8VI17Bu8cbanWcLyWZRRiLZ4Lt/8/R8qMIRWL8Two4DnN7D218YH
	 vkN6Sp+42biTTi9jg56PJDO1wY5UAxGwcTAPWVVaFIAHlZeENr96J1UX2WXnee63YL
	 Ib4VWGnghaGTA==
Date: Tue, 30 May 2023 22:09:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,qmp-usb: fix bindings error
Message-ID: <ZHYmrx0rMxzX0jnM@matsya>
References: <20230521195200.11967-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230521195200.11967-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_093916_845473_F9CAF66A 
X-CRM114-Status: UNSURE (   7.21  )
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

On 21-05-23, 22:52, Dmitry Baryshkov wrote:
> Merge two allOf clauses, which sneaked in in two different patches.
> 
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with value "[]" (original value: "[]")
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: [error] duplication of key "allOf" in mapping (key-duplicates)
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml:109:1: found duplicate key "allOf" with value "[]" (original value: "[]")
> /home/lumag/Projects/Qcomm/kernel/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml: ignoring, error parsing file

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
