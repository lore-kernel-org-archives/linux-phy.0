Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACAF0D31A26
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 08:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6uID2gjRdtEecmS6NmwRB1eMWswsE867jPpKh+7TEIY=; b=3CMTKhe239cdsP
	g9guAxARIdeUKkJySTRanY8BAbKLaJRfjow/9sR5Ksepy6k4nouB0pAmliYkjJxihT17FziJP+3mT
	fd65F2DxE6muu4QR+vf9vSFn9DB4x0sUN3M3zZ8TNokGri2ezp3Rie5+yGYYg9Z18EooqAQBG/y6g
	a973VNfIJm1UClYuEKgMR0owgJpXGXhnc02GbJRR/EuQPb1uXKgexqN3HOp6y8nvQOZE0DXBf+tZZ
	EMFoCna1LaV1Uw3wDlCaTmJBdzEbcE4wBOb5Xl6Z6Cr+ORNMn9wRNXBX/5sGr9EN+1/wSlLty9gOO
	CviWq+WIiPJepJ/6KCBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwWS-00000008OYY-1pHb;
	Wed, 14 Jan 2026 08:46:36 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwWQ-00000008OXt-1P3f
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 08:46:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1768380394; x=1799916394;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0QdZ6wkztJki3d9zwW4Ck8xjQesrvonP+NIaGX6jeIU=;
  b=OUECs5q0Vb9VUrFolxrittUGvumEDsBo+TQ+448ZXnotB1FBre6Yu0Um
   LMg8NFfCoioiXFB4Ar3UaFAxI1MVwwCk3xxAX7S+zgYpeO97R2AV4DQOv
   fohPRRM+UY+QZlbVWwJ2o5DS099RzbZs51JV3ELZS74lRbiCPhc9uPej1
   hVufjKzdBcN7eJ6etmBPO95QpthY7fEu1BZNjeLo0e3s3FovT5rzPpEMr
   3BDfwgq81Sjg7G3jhNQREcSVigmhEGsMdqhzw5eHD9omFaV+3zJTteEvK
   5NImK65lPzR4ne8rAOEPtXt8+SqpjILBeREbryeZxVc3QDVO6HkjPNP5q
   Q==;
X-CSE-ConnectionGUID: L2noF4FVTNOvrqyVfYDh/g==
X-CSE-MsgGUID: XYnePGLtQP+GqnQrnnCfmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="95150421"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="95150421"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:46:31 -0800
X-CSE-ConnectionGUID: XPYsRDaDSBSfvl1XJ/VIcg==
X-CSE-MsgGUID: ptXgIPWTR2u0wybTazACLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; 
   d="scan'208";a="209464491"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.83])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jan 2026 00:46:26 -0800
Date: Wed, 14 Jan 2026 10:46:24 +0200
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
Subject: Re: [PATCH v7 02/10] spmi: Remove redundant dev_name() print in
 spmi_device_add()
Message-ID: <aWdX4OiZSsXIqEH8@smile.fi.intel.com>
References: <20260114083957.9945-1-angelogioacchino.delregno@collabora.com>
 <20260114083957.9945-3-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260114083957.9945-3-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_004634_385918_A56C37BC 
X-CRM114-Status: UNSURE (   9.37  )
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

On Wed, Jan 14, 2026 at 09:39:49AM +0100, AngeloGioacchino Del Regno wrote:
> Function spmi_device_add() uses dev_{dbg,err}() for respectively
> debug and error prints, and passes the same device pointer as both
> the dev_{dbg,err}() parameters and to a dev_name() that is part of
> the actual message.
> This means that the device name gets printed twice!
> 
> Remove the redundant dev_name() from the messages.

This should be the first patch in the series, then in the second you will have
less churn.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
