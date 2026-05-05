Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0A87CD342F
	for <linux-phy@archiver.kernel.org>; Tue,  5 May 2026 10:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyYK1TN+MBXF0TpPqP5IA7+NRdJYRNj+Csage+FwbQ4=; b=gyMIXBmBl6HUP+
	Fcp0MuwDBRruT61A1potlHcNOn9XWDEjzyuLD27/sCF4QC4lXzeL7iiwg5UuLGo/YQSDmN6KjAVmu
	0Q8DEhe5Bnh0TonAC6C2VVhdy0H+tZ1Ore1yhaI9RBslqtt9lyOUbp5hwy0hvwj1D5xATt3SkAwkd
	gcFu9c0QC/ympXAfHChyS/tQsct//sMA0/itidKSr6k4O2Wrdmk4dr6LMxUTTLeJdfxQWU0tMFBj4
	wUKgY8rHUE1CyBdY0acKzlyfiwmrgox0xiIfiQhNVsEcm4LL5jUYBKjP4Iv5iHvcClf74CkKdmq8v
	jCFGxi5jJvS5ysok8sBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDKu-0000000FwZ1-2pNl;
	Tue, 05 May 2026 10:49:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDKs-0000000FwYV-0xbH
	for linux-phy@lists.infradead.org;
	Tue, 05 May 2026 10:49:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BD0D34058A;
	Tue,  5 May 2026 10:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17C68C2BCB9;
	Tue,  5 May 2026 10:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777978145;
	bh=G53T6k698IO9GqFBPCmmQHVG635bqS1QGM1RP+QYbao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QZa4DeHHoMLKzwrFPJfvuS68yWl/lImrhBB3rMhV6H4jyP43jOt3NhgzDMrbax9BW
	 KwGBtqIDaLRVlbZaeEj6QQf+zrZEAYsYTEdj6U2Wh2frTcQHPk/y/+zIt4PCTO1moJ
	 N+FXOmkBYSiGz6Gq6DW0v0GjLDwDL5/XXMyS+Ct3XXGv6vUg7mn6x/wPpdiofPE5Ze
	 H6Niibqw+/CGWqSGsLuAoEHneZAlZS+JRNMy9joo9TvulY7VzxDI+Qu9ga13We0EpC
	 Avxln+n6j0YyK81I4cKpmjXXIKDTZL9FnR+A7yZ/js3rr3006aJ4k6AYZGsID56ZBp
	 D4BgqxoBVYLyg==
Date: Tue, 5 May 2026 12:49:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Johan Hovold <johan+linaro@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
Message-ID: <20260505-gifted-salamander-of-prowess-5107a6@quoll>
References: <20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com>
 <20260504170659.282532-3-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260504170659.282532-3-krishna.kurapati@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_034906_287527_0EE5DCAD 
X-CRM114-Status: UNSURE (   7.62  )
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

On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
> Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
