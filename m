Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E483ECCD192
	for <linux-phy@archiver.kernel.org>; Wed, 18 Sep 2024 10:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwGo3eGcJp5AzYl8olNTxcS9ijlCkHUnr5rULXpYMGU=; b=UU/WzX3KljaEEr
	gjOFDJZxpvf1brs41dnFD0vkvSvRcpaEtDB8OEzCeo6vmsSVgYFRRi89zaZgXpJoWsHx5OQBXEP4I
	QK0QsROUV4RSpPJh4lmj28s7Jveh2F2kYRjDh3W2i9vArwf+WCeQFPnfBu+wJYyh6OiBCGKeRx7VC
	CzBYTpOYrGiiz4gHx77ZSDECUsYMxk+8Jv6JJfMHLM4wgFAa1FlD6oN+kFptXsMD2OOPMdgCwpdxQ
	tKtyS9zF2IWw4X507UdjG4UxycszXU53Ghy1uBthiOVIdNkgCZxRLoMQr0YYm7lWSX/9Ez3VHmDtn
	hZEz9I2gApbwU/CWa5tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqrZZ-00000007z5X-2TZz;
	Wed, 18 Sep 2024 10:06:09 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqrZU-00000007z58-3TMe
	for linux-phy@lists.infradead.org;
	Wed, 18 Sep 2024 10:06:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B789DA43779;
	Wed, 18 Sep 2024 10:05:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4148EC4CEC3;
	Wed, 18 Sep 2024 10:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726653963;
	bh=b9ubWyNkci8vVhzFdYA9KsCYZugo7cm3IlQEuh6iue0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JEJx++iAkxnatHlTFHLGHaXqoTECueNrOQcMMlX/zjJgsMyeCZJsBOdEJu518FI3r
	 fg4AzPtrCdoLe5UmpM0+JV+LuKm1iGDMKhQ1jOW11y/kYMnQtFk5Bf4LSNIvbIRglv
	 MGUSnG2YtW3q4Zy4nXBZLQhgdk+n+xRyzsCaHO9LrfnHharz7jbh+hag9f3KGCTSMp
	 zx3Fmw/bDIKBtxx0yxWRG1icj/5uw2RWfuUvoES18G22SAP2gGrUN8SmYXvAYQM4bV
	 waI4WOurk1DOrqdN6aBRoCL3Uc/+4bQCobP7j/Px+gHkDt9lFgHdMIV7iZ8n1I5HdZ
	 1MqeZbIQXO1ow==
Received: from johan by theta with local (Exim 4.98)
	(envelope-from <johan@kernel.org>)
	id 1sqrZP-000000001j5-2CWn;
	Wed, 18 Sep 2024 12:05:59 +0200
Date: Wed, 18 Sep 2024 12:05:59 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: edp: Add runtime PM support
Message-ID: <ZuqmB3Cn7mGfA2PU@hovoldconsulting.com>
References: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_030604_953080_93A7F400 
X-CRM114-Status: GOOD (  10.53  )
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

On Sat, Sep 07, 2024 at 06:25:21PM +0300, Abel Vesa wrote:
> Enable runtime PM support by adding proper ops which will handle the

Avoid words like 'proper' here (what are non-proper runtime PM ops?).

> clocks and regulators. These resources will now be handled on power_on and
> power_off instead of init and exit PHY ops.

No, this is simply a false claim and indicates that you haven't reviewed
how PHY runtime PM works. Core will increment the usage count on init()
and decrement it on exit().

> Also enable these resources on
> probe in order to balance out the disabling that is happening right after.
> Prevent runtime PM from being ON by default as well.

And here you just regressed all current systems that do not have udev
rules to enable runtime PM, and which will now be stuck with these
resources always-on (e.g. during DPMS off and system suspend).

In fact, you are even regressing systems that would enable runtime PM,
as the runtime suspend callback would not currently be called when you
enter system suspend so the regulators and clocks will be left on.

This clearly hasn't been tested and analysed properly.

> +static int __maybe_unused qcom_edp_runtime_suspend(struct device *dev)
> +{
> +	struct qcom_edp *edp = dev_get_drvdata(dev);
> +
> +	dev_err(dev, "Suspending DP phy\n");

You forgot to drop your development printks (same below).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
