Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28AB0C5B572
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 17:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEqPwh//w6mw2KvR1pNnHgrVanNLFrlOt7m1vAm+n2M=; b=P5byBDrW9Jt5Km
	EDM4uySA/GDEuutnscA0/s9FAuRtM5oM2TWDCFy7CaS2tW/QOuOdg/7hKabvUVdHkPppcBoZgU5dX
	4F8QhPpLXQu5PExA1drRnJCnoNQhy044wfFeAIbvD/WCo6ZT4ekJZ0gpRuhdn9YiYagu0pzMkx2fF
	nBEi3kdUh0OIe3PNEnNjH8iuncjRqsPHULw8ChmVYZSENBngI7RzGPj5pmf8LCLyCe/cQwxt+z/G+
	BQeHukkWxTUqsXWp0sMQfA1oT88HX69wGMIPXXylwAdCB1VXlF72x6iB2aQeSz3PA9uGEyn6MGsXs
	S7rb/Cw15M7jyO6lMLBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtptE-0000000EaTy-38bg;
	Tue, 11 Aug 2026 17:03:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtptD-0000000EaSy-0LsX
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 17:03:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B2569600AF;
	Tue, 11 Aug 2026 17:03:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03F791F00A3A;
	Tue, 11 Aug 2026 17:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786467824;
	bh=0BT4ZisNR0PpCyKwJW08nRlJ32F0v3BRiESx6zP347c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=PC4Mo+KqY+4zTzmkQudd3iCkap3WG23VfQuCeYXBLquC3kckEFPT3JRHCFzwaEHib
	 exdS2jyX4aPTM+ELrupwPy2Ef0xmUK6gQVagTBspchoXgiS00N647zP9BzTEJJodSR
	 XVVr1zVhrIRI92symD9QC3OsxLnC71kkT2gTzBUEnjWHcVSTlnNhKWAGJn6BLmIiAe
	 60Ri0wsOIbnBUFpgSULTjxN1q6jHH9AOh+h+icGs7M2V1EAordwaSanSmy6e1fcT22
	 kXNNQ7Jqd7VyuBmyz+IWjflXCiPnNAZIQvc6tBd+qZMDMui6tQdeHSaO00MrkxhLNB
	 VXHEFL60fhZcQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
In-Reply-To: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
References: <20260807-glymur_linkmode_0807-v9-0-dd1c7e236e29@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v9 0/6] Add QMP PCIe Multi-PHY support
Message-Id: <178646781857.1081354.13726226205330576102.b4-ty@kernel.org>
Date: Tue, 11 Aug 2026 22:33:38 +0530
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


On Fri, 07 Aug 2026 02:51:09 -0700, Qiang Yu wrote:
> Some QMP PCIe PHY hardware blocks can be configured through a link-mode
> register into different link topologies, such as a single wide link, or
> multiple independent narrower links (e.g. x8 or x4+x4 mode on the Glymur
> PCIe3 PHY).
> 
> Earlier revisions tried to extend the existing single-instance
> phy-qcom-qmp-pcie.c driver to cover this hardware. That added a large
> amount of conditional, multi-PHY logic to a driver whose data model
> assumes one PHY per node.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom: Add Glymur QMP PCIe multiple link-mode PHY
      commit: 5619458024925b3a488f9046b3ab26647582b99f
[2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
      commit: 1781be3c8a5ddf40f5f9e7b9dc32cc577d491062

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
