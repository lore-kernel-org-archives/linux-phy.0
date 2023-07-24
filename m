Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19802C04A94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jul 2023 10:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5BJPghv3Syhvc4IBicosHqvG3SzlsbHtslg0K4mjLns=; b=dKCl+EhuRWvIbT
	HvsWOjbu4YRFVVYlQ2aEgPd69Eq1MmQIcCHv6S2GaZDejAknk98WlvVrDejaAuK6bFhUNiF3p+MjK
	6dmCnqfg2mU1m3Tz1R8rBCPUIuFnigXkEW753jiIC1sn1HNBrSuMnogGBLseN/TuZAvpy8z24unO5
	SjjViMuMzm8uQ47mEpHsYjFY5TLF6re607te0B/3jxd6tmQoO/lW9yW2MlOBOxOyK9AWvdTPG9Un7
	o509bKbW6hk6wpbaJF7K4iVXUMjfYgNXysq8+roQa/OFDWMhi5BKU209Iqf0VWftk72yRuaAlnL6k
	up8kNEh7G6JMcwlMrjbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEY-003urm-2c;
	Mon, 24 Jul 2023 10:56:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNtEW-003upv-1Y
	for linux-phy@lists.infradead.org;
	Mon, 24 Jul 2023 10:56:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F2F9C6108D;
	Mon, 24 Jul 2023 10:56:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08952C433D9;
	Mon, 24 Jul 2023 10:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690196167;
	bh=EoRhPCwOhIgNGtTWNhayTE1OcOkV4Jof8HdiNSSHfPc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ngSQXJ7x44/0jmVK4kzF4Z/QSelxB/d+6mgKtdcMzfRWIgBw+6JLZzZ2nF1bWTaoY
	 YpmgxPo1PRjjbf+a+oDrRU2Q3JmxUcArnNQNVSMoBMIxepwLno/UDvF/weOHSAJL6F
	 CBDtBW/OQUseLrRv35YDzxLUN2W8HMdOm5/5Kig1vYDG4+CyYeNO86vQPGkic+6/hy
	 hEaBsVNAQLrVJfP8gGQHPwlCAMjShTyO5ZSEEB+42dfptJgKJbj/5ouFSzmRS8a46M
	 p0wFXTjmBmksjHSo4N9RxSGj8QLiZtwJQSuO1iaLV46lg4VvXBA77h+xnHILw5Jmzh
	 WjIm18P0zL29A==
From: Vinod Koul <vkoul@kernel.org>
To: jckuo@nvidia.com, Yang Li <yang.lee@linux.alibaba.com>
Cc: kishon@kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com, 
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abaci Robot <abaci@linux.alibaba.com>
In-Reply-To: <20230719003614.5506-1-yang.lee@linux.alibaba.com>
References: <20230719003614.5506-1-yang.lee@linux.alibaba.com>
Subject: Re: [PATCH -next] phy: Remove duplicated include in xusb.c
Message-Id: <169019616467.466601.4012488093184234530.b4-ty@kernel.org>
Date: Mon, 24 Jul 2023 16:26:04 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_035608_561519_84BF8BF1 
X-CRM114-Status: UNSURE (   5.06  )
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


On Wed, 19 Jul 2023 08:36:14 +0800, Yang Li wrote:
> ./drivers/phy/tegra/xusb.c: linux/platform_device.h is included more than once.
> 
> 

Applied, thanks!

[1/1] phy: Remove duplicated include in xusb.c
      commit: f5a8ecef3c6b840673d08342045c3014d674555f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
