Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BD5ED31A3A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOb/ogMs9Lll3009beuHn6uqb7/izH6UyfEfjO+oFdw=; b=uO1nQ+y8SKByEV
	019+JqjgUsbofvMlPwYH1cL0yJgn8+Vii5OFvDGoRWfGtTOomb/vK7zgkRj+fd/NfbRU1UYsOSjpQ
	QUk/0alJr1E3WVZGU/nggz57yobC7JX9DAbPa+VHugpU/RyqRUWaMwVt4rGqdsHm9UYIkRACnPuZE
	vdaYdfcRHPqYm1kcA8tL2Q5FRVU/0D9jI7r3BWhJO2iwPJeiXwNwu223Pb1sLH+l3mTMaP8NutRac
	ru9uyq4h8ymuAW80rHB7wy42qxybtnFCRnpie3l39AVMSq/lbxcmIyv4jQCzbhxrOPcrxIP+2mfTI
	Q40W7Rj1T/C9eLaGcX4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxPu-00000008c91-1RSc;
	Wed, 14 Jan 2026 09:43:55 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxPr-00000008c87-2SAp
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:43:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768383832; x=1799919832;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=L9IhLHxjWYeBsO8OEGHzLOjllo7uXiWf/O2foAudpdU=;
  b=DvYV7qVILlZ99W1Deb2+ZApCMXxR7kfCVqAhArJoY29KZPsfND7PyYCO
   10KUlOJSWid/dvcGUWYfyyPa1sRfjiI0cR7pRa1NHbyMcxxeQEIFPAVoe
   xNYW0H+s6kJWPaf1QaGcmqqbC+c1AZTLkzBYjaTyUJmXqYDh23zAmCQjH
   r2Wj7jA5w6Gfa19JfsaeT5O/0ey0K8jUXYX5jAOmxHuKT1UKzXw/hs8BB
   x7zXx3HQrNYvVUi297K7FssGcXpu8MuiOWJx8ytkIrlZkbsrVVpw6zcZn
   8J2rf7+CzPPoCOjv19M5PMYV0M6G6HpETuB1lM5zT/kHp593n+L3LZT/s
   g==;
X-CSE-ConnectionGUID: vLAXUfl+RG2bZ5yFZ7iqKg==
X-CSE-MsgGUID: MJv2T2eQR0CWMEE7PXmLYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="73315002"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="73315002"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:43:47 -0800
X-CSE-ConnectionGUID: It0L+crLSkulcHNBCOzdMA==
X-CSE-MsgGUID: 67kHELfRTT2+AF40OL6r3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="209092335"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 01:43:40 -0800
Date: Wed, 14 Jan 2026 11:43:38 +0200
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
Message-ID: <aWdlSlI85ro7SbJv@smile.fi.intel.com>
References: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_014351_662236_60575E73 
X-CRM114-Status: GOOD (  10.30  )
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

On Wed, Jan 14, 2026 at 10:27:32AM +0100, AngeloGioacchino Del Regno wrote:
> Changes in v8:
>  - Renamed *res to *sub_sdev in devm_spmi_subdevice_remove() (Andy)
>  - Changed kerneldoc wording to "error pointer" for function
>    spmi_subdevice_alloc_and_add() (Andy)
>  - Shuffled around some assignments in spmi_subdevice_alloc_and_add() (Andy)
>  - Used device_property_read_u32() instead of of_property_read_u32()
>    in all of the migrated drivers (Andy)
>  - Changed .max_register field in all of the migrated drivers from
>    0x100 to 0xff (Andy)
>  - Kept `sta1` declaration in reversed xmas tree order in function
>    iadc_poll_wait_eoc() of qcom-spmi-iadc.c (Andy)

Thanks, in principle I'm okay with this version, but it would be nice to have
clarification on the max_register for sure (it doesn't prevent the series from
being applied).

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
