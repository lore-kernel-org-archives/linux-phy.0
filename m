Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D6C606A32C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 09:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VDvOvygq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=microchip.com header.i=@microchip.com header.a=rsa-sha256 header.s=mchp header.b=HyOFWH2+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7UGNwhn852o8aORMUi8OO862a8Vo/fMQZPXn9zJ1A2E=; b=VDvOvygqg43fM6AFKxMlHKfSe0
	ikQWxjyIiHx/xm1Z56SBrAcpiwUJpdBjf3ooFSQyPczccVExw/c7+BG/+Tf+IshahKuO49PP581Or
	dtJrD4da1FQfM2l90cuTCP7inQIznt+VKLW+cVR3Le55yvDgO28kNXGqj0YaC83NKzuWtCzga5Pzg
	lUFUXqeOr5wECK7cQjqfQ5HtIF7T/lfzufkeXdWyRx2ho3C0mx2F0pJEwCEFXdvVzBAAbX3c1WECo
	ZiPrOeSOrGn2Ox5RuPZA3uZelg6lrigC6MBv06ccwdHnEp3raknUJf8TA5NzrXPzehbPFyJoEx4jZ
	bnbaC0rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsid-0000000FUoc-1YVk;
	Fri, 27 Nov 2026 09:58:15 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWsia-0000000FUo9-1lgo
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 09:58:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1795773493; x=1827309493;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=DaXL1DAidTh6X6TkoOGF7Q30/YlnfCIyWWMZ8ExtYdw=;
  b=HyOFWH2+VsTl7Eos7Ki1zdg8ectHbdb+m9kuSJgTCHylORrjpQfJ3gCp
   J+4hYKXqMl+G3KcSY48OkfaqCrpFXgsLKgEW4dMHt/G7UjYjYa0iLk7/L
   0yTDaRPXjN77tq6YGrHnkcARN0HMIRaa3h+GxxGD5NWPPOgLJJHK+BJd4
   ZZBizgqcG/XpL02oWyIMRo4OhtMRsBS2K9bEwzvmpOK2WExfrr8zRaMgM
   0ocb2VXEzu14rp3EsjX70KVjQANvg6OYdrGCJvf5DsSNOjRuMHzWVul6a
   Gvt6RtCIBVbRRTDS2Tb/4qwFDaiSUxhe5LeZD6hr37U4qtNHM+sUh9qfV
   Q==;
X-CSE-ConnectionGUID: +PloVku4Qiuz6CvEN1dupA==
X-CSE-MsgGUID: qa8CNH3lQgqtkX4d3YL/TA==
X-IronPort-AV: E=Sophos;i="6.27,236,1787036400"; 
   d="scan'208";a="67133839"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Nov 2026 02:58:12 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.57; Fri, 27 Nov 2026 02:58:10 -0700
Received: from DEN-DL-M70577 (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Fri, 27 Nov 2026 02:58:09 -0700
Date: Fri, 27 Nov 2026 10:58:08 +0100
From: Daniel Machon <daniel.machon@microchip.com>
To: Yufeng Gao <yufeng.gao@canonical.com>
CC: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>, Horatiu Vultur
	<horatiu.vultur@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>,
	<linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<stable@vger.kernel.org>
Subject: Re: [PATCH] phy: microchip: build both SerDes drivers when they
 share a config value
Message-ID: <20261127095808.iucj67lrtxzn2zir@DEN-DL-M70577>
References: <20261126140521.237240-1-yufeng.gao@canonical.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261126140521.237240-1-yufeng.gao@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_015812_517116_23D2B6B6 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.4 (----)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> The Makefile adds the two drivers with ":=" instead of "+=":
> 
>   obj-$(CONFIG_PHY_SPARX5_SERDES) := sparx5_serdes.o
>   obj-$(CONFIG_PHY_LAN966X_SERDES) := lan966x_serdes.o
> 
> When PHY_SPARX5_SERDES and PHY_LAN966X_SERDES are both 'y' or 'm',
> both lines assign the same variable and the second replaces the first:
> 
>   obj-y := sparx5_serdes.o
>   obj-y := lan966x_serdes.o
> 
> In this case, sparx5_serdes is silently not built despite enabled. To
> fix this, use "+=" (for both drivers).
> 
> Fixes: 305524902a00 ("phy: Add lan966x ethernet serdes PHY driver")
> Cc: stable@vger.kernel.org
> Signed-off-by: Yufeng Gao <yufeng.gao@canonical.com>

The issue is real and the patch fixes it, thanks.

Tested-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Daniel Machon <daniel.machon@microchip.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
