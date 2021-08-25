Return-Path: <SRS0=wJWm=NQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44CA6C432BE
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 08:18:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED171610F7
	for <linux-phy@archiver.kernel.org>; Wed, 25 Aug 2021 08:18:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ED171610F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coAVLywHQsJBKp5yAyvx9W5ltvJOUb96T2kQtc3iUfw=; b=UinuK8pxHMJ1KP
	LTmAEvA72Wy3UkBvqHrqXIyjsQovJ4iPC2mw0XRuvKZNTPV97k3ZwAR2MY5MNplJebJsa2moAucAX
	h4oThJI89F8ZZlSyw97IyDSPOSKESjsbKyDN72uoxDryqCzos3IOi2ef/FdXtifPXNxsnNGLqV3N0
	gSdG9WoR0O3C+0OffjuOdAGBRrWjSCl7nKeQjJsT7NmpezKHpEtSzszTvV74v0YWDL5Wj6sNcmfQt
	7+Mb3I0mQAOwrZ6cmCiqAURpgXz9EPqaV9lPZq7dVpuUfodhGrVEoXs7/W5A/tkFFYV3VN03Yq31E
	rUXHIpvUkaGiyGTs+Dsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIo6v-005tcr-G4; Wed, 25 Aug 2021 08:18:13 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIo6t-005tbR-N0
 for linux-phy@lists.infradead.org; Wed, 25 Aug 2021 08:18:12 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204675789"
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="204675789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 01:17:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="597975808"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 01:17:50 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with SMTP id 08532201ED;
 Wed, 25 Aug 2021 11:17:48 +0300 (EEST)
Date: Wed, 25 Aug 2021 11:17:47 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Vignesh R <vigneshr@ti.com>, Marc Zyngier <maz@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-serial@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Use 'enum' instead of 'oneOf' plus 'const'
 entries
Message-ID: <20210825081747.GO3@paasikivi.fi.intel.com>
References: <20210824202014.978922-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210824202014.978922-1-robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_011811_820621_5244BE8B 
X-CRM114-Status: GOOD (  13.32  )
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

Hi Rob,

Thanks for the patch.

On Tue, Aug 24, 2021 at 03:20:14PM -0500, Rob Herring wrote:
> 'enum' is equivalent to 'oneOf' with a list of 'const' entries, but 'enum'
> is more concise and yields better error messages.
> 
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Vignesh R <vigneshr@ti.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
> Cc: dmaengine@vger.kernel.org
> Cc: linux-i2c@vger.kernel.org
> Cc: linux-media@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: linux-pci@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: linux-serial@vger.kernel.org
> Cc: alsa-devel@alsa-project.org
> Cc: linux-spi@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com> (mipi-ccs)

-- 
Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
