Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E753C43217
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 13:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4MjXGiZOBb6FPT4sry0PrB2AC8DS+3eOlzgY86N3e4=; b=yo/uCTU08fsOgt
	k2ZCXaH8tVeyohC1opl8wpzAzOuGYOfCx1yFXg5mu53u6nTF00yTkS6XIxydDGBH8mP+MrVUX/8jY
	lpRKFhxOY7VCCAdV9As1HJCuZfVRqLO67nhkjd6JMFEYcm1CycUrsFzk4V9N6udsFb4+mXpIKIXHf
	SgMiK7NcFS/+VRmuL7YLAoPkmPFRLoL+d9L2+TStR3va8FJJ7TiilN4b8nZwjSUdijdIjSOSbBj0f
	2l4BvhAPhZ+W3A4/6DWkQ/5TFgkf7JMJmDyvkqzoXylm53sWQvJiG6mHrNISXwEuVR61+m+EZTiqT
	NYqY8jgD3MkGUqxLJwzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osOSI-005WpW-4x; Tue, 08 Nov 2022 13:15:54 +0000
Received: from mga17.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osOSD-005Wkk-WB; Tue, 08 Nov 2022 13:15:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1667913349; x=1699449349;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=V8a1s54ki0Du02Crq9QZu279WBYeboXOkqd8m36ok38=;
  b=LJhGKUUXAz4U7KHcf9rBisq1QoIitBp8n5YwoY86acTwWL29E7ZMe3W5
   +6LOrW1U8Yao7DBeTQV9SZAyYfgvJo3YiUdJs4TMIXloptAbNbEo5ipki
   l7uIJpqsewN5vRn/2stDoIbdrPo6tL7E5Sl7Z6U8poXW9RhHAWKrRj5XC
   s8ojQn6g+l2SsBTBUeQFVu+v8fAybvVAPKXvy1CROcDc05Eqk6UVRI3pu
   7U771MDk7M5HI8g5k5AUDDrZxuZl3sXmtgkXhGdNFgzy6g9yQtnPEoxES
   tS09uKJevb4mL6xj0RNEcKEF9TcXw/ZT6VuKJSVevrP9pFhxQ9D1Omm8m
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="291075245"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; 
   d="scan'208";a="291075245"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2022 05:15:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="614275786"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; 
   d="scan'208";a="614275786"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.110])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Nov 2022 05:15:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Sandor Yu <Sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org,
 robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
 jonas@kwiboo.se, jernej.skrabec@gmail.com, vkoul@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-imx@nxp.com, tzimmermann@suse.de, lyude@redhat.com,
 Sandor.yu@nxp.com, javierm@redhat.com, ville.syrjala@linux.intel.com,
 sam@ravnborg.org, maxime@cerno.tech, penguin-kernel@I-love.SAKURA.ne.jp,
 oliver.brown@nxp.com
Subject: Re: [PATCH v3 00/10] Initial support for Cadence MHDP(HDMI/DP) for
 i.MX8MQ
In-Reply-To: <cover.1667911321.git.Sandor.yu@nxp.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1667911321.git.Sandor.yu@nxp.com>
Date: Tue, 08 Nov 2022 15:15:32 +0200
Message-ID: <87iljp8u4r.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221108_051550_092596_E68C0926 
X-CRM114-Status: UNSURE (   5.56  )
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

On Tue, 08 Nov 2022, Sandor Yu <Sandor.yu@nxp.com> wrote:
> The patch set initial support for Cadence MHDP(HDMI/DP) DRM bridge
> drivers and Cadence HDP-TX PHY(HDMI/DP) drivers for iMX8MQ.

Has some get_maintainer.pl guidance changed recently or something, or
why am I increasingly being Cc'd on patches that are largely irrelevant
to me?

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
