Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E200C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 16:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEpLxb9KZcaIzJO6BETwY3nao2vOHToH8M35fcMpDVI=; b=SjWbJBUozFah7A
	E5DuPK0bFKknhLfXJtV8MnCHvjrkPxy1/H6mdCo+eUs6NPgvBYEsGuSHHR4DlssapKdK3nKOdjy+5
	VMoXiI2CQElZbviecvr1xGVem7kPXNpSDdgtk+GAPGtmgMhfv/c7nrJ5Gv1NdKsL9S8Jwz1lHwCEn
	AzaZZbIUGSkpv24JS2asJBiJi1/QhbFHjghy+/EYSfHXUyoss9yraBrWdbvm5SFaskJRXPU1KG88v
	rlwAhRT5qFNLasvuSdlhb+Wti2Iixs4p/qdYrdvCKhr1xkgHop0XULU1N1GtEaYbbjkE8c/0ARs+H
	0mpw5cnHt2wMV19S23HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osRS4-006feB-B3; Tue, 08 Nov 2022 16:27:52 +0000
Received: from mga09.intel.com ([134.134.136.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osRS1-006fd7-Ia; Tue, 08 Nov 2022 16:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667924869; x=1699460869;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=h78vCa8Jt3/b52JPFCVtECZg21VRPdjuo2bou/9Cpy8=;
  b=OrunQWtr6uwPb8P+y6ruEtLtWmp1mjEjZFMnsleX8GPAzxWmuFRbq1uV
   CVBhgQX80PpzUiL0bV9+Jxy1GnOdgEEU/Rk3qLWiei6gaUJ/nF5AdWLmM
   5uMePfydSIcPec74dCFlYliiscmVhTwS8LM+yVZmzrnOh/jPkK40TiLBq
   aZUPf7snohcqPGJDrZTXnvC8cd2YXwjzZtf1zvMczKnAKc5gOptNKm93z
   8w7HYhh6bKzfAhAjAFxr+YG4ayfBxXHA8s3CtoDyf1jbxCDQffxxWE1lu
   TNhoxdhcjnM6PgI2ymCFwN9u2jTd6I7Gzo2TepSN+rRY55yZhB6EtRJHa
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="311895888"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; 
   d="scan'208";a="311895888"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2022 08:27:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="669606468"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; 
   d="scan'208";a="669606468"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.110])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2022 08:27:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Sandor Yu <sandor.yu@nxp.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "andrzej.hajda@intel.com"
 <andrzej.hajda@intel.com>, "neil.armstrong@linaro.org"
 <neil.armstrong@linaro.org>, "robert.foss@linaro.org"
 <robert.foss@linaro.org>, "Laurent.pinchart@ideasonboard.com"
 <Laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>,
 "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>, "tzimmermann@suse.de"
 <tzimmermann@suse.de>, "lyude@redhat.com" <lyude@redhat.com>,
 "javierm@redhat.com" <javierm@redhat.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "sam@ravnborg.org" <sam@ravnborg.org>,
 "maxime@cerno.tech" <maxime@cerno.tech>,
 "penguin-kernel@I-love.SAKURA.ne.jp" <penguin-kernel@I-love.SAKURA.ne.jp>,
 Oliver Brown <oliver.brown@nxp.com>, Joe Perches <joe@perches.com>
Subject: RE: [EXT] Re: [PATCH v3 00/10] Initial support for Cadence
 MHDP(HDMI/DP) for i.MX8MQ
In-Reply-To: <PAXPR04MB9448612AD6C7744B7C706D6FF43F9@PAXPR04MB9448.eurprd04.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1667911321.git.Sandor.yu@nxp.com>
 <87iljp8u4r.fsf@intel.com>
 <PAXPR04MB9448612AD6C7744B7C706D6FF43F9@PAXPR04MB9448.eurprd04.prod.outlook.com>
Date: Tue, 08 Nov 2022 18:27:35 +0200
Message-ID: <875yfp8l8o.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_082749_675427_4D3AE67B 
X-CRM114-Status: UNSURE (   7.75  )
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

On Tue, 08 Nov 2022, Sandor Yu <sandor.yu@nxp.com> wrote:
> Run get_maintainer.pl for patch 1, 
> Your email address is list as follow,
> Jani Nikula <jani.nikula@intel.com> (commit_signer:2/8=25%)
>
> And I add the email address that comment as "commit_signer" into Cc list.

Please don't do that.

get_maintainer.pl gives you no less than *eight* people as designated
maintainers or reviewers.

I've acked two commits with one-line collateral changes to the files in
question.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
