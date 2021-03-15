Return-Path: <SRS0=7zeO=IN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE956C433E0
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:18:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4EDBA64E64
	for <linux-phy@archiver.kernel.org>; Mon, 15 Mar 2021 10:18:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4EDBA64E64
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wuJwXaYfa4SvF/f09TnXgi3V10yzOhAN9FE0P7KKLH0=; b=oYQUVNuTbtPQ21G+tpWJ8NZq2
	af1qxqrngsa+Ep5wY0Qj43tw4w1soGd/uCvPnisYwU8QmSrnrBmMSfe8lKdmnQ7nHrpOK34HKda7E
	6XZjLR7BSSg+ur9Cap8QWIE1VmY8Z+Yz9/Qv0ACDk2IRFrUekqxMGl6lSbdT0LbozRgZlq8Ccb5qL
	9TpM/Joxd85BNK7REaGRI3rQUZE5u3FA0i21zpz+8KN3zY7+NVYHjaJQMoaJx2BJVgmFtF8SfRuZ6
	6KX4fY9G4KnPUBmXOC75y6U4rOiJitehA7vQh1gEk9rqEXmp08ENTYugkcyc0EirlRw1BZvA/ES9Y
	H6PsXLlIQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLkIv-00FVdf-LL; Mon, 15 Mar 2021 10:18:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLkIf-00FVbv-Cd; Mon, 15 Mar 2021 10:18:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E78C964E20;
 Mon, 15 Mar 2021 10:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615803491;
 bh=ztjFnSOab3cV+QvMlWw4cQyrFbAfKoySuSingAe7PWo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CriePN21pXzt27lJKRwsNzeZG2D32OdMximKQQOJn299UKT/IrWzURTlXoOu8qhyr
 QRo3rtv23QkzPIwLhU2DnqPBBf4iCtyTznIwRCVZ5kVQgCyhqNRvpNGdHk+QVYAZW/
 6KBj5eZd7jQrXMFq8BQrB2xOVjPquiGt8Bg/bmjV2WZVcnMe71UiPseXsgoZLUPJVh
 D7fCYHXns7++I0BWpLEBVuRDpRQdcxizxnj/UcrPFA/uePVA84TjxajHPSqAppJRqG
 Vktz8QjduBqy5aPQJQSD8Pv3WIkAtzVKgSI/AANPq6/Gn3V8Yesgjc53Dse01B85vR
 1tAEcdApbKawQ==
Date: Mon, 15 Mar 2021 15:48:07 +0530
From: Vinod Koul <vkoul@kernel.org>
To: 'Wei Yongjun <weiyongjun1@huawei.com>
Cc: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, Hulk Robot <hulkci@huawei.com>
Subject: Re: [PATCH -next] phy: ralink: phy-mt7621-pci: fix return value
 check in mt7621_pci_phy_probe()
Message-ID: <YE80X9uGCEsnuR3F@vkoul-mobl>
References: <20210305034931.3237558-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305034931.3237558-1-weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_101813_711343_50C0F5F5 
X-CRM114-Status: UNSURE (   6.81  )
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

On 05-03-21, 03:49, 'Wei Yongjun wrote:
> From: Wei Yongjun <weiyongjun1@huawei.com>
> 
> Fix the return value check which testing the wrong variable
> in mt7621_pci_phy_probe().

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
