Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08514CF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 14:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7A6Yhvdee1qJUnZvDmkSQtxcYSw7tKIaGc0MWmFbCus=; b=e61gxL/DRt9aQU
	B7l/lQMmVlJXl2j+gTFNwuOnFfc4lpJzxtvpjbm8+ibMvmUuqikCqCrSWF7QHBrW5Ao8Ym/pN9w1+
	GU9z5lN0DohS5ZKYtTvC+xQ6jN9mK5KdGNewzQB7VTPewFOsfGNaZQwF5LzWJ6iEbDCQzJCSzlI0m
	3c9r7hh2huNEzeBT6tRB+1Id5rm6P1Ew6q3/zPWFmM1BRg5mbNJQc+/fZMDM9ft8p+8efxxh81FWR
	qRCozgx2FiFLhzNKID/geETot4mghscm9GPw9dVnEcaaNP+LNzYeRS9YRTh6r7UGT6McwT8RjtEtq
	g78dLssqaOy0itYWfftQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st6V6-00000002XqS-35p3;
	Tue, 24 Sep 2024 14:26:48 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st6V3-00000002Xq7-41hK
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 14:26:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 74D26A4272E;
	Tue, 24 Sep 2024 14:26:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7FDBC4CEC4;
	Tue, 24 Sep 2024 14:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727188004;
	bh=owLHBep2qxd2QdjxXGESTjGFlLOvLH5ifMDxPIDYmjA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CqCIafE280oGO0sFkIcWMJ+dIS3ZxvIdSp7UlGHkL3420uZqrF9MQv7jlCYFjUO2H
	 E0eL00nUUexPHzcCedFkExJK/npdT2Ix8c5U94p7OOQMdPepdCQaPa+bNypuPZrcYG
	 kr21Zk77y/cnbg6Zpa+t9hrbhWB+zXe3DnxmiN5hzxkSBOABWo06ZnI09i233fHGtd
	 2RSDh7UQZD9VNm1WI3DrqliDwnkurf5nNDksi/RLZrfTlNpQc4clA1IVy7k/ZRaT4R
	 PhpB2rC/6iVVNuDDj0uIAWeWEegnmhrxwZxBzse3aHBEYMqIhVmDmkJocUdHTYmBqb
	 NciAKsIHUhFug==
Message-ID: <9a692c98-eb0a-4d86-b642-ea655981ff53@kernel.org>
Date: Tue, 24 Sep 2024 16:26:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
To: Qiang Yu <quic_qianyu@quicinc.com>, manivannan.sadhasivam@linaro.org,
 vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, andersson@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org,
 quic_msarkar@quicinc.com, quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
 neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240924101444.3933828-7-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_072646_094023_0E4BBF7D 
X-CRM114-Status: UNSURE (   6.60  )
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

On 24.09.2024 12:14 PM, Qiang Yu wrote:
> Describe PCIe3 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe3.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Qiang, Mani

I have a RTS5261 mmc chip on PCIe3 on the Surface Laptop.
Adding the global irq breaks sdcard detection (the chip still comes
up fine) somehow. Removing the irq makes it work again :|

I've confirmed that the irq number is correct

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
