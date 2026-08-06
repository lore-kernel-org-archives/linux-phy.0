Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08570C56205
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mBtGigPBT6S8DzkTjblpcwD/jiqlv/KnSzD7pV2uhY=; b=gTlzcsOLq4ezux
	X9IKq+iRDrXHcENOWdag8hvug65ZJ2WTKTtQFE2OD0i1qoVYcaWD3y+GK3xcRIoarKcQ+N8FzXkJX
	cQgChfv9d9r4HX/f449Dk/BN/g+AfKYwKnTEf/2KIgOoDcAzxfQKXEEV9FNe8JrSkZamUnBe+q8FN
	bEGb1xB721KYrxDTM4ElYNQUWKTxOnFGH61Zv6fJVGY+6Rszk699AWbB3xVojPmFU1VB7dt26c8wL
	hfySyzUjD4TlDcqgn1c3hmhKA2B9r8Egt6ekqlGfgVP73ldeBb07gaqYOZoK4PzQBUAUgIj3ui9u/
	SVgwyxy+sNESCIGZ2loA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0uz-00000006CjB-2VdO;
	Thu, 06 Aug 2026 16:26:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0uy-00000006Cii-3DSv
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:26:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D1B6860AB2;
	Thu,  6 Aug 2026 16:26:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE37C1F000E9;
	Thu,  6 Aug 2026 16:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786033563;
	bh=gFuUAEckyNvDJ0fEQvHD3+b6qWv1iFIarxVPBhzqSCE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Tfgh0c2WiszIuv30Akrz8pEvDWJNDBISX6S3g8hW97aWFl/+ICZ47hiMnQXNP6GHK
	 h+RADBVV3vbYJqZoKzlZv8nP629GBMoO4Vp+n1dn6u5VYO1OYs+PFcx8J3Piv2nyox
	 gM3wmKOa6M0B2YQL9QU1Nbq1t21oVh8dPCinW2dTNuZtKa4rSsJmCvo/OF2g3tRfMX
	 28rVmr9Y08aV6Z08XtXC3jD0v7sp5qUIXR8/vwre/OmSsdps9BjnSNu5r892L4qFuL
	 0AHIlxuzPRhWjJ5m2E0InyFtjfYDvUWK3sl1qjJ7Ydr4SdkUQwYKj/Hok5ePi8F4cn
	 nP9kx8uUtHIHg==
From: Vinod Koul <vkoul@kernel.org>
To: krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org, 
 neil.armstrong@linaro.org, gregkh@linuxfoundation.org, 
 dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com, 
 abel.vesa@oss.qualcomm.com, Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Cc: wesley.cheng@oss.qualcomm.com, krzysztof.kozlowski@oss.qualcomm.com, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
References: <20260508213234.4643-1-ronak.raheja@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/4] phy: qcom: Introduce USB support for Hawi
Message-Id: <178603355854.674490.5425466040463047845.b4-ty@kernel.org>
Date: Thu, 06 Aug 2026 21:55:58 +0530
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


On Fri, 08 May 2026 14:32:30 -0700, Ronak Raheja wrote:
> This series adds USB PHY support for the Hawi SoC. It documents the
> QMP USB3-DP combo PHY and M31 eUSB2 PHY bindings, adds the Hawi
> compatible to the DWC3 USB binding, and adds the PHY initialization
> sequences to the qmp-combo driver.
> 

Applied, thanks!

[1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Hawi QMP PHY
      commit: 19d8eca1be11bc5782f9d292d88f96ebf0cdbe7f
[2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Hawi
      commit: 7abc2c575d5b5d67349caf73509f069e6bf7445a
[3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi compatible
      (no commit info)
[4/4] phy: qualcomm: qmp-combo: Add support for Hawi SoC
      commit: eca0e717aab1cc90eb0b7d8c3e8aa63ca89962a5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
