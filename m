Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EBE2C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 09:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAIYqgUSZE3kooO87IAenUYZsBv/8qD8gcaWbOQgdEk=; b=d6QSLfeGnyqseg
	4UsRmE0T9pbyDNt7Rb1QkyXJldJ91KNvKoIOaQdo8m/phR6nSFReRspxt0wrjRMWmw+1DqK81FfGD
	eIBuVdDg1l7pwRFgG27QANMqiJ3azXJzSkkLxlpLFq23DC88OcntD6i+D9UpUOHDIiGk+HmXq9b5h
	v/7NuFPBAd+Ok8Mmh8OBW9vzoQesfdQB32YW5q3UwEew1L17xY/dwvGB6LrQKuDjAaE6YzbWkreEY
	Di9hUFLJNyo5nIi1V9FB95Ia8A+p1CRqz5gpa7bPTMvFTe05gY5GVdOi7XbSiMZCLpiN5m70SXpdI
	q0Dv+HAbazErkw/YhgVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1ls-0000000EZeC-3YNm;
	Tue, 07 Jul 2026 09:07:16 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1lo-0000000EZdi-2q5y
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 09:07:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783415233; x=1814951233;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=gVY3iRWoJPje433nYucl93kbMIGsxUeX/697NT+uj6w=;
  b=Xhktj3cspPw+15csWZT1YuXcBASLx7i7bBG5/keZKyXA0Z5aWXf/yYIR
   ziQLd8ps6lWCm2WVHzQ1mvdJlsEUMcAUDSPDD0+wyDIwa2YzQPvzyCU+5
   3XOcHQYL4q1WYRT+/lX1Jns73TRNibL3/+DZMFfmp/IN3O67b//9eDjBk
   UxatdCjdrqFf5QsI2m+Gle9FCGUuICt7IoBlLoKAuyIJs08Je3fX8J9/y
   cEsPWVfS3UU6kxJyElbLSV/pOCSB1s5Ilkrcy/3ecmUb8aTSf5P+p4i+P
   7EIa1awoela0+fsg0OPQdQa7upXT3cZUovAo4Tr3O0wOdzBDdwllX7BO7
   A==;
X-CSE-ConnectionGUID: z7Wc1sjkT1CMZ3LT28A+rQ==
X-CSE-MsgGUID: DnWFGs11QJeKuaItGMr89A==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="87740984"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="87740984"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 02:07:11 -0700
X-CSE-ConnectionGUID: CIM2WCXfQH6G4eHBrtF8Bw==
X-CSE-MsgGUID: s6S0Sy4+TAelQsVBP8aVYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="253474346"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost) ([10.245.244.178])
  by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 02:07:03 -0700
Date: Tue, 7 Jul 2026 12:07:00 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: jic23@kernel.org, sboyd@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de,
	gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org,
	neil.armstrong@linaro.org, sre@kernel.org, krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
	luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, kernel@collabora.com,
	stable@vger.kernel.org, Sashiko Bot <sashiko-bot@kernel.org>
Subject: Re: [PATCH v10 01/11] spmi: Fix potential use-after-free by grabbing
 of_node reference
Message-ID: <akzBtOjs0Blb1pnF@ashevche-desk.local>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
 <20260707083730.33977-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707083730.33977-2-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_020712_754156_8C36F63F 
X-CRM114-Status: GOOD (  11.72  )
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

On Tue, Jul 07, 2026 at 10:37:20AM +0200, AngeloGioacchino Del Regno wrote:
> As noticed by Sashiko during a review run of an unrelated patch,
> in of_spmi_register_devices(), for_each_available_child_of_node()
> is used to loop through children, and to also assign a node to a
> newly created SPMI child device.
> 
> Problem is that the refcount is dropped at every iteration so, in
> the specific case of DT overlays, a use-after-free may occur when
> an overlay is dynamically unloaded!
> 
> To resolve this, increase the of_node refcount when assigning (in
> function of_spmi_register_devices) and release the reference in
> spmi_device_remove().

...

>  void spmi_device_remove(struct spmi_device *sdev)
>  {
> +	if (IS_ENABLED(CONFIG_OF))

Unneeded check.

> +		of_node_put(sdev->dev.of_node);
> +
>  	device_unregister(&sdev->dev);
>  }

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
