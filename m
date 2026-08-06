Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF783C56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dm+pcNDbOLRNBLeka/nBgdOXj6W1pOtuXZ0FOHqltg=; b=uz6TIIlUOp+df6
	igE9gY1WbrPZDfcolhFjbg3I83D9eouvjDeLMbIKtIpn1oNgsq54vVjq1GnZ4crl8DUY/43+AOlHz
	JBxQbXYaswwgCS5pmqidDmvG+E7aSUOrR6iOGarV0kdCUibkUs0rGHZ+2QNMwPVTXnDG3g5lmaCCD
	6r+7iQHk/wQKFNG9+MlzqGDv3mbsEemYL0+FrCXJk7V9dJj/bo0OkiQukLVNt5/FetZsVpG1rjZp8
	A514jFPue7UXOWynjdr/dIXrsfHmw27z8FnAPfnzhc4q85VWIN6KNZmHtMT+vRCfGhIdBFr4IxlkN
	JRsC1czLlC2vDGO4HlMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0vD-00000006ClQ-33eZ;
	Thu, 06 Aug 2026 16:26:19 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0vC-00000006Cl5-1vg5
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:26:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E16EF60AB1;
	Thu,  6 Aug 2026 16:26:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82D751F00A3A;
	Thu,  6 Aug 2026 16:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786033577;
	bh=J7FU8gW2VUhAfd7BYGs2hAuYby6wONMtKH3laYXT+I8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=I2YXq+KsUedHGxOYgPSJ3xf9cpbYMZaMo1D8hCe4nhKzpv+LG4lBfJNkL7RpDYn7R
	 rIcXmbnV7SVUCFuyXU4Iq4L0E+ID59GNKgj5fU/Kp7Us3PLk/djskQLxa4kYveyi7X
	 8ym28if7WAjeswo8sbTobs0EZC6inBE3w1iqHhlleSWibeAdh1BrP0UP7VWNkS8BaN
	 D/VMGKaHUl7ggoaWDsBNKT+IEStQZkbjEKXO0dFBaFja8PZFbQEcO4vDwmKdW+Oh7X
	 w7YbAZemHT5o109PqL2uS5wCytfs/C2LVf5iByIr2poT9dzBpqkVsi20qUJW4PKhh3
	 Hg5kvM1GH6QUA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Esteban Urrutia <esteuwu@proton.me>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260804-sm8475-bup-usbss-v3-0-9a5b9ebf62de@proton.me>
References: <20260804-sm8475-bup-usbss-v3-0-9a5b9ebf62de@proton.me>
Subject: Re: [PATCH RESEND v3 0/2] Initial QMP USB PHY support for SM8475
Message-Id: <178603357411.674490.11520339407340817802.b4-ty@kernel.org>
Date: Thu, 06 Aug 2026 21:56:14 +0530
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


On Tue, 04 Aug 2026 14:06:18 -0400, Esteban Urrutia wrote:
> Based on the following patch:
> [1] https://lore.kernel.org/all/20260711-sm8450-qol-qmp-v2-2-d14353bd6ff4@proton.me/
> 
> This series adds support for the QMP USB PHY found in the SM8475 SoC.
> The initialization sequence varies noticeably when compared to the one
> used in the SM8450 SoC, hence the need to add support for this PHY.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add SM8475 QMP PHY
      commit: f8bb67fa3651d494427194c1e283886ad4cdbde0
[2/2] phy: qcom: qmp-combo: Add SM8475 support
      commit: 9583243a524c0ea4dd08541900ab2c7da95ce13f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
