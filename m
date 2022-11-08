Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95856C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kKPJxJSbw7ilF5wHeC/awdCqFnHThyro6EZqLf9Xuo=; b=GrVwx7iC3Sk6qH
	WVwITAgbTvSQyS5zyu8FK6TwQRllObvkUYT7sg0laaaCy8HUH7/i+7PHxWXmUuIjIRPabGPFrvxbd
	vZfRp4BaihVk0AjCSTdGyicXZUD/gQ8MsqeXYx9N7oyWfYYLMCDKBtqM8ybaZ/6vgl74dssVfexuB
	NhSHpNEQBA4GxRoPCS0ZkjBlxMhMzAj8x8PGqCS8B7IAcOlxpbi/yvXCfZbvCIOM92PSvCq5lguSj
	QK4Jv1K7P3/1zAoocRsmnHwxby4GU43cJnARwCtPT/5rz9hV1uW6i/SrpYOo0YWU329H/wFMMr+zM
	svi2r7KL96mnKwIYVgBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osOxt-005hHQ-1w; Tue, 08 Nov 2022 13:48:33 +0000
Received: from mga17.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osOxr-005hEB-0k
	for linux-phy@lists.infradead.org; Tue, 08 Nov 2022 13:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667915311; x=1699451311;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=qR1PAw49O9yyNQraw+N2we5BbIg280yLj3h68SdQpeY=;
  b=X8sJhqMbkY7YyH1UypeoolzOCrGYXebskDZ7QCKsGfUFbUt0G+7bvg8b
   qIoJsI/sUF/Lo3ZbK4mFXteHPTn2s3+eG1RIyPIfOWvZjcAMQvaB+WW/R
   fv18mLtmMbH9El3B4H39z9XyLLd+80XFvKH+zBLiJwqX00mtx3pkqk8rf
   UbMdSKd5vfoOUzeFuqtHQGA5rHreDi78dLICLwaTrkV+Ei6ixkSAZ+9L7
   FR43chbOmDbkGsgYMVPiQ1zG58WnFgGbWzCw4AZOTTmwOBAmN0Uf/G5RE
   Hla4ex9DopbXsxc3WvWagwCBAbd5Z/WTi993hh831EDSyJuE+HhXSG6I9
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="291080886"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; 
   d="scan'208";a="291080886"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2022 05:48:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="669551302"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; 
   d="scan'208";a="669551302"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com) ([10.237.72.43])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2022 05:48:26 -0800
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id B942D2015B;
	Tue,  8 Nov 2022 15:48:23 +0200 (EET)
Date: Tue, 8 Nov 2022 13:48:23 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	laurent.pinchart@ideasonboard.com, jacopo@jmondi.org,
	hverkuil@xs4all.nl, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, linux-media@vger.kernel.org
Subject: Re: [PATCH v4 0/4] Add support for Toshiba TC358746
Message-ID: <Y2peJ+G7ho1HuJSl@paasikivi.fi.intel.com>
References: <20220930124812.450332-1-m.felsch@pengutronix.de>
 <20221028134349.lxvo2jjvs6aehrbd@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221028134349.lxvo2jjvs6aehrbd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_054831_201775_7B1AE3D5 
X-CRM114-Status: UNSURE (   7.85  )
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

Hi Marco,

On Fri, Oct 28, 2022 at 03:43:49PM +0200, Marco Felsch wrote:
> Hi,
> 
> gentle ping.

This is in my latest PR to Mauro:

<URL:https://patchwork.linuxtv.org/project/linux-media/patch/Y1uVp8hHo7DYUK82@valkosipuli.retiisi.eu/>

-- 
Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
