Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE175E6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaD0povr28LBQFzMNBnDlBHsx2Z150V/XLoGDryZedI=; b=zQzu98ihTg+LeE
	O5k/hk631Zju9IUkfWiDg2qPdEXvjybRQ71lbyQWJHgbYK01Ihmt0waZJPXlLJ7ypx42Re29Ehf3a
	dhbMFGmY5vF4DM8MUEPr//g7YNpAYJXppFthN2qbVnvpWvzcADWD9gPlAF7RytYZPegjbhUZXmPd3
	O8ViAE/JlfLeMQopy6iM3j5JXblXNSQeIDbaH8w1+qNLZvvATx4aM+F5GoHw2E2VpxRbYa4UhDcZG
	zgVfb5JVjI7ewtftUQWWjeQYCvLR98Egx1cSHc7CBhuoqqk4rY1Y7mnnYwDwKwFvIIhhH2mpAB1Ly
	bm9fHXAk4ml/+JtVgcZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Qs-0000000Fqou-1sFW;
	Tue, 23 Dec 2025 17:44:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Qq-0000000FqoY-0YH5
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:44:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4774F4085E;
	Tue, 23 Dec 2025 17:44:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F11E9C113D0;
	Tue, 23 Dec 2025 17:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511863;
	bh=9WXabfp5pMYZMhxZhMEvt3+Q8tDLq01QxcspbG8gunQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=k40XmgnsVaWCxing7hg9ejSS2FEsM28q//aDws3hh2YeFidSOmP513N8Dp7amknPb
	 hGIjaPJDFmj9lG0/Ow7zq2wxnocmMf74aM6qsN3lu5yjiaia8f9rKAif7fnyxR96CX
	 NX0SV1qTGqUN0Tpo7b5kM8xICkHl7UYEu9nJ5Vxk5ACFUbr0mYEut6hqobj4aj66fz
	 0ozqDWPRDGnyTs+qmob0qw4n5CSwZciehe4+HnpCPG2z5WGlmKug2Yu1gtyoGBw23p
	 PeS+SAdgWT83v0X6O/Vszs6hE1yRvp03iGI87z9dHsSMoXBCe7cYYFbKdnmj8zVWPp
	 P2pdyY/mNFi5w==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/5] Add PCIe support for Kaanapali
Message-Id: <176651185961.759340.1420380637615043254.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:14:19 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_094424_228123_6CA3E50A 
X-CRM114-Status: UNSURE (   6.70  )
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


On Mon, 03 Nov 2025 19:08:12 -0800, Qiang Yu wrote:
> Describe PCIe PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe.
> 
> Changes in v3:
> - Rebase on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
> - Add reviewed-by tag
> - Remove [PATCH v2 1/6] since it was applied
> - Link to v2: https://lore.kernel.org/all/20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com/
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      commit: 4968df19d5dcb22fa2b797b64eb3c2880a239e12
[2/5] phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
      commit: 5359da47e066edb3fcd36c7349726913ee8628f2
[3/5] phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      commit: ecc12453c8b1aabdedcd663b7e0587f372a2a90d
[4/5] phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      commit: ba13ff85d3cfb92bd0502a8f93366ddbb5d91105
[5/5] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali
      commit: e5b4d5935f758c6d685c624343d7615d76bdc931

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
