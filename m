Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A624C55164
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 07:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOA3/fhjA0R2dgm2eTtYBnTMjleK2yFnEBcFF7bfVBI=; b=rvEnQnC4kfoy4y
	G9Yzcn4fjXUXg4dX7/ge8JFtMf7HvVDzbaElBHxfWRWiXwjnvV3q6ud9yCyYQ848vbIMckxbvBT3j
	/ICRpxvKr0607O4Crq1BjGluQ4fGrcqFin+a5JM6UD4nxQ6GCENDYwDBWn/dMdZMfFbWm5g3dVx42
	wi+nITdbhqSF9EoCL8t50EBtlmhy+VKnpmO07uwLO1lmSCIqfUYCXPRegsa6c0AMzjYN/FWRyUxhi
	w68kO0qCqRWZtxNQnGh9w5v4KPK5dd33JCjcUMnJV+sJRRoO1dWxuu9ohOocEtQWk0DklLGVgUrxs
	76EDGw5rWErvnmRioO+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpKqP-00000009fu5-0B0f;
	Thu, 30 Jul 2026 07:06:17 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpKqO-00000009ftv-0aqv
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 07:06:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9591243CF6;
	Thu, 30 Jul 2026 07:06:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71C391F000E9;
	Thu, 30 Jul 2026 07:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785395175;
	bh=Zix8LjF5UhuiY4ZYBd5W4c2txY75qw5wnv/OZ7u41fQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=c7zwg3YVWW30jGL8GIhjHPJDcsQPZwsgPFLSIKBGXMNbwZuGEuJ2q1po3UpKDAPb4
	 ot8iBuF2EaoD0ND65kgNplGNkFMKcKRulQfdV7qvusUW4ll2Z5gpu0Ysj/5rj1TqVa
	 5NPrDOw1bPbGCdJBF3JrjX+96OpTkczQ4g2aBVwP10wJU00EPHqvP6NY8duPffbpIL
	 UD29pkmwzyi+pU6VVm57OqDioBGzWgBMQajh0s44wecetiTY/iUdH8Ovf++yLFAE7o
	 +0uTUQ850yhUtz27cWm9qLI09SriqWpr4SaOBJS6TCqvab5FRn/dxCwPgnJbnX1bZF
	 Dhv9hVw+Ot0oQ==
Date: Thu, 30 Jul 2026 09:06:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com, 
	Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, Mika Westerberg <westeri@kernel.org>, 
	Sven Peter <sven@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E
 description for USB4
Message-ID: <20260730-logical-bustard-of-infinity-af2fff@quoll>
References: <20260728-topic-usb4phy-v2-0-5d9dd5149ec7@oss.qualcomm.com>
 <20260728-topic-usb4phy-v2-1-5d9dd5149ec7@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260728-topic-usb4phy-v2-1-5d9dd5149ec7@oss.qualcomm.com>
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

On Tue, Jul 28, 2026 at 12:10:12PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Some instances of the QMP combo PHY (called USB43DP) feature a third
> functional sub-block, responsible for USB4/Thunderbolt 3 communication.
> 
> Compared to the today's state of the binding, one more clock (P2RR2P -
> PHY-to-Router, Router-to-PHY) needs to be enabled for the PHY to be
> able to switch to USB4 mode. Allow that for X1E.
> 
> Also, add a bindings define to let consumers access it.
> 
> Assisted-by: Claude Code:Sonnet 5

This has checkpatch warnings.

With this fixed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
