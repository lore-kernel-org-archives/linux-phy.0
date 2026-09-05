Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6207C624D6
	for <linux-phy@archiver.kernel.org>; Sat,  5 Sep 2026 08:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IhFVtYeYH6vv5i0yu7ISkO7WegYA9PxtZHy10qNN3rc=; b=b3f7elBOJBpNLp
	Y4aTYoDlIOLIyaiukHHvJKrNZwatH0sglZgTxMwhfpHlCKDNq2J501Tkla/sKUIqdoZTJNXjKWqL8
	FryCZMnmdWuYeKuwRIQ9hzrVYfbLfXzbC4kW5DEoc2VYepR3gm+bMRUxKv9gSCCZ03opqxCD6bBaw
	mqCSZG9TTAkX482ptemb/KbIcidYRQxNmJ4lzvNbA6rjNlZ6H7XoJyAviV7108axY03W1W0ODO1I9
	/Fw9dBX+FXY/C0Ks7rZ9Cxsv1deKG+6/C2loIhOFj+CLxZkomEMQld/wc9DxJvFpmX7Y4ZfFpMS0N
	lx4JJ5/I+425PxIIeiXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2lXu-00000003qKP-1yVv;
	Sat, 05 Sep 2026 08:14:42 +0000
Received: from mgamail.intel.com ([198.175.65.10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2lXr-00000003qK2-3RDR
	for linux-phy@lists.infradead.org;
	Sat, 05 Sep 2026 08:14:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1788596079; x=1820132079;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=GJB1iALFTju6ZzcVw9jL9MdJZx9E/1r7gPHYzDzsVrA=;
  b=JfMFdlVi3fNVkA+PwzDo3BFkc46rsk8fE0TfhjhzvFkqBvjMSLe+bb1e
   hwYjcnzYxcdDAg5GOAU8PAiPG8e68nzya275gwLnraLogIg8cQHZlF6kR
   Hec9eUPEX/1OznnlLWP/E91UNXN68rfRYN+gUvkA6y8mj6L5kBrsBaJPA
   nirMTJQdrO0ezoMST/q2mWTut8NfQc1Whi5WPlm+H/cegixdhR8Z6CzZG
   coYbn7oM7kqR9Hng7q1JeH2lf+4soSUK88QxEDinUgbCoNbhiOkRn5WwD
   j73s8bJR2sWmms6dnUJ+1EkgM8a8tPaxVWU+S3Fvqhmnk8xG4UmVGk0C2
   g==;
X-CSE-ConnectionGUID: GWBK+KY/T7+z4j3VRL+Lhw==
X-CSE-MsgGUID: d6Ps8YFQS9+C26krMcLjGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11896"; a="106455510"
X-IronPort-AV: E=Sophos;i="6.25,263,1779174000"; 
   d="scan'208";a="106455510"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2026 01:14:39 -0700
X-CSE-ConnectionGUID: thflpFa2TL+RcZqn0PveGA==
X-CSE-MsgGUID: 15nMZDf4RpqkvCAq1iWi4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,263,1779174000"; 
   d="scan'208";a="268521592"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.245.105])
  by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Sep 2026 01:14:37 -0700
Date: Sat, 5 Sep 2026 11:14:34 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 2/4] phy: core: Add common helper for get phy phandle
 by index
Message-ID: <apvPatGMg1NgSIAZ@ashevche-desk.local>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-3-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260904083709.425893-3-inochiama@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_011439_925222_97F4D689 
X-CRM114-Status: UNSURE (   6.67  )
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

On Fri, Sep 04, 2026 at 04:37:06PM +0800, Inochi Amaoto wrote:
> Several phy helper use index to get phy phandle of a device node,

"Several" is used when you start with 3+. I see only a couple of.

> add a common function for the future reuse.

Code wise makes sense.
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
