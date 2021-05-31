Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E5A4C47082
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:25:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4986D610A8
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:25:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4986D610A8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DLIibPkyYe+/CxEjd3MxBWpr1DKhxHjZnDZhl610kos=; b=iY8+ihqOcQ2FqP
	pG7m6UbmSK6buPCYW1zlTtLavhFa2QD10tAvuX6+582D6dfjgcQGFRmbqD/1GRCEzcD1DahR+y2A7
	RZQ3jcGcIKMtjH0LMXIgpDEG6F+qbW3JdhC1+YqcQRjJjjncuq11FBrK+pTY0K2iUIsy7rJeyFsJq
	ImPDWV85VS/zhM1Zkb4dhsX/GUAyWAUmkYrMhNrd2aq7tay1PioLAMqhA8r2D8OHyZKaPrdPHRLZ9
	HU0gfOd/CEi5rEoAooDOSfAgsDt1CMTMHGfo+x5dOwhCAqXmv0rTjNhH/PeFLJ4JDZDmncQxdM/9D
	TqeCQqt8edTW22hpHEEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndER-00BQMS-Ih; Mon, 31 May 2021 08:25:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndDM-00BQ1s-8W; Mon, 31 May 2021 08:24:01 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EABF061249;
 Mon, 31 May 2021 08:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622449439;
 bh=CN/16kVh4u23VzsRHDG1/+J9ntor0VIp5iDOhcnKVEc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f0LbcQyAybJOvrx2DtHtcMbZgtyRiol6GOABGiB5G8dj8sJZo2dS8pRlkL51HB4U7
 8zItwetVIB20M8RD9jd29qNPN3ZzoywfKZy+13Vhj2nBi0x5GSyT8VRgKCrHxrDsmX
 YPbzrm1+u7eYrIXzanBkWA27n2TP9E8cFKwiUl1OV3Z3OUHCPuAkIxQUO+GQN0Chm7
 SS8E6s/SNdaTA4TSb7ShDliyJ4Iw+beoa26TTWbA/4113ltlv5J2kWkJMoJKfo441W
 cStzoyHwRSofDnHwooyGBM7f9ZRT0TFAogqHSc5vRJebxdyDf3s2qQszerj8VQEMoj
 e0d38rxqGxZzA==
Date: Mon, 31 May 2021 13:53:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: rockchip-inno-usb2: add
 compatible for rk3308 USB phy
Message-ID: <YLSdG3Ity+iAnddG@vkoul-mobl.Dlink>
References: <20210514150044.2099298-1-t.schramm@manjaro.org>
 <20210514150044.2099298-2-t.schramm@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514150044.2099298-2-t.schramm@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012400_363451_F3B31341 
X-CRM114-Status: UNSURE (   6.78  )
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

On 14-05-21, 17:00, Tobias Schramm wrote:
> The RK3308 features a slightly different USB phy than other Rockchip SoCs.
> This patch adds a compatible string for it.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
