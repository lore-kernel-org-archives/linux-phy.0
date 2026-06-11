Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270C0CD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 11:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SQ4qoWizvtj1nBemyFobkPZfQPrhCWum2/fvV/77jU=; b=MDP3C1i8i2NzHx
	HXgO1v6R2dLq4mBxvjMjd+xpwvHXvxzDrUGh5p4jzzkvpeNmvhslSQPVrYlHFIlHRirrecJlEiw2U
	sPqGkopEhJ/Pi4iynPGDmDJ6Qtp+Lmvml/pjomaS6gqKoO2Uh8fUWswMIq9zISbKETMM7YTsur5z5
	Ygewhz/1/UunYRVFv4wB9U6NmLC7Mg0NGI7NzE38/7or5kwUe2BFDiJC1m7MnbMENm80nyqJU8lx9
	31pHXS5+hpmsapAQLc2+WAzTOrdz7YvT0rlUpH6wqVkLH+/HvgV50a4OKXoDhjJTfSS9q8AbsHm7J
	jbcv13Pdsh4NnraGe/mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdNN-00000009IDJ-2KSB;
	Thu, 11 Jun 2026 11:15:09 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXdNM-00000009ID1-1l81
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 11:15:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 528BD42DB0;
	Thu, 11 Jun 2026 11:15:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63BB01F00893;
	Thu, 11 Jun 2026 11:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781176507;
	bh=eiOE8vVz5OGc1lHCEeMyCTtaRiC/BRktpZAb812CfB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ABgAUygNo1qA032l/mHOs7ejxd526JKw+2A8A5mQSQGpsrMSIPV3Gr/Mi1tospcbA
	 qDll/0RhYf0fZY1qmyND5rjcHxuUd6Evmz/CjjBU3ALzJuYSrhSTCuDJLwhL+s+da9
	 PMjtAmceMkjfTGgqaF3x8gW+k1ZXOPwWDizCNv9c3JkDA6MeuEq8p47eXTwB+l+UfZ
	 f330JAvG8ftNODUqPJGaeHLZJvWVQs/onlqPZrfAOYD4v0BBL4pRcgrsSxxrQxiWnI
	 v4u8aXheYJwJiCZ6Ex6NsWwZKI4oFUu2DKJ1K30iWooPGTgupgRe0LIs5Y5785S1XU
	 aHLXSc8EPQXPQ==
Date: Thu, 11 Jun 2026 16:45:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add support for the QMP PCIe PHYs in Qualcomm IPQ9650
Message-ID: <aiqYtowP2DQt7Jw0@vaman>
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
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

On 02-06-26, 14:40, Kathiravan Thirumoorthy wrote:
> Qualcomm's IPQ9650 SoC has 3 Gen3 dual lane and 2 Gen3 single lane
> controllers with the QMP PHYs. Unlike the PHYs in the other IPQ SoC,
> refgen supply is needed to bringup the PHYs. Both single and dual lane
> shares the same HW init sequence. So reuse the tables.
> 
> Document the compatible along with refgen supply and add the phy driver
> support for it.

Please rebase this on phy-next tomorrow. It does not apply for me due to
changes applied ealier today

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
