Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A191C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:30:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2F97611C6
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 11:30:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C2F97611C6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/1A5LY2QLuLktOe57gHIn+9ZuROuJF5AHNM1EVx4D4=; b=fgpCJ3RyNI6Pfl
	qeqOo0dLQ7at6b2cEXgxI1K3ga8tUUbbKHyPtZMoHqPYPGTMOEY9M0OIGRQxPi1a5PLvaBxUDG8UQ
	96QKiPkB6EN5fSmJtgivl143eIk8ENkzA2+RsyO5CRIRdvPdlYYXH9N6lgv9HpXGPpOpDD2kkXGRY
	5TUny6+9quQwRsUfHrz5uIVrzVWJ3LTMZJuzM2KRGDbunjT6wSkeN2Jnt2a7yDsxZKNcozzNsvcpG
	PwQFe+7cEVIuHZ01/QzXDjm2mALoaF8YaaidV+6OSyRRaOtQrsHxh1Tv5RiKqYjBH+L0FyPjAO6EQ
	OHWnuB6A8drVCV1WIGXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBy3P-00CHWE-70; Fri, 06 Aug 2021 11:30:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBy3C-00CHUX-Oq; Fri, 06 Aug 2021 11:30:07 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D714A611C6;
 Fri,  6 Aug 2021 11:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628249405;
 bh=FcT2xJBSN0T8Ttxc3qVQ1psmULISk+/U4hxJSH+FWbg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LZvc8ssJJoNesJQroIGALuKZMMVll7QYZjgDhfyZYaqd6E+bpxjAVMHjQGx5xkOln
 jAtU4zp63AKst43Y+Wok+92GD3Z15cDI70nfxPoga01sOw7NDXLEQD2qIMUOWelBjS
 /kyh570Wn6aIbPom2LivMZCCekEQEdCdTxHPDLDKs9ba7Tz0mPiCfoxV1W2WOOJM9o
 76QAu+YLlIsX4FcMxIu1Q/2/sJOe/sGjqLZ161XjfESaWktUMEDIb4KvbBf36uZ9Z1
 ne8HZTcqtiytdjwpwXZzxx3l8WZMD5T1knDtbaGKrWhtoGceooiFqZOiy0nCzFdQtb
 fcqwJbWNS6mmg==
Date: Fri, 6 Aug 2021 17:00:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dongas86@gmail.com,
 robh+dt@kernel.org, shawnguo@kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, Li Jun <jun.li@nxp.com>,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/7] dt-bindings: phy: imx8mq-usb-phy: convert to json
 schema
Message-ID: <YQ0dOQteW4/2MPfZ@matsya>
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-5-aisheng.dong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210715082536.1882077-5-aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_043006_866469_96E47D9D 
X-CRM114-Status: UNSURE (   4.01  )
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

On 15-07-21, 16:25, Dong Aisheng wrote:
> Convert to jason schema.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
