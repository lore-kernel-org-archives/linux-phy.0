Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 799E9CF9C72
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+EvscJ4dNKncNQl/kypRf1TAyxxdqMtfsY39ze1QUA=; b=kWwofTpt35hkX9
	coylK6hDcOF6rIYuRZH+uuBomZoX1GRuB5Y4QCCBX3cR2OuCookXe0vXAcCBJThl/eGwWIAYwTmMV
	lf7QZal57pHZQ0QlCwojF7fp/AhjYO9hIwhdoMR3qQmB8dnjv8/ZqkzDS0XaPtKQq+U/Uy6oQK4yZ
	qSCiTOX2+/zK7bV3zC4AP6LeDrbLebuw9Zv0nfs77WG6B0i8o2c5PgYiJz39yfH2RizNmwAU6nJgF
	bhvD1Q9+nQ1GvjaFpsph89Dr5fARhQpZUn089OSAeZQaNrE9Vm2foTgjRQFBRnBPHZKhquZmIUNWl
	62P2uSgivHL+ppYR/ckw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CM-000000074Dy-10SS;
	Thu, 20 Nov 2025 17:11:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CJ-000000074Cq-0xGV
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A5354601D9;
	Thu, 20 Nov 2025 17:11:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 111D2C4CEF1;
	Thu, 20 Nov 2025 17:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658714;
	bh=MlYGscgFhatbKZzft9OaJCGjeje2mrEArOpT1N63d5c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SDwOSNBU9IBfujouk87w/12yWvX3k8aNdUDhVVOamXF1gxPDOT9pjGj5JMkPdHoIb
	 tES7liQqll2kykAqlNVR39uBwX7lcY2JlgOwHKSjDhUwNz/a66JYBf7K8L/qZtZ6Eg
	 mMGdb4Rzj+kFvVkB33/SC9iwfFNelbf6VUUsetrwPQyAcUc94GNP01alN4gxi03RVA
	 sH7T5JP7ULADiVlFj9O9KQVV7e/bbOqOPmg/2bZwvOplAdBRy26bVPGj70/Ap4yGCt
	 mQIaiNhTlMyUQitPR/eyB+DiuRLIGV92jeJaX4q7WoOz1Zwfik7uBLqw2WQQ9NY3qc
	 0W4wc1DacOUzA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>, 
 Wenbin Yao <wenbin.yao@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Manivannan Sadhasivam <mani@kernel.org>
In-Reply-To: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
Subject: Re: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Message-Id: <176365871069.207696.4414338394387114477.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:50 +0530
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


On Mon, 03 Nov 2025 23:56:23 -0800, Qiang Yu wrote:
> Glymur is the next generation compute SoC of Qualcomm. This patch series
> aims to add support for the fourth, fifth and sixth PCIe instance on it.
> The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
> and sixth PCIe instance have a Gen5 2-lane PHY.
> 
> The device tree changes and whatever driver patches that are not part of
> this patch series will be posted separately after official announcement of
> the SOC.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
      commit: d877f881cec508a46f76dbed7c46ab78bc1c0d87
[2/3] phy: qcom-qmp: pcs: Add v8.50 register offsets
      commit: bc2ba6e3fb8a35cd83813be1bd4c5f066a401d8b
[3/3] phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY
      commit: 1797c6677ad6298ca463b6ee42245e19e9cc1206

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
