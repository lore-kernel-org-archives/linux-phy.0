Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 651A2D262B0
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 07:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWWN9k8msQ7ipcDdmrJ7tKn2Yt+O2LnHC6i5499iiK0=; b=4ifRPgZQVWuaFe
	jya2hfHbpw21Z3xDAlfHFiAGXgcz5/AACGKfh2LLbCl0oueXX9Bvn4h/OCHuAkJB2qHlpYmDRnR1O
	I9+FH2Cs/WlEeP0ykoofx6yxyqrEG/Bom5ihAeNQ9ncY8sPEOhgGyJCGCF6MlW2DQu/eXHbMsyzzr
	5OL0dzjIy+AHTZrLUtnYwJdeSOC3peNkSwcACnSe+lUq5AHie06aDRgeloiJWACY2A2+CdIHvYIlE
	DEqgTKy1zYP7cyKg0UfKstCgH/6QVcpeM4cNWo+ViMSQzj5RBvRNw01mr7vWNGu6EYTK2+cSYRI90
	WfaPIAQpmXCTlR+cJKOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viSo3-000000051nB-0SCz;
	Wed, 21 Jan 2026 07:39:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viSo0-000000051mj-1DeI
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 07:39:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3C10D43FE9;
	Wed, 21 Jan 2026 07:39:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F812C116D0;
	Wed, 21 Jan 2026 07:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768981147;
	bh=4et9JHew/IdYpHrx5sJKZe5TCwDkvEZYKQ+G1qbL3W8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eV79uVeaXCUcFkxkK93//P7zK/5ptiki/tM815EvPgOl29+XW6dhZmMBsBYVEWtLB
	 w7wBp5MjTYVnFv/hFi0Q1C0VDtt/VMtSJ6xcw/guwQ3k1GF81G3LakcAOakN121mLO
	 hFN7dXogNqqI4fG7iU9AeITbJRIV49WOPPE5d7cEJ/jVRwQUbzsY6ceyITX3Xx8cRE
	 LzY29mroVsFS9Ey+rATQtxyQFjC2P96fGuoTrddIIFtCtLFo3yzdo/jOoMPGviDpBB
	 Bfq1TkdU0d7RlaQdl90UskBJPKRBYun5G5V1XH49koZE9aYT2DiG0lJIPUSJrvQXNg
	 XFNCT93IWwHKA==
Date: Wed, 21 Jan 2026 13:09:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
	srini@kernel.org, neil.armstrong@linaro.org, sre@kernel.org,
	sboyd@kernel.org, krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
	luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com,
	Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v8 07/10] phy: qualcomm: eusb2-repeater: Migrate to
 devm_spmi_subdevice_alloc_and_add()
Message-ID: <aXCClgUXYJPEpVbE@vaman>
References: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com>
 <20260114092742.13231-8-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114092742.13231-8-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_233908_350603_2B082835 
X-CRM114-Status: UNSURE (   9.16  )
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

On 14-01-26, 10:27, AngeloGioacchino Del Regno wrote:
> Some Qualcomm PMICs integrate an USB Repeater device, used to
> convert between eUSB2 and USB 2.0 signaling levels, reachable
> in a specific address range over SPMI.
> 
> Instead of using the parent SPMI device (the main PMIC) as a kind
> of syscon in this driver, register a new SPMI sub-device for EUSB2
> and initialize its own regmap with this sub-device's specific base
> address, retrieved from the devicetree.
> 
> This allows to stop manually adding the register base address to
> every R/W call in this driver, as this can be, and is now, handled
> by the regmap API instead.

Acked-by: Vinod Koul <vkoul@kernel.org>


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
