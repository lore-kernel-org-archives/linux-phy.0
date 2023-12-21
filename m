Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 781AAC46CCD
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 17:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPzxi3cq6Axnvasb71h+yz/7C8WeAIhei8kXwfdOWDs=; b=X4gwS6t1La1HTW
	+X96KMWK5ilEGoFi5dKl5wQxDp6JIr/7lYH69PO8q4qta8t90NeI08r1sCHPqbrG0WIPu0ZmVPTdP
	4FsRJZqys25GBC0R14bQLojOGOubJRDPI3ApfgCERZS6JnDXdquswCi2IYpcaJh+y4+Y4wF/5201k
	/7g70o6REcWyo84KxOAAfZtEyZQ2+TgE3kWzmmPB54+TX4Aac6K8SDZ47f40gE5UufPTuve1+Pwnq
	FFQeBZuI+ASehg/nU7Rpy5w1jEFoRvUJUmEJUspGaZNLQqG7ohxBc52otWDHNlDWNgXc9NXuqtpxG
	67STiqNFl7vOLsahXAWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMem-003blC-0e;
	Thu, 21 Dec 2023 17:16:24 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMec-003bgW-2S
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 17:16:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2D2F4CE1FF6;
	Thu, 21 Dec 2023 17:16:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5666AC433C7;
	Thu, 21 Dec 2023 17:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178972;
	bh=dxEbVMJEAumXA4t6D/iYlDbzjYMIA1g1CxEnpZ7zp8w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TcwOcOKQzLBFZ6Y5Ps9hGkUfnobfhGpLA63YLNorJfU1yH6ZZl+58ro1yy1CxwFUY
	 FudmUWfp6sD31ZdGEUd+ey/dnwqPcL69+fHvMZP1z0GZH+cnmAgm0UuJiuAtB1WL5i
	 kh7Xfe2NbTzhvJrLARltxAJadc9tx5rNjG7A9V0H+TUyhsmVp7qbLPjPhqTl/dq4jB
	 CB5XJmSv9SCaXi5W9IaLpbzVOFp9zDhPM7lmjzPkeFJB79NDfbZKA3OwYryymnB/xS
	 IfWFxkqAPmNSkK2ugoPKadrFDzwDz2Vbit24CHlwd2E7ztTjxtlXceNzQD91ybi/EW
	 H592XDA01Zj3g==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20231201-x1e80100-phy-combo-v1-0-6938ec41f3ac@linaro.org>
References: <20231201-x1e80100-phy-combo-v1-0-6938ec41f3ac@linaro.org>
Subject: Re: [PATCH 0/2] phy: qcom-qmp-combo: Add support for X1E80100
 platform
Message-Id: <170317896798.712473.6042759009383174563.b4-ty@kernel.org>
Date: Thu, 21 Dec 2023 22:46:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_091614_974016_DFB7F8E6 
X-CRM114-Status: UNSURE (   6.80  )
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


On Thu, 07 Dec 2023 15:16:40 +0200, Abel Vesa wrote:
> This patchset adds support for the USB/DP combo PHYs found on X1E80100
> platform and documents its compatible string.
> 
> It depends on the v6 N4 register offsets added by the following patchset:
> https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org/
> 
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document X1E80100 compatible
      commit: f11aeb9d49632afc7abd9dfea6bcf5b3dd8addc1
[2/2] phy: qcom-qmp-combo: Add x1e80100 USB/DP combo phys
      commit: d7b3579f84f74e0f7d88d180d4e15c679786b648

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
