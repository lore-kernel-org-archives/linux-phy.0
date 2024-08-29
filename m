Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E8CC8303F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 11:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyUt45ie+rUJ7IrC+qIMBHB2+XJVvfX+j+XFHwl+PKM=; b=KfJYt+Oj8RCQLb
	Ci4GbuXUy02kth7HjmeTvOK/G71mcwduad9hjIiKESdH7mNdAO7xUcCDvqsVKt2Ja/IDLsaBQwj0U
	BJ5VtTZgrhQZgb93nVieLczOSVEha6LHPWLauzCxS62cEQXn7QUjdD4Fc7Vth+Vc960YcqkBbpMvo
	zTA1A4OXRgIqSBGOxNrldvByZQbcBjzWSMjpbdmkclTBuX2mwOWtgRO94NoxWZj3sMexbLqc2A1a4
	BYzbS5SEsyhiog0aAvEr+YxJ9vBRyF4yfN6Oi8M3wqaJW/2uccNDEkzx44HmXd5PKpdqI9duXqQQq
	z2c/6oxB1wa3ZaUcBEMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjd1F-00000001hcI-1vPo;
	Thu, 29 Aug 2024 11:08:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjczK-00000001h1n-10EW
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 11:06:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id BAAEEAE4CAE;
	Thu, 29 Aug 2024 11:06:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31DC4C4CEC1;
	Thu, 29 Aug 2024 11:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724929607;
	bh=fg/Pr9Xu9fIkWG4EBqfPavp/9fNb65GBV6otyYiBVvQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ubZi3w8xP8xTAKbnCBG1uKicwv3mIjrvbnZiZ0jZS42OEeJBQYMG1zsVJIRpu5fje
	 O0M8BeKz29VQAhIWrZxc6fFxvVjSVrhpbKk+aI5OYFPybIvP7WfL1tNmZpFKOqPtV1
	 pmDO6H8LpoEFL+Lw/P4Z63DRA1fVJD7EzxJ7qemFv8Mp+LwI/Y9AySGV1zlDO/URY+
	 UonY5otW+50QDjH8UZfoamFuMo5xxUgPZomDaiusU1U+IX+d9Eiz8PDX0fLIFoZ9G3
	 EjYml9btFqg1L1WrypXxhEkmyrrST3n5o+We/SWBL9P+x/cPAV9HMCNF8fJehVcJzb
	 btl6mqPzZ9SWw==
Message-ID: <b2bc241c-ed17-48d2-b665-50f9aac9daaf@kernel.org>
Date: Thu, 29 Aug 2024 13:06:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org>
 <20240829-nxp-ptn3222-v1-2-46906bc4747a@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <20240829-nxp-ptn3222-v1-2-46906bc4747a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_040650_449463_3E783AFE 
X-CRM114-Status: UNSURE (   6.80  )
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

On 29.08.2024 10:21 AM, Dmitry Baryshkov wrote:
> The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
> translation between eUSB2 and USB2 signalling schemes. It supports all
> three data rates: Low Speed, Full Speed and High Speed.
> 
> The reset state enables autonegotiation of the PHY role and of the data
> rate, so no additional programming is required.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Tested-by: Konrad Dybcio <konradybcio@kernel.org>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
