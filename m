Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE515C43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpJFAr0K6VZw7lbi/h3F7fVIdOe6nMwL1ZvSmVbILB8=; b=fahUnUHYMiMMj8
	HMVlc0k7I9sIOiLjSnOnzeHwFmibMTS4t2b0qftVr52sTptF07cjwHb44hbET6ZmLiz79wRhTmEsz
	+NEkmfgjj7zFxk6SAcb08hbtdgUOVessFEIJPaQfA081sKprp53nG4M6lJkAZmq3P/tBJG171hJNR
	JYVt4wooA2YoBBSccnvsIWRTmS18z/hi19dC1/SXlDUborFVHsxU5+0tJfn6rMuuNHIEcC6xm44PQ
	KwWb8ERzS/FYMi+0l8t05+J44vq8DbWIMKkn4JOcqppdMxRQ5q9Nuo4Jbup4HX9SCmxWLtNmWF1EP
	b8pe8XTgfUF9Lt+bJj4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh5hD-0000000F2MZ-1Hcs;
	Tue, 07 Jul 2026 13:18:43 +0000
Received: from mgamail.intel.com ([198.175.65.18])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh5hA-0000000F2MA-3vzJ
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 13:18:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783430321; x=1814966321;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=/ly3zhbN8UvM0mBvHsyaV05d2n7SVnkwc5cqb3pdRB0=;
  b=Hwr+sCODcd5Nly3JsYsPg0OHJsgkEMNPRvgv94W7GGRFumQ++3bsC4az
   pNFUyTJTAv8FzeRWb6L8VlGazHo4eXNdyTdVAY4qQqI5N0rkpgcRAkTsT
   U4jsgVPsVWHANMHmAitBW/DoPk1RXpMmF0iRDve+ZU4G/E5KkkHGD8gBM
   Peov81IBSScyh1BqRs4QSKz+rNZQFzzNTxNpQd/5kDGY+IpSCrFoxTzvM
   w8cmsLvJFt0+ruj0PSEocujVbi8jx3Vv9Tb9rBcgkvhTAuripAtF+rlbx
   fJYOQ7DUiNU0n5v4KIdG9lSt/nKc3HvGbl5/xapvMO0oe54m7JQHOpytL
   g==;
X-CSE-ConnectionGUID: aLxGRs4lTT2YifNhuuGFUQ==
X-CSE-MsgGUID: RDptrYAjQYWNlN71JG12YQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="84167307"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="84167307"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 06:18:10 -0700
X-CSE-ConnectionGUID: WsO3CRuiQMilZkW6KgdYNA==
X-CSE-MsgGUID: wMffaHyNQPaTlSUC+Mp9gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; 
   d="scan'208";a="257569504"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost) ([10.245.245.36])
  by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2026 06:18:04 -0700
Date: Tue, 7 Jul 2026 16:18:01 +0300
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
	linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v12 00/12] SPMI: Implement sub-devices and migrate drivers
Message-ID: <akz8iRW2emM7B7n7@ashevche-desk.local>
References: <20260707111829.180158-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707111829.180158-1-angelogioacchino.delregno@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_061841_018378_5D9454A0 
X-CRM114-Status: UNSURE (   7.26  )
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

On Tue, Jul 07, 2026 at 01:18:17PM +0200, AngeloGioacchino Del Regno wrote:
> Changes in v12:
>  - Removed call to of_node_put() for failure as it's being already
>    done in spmi_dev_release(), as pointed out by Sashiko
>  - Fixed usage of the new helper in all users (it's too hot today, sorry)

You have send two versions in a row and effectively ignored my comment.
What is going on? Perhaps you need to slow down, find a cool place and
start over?

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
