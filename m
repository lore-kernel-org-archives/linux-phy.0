Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3B91C47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 14:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d31m9HwSETBm+07jcDwjsoINxGsfCx5J5auQQJFnXrs=; b=QNeoCpWSSXiM/c
	+fa+BgrLJHVrigRdG/XVuz2hQj30zhCY3VVCgrQ4PzLHnp9ESGfJISYZND4iiiHdnhkrVCYxfMtva
	8dteMZHb1L2kNnP3xSkc7V3szn+SM7whtIM/8sywdhJk5khOmmbux2Eg7s7WCEYr2TV7HGyHZ/mdR
	qMTw7bNO/d5RW2KdWG1PxxTkt1qu8xkhngn9eFD3nOGLBub4wr79IjKEFFLY/eZKEcW5BwtCvwjpY
	pq3byG11MxezfALRrajz6MP7OagoMg/oEY8h/w4V1nYMk4I6uQtfRdfXEFpyOKi6cgBSxB08bO3Qe
	KeKZRQTpGaQZBQNcKcvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT0WR-00000000JhW-20aZ;
	Thu, 25 Jan 2024 14:16:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT0WQ-00000000JhF-47f0
	for linux-phy@bombadil.infradead.org;
	Thu, 25 Jan 2024 14:16:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=muGSI2PytNzUspVh/QyR92shEg3MJtRJtnkLCuhrSGw=; b=GQheu1uMbYJ0yrF0o7m5s3jzX5
	jNEtGYw+dv/ES3528T8Lwd+4EbHKtnGLWpyFTFZpPZj+bize/ATL5p9f/tWkEZvEaCi8uQN7saSwF
	jaPuk+KjxnzZspgfl+J4KIFJzRJwwnl5wepeXLDEhHZnnPdk8D+T0Uqr9bJfYRO9Run93r2VAepnS
	cOunSoLWsff0Z/GTwGF9oF+VVydZOMlz8ZtsqqypQbFgbhjYKcRERT25z4ppLepzbAL0r9zA4juTE
	j1Rgl+kBTMpNKWonmcer2W9rnf9yjhvaGF5k3MqKSyGNTdduK1LVfJSiXj7C/vd/F7eo4qsoKKFgT
	8QvnkyoA==;
Received: from mgamail.intel.com ([198.175.65.12])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rSxXi-000000058Ov-1YGF
	for linux-phy@lists.infradead.org;
	Thu, 25 Jan 2024 11:05:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1706180711; x=1737716711;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=a9NXweH9qUd8G7a734VJZg6C/IWxoVP+919kuw6amkQ=;
  b=VvIIP46nnn6VTqbJR9z/QlM5p2tzPaije1sQT7N6XuMpcOa41B5RZBBB
   tV+ELnVrISjg148Wi8CerVYojfk+exq4diYiIbuSsRR68+Z7xD3T1h+UG
   gaqrDbphevvOr9aANCuHfZ1XBIGa/JRcJjnuvaXeoCdsXZLz6Suxw6FJc
   Uw5wNGjEmwm0T01HXUxnjZrfDr3Ip8XxZ/xpg/qSNfwZwa/FqI5ClQM0y
   5AWyeLC4X/CjMjg4qGQe5hE0agk/qHog31SokkfMaS9U31g4RNQqKYb3M
   uttENk6CwfzNRWXCvbX1osO/JQQOSI4RCOoB3nWaVShBFFC7bV/tgyjte
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="9509258"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9509258"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Jan 2024 03:04:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="929985015"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="929985015"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga001.fm.intel.com with SMTP; 25 Jan 2024 03:03:55 -0800
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Thu, 25 Jan 2024 13:03:54 +0200
Date: Thu, 25 Jan 2024 13:03:54 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Guenter Roeck <linux@roeck-us.net>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 09/15] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
Message-ID: <ZbJAGmq6AWxgr47o@kuha.fi.intel.com>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-9-182d9aa0a5b3@linaro.org>
 <2e07f014-0884-49ca-babd-b89cc90a16b7@linaro.org>
 <CAA8EJpqPqV_nHxxbo2Vzwcp__hvREjF3bhduGhM=7UpuOgBxTQ@mail.gmail.com>
 <ZaaRZ/xi8vyIKD5d@kuha.fi.intel.com>
 <CAA8EJpq3LAzrdTXtnCskc0Md1e39Yo1+AQLHmOBVfgax4HEjKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpq3LAzrdTXtnCskc0Md1e39Yo1+AQLHmOBVfgax4HEjKw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_110510_801588_0841835C 
X-CRM114-Status: GOOD (  18.77  )
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

On Thu, Jan 25, 2024 at 02:07:59AM +0200, Dmitry Baryshkov wrote:
> On Tue, 16 Jan 2024 at 16:23, Heikki Krogerus
> <heikki.krogerus@linux.intel.com> wrote:
> >
> > On Tue, Jan 16, 2024 at 02:56:11PM +0200, Dmitry Baryshkov wrote:
> > > On Tue, 16 Jan 2024 at 14:32, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> > > > On 1/13/24 21:55, Dmitry Baryshkov wrote:
> > > > > The PMI632 PMIC support Type-C port handling, but lacks USB
> > > > > PowerDelivery support. The TCPM requires all callbacks to be provided
> > > > > by the implementation. Implement a special, 'stub' Qcom PD PHY
> > > > > implementation to enable the PMI632 support.
> > > > >
> > > > > Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > > ---
> > > >
> > > > Still not a fan of stubby stubs :/
> > >
> > > Me too. If there are better suggestions, I'll be pleased to implement
> > > them. Greg, Heikki?
> >
> > Guenter, do you have time to look at this?
> 
> Heikki, Guenter, just a gracious ping for your opinion.
> Probably another option is to read pd_supported (or all caps) before
> checking the callbacks and then instrument all calls to PD with
> pd_supported checks.

I don't have anything to suggest here, but Guenter should really
comment this one. In any case, FWIW:

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

-- 
heikki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
