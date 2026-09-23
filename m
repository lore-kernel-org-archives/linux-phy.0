Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74227C9830B
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 12:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxB9grFrx71d8BnAqiic94rVeYwNW3+rAR2yeJuQElk=; b=rHXzuNg2A2FP8H
	1q0r2wXwhbA8juJImh3gSiFeG1maJzRawCbH+LCZ9KKPpMVmk6aRFXXqfibiG6Zpt/ezfLwoSmZ+M
	mxtpQOrB37dVoRgaDZkOlCLdhNIv4uh44bagA4u0BGa0BFlusYEirZ15u6wxnDy/obLWOsU7u9tE4
	TJoeHoSIknKDYlb6QzzBBmTkMsTR7tCAAmV2A31z1j5/gzuQXfy+r6e9kQlyBpU+lA5wZrXqYCeyl
	tXc0yChdJRMnNjS5IwcFmgKudiFtoU2cengYNpd2KrI84wE7KYK/T9wvhm9tG2iUB+mjS9n+NwT6a
	B3BtOTfJiniyomHcORZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MCM-00000008GMK-0e8l;
	Wed, 23 Sep 2026 12:35:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9MCK-00000008GLu-3HBc
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 12:35:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D9E8760210;
	Wed, 23 Sep 2026 12:35:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50AA91F000FF;
	Wed, 23 Sep 2026 12:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790166939;
	bh=2dK5VRSBMSPWEw+huJwtIt9dDztjXf6C2NVfcwHlD4c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ZBLZsTtUzMVMFJzwwTuNTILX6MPQDBXuPdeNaK25DH970Oh6BnIBiTM1qDsvdIDAt
	 9yPqNztLZql1VgkRkzcYsn9orIP008MukFG8vpfLDcNbFCaGj9fCrGH2+EJxZ+aHrv
	 26M9JoGB+2he1EAWIbM3asH7YDMojVdIBrlTMcK6G8OSjbj7KwTnKdZrJ53phQ8n5+
	 nDquiKnPvrX2ib2NEY7kmweTu4rIYLgZVEduzjeM49/4DT0TsKyeDT688+iruWd28n
	 7e3fiVkB8R9Ncs/Mcdg1/nlMjJZeUqOsnh0YQCsETjwEeEagC9ODi2Cg378kJg18mj
	 g9U0RlD6Nes5A==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org>
References: <20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org>
Subject: Re: [PATCH v18 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY
 driver
Message-Id: <179016693496.140073.8850264206608452874.b4-ty@kernel.org>
Date: Wed, 23 Sep 2026 18:05:34 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Thu, 17 Sep 2026 00:58:37 +0100, Bryan O'Donoghue wrote:
> Missed last kernel cycle, received some additional asks on data-lanes in
> the meantime, reflected here.
> 
> Would really like to merge this in -rc1 so that a lot of other CAMSS work
> and SoCs can be unblocked.
> 
> Changes in v18:
> - Removes clock-lanes from schema - Krzysztof
> - Split-mode data-lane fixed to 3 - bod
> - configure() reject lane count different from DT - Sashiko
> - Link to v17: https://patch.msgid.link/20260903-x1e-csi2-phy-v17-0-26606fa9a039@linaro.org
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
      commit: 3b0140f37d25b99cf4c881ce40bafd02d9781c5b
[2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
      commit: 772ff99404a101e8d216f869c606cbd0d1d37752

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
