Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFB60CD37AF
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LNkJsGdq7zNeb5r20ukVTJ7gipeiHjvWb93RIPBPpPg=; b=zqAoFdMkHF6TjD
	b48uVB20EOG26eGVF8guYY0/iZcxBJnuw9eUGlYSne0yjhJ2EWlU8j0nNZLgJXBtJXo0/c3eWkiga
	gdHU1PYBOG1lGoaQze0xtV/713EVWOQ+jxOEjPpdAwaeTxE1JsCOYjvcLtYjPffxfhv4/xgIP2Tzc
	DfLzrbTfhSee4T93j7WzdQA8zwng5kfpppcH5brZFpii8+5cd60UUhxRwjgGlsh76OQapHYUZh9Tt
	2oU6+pWc1AWruVT253xC10J8/E15v6xsgU3QmhevIQByuYOZIp3Y3pD3W7DCOx+TECj7+V3Tyj9ri
	3eZ94NBO6zKFmm1sBvqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Ju-0000000AiOG-1jVG;
	Sun, 10 May 2026 12:31:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Jt-0000000AiNp-0UcY
	for linux-phy@lists.infradead.org;
	Sun, 10 May 2026 12:31:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 929A16001A;
	Sun, 10 May 2026 12:31:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66BAEC2BCF6;
	Sun, 10 May 2026 12:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416300;
	bh=QhiPJ7oNWRgIuuxn9VuTh0SkuqQDWzHNu7+WPzds+88=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nEGCoaK8CBx9+6oIWFcahlJtSwNBdc6FjEkcjc3upSA+oZ/1wf/6G9O1PbZX8CzhF
	 vvWpBvR6XjVjSycBXZlPE7wS1ir9Hd5TZfAjs5CdxG2xhNtO+XFQh5hC9HtYA4Q/CP
	 /gPnUKX5JNFg3D/0tfPMod/+K+S1rNorYe+tFjg5mQyhjtRLicji2NIJs49q/9f6E6
	 OAsxAtUKG3HJhK5ARMPetK6qAMdjUuQo2RTmDsuPlYZ7CJN9ArLbxp45HfsSU7N/wY
	 TqPrW0gjVi8Ar0AD+9sFxNWb2S6B/4Y4qlSlnVSzqLFhGyQ4cHAC7MDLaZe+Se6tEk
	 qfk/J1qKShLMw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260504-eliza-bindings-qmp-phy-v2-1-849c4de8d75f@oss.qualcomm.com>
References: <20260504-eliza-bindings-qmp-phy-v2-1-849c4de8d75f@oss.qualcomm.com>
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add Eliza QMP PHY
Message-Id: <177841629697.434434.1495203271597382952.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:01:36 +0530
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


On Mon, 04 May 2026 19:03:41 +0300, Abel Vesa wrote:
> Document the compatible for the USB QMP PHY found on the Qualcomm Eliza
> SoC.
> 
> It is fully compatible with the one found on Qualcomm SM8650, so add it
> with the SM8650 as fallback.
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Eliza QMP PHY
      commit: d67a337d28a2d852ff539e983ad6790caf9c95f5

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
