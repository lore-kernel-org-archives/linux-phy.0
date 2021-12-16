Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C94A0C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 06:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xlKLR0w/g8HtoHpDOgsttaYWZeYp5evU89bT9gRum7w=; b=cJukAuK+4jGZiC
	DVKudzZfGR8eBGRuJS09n9IhUwJUYJEamMUrFZz4uhH/PMkvvttQP21/Z5rPfkglNQlfDQyjKWbOy
	DpsrNtDxPlzziAf9ZbDVsK4S8eubcMGVfj6dL2ielysBccVecVivnHdLOnvr9FQo/Ax1Z5uEMTD8V
	GofQsG/WbYcKbydbYgHIr1DjOMDfstEakNI4D8SzwRWNboYQvlUrDVyt/qdqj+lGx8YKTXNJ8SlPt
	R4iS5WOt90TOyDiY55CAkMv1WWRPIqIysxGveIskZX6d4dwiiR1zvxkSl29+GiT3K2Z9TbbLFnUCo
	ywzW964Tki/AZ2fzZXUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxkNK-003mV4-85; Thu, 16 Dec 2021 06:36:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxkNH-003mU4-7W
 for linux-phy@lists.infradead.org; Thu, 16 Dec 2021 06:36:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3C5B061C4E;
 Thu, 16 Dec 2021 06:36:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3DEDC36AE2;
 Thu, 16 Dec 2021 06:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639636577;
 bh=neU9K+dVdRN9HYvVjoIapl4HfMVGMGGHHK9OM8vGk9w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vFcnYOgRfdBfISm46BAT8cSFrqfRG1QkFwb1Gx2T5yoaanL83Tdi0won7+pwl9NBW
 Ew6Z5aOHaClbdfACdrx3CBtdU1sDlN4jG53sNC3TKXkl1duV6a0921hCjoZojXx3GE
 EYADMd3o0SN9It835KWhYxQ0A+QD2eTqijNOqE0TKKWiWP2MZFQAiP5jxnMUVJB0F6
 44GXU63DUbKbtIdBXfuUIC0Z3lYY/LuZWJ3qYDkRzok9PkKzcQmFhVMW7vGD2nQBbA
 qXIPT5D+SDtgWQb5I9VV1LFFPeLRLEt9jGZ+YNyhE8cXlIvgI3S6WDMLtALID2b4Yd
 onD7YnQHVt7VQ==
Date: Thu, 16 Dec 2021 12:06:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Wesley Cheng <wcheng@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for SM8450
Message-ID: <YbreXVkMoOcoeHAA@matsya>
References: <20211213131450.535775-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213131450.535775-1-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_223619_330251_4DF25AE8 
X-CRM114-Status: UNSURE (   6.71  )
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

On 13-12-21, 18:44, Vinod Koul wrote:
> Document the compatible string for USB phy found in Qualcomm SM8450 SoC

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
