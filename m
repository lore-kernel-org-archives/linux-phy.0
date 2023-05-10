Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37C93C77B7D
	for <linux-phy@archiver.kernel.org>; Wed, 10 May 2023 14:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jaeEXjVmMF7s0mGcVGscMnrdsDObcrwhwmrRSHYBpCw=; b=WxzEbcuIk/HW3q
	rEXdoDG72hQyLp+d5i86TAVFozC0ePMO/bGFcZcKhRiaokZCDtXsg8S8ZOlFDVOUj/kdpXSzLar8E
	7YmYdfdHGdrDhS+JJ+Zl1vBAZesNWTUR2go6nT20x+k+aJgfOQSz/npC+W9rGRJpl4Tll/E//IdNX
	lUbxHNTNFGK9iG6b3RHfi0FjOxcJxouu35bFHhy+C0EPvVJ1u6XNLWiwIV3bjiscIT1LgFWaSSAFD
	pCKoOIjGhYsPGVTjHnI6qYhxAEBgyDOeVxJ0gyPa5L7FV0BzZYVotYJN7eYq+4KFT4S/A7RX1I21w
	kPoWChmJyPpHiBNNdg7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwl0T-006O54-2h;
	Wed, 10 May 2023 14:41:29 +0000
Received: from rcdn-iport-7.cisco.com ([173.37.86.78])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwl0Q-006O43-1T
	for linux-phy@lists.infradead.org;
	Wed, 10 May 2023 14:41:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=709; q=dns/txt; s=iport;
  t=1683729686; x=1684939286;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=7RnPl13OyYFSy+YWgrlrfVWl2glDCa70vHjcwnO1YZw=;
  b=Qa1d3w3oUbELF4Qzr+eUvO6ZgzHNTeRaBWHQTUvSd0Ym95bDz6VaDTKI
   X3Lg5R0VON4+Imh5zPzgt9Xpj8mTLV4ZUlfDFhI/vMWfLYehID5WxH9Nr
   YWzSnXsWj9Jt9xj16tQ8648pjoQat+00qgAHvmTY2ZoRdcN+dlSZjB71I
   0=;
X-IronPort-AV: E=Sophos;i="5.99,264,1677542400"; 
   d="scan'208";a="55053121"
Received: from rcdn-core-12.cisco.com ([173.37.93.148])
  by rcdn-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 10 May 2023 14:41:17 +0000
Received: from sjc-ads-7449.cisco.com (sjc-ads-7449.cisco.com [10.30.220.234])
	by rcdn-core-12.cisco.com (8.15.2/8.15.2) with ESMTPS id 34AEfG3E001846
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 10 May 2023 14:41:17 GMT
Received: by sjc-ads-7449.cisco.com (Postfix, from userid 1777032)
	id 81DD2CCD0B1; Wed, 10 May 2023 07:41:16 -0700 (PDT)
From: Marcin Wierzbicki <mawierzb@cisco.com>
To: rogerq@kernel.org
Cc: mawierzb@cisco.com, bwawrzyn@cisco.com, danielwa@cisco.com,
        kishon@kernel.org, lars@metafoo.de, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, olicht@cisco.com, sjakhade@cadence.com,
        u.kleine-koenig@pengutronix.de, vkoul@kernel.org,
        xe-linux-external@cisco.com
Subject: Re: [PATCH v2] phy: cadence: Sierra: Add single link SGMII register configuration
Date: Wed, 10 May 2023 14:40:56 +0000
Message-Id: <20230510144056.3648269-1-mawierzb@cisco.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20230508160142.2489365-1-mawierzb@cisco.com>
References: <20230508160142.2489365-1-mawierzb@cisco.com>
MIME-Version: 1.0
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.30.220.234, sjc-ads-7449.cisco.com
X-Outbound-Node: rcdn-core-12.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_074126_707397_3D0823EE 
X-CRM114-Status: UNSURE (   7.55  )
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

Hello,

> On 08/05/2023 19:01, Marcin Wierzbicki wrote:
>> Add single link SGMII register configuration for no SSC for
>> cdns,sierra-phy-t0 compatibility string.
>> The configuration is based on Sierra Programmer's Guide and validated
>> in Cisco CrayAR SoC.
>>
>> Co-developed-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
>> Signed-off-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
>> Signed-off-by: Marcin Wierzbicki <mawierzb@cisco.com>
>> Change-Id: Id4c093a1bbf409f3176736b5326854a1396391c1
>> ---

> What changed in v2?

This is actually a rebased version of the v1 (in the meantime there have been some SGMII related changes). Should have mentioned that before.

Best regards,
Marcin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
