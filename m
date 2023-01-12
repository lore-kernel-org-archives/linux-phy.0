Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05837C54EBE
	for <linux-phy@archiver.kernel.org>; Thu, 12 Jan 2023 18:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OD5iFMT05Z0ecXb1TddDUbw5y9E6jHhHPpO1LzRZLLk=; b=32AvE6jZmpShXY
	z/sFplokHFc3nd3a3n2LXHMEkI4lNm38iCo47pkQa8wuJktIUsQ2BZICHr3XZL0mBGjjLCDWJYRXv
	MhgmYYdoaq3dKybnBJm0EUCASX023nqN15m7YUuTs5D+qmBAwPkCYE/Btl8SGbOUideAms/nRVBik
	h2MaGQZ0fz7QY6eGmrnxoOIFH5HmvzWKBK/wJ04PYFTNTbGo3O1WDukX5MO22sjjl6LAiFuSubGX3
	1G45BVj5A/kyzvoe39Ra6QN3WfmJRCF+ZPCEoLKgrXkGZeSAjNyfrzqFfys51mzmKcStOqQeyRTXG
	/tqZdi7vCCiYBai2a9kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG27Y-00GG9v-7m; Thu, 12 Jan 2023 18:16:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG26l-00GFxx-Tv
	for linux-phy@lists.infradead.org; Thu, 12 Jan 2023 18:15:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4950B620EE;
	Thu, 12 Jan 2023 18:15:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F433C433D2;
	Thu, 12 Jan 2023 18:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673547323;
	bh=qPDSt8i6uFp2NJYu2QUTYE6IloLYkwRsTgE9Cu+vYVU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YBkQZ1TpWGHdwX+KRY/mhEu4C9Cy23MjpcZZeW4e5cSLr/x9f+cY7UAIYPBuptR7E
	 Gs7bpZUq/ZsHaoX3YAClVcCF6gJyaj1KKe9HHEuTD6qPcOgpBOxtkSb1BBI66EPsb7
	 OkbCDWhC/dTXaXn7KZ6i8ynRyo1FsOWqGSJWn/tImp75VBxqMzHqSalQAeTRfGiUyK
	 MxKB5cfKhfUI30msSrFiUicFGJoBlIHxelBfWlextyPGsddbIeCLeq9o0iDkKc5Nmt
	 o4SClrgE8sQB5MVOWKFds0JVNgKsIx+MS52yxNDZ3OBSVQ30CZMb+B6sQuu6eEkrgk
	 fcw00hwQ8TpYw==
Date: Thu, 12 Jan 2023 23:44:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shang XiaoJing <shangxiaojing@huawei.com>
Cc: vincent.sunplus@gmail.com, kishon@ti.com, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: usb: sunplus: Fix potential null-ptr-deref in
 sp_usb_phy_probe()
Message-ID: <Y8BOF2hrH+dJDBYg@matsya>
References: <20221125021222.25687-1-shangxiaojing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221125021222.25687-1-shangxiaojing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_101524_024387_B24D8557 
X-CRM114-Status: UNSURE (   7.14  )
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

On 25-11-22, 10:12, Shang XiaoJing wrote:
> sp_usb_phy_probe() will call platform_get_resource_byname() that may fail
> and return NULL. devm_ioremap() will use usbphy->moon4_res_mem->start as
> input, which may causes null-ptr-deref. Check the ret value of
> platform_get_resource_byname() to avoid the null-ptr-deref.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
