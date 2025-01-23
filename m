Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84303C02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 15:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGxVxi7XpEdMXApIP4Jyvkkvt7u7GnyR3it6MbBouZo=; b=GFanTbbSpOA4CS
	cuwX1Ra28YZbGyMn8zR+YU1YXlhf8ZfxW2uCvs7CFg3pn92zllwC+i91FAu6wyYVh10o+Jg4fapmc
	724hqe9fXDjvNp+NPVz7+uvL8iNbraRt/vQn+Y5DXSVEOLJAY2BC8zEonxJY6pb4cv2LRHPDNLBw6
	7FdgH0nnbcSyHmwLufTJc5LrDrf11zf7oXxihbyTIHhEkhgneZ1iDjfl9uC+67nWh4nd7xlQdBJZe
	/HbfKWQJx7kIvBK9aNohXxMM+50GOyShAsQZwQ3D/XmZusN8JHhc6NuL9nXgh+H4UaFxAoOhpOxdU
	4F1+7ftZjttcjhWdprfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tayui-0000000CgcI-1BY6;
	Thu, 23 Jan 2025 15:14:36 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taytO-0000000CgTt-3vpL;
	Thu, 23 Jan 2025 15:13:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1737645195; x=1769181195;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=PJ7aYCbtXYZu+NJO1JN2by/s67/mM6chwppH2LXXzu4=;
  b=Oj8HRSQ3JKt9aq/VC+jaeYsJ9uAGfuuEuSvcpZHsx3WaWwGBTB3uFD7w
   ds4Qqbe0FXyE9FKPDS0tUH0KwXpFct3GoeLsdPVPxmd9QYY6ExZf8CpXK
   IQIw2zXILMfx679oDt9yQ/AT/xn3sYHmy1AjebVIfyqgM0wwSg63M5O2y
   7qcyMUJIEhStGOV5scTOnHTyHQ89KEnO/f1zBNPcJFfCVuQfTb1jm57zB
   W2QodRwTlg7VDlPBgw94bJhSFMMKGeLHR7EkqDKZd7zL5wt9IjPe8nyxS
   5R7VW784BKHidfRdVRJ9OYZY6fRtjSDqPd68p0Ul1hgJ+kDOSfejcscSO
   g==;
X-CSE-ConnectionGUID: lP/wuiDdStqff8wh6Kislg==
X-CSE-MsgGUID: o8++i65CSrOhkeX83zJyZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="48645065"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; 
   d="scan'208";a="48645065"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2025 07:12:41 -0800
X-CSE-ConnectionGUID: iA8pr0lGR2G7SnmEsAU9RQ==
X-CSE-MsgGUID: pnYUQ/TcQBKbHiLGBBM+LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; 
   d="scan'208";a="107299297"
Received: from unknown (HELO localhost) ([10.237.66.160])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2025 07:12:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Damon Ding <damon.ding@rock-chips.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 rfoss@kernel.org, vkoul@kernel.org, sebastian.reichel@collabora.com,
 cristian.ciocaltea@collabora.com, l.stach@pengutronix.de,
 dmitry.baryshkov@linaro.org, andy.yan@rock-chips.com, hjc@rock-chips.com,
 algea.cao@rock-chips.com, kever.yang@rock-chips.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Damon Ding
 <damon.ding@rock-chips.com>
Subject: Re: [PATCH v6 01/14] drm/rockchip: analogix_dp: Replace DRM_...()
 functions with drm_...()
In-Reply-To: <87ikq5n2di.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-2-damon.ding@rock-chips.com>
 <87ikq5n2di.fsf@intel.com>
Date: Thu, 23 Jan 2025 17:12:31 +0200
Message-ID: <875xm5mun4.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_071315_021133_45430946 
X-CRM114-Status: GOOD (  12.71  )
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

On Thu, 23 Jan 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 23 Jan 2025, Damon Ding <damon.ding@rock-chips.com> wrote:
>> According to the comments in include/drm/drm_print.h, the DRM_...()
>> functions are deprecated in favor of drm_...() or dev_...() functions.
>>
>> Use drm_err()/drm_dbg_core()/drm_dbg_kms() instead of
>> DRM_DEV_ERROR()/DRM_ERROR()/DRM_DEV_DEBUG()/DRM_DEBUG_KMS().
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v6:
>> - Use drm_...() uniformly rather than mixing drm_...() and dev_..()
>> - Pass 'dp' in drm_...() rather than 'dp->drm_dev'
>> ---
>>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 29 ++++++++++---------
>>  1 file changed, 15 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> index 0844175c37c5..dd33d7540e4b 100644
>> --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
>> @@ -100,13 +100,13 @@ static int rockchip_dp_poweron(struct analogix_dp_plat_data *plat_data)
>>  
>>  	ret = clk_prepare_enable(dp->pclk);
>>  	if (ret < 0) {
>> -		DRM_DEV_ERROR(dp->dev, "failed to enable pclk %d\n", ret);
>> +		drm_err(dp, "failed to enable pclk %d\n", ret);
>
> Please don't do this.
>
> You're supposed to pass struct drm_device to drm_err() and friends. Not
> some random struct pointer that just happens to have a ->dev member.
>
> The drm_* macros may change at any time to actually expect the correct
> type.

And with [1] I'm hoping "at any time" becomes "real soon now".

BR,
Jani.


[1] https://lore.kernel.org/all/cover.1737644530.git.jani.nikula@intel.com


-- 
Jani Nikula, Intel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
