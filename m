Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F05AD31A3B
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRpz8T7KTjUP/Lg4MAsz7HrIxJNAiZbOeoDTJOZ9Sns=; b=gbpyqgfmURA9p2
	ECmbVSK/fQGhI0II60b3gwhCpz4ZOAqGHWbt+YK5GC02RojE2g5WC0PzjRT0uwqDp4FEb7LiekDlT
	Bxww4I4HnhBGLQsiPpNUtDYt2G0D1/espvXZqml2vGu0EIUNMgr51uLVvuYN+84C5gdjneSuj0ixc
	bNb5ZBDLYSdPwLT1I9CeiRmZcO7abU4m4+Lbw7NbTVIrYyvLbg1PJf9nudNKAMSzNo/LMEuMRtSmh
	K9yxJL2z1AJlWTjSF7heGXtQ9NNOFZZXA+frDmJ1mIljQE2q44HFFGQ9FWk2k8hYWJUbtD8CMlhuk
	jfp1DTweugq+5AT+fZcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxSs-00000008cWS-0yXH;
	Wed, 14 Jan 2026 09:46:58 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxSp-00000008cVl-0yqL
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:46:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768384015; x=1799920015;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=T6BHk44vsQtBlOD4ayZq0pBKHQqXt6qq9pI/yJ5e4aU=;
  b=GKuZKsNhgBdqHUe8DWp0jnif/reHKHgStD4wFh6pE1XHK8Xhdic0iJDN
   w1HhPrDzJTHPx6YzBEjUAqPvfxGHZ9oPjrFp5eYVJTAYesAbgRQ4p5z3h
   IqluWHL27Nab7u5z30hq/+uIL+7/IfHV9nzW/yE5zM3J3DRPeIhASox4s
   pfzsIhzHaz/Qdpu4jwyNTLUVG6f5xLxv4RxxmX9GCmY4THbUuJv8g7KiI
   Q1tFDd0F8A2p/Je1K2eoUcuab+8XRpoQxcohOzqDyjE3rWxYeH99hvkqj
   5fd1c8RM+dxZCVdNHaBhpxlgeRTqft0Fk/Q82IhbLQy0POdhjJyhvqSwL
   g==;
X-CSE-ConnectionGUID: o7TyrPT/TEmW8VhvJOBaHw==
X-CSE-MsgGUID: GCYDbliUT3uA6MSZWfuHNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="87094336"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="87094336"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:46:54 -0800
X-CSE-ConnectionGUID: qoQsJx2OSqa5Cs9cM7B4AQ==
X-CSE-MsgGUID: l9fZD3pzSl2LXQsgoS0fbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="203851893"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:46:48 -0800
Date: Wed, 14 Jan 2026 11:46:45 +0200
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
	srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
	sre@kernel.org, sboyd@kernel.org, krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
	luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v8 00/10] SPMI: Implement sub-devices and migrate drivers
Message-ID: <aWdmBUO4U3izZCEa@smile.fi.intel.com>
References: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com>
 <aWdlSlI85ro7SbJv@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aWdlSlI85ro7SbJv@smile.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_014656_314907_92DEA645 
X-CRM114-Status: GOOD (  13.05  )
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

On Wed, Jan 14, 2026 at 11:43:38AM +0200, Andy Shevchenko wrote:
> On Wed, Jan 14, 2026 at 10:27:32AM +0100, AngeloGioacchino Del Regno wrote:
> > Changes in v8:
> >  - Renamed *res to *sub_sdev in devm_spmi_subdevice_remove() (Andy)
> >  - Changed kerneldoc wording to "error pointer" for function
> >    spmi_subdevice_alloc_and_add() (Andy)
> >  - Shuffled around some assignments in spmi_subdevice_alloc_and_add() (Andy)
> >  - Used device_property_read_u32() instead of of_property_read_u32()
> >    in all of the migrated drivers (Andy)
> >  - Changed .max_register field in all of the migrated drivers from
> >    0x100 to 0xff (Andy)
> >  - Kept `sta1` declaration in reversed xmas tree order in function
> >    iadc_poll_wait_eoc() of qcom-spmi-iadc.c (Andy)
> 
> Thanks, in principle I'm okay with this version, but it would be nice to have
> clarification on the max_register for sure (it doesn't prevent the series from
> being applied).

And FWIW,
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
