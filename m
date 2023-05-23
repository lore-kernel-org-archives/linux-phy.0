Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50F8BC77B75
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 12:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7T+pN12EHDoya6nIxgdkZNIJGUloFoSlv25p1UX8MTA=; b=k1HjjWr3GwmvPu
	QgyxyOHIECnLP1rcA03YY8uUWA9XQbLXhHUhI/q2RbrrbRvS+ZPfX8a9xbtVV6mU+OP7i3tz7qBuD
	Wnmz/0rOxNh/bB56duUEFBdKMDsUoTUeje6QXL+brV80LcEgojkgOr+uipUwZJ6b38uPTCu/3tm6J
	gSwjBdLudJkkkbrxOGo2KF9dufNRELPRXKR6hGnvdXIWDeoJzQR8IE28MhaFVPCB3dLb6kmlrw9a+
	5n6wqyUeWR8xRLdbEN047NLUWuPIfuziAuO8Dzkk2oV5eI4+wjVxKH2NHKhhD1DuYrM1/uNUbsMDW
	lU2F02X/nCL9O64IlKgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1RbU-00AJox-2z;
	Tue, 23 May 2023 12:59:04 +0000
Received: from rcdn-iport-3.cisco.com ([173.37.86.74])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1RbQ-00AJm1-1g
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:59:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=785; q=dns/txt; s=iport;
  t=1684846740; x=1686056340;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=yDlorFubPKPoVaNjdLRKgTvyCxkWTTZeKyLOc7P5DZo=;
  b=IkKuA2J3dexq5AC+rL8sNIn0ojICA6HH4TUbyKVJwWDrSS0siMAok3ao
   VnutQKcYS/BjfS9bFCLroTfGyKyIrW3DuLTdSCyeN0S69xllhWFt7ZuOn
   RMtdcJH6jOcgSCcdJ1VepjxnROjrnET4QoQoyLZFflL1l9neOrCXwQ5Yy
   M=;
X-IronPort-AV: E=Sophos;i="6.00,186,1681171200"; 
   d="scan'208";a="61935907"
Received: from rcdn-core-10.cisco.com ([173.37.93.146])
  by rcdn-iport-3.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 23 May 2023 12:58:49 +0000
Received: from sjc-ads-7449.cisco.com (sjc-ads-7449.cisco.com [10.30.220.234])
	by rcdn-core-10.cisco.com (8.15.2/8.15.2) with ESMTPS id 34NCwnLE019193
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Tue, 23 May 2023 12:58:49 GMT
Received: by sjc-ads-7449.cisco.com (Postfix, from userid 1777032)
	id 02F59CCD0B1; Tue, 23 May 2023 05:58:48 -0700 (PDT)
From: Marcin Wierzbicki <mawierzb@cisco.com>
To: rogerq@kernel.org
Cc: mawierzb@cisco.com, bwawrzyn@cisco.com, danielwa@cisco.com,
        kishon@kernel.org, lars@metafoo.de, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, olicht@cisco.com, sjakhade@cadence.com,
        u.kleine-koenig@pengutronix.de, vkoul@kernel.org,
        xe-linux-external@cisco.com
Subject: Re: [PATCH v3] phy: cadence: Sierra: Add single link SGMII register configuration
Date: Tue, 23 May 2023 12:58:46 +0000
Message-Id: <20230523125846.2486926-1-mawierzb@cisco.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20230522172415.1668975-1-mawierzb@cisco.com>
References: <20230522172415.1668975-1-mawierzb@cisco.com>
MIME-Version: 1.0
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.30.220.234, sjc-ads-7449.cisco.com
X-Outbound-Node: rcdn-core-10.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_055900_697169_17884111 
X-CRM114-Status: UNSURE (   6.40  )
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

>On 22/05/2023 20:24, Marcin Wierzbicki wrote:
>> Add single link SGMII register configuration for no SSC for
>> cdns,sierra-phy-t0 compatibility string.
>> The configuration is based on Sierra Programmer's Guide and validated
>> in Cisco CrayAR SoC.
>>
>> Co-developed-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
>> Signed-off-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
>> Signed-off-by: Marcin Wierzbicki <mawierzb@cisco.com>
>> ---
>> v3> - all reported comments were addressed
>
>:)
>You should summarize what changes were done.

Here's a list of changes:

v3:
- removed Change-Id from commit msg,
- remove unnecessary new line,
- renamed sgmii_cmn_vals to sgmii_pma_cmn_vals,
- renamed sgmii_ln_vals to sgmii_pma_ln_vals.

Best regards,
Marcin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
