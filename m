Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF856CCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 09:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1x8rFRoOM/uFZWJ/pKRruqd8Dwr//QmKFEPAvV01Tao=; b=kZPwlYpDKNwQVc
	zbGR3z/3la1lXBAuNIrOz3Ld81F0hFg/F9QdXILThpKih+WVAA6o32wsbEkoq+pa+Lco8e9talXim
	R+rFBm73XR47QcCDsci2FMe26wAa7+T3YC0DQH8kJvVDeNxaLLmr9Mk+DzK3r71rZzmG6pq3XO48D
	b6S3Y+k/24dWa21fULBvEh1x4DNU3/KSCGtZK02FbVDLFSz8vEDSjO0rLLIBwHt9TF11xcYyNpMz0
	gzgiBTONMPTLG+dZWZ3hhP7yKu6g0htQDWsWFfTqyyuPZL9axn5emCk/kVV2QQxiv3hEJu5Q8DqkJ
	7JxY2p/mA6EmW6W9FegQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHeZv-00000002XSz-1W85;
	Fri, 16 Oct 2026 09:50:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHeZu-00000002XSn-0uhC
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 09:50:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 61DDE600D4;
	Fri, 16 Oct 2026 09:50:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 987FC1F000C4;
	Fri, 16 Oct 2026 09:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792144217;
	bh=V6aTJ8QIFgvcB3e/79zrOO7eJ2u1s961DY47qK0V8iE=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=BygICGC2Z67hiTzpm/pdMXvMIgXGFGEP06d6qCZ9ylcnCJmz6GMcRLy0FnDLCGfEk
	 LfwAg8RuTYYHwXoAlxvscKskg1Or7i3Q5mX97hlvkhGT5m6EZo2fQfjjvglb5hqyxa
	 qG27EfiPawZvVRburGz8t/J2Lwd7JiYiQHEqUzlLs0wLvzaTzXC2n9EIEdWAipNbI5
	 objOUVaH3wtr5aoqHQtE3C/8VkD80hEphbX/PVhvg9JYXTQu0V5zJowVqMHqkXx24u
	 onAiqsXH4n1MCH8RIbnKwQPgSKLnQUfEQf2F5Kw2497zooQ5CLei3VCN+32lN4Yg/q
	 CBh1is2IJdCTw==
MIME-Version: 1.0
Subject: Re: [PATCH v3 2/2] phy: qcom-snps-femto-v2: Add support for
 SA8255P
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sriram Dash <quic_sriramd@quicinc.com>
In-Reply-To: <20261002-phy-qcom-snps-femto-v2-8255-v3-2-342542bd9bc6@kernel.org>
References: <20261002-phy-qcom-snps-femto-v2-8255-v3-0-342542bd9bc6@kernel.org>
 <20261002-phy-qcom-snps-femto-v2-8255-v3-2-342542bd9bc6@kernel.org>
Date: Fri, 16 Oct 2026 15:20:01 +0530
Message-Id: <179214420138.106618.10672928212252943043.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1631; i=mani@kernel.org;
 h=from:subject:message-id; bh=osl3ghB4d8zY2HK8xDSaBVFAhMO5e2+7C6eOp4TldX8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq0fNNaIWVmPyjpH/CFyBRgLTGNqRvrMEh5A6BY
 u8Sbl9XdYmJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCatHzTQAKCRBVnxHm/pHO
 9XaQB/9bZL4RsdsQ99uYzlA7jwW0SRXqnqYP7n3MATI6/rXxBKrAmGnamqm5VdRW/kVOqaOJnld
 7YJRGoJfkQmMLvmvMmzOnwP/ZcgDFtyFWaG3awnXpreGJ2Gcs6511crrYFbRbD0SgCr8Kd1p5kL
 0UHSmlIBdPn2DAE4CeE2xCSaLtQUW9s+48UcjIaFwyQMVV1RJvjjvHK+yErLEnG7d+EDNvVFMwF
 AU/qIceCsWar/6CE1820n8XF1c/bKGl/Pr/ItvaF5+PCzyQrjeBomkpuhFx1Ijlu3h6leHANj3W
 17Almgf9kTuu8wOhqd2P7jmJGOu/nkpXRa+gCV3e/AxGc/Oh
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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

On 2026-10-02 11:41 +0200, Mattijs Korpershoek wrote:
> From: Sriram Dash <quic_sriramd@quicinc.com>
> 
> The Qualcomm automotive SA8255p SoC relies on firmware to configure
> platform resources, including clocks, interconnects and TLMM.
> The driver requests resources operations over SCMI using power protocols.
> 
> The SCMI power protocol enables or disables resources like clocks,
> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
> such as resume/suspend, to control power on/off.
> 
> Power domain "core" controls the GDSC, resets, and TLMM (GPIOs)
> whereas power domain "transfer" controls clocks and interconnects.
> 

This is not consistent with other SCMI based drivers. Most of them are using
'power' and 'perf' power domains, not 'core', 'transfer'.

Why are these discrete powers domains be required? In my point of view, the PHY
should have only one power domain for controlling power and be done with it. If
you start having these fine grain controls over the resources from SCMI clients,
then it defeats the purpose of the SCMI based firmware abstraction design.

> In this variant, two disjoint sets of resources are modeled against
> the power domain suppliers which can be turned on/off to achieve modeled
> device states. Two modeled low power states d1 and d3 are supported.
> 
> transition: d0 <--> d3  :: both core and transfer suppliers
> transition: d0 <--> d1  :: only transfer supplier
> 

What are these transition levels and who defines these? We cannot have different
SCMI drivers inventing these kind of independent low power modes.

- Mani


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
