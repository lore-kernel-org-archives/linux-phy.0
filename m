Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A1A3C32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 17:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgGjcNfatsOAul66+RK6gziKkGw4roMl9/DL5I13zKw=; b=a5qFxA95zGvdRS
	DUqw0Ns4ip2JkgIzrJWWwMaDGQAArFGVkioXaFYrMlQA9TC2yZGVyj2si8j56drx8uw/Tq+oS6d7n
	8pq8rENH3ShPJ6KKKKDmK2HWepsiCMAiugezqzV87SPXZr52GfpaXcos0mFKLv0KZPv5F0LTE1ZTo
	C0/oIxgmnMKJQIJCIIPMydDHMGdj0Ca4A9q7rqnQ4eFo27Tl42k1MZ36xtJlLc0B47bxuf2kx14M4
	nUlOaUBpPdJbnkfdbPXVAxH3fJ4kkRTWm4X8vVbaM0+70cd1BmYFuEN+4WcVGEqteVQfvWBj5Ides
	7KPpcWCx7q4Hkg3zSq/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIC9g-0020cU-0h; Wed, 18 Jan 2023 17:23:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIC9d-0020bs-4Z
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 17:23:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7E0FA6192D;
	Wed, 18 Jan 2023 17:23:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A0F0C433A8;
	Wed, 18 Jan 2023 17:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674062595;
	bh=kqjntvaC3IW0Pm52FaSq0u0ith02r034hWtEr8MgTfs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HSx99UocAPIQtvAMOel77IRG3PTc4syzWvQ3RZCzvvZTlz00L5OeZR9StrtgL0Pqe
	 lu1MvuZHgDh5WUa2gPXX9tnINqptgxalGpFwM4FExGrxEzwQ39bfIBHgTt8Z1h7ALz
	 ogDI0zRWq8hwNvtDjbeINTuOa7PvCYF0GDeXgDgaKijr//P9cfbORs4kBEP6QUi5WM
	 MXoO/KNS3LeFBYTjcI1iErosjr5kvGP5K8oQm6TfKTqUoTK8EKPsQuakzIcMdi69kx
	 f4G8zsPXbPizhINXlntj88VMtvTLMU3H1dZACvSuekb9OF45wsSmwSOz+y29pRE4iZ
	 d6RvJLQ23iaZQ==
Date: Wed, 18 Jan 2023 22:53:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qualcomm: qmp-ufs: rename qmp_ufs_offsets_v5 to
 qmp_ufs_offsets
Message-ID: <Y8gq/zsVIzAeHwRU@matsya>
References: <20230113195515.407866-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230113195515.407866-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_092317_237152_4DD4665C 
X-CRM114-Status: UNSURE (   7.15  )
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

On 13-01-23, 21:55, Dmitry Baryshkov wrote:
> All currently known QMP UFS PHYs have the same offsets for register
> sub-regions. Instead of using qmp_ufs_offsets_v5 for older generations
> of PHYs, rename the offsets struct instance to remove _v5 suffix.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
