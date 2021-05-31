Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 237FCC47094
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:36:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E22E96023E
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:36:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E22E96023E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYV9Srme4isKQUm6TXQZLJUtfoj57H1JIRNkPXN0ynk=; b=vf8YxoWO9pcrhw
	QHmLYVvfLCHVgOhzy36HzRIXPlwgzudaWcu1vT202BSA+ppECdsGNI4qf5/jMXNYAM4VtPl0+Abic
	/IwPF/CDC4hWeT/MGIWyszmX+hoB6VFNtXRlS3D8VvoSvLYSDLyGq0Rucfsm7vMf9peOG1brLj/FH
	XUKTrhdX7BplvdPBSM70XER8PSxWK2v9HXxz8ozeHpqjAIVgUWOj1cdTKgBEiMQpmdsHcD1Un4EgK
	ss6eutJflbrWLHqxY0dnmvrQqYvB8Ob8pc4Mvcr1zgihqJYlRYEKQ4x3ZNEAZW8a0ml++PssPK9OT
	WnTYpM60R3mRAxqKk1Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndPX-00BU5N-AI; Mon, 31 May 2021 08:36:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndPV-00BU4H-5h
 for linux-phy@lists.infradead.org; Mon, 31 May 2021 08:36:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E6F96610C9;
 Mon, 31 May 2021 08:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622450192;
 bh=8UWXaEsN34Y+xxspiLKY6aJsw9CfGWSVExwJO+Go8HQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dVoripSAeT2V5ux+kgOG7X6XXGTj8s4FkTFvymEXl549qJVWB2MTfh96YHGuKC7St
 R8g1NSZXDf7j4wtA2r2h31r5i0zwRCYlQGvTnejANMo+RC9QNwacRpmyij9Ixwazwd
 Vfdr54io+j1FYz/aF8mYlvoNRPSgIiv7NaFOvbfzcbYBsFrsEpyIaWYZoeD6V2L2yk
 nP2qhdlMn0pxSum3CEyzDQORO55iAH7PstMiuKqjq1myeTE0qsQJnqzX1Y2xJrj5ZQ
 veXN1lBVLo5UedKZ7uF2cVAzn+1qCORww4XOIf9R+IV7RH2Pd3fziMttNojJLiJoZE
 4ed+4qS/qISWQ==
Date: Mon, 31 May 2021 14:06:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>
Cc: kishon@ti.com, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next] phy: phy-twl4030-usb: use DEVICE_ATTR_RO macro
Message-ID: <YLSgDJ38DtPbmEbh@vkoul-mobl.Dlink>
References: <20210520135132.37628-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210520135132.37628-1-yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_013633_255820_C9D48AC9 
X-CRM114-Status: UNSURE (   5.22  )
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

On 20-05-21, 21:51, YueHaibing wrote:
> Use DEVICE_ATTR_RO helper instead of plain DEVICE_ATTR,
> which makes the code a bit shorter and easier to read.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
