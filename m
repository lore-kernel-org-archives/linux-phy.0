Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90F8FC004D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 08:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCs+gzF0xgZTpK6Clqco3x7ynlJ8P8j1hxZSDWaI7As=; b=2E80nCWFz/Wpl4
	zC0hTblpil9oV81M0HKvBH15U7wxf1/YfMrZydfdiZfxFvdawBZTQHUMZFPqdV4zlPHPCDDsef66K
	RmhEgH020F3RdZkTS0CcG3iZx3YF96f5Rz41uKjyCyRd9FLgbpFrjvqYBK+81hgd2gAKyIxPi9TBr
	63y3vZKriuugVAL5x87yN1Y+qH/W0P7k5yqNyrpV2pfRXyaYNtTZHqCpITgneZ79q5dhxtnNFODq6
	5buQJeYOo3ttq6d9n2BIvX4Yj/tE77ohPkxLzlfFeRCZOyMePale9k7g0irLr+8xOlDk7zxJLaeR+
	mOh0RhHlyrnV6K3x9W3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3YV-00HQph-Tx; Wed, 18 Jan 2023 08:12:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3YT-00HQou-SJ
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 08:12:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 65F5C6168D;
	Wed, 18 Jan 2023 08:12:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C95ECC433EF;
	Wed, 18 Jan 2023 08:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674029540;
	bh=DRMZqxm+8VKTBtBSmErc/hRT5JTMiFP+YpTdCwn9N1w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uzN6A5uHCY5tZnKzvjTYO1YAKZF1Cga1xxYy4/rtuckYJ7BFxnJU4KHT2bHVKuwt9
	 b0p6PNoRl1Py77XOxH+mfj2K++qzQvywDyVnZTOPnPBRV4AWYx0/Bah31lkoP0cwat
	 JaIpsLdUsAwC9NwhHvh39TvnWXOFeegtM1Ui6GM6ZRBvospKm7My0RqrX+CS9XgPLs
	 p+r3jm4+B+F3qMZp3OA3BfIU/IGr0dsdjvNQzCkSPMd7YnCmeNfqPkBfEwr6C5l1FH
	 txAdGl3gz4xDz4LwdDbTwjW3rQB7fSzeEz8K0XorNqMvdutsHhP9NMEmCItHXQneQu
	 pNnzH0Z6Na1Bw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pI3Yq-0000aa-TS; Wed, 18 Jan 2023 09:12:44 +0100
Date: Wed, 18 Jan 2023 09:12:44 +0100
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v5 6/6] phy: qcom-qmp-ufs: Add SM8550 support
Message-ID: <Y8ep/OkG+MJKZ+wb@hovoldconsulting.com>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
 <20230117224148.1914627-7-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230117224148.1914627-7-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_001221_967888_590BCA0B 
X-CRM114-Status: UNSURE (   9.37  )
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

On Wed, Jan 18, 2023 at 12:41:48AM +0200, Abel Vesa wrote:
> Add SM8550 specific register layout and table configs.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
