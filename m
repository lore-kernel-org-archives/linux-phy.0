Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB2BDC25B78
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 13:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwZpdVPKxhnK/Lut3HuTtdJfH0cAW4Bwxkj+RYaJGh4=; b=PcmCcWPVEhhVR4
	Mz8Qw8rABbHaWk9spFf8dttSe90xQ3mY2RsgqgcfTffQkLbfdUcf57KuzAwnoDQEWMzZPn+winHdE
	DTTm5dytE0/0bVR6p5uBDwBhW/vKWCTAeHzpcsgAPnWsrqcCeuPmZ7MYZIChTKqm9h3bhMFrkK8NP
	6dOTvASd3opEQdXekL0FPuyk1KeVp7pVy5RNAamRu6uZ4lWNLjoUWnzfeQms7XiiW/Z4pWXWULovb
	ocmfA2xNXh32u4PhI+Y2Bi/tP5L8moo0wwT3PerDyDU+T7eVpgmHpGPR50Ey652C0OTtQyhZ/Cq50
	ipg8ZHFlhW6LMdjnCRCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxBy-00000000sCs-2IJc;
	Tue, 28 May 2024 13:48:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxBv-00000000sBg-2AeX
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 13:48:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 56D01CE12E8;
	Tue, 28 May 2024 13:48:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E332FC3277B;
	Tue, 28 May 2024 13:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716904115;
	bh=DoTWcxfPd6ZXM5trbPl344BcOXMoZdGGkPQSwjH/RWw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qV2JvCaoWDpXgFGwXQMX/wBqV7LbRdk8dAwfrWp8Alhoo43rJMx/Q3Hp0rS1P9Kao
	 ZTgbPEMUu4ivrI9JU3zpLxcZo/NnyfuEPXRM2BK+IqRQtrVXpP/20Mi+QU2CHNhnVJ
	 Wh4moUeV6b3EDAh05vasMik0jRZraX6s5NwqrSoO8hUjr6sBpJyeAXIbDqnWe7bp+2
	 heQR990QJszNbZngqv5b+OeakkEjNGBQW+62ztLRkVmfqmLp/oS7EGDlanDc0O5P0a
	 J46zpE7fh1fpLxMcVSMob1z1xpT/F/ptPkiZ5ml0IhAzvinmUpiLtGDNHYReiT+dmc
	 PB1wqi/C/iYqg==
Date: Tue, 28 May 2024 08:48:33 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Message-ID: <wipu6tdqjbjlrv2sbljgzvoxvpjvkoaz6ic3keq24n3v4tap4j@entxhnd42rml>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_064839_776730_DB3DA254 
X-CRM114-Status: GOOD (  15.56  )
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

On Mon, May 27, 2024 at 10:42:32AM GMT, Neil Armstrong wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
> 
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
> 
> The patchset also includes bindings changes and DT changes.
> 
> This has been successfully tested on an SM8550 board, but the
> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> PD USB Hubs and PD Altmode Dongles to make sure the switch works
> as expected.
> 
> The DisplayPort 4 lanes setup can be check with:
> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> 	name = msm_dp
> 	drm_dp_link
> 		rate = 540000
> 		num_lanes = 4

Has the issue with the USB controller dying on us been resolved?

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
