Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38271EEB57D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 11:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbElkDlVVImJOhsB7msp2c0+emTUllU+G/lGn3AgXCI=; b=nffma5q1IIRdM0
	g2zw6E8rL/+kvQ7eEx4fVLSLQB1xLyOiL4HFdUaOXOrw1HIxnqvQvjxgYYYaF0NBh4MjfBJ5+YK1V
	nMPOIgnbHEgKzCRVFJ+gWJ2BXoZQnARA1NpOZLRqe1U+SOv3Mws4nxsmE9brOAC2AZZKE/7yYq7Xw
	+l19+ydgx2pVFp403rhZUXE4iO6bpUqmAQsOVQFX3x6BCXWxMUprLDOrni6rtaZaEpDhnhgXCiODj
	xgq9XOHp6vzqNDIykeIc86/NEbvZW6EqqSr8B0SA23FKoskjtgLQQK6N+gGi1fMZlVjifdqjSOrrS
	7LEwHvCJA6pKGjzC6epg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXG-00000006nt6-2g3e;
	Thu, 01 Jan 2026 11:08:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbGXC-00000006nsT-37KP
	for linux-phy@lists.infradead.org;
	Thu, 01 Jan 2026 11:08:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3394143AF9;
	Thu,  1 Jan 2026 11:07:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABA0BC4CEF7;
	Thu,  1 Jan 2026 11:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767265679;
	bh=W+vJxAgBNm+n//Wn2RLew3QSjtXlLO4Nn+RTa2qEUQk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=L/7uM5NCpXTvhIBUkYeNbAgBPF9OZg4ciSNZ8BL+KE8mqF96fUxLICS5cjmpeClG4
	 4W/s/DugJtCmBSY3aK1JiWHa4y5P0g7Wj9uuct1Xo4cy4Th7YIVntKHy+VNNK6dNTQ
	 g4XYY44nBN7U1s83HC/zlk52+Yv4t+bFUusC4NMIVLer5Lb7JMdW3/R02p322MIu4i
	 1CKoCQLYhqY88aGO6wq9j974Sr9yKmmxmBh2Yauh70WsC3TBv0h/YtZOiFporn1QZh
	 qB7Q/fjjVPxpjuOVKJBAM2+hs6aaVB0xWE/pkZfmF5ggTj4BLhwHh3wXrx5+iPjNq2
	 YW7uJOR5UW9Fw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
References: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
Subject: Re: [PATCH v2 0/2] phy: qcom: qmp-pcie: Add support for Glymur
 PCIe Gen4x2 PHY
Message-Id: <176726567533.201416.1560335358869706527.b4-ty@kernel.org>
Date: Thu, 01 Jan 2026 16:37:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_030802_809177_5EA3BFC3 
X-CRM114-Status: UNSURE (   5.10  )
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


On Tue, 16 Dec 2025 10:25:03 +0200, Abel Vesa wrote:
> The Glymur platform comes with two PCIe Gen4 2-lanes controllers.
> 
> Add support for their PHYs and document the compatible.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: sc8280xp-qmp-pcie: Document Glymur PCIe Gen4 2-lanes PHY
      commit: 25671c37821006392ff8c66e980475747bee4cde
[2/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen4x2 PHY
      commit: 085ba7c91df34e05366f9fecc9fa7a037598c30e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
