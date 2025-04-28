Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F852C369D1
	for <linux-phy@archiver.kernel.org>; Mon, 28 Apr 2025 00:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lqry1sW3WPE7UjZI9JPiLEVP3bW8g1WnlNAKI8XH6TY=; b=SHOGaqhzFp8VGNo52ddpSXPFMq
	qPuLDLuSglXOPYgnsmT3JP8EFI7dfyaOvcQRpIiqB/VbMJTwZxV9Q/A6ccSBfdrz9xBMRr6OysZ4f
	RCJ5S1gbe94xR03WvOzBVksOHLVBi6DL6fEu2dmeWPlclFtuSVDJ9CwCCzFs4xCVEzw6ZoX4+t5Ui
	qJfYlp2IfSy8dpIN6LoUHTd+BJ7dJ9eNcOTwm0O2aH6Pu4riEUAjmGNFEorhrXr1ro44Zc2FRH1RL
	aLBCpHOnwCc7/QRxNSsBYf5lghLacrXmd4Srh8fMZDKtRY1DJMcmSMYRZdeu+8SR0Qgq4Savt5xyV
	n+SK5jnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Bvf-000000049bA-1V9b;
	Mon, 28 Apr 2025 00:00:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Bvd-000000049ai-2Rrp
	for linux-phy@lists.infradead.org;
	Mon, 28 Apr 2025 00:00:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 88EF3436FF;
	Mon, 28 Apr 2025 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27541C4CEE3;
	Mon, 28 Apr 2025 00:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745798455;
	bh=W5vRtCF/3ch2I435tyzUXFE8e9gPD0WPo89DsXN3yFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fNIe+crxuzWWQRBF09HOLl0icswmAE5ZEhB1btylcw3BdeE0++Wn6ufkvXhoPdvtC
	 rsZuelEPoRGVas5xWrkiOY92X3+In1cuEQYEiSaA9Ijfc8QYN6gJJ2VT1saTaTSPJF
	 XpJMeO0FqTTs7K9QBVygu/cSbE4EoXn3kWS3wLxeD5xAMqoBrDVJRP4SiXyJEEUbZP
	 ER9CFd4/S9bPByfXXwsyTeySFfDN5gxF3fvAcvq1Wnijpq7kAjujMu/lEc1wPnSKDf
	 n/mIT+CFvlO0z4WvORTyHw2bLE2iqIILGi4yiqzMmqKsB+3WPh37669kw4KvELhCvB
	 xDtwN7hFdA0Nw==
Date: Sun, 27 Apr 2025 20:00:53 -0400
From: Sasha Levin <sashal@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
	Vinod Koul <vkoul@kernel.org>, kishon@kernel.org, lumag@kernel.org,
	abel.vesa@linaro.org, neil.armstrong@linaro.org,
	quic_qianyu@quicinc.com, quic_ziyuzhan@quicinc.com,
	quic_devipriy@quicinc.com, quic_krichai@quicinc.com,
	manivannan.sadhasivam@linaro.org, johan+linaro@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH AUTOSEL 6.14 08/31] phy: qcom: qmp-pcie: Add X1P42100
 Gen4x4 PHY
Message-ID: <aA7FNcDNbb1H4Jis@lappy>
References: <20250407181054.3177479-1-sashal@kernel.org>
 <20250407181054.3177479-8-sashal@kernel.org>
 <Z_dt0F-XzGIJWhnz@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z_dt0F-XzGIJWhnz@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_170057_642028_AFE8E1ED 
X-CRM114-Status: UNSURE (   8.75  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Apr 10, 2025 at 09:05:52AM +0200, Johan Hovold wrote:
>On Mon, Apr 07, 2025 at 02:10:24PM -0400, Sasha Levin wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> [ Upstream commit 0d8db251dd15d2e284f5a6a53bc2b869f3eca711 ]
>>
>> Add a new, common configuration for Gen4x4 V6 PHYs without an init
>> sequence.
>>
>> The bootloader configures the hardware once and the OS retains that
>> configuration by using the NOCSR reset line (which doesn't drop
>> register state on assert) in place of the "full reset" one.
>>
>> Use this new configuration for X1P42100's Gen4x4 PHY.
>>
>> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Link: https://lore.kernel.org/r/20250203-topic-x1p4_dts-v2-3-72cd4cdc767b@oss.qualcomm.com
>> Signed-off-by: Vinod Koul <vkoul@kernel.org>
>> Signed-off-by: Sasha Levin <sashal@kernel.org>
>
>Support for this SoC is not even in mainline yet so there is really no
>need to backport this one.
>
>Please drop from all stable queues.

Will do, thanks!

-- 
Thanks,
Sasha

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
