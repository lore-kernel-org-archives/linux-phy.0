Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E74160A381C
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MIq8vQSf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Xh/00Dby
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZZbu3QdeQ6ET9J2+QGZ08H/wkF4GwL1qgDBBXzriyu0=; b=MIq8vQSfD8jGxtegwB8xArAvXs
	o5s3u6KC/Zs42EmB3SGuesb//Q8a8r5sC5r63K2thvUtoO+oRwnuIbbWzfv1mLswF9jY5cPs0XtLf
	/eUKvw4aoL1YpStBhORLmICO1rAtXjmR4mhEeqlTyKMLle/4ZfV9oP0DIgtlhHc1qP0MvUL5xpM+2
	Q2KRdtNTOdt3F2xIBmhdZSflwdw6Sut6wLAVuf525CRk96joju22Uj/7AceOYhGGsujqB/VGs5X5x
	taGBKTddbFQ/YhT+Q7TybSZk1gmic1dDfBfnoo//0QJEZyIBWAACuJiMai2ei5aFZ3XVk/25oOlkE
	X0zYYH9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQjH-00000009HVw-3ypZ;
	Thu, 12 Nov 2026 09:04:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQjG-00000009HUQ-0wXA
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:04:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D924D438E1;
	Thu, 12 Nov 2026 09:04:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68EEC1F00A06;
	Thu, 12 Nov 2026 09:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474261;
	bh=KvjfimEyLHv2EirF4hxY1Tnpe8ctO+qjqheXOxDIlHc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Xh/00DbyGSPtH3AcAgDIbB6mH8hRoXnAqFcuJ0aNnnBt0TqsFFvW4x3C6dSUJZulv
	 UWqpPILLKTcuaSHZixG4U/3tGxXz3t7ImHDBLzrX2p/PxL8xWFqro/18kaa47AjRjr
	 WH6qd05T/Qc2zKc4keC1gCv1yvgwpLTYFeTCMljPY+2p1LqmXGvcLXqenx1mxcnQxJ
	 wEF992NpJC2yjHQmTRhqTK8eSk+/MWu7Okl6XMXdjlzDpAIG/htb7rRSKoUv0Ziwbp
	 M/3o0GcCeWEqPiz5OhQAkug6vGzwM/VLpW2Bluf9boq2BselPi+615IomkmsQiVkbf
	 UP/Ia+MOml/hg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>, 
 Philipp Zabel <pza@pengutronix.de>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
References: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/6] Add support for USB phys in IPQ9650
Message-Id: <179447425706.428303.118653133364281959.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 14:34:17 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Fri, 09 Oct 2026 10:19:54 +0530, Varadarajan Narayanan wrote:
> This series
>  - Adds dt-bindings and driver changes for the high speed and super speed
>    phys in IPQ9650.
>  - IPQ9650 specific init tables to QMP super speed phy driver.
>  - The Femto high speed phy driver is refactored to accomodate differences
>    in the init sequences between SoCs first and then support for IPQ9650 is
>    included.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3 PHY
      commit: 883412a4d4fb3267851de3d5d534980d65251ffd
[2/6] dt-bindings: phy: qcom,usb-snps-femto-v2: Add IPQ9650 compatible
      commit: f899f404be9a178b3df15edaa2b33a20dd99ae18
[3/6] phy: qcom: qmp-usb: Add IPQ9650 USB3 PHY configuration
      commit: a8361bb39e2502aa9edaed126f01e02cd57c45ef
[4/6] phy: qcom: snps-femto-v2: Fix order of arguments to qcom_snps_hsphy_write_mask
      commit: 029a4a78d07a4b133777cff2acc404ad858f3aef
[5/6] phy: qcom: snps-femto-v2: Move PHY init registers to config tables
      commit: 8238577c08eadbf38313d0240551c12582884014
[6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
      commit: bd2ef9cf141344e31caa50dd3ef46772df7d9b66

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
