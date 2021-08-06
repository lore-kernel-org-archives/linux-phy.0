Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6ECCC4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 13:05:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8341E611CA
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 13:05:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8341E611CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VKfVzUhtCmGzNCp6NbN5pW/m0GlF5Ry2oQBELFmW1Y=; b=CRwByoYXVf6l6n
	r+zQ6mR+VVVGakyFWuIdN1QmlwWWSjb1qq4Zw+pPblyr1JUBO0T5KyQJzsOTde8yNyBQA7AsY7luB
	IMZfa8F3IBTne6ibBDn7N5nqFaiDHSzC1es022tJ7VGgSX/7w+d06gQcdmuAzsiCafnBLNXQbIsnd
	0BwNTf0BU/3AHSJS/UUSl9Q7APWHa47f3X8KqRbRCWS9aqdUDvjO9ru30UExoUlFMI4BH5ByVe7uF
	/lKoF7hvgOVJW+cQAiv0i7ndGV0fQIVwpEy0zfYF1DP2QPBM6iNmr5IWSVxMbD9ZLU564/y2cM7oa
	DTC0+Rqy03zGcBdVysLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBzXi-00CXlS-VI; Fri, 06 Aug 2021 13:05:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBzXT-00CXgO-Bf; Fri, 06 Aug 2021 13:05:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2EFA06108D;
 Fri,  6 Aug 2021 13:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628255127;
 bh=pV33NW1AKtJLdX1rKRb3MhxASd8RqDizeCWKI3yR6NU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aiNoCyLAZTwkesfU2xGWcO2ndzA3EYaRyXUTLYBiVufl/45EdOagnJJJR9vgVePvS
 AafC8yZH6XxUjPKB/VqXTlXLtxCEaqAXP46RwqMEveXYagZ97uCUCQhlGrRX5IzgDX
 YqKUHNi7gPxp/rS94KdJxRmIrWkJng8CQ3CfK9760RhOqZfSBINArfTFz3JF4qNAFr
 C2KPLCOq8m7Sa1k1+HzNs7nM6hY8NchPyz4/eB24sASa03Lx0Vk9c00FVnyO8z6D76
 kZPs7tuhlxU2H8AZIM88LaGhnYaOiR+Aidr1tlKq9Mc5uoPPWAK3k7G/VQK4LXhZKG
 iqdiBV7Je57zQ==
Date: Fri, 6 Aug 2021 18:35:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Felipe Balbi <balbi@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Balaji Prakash J <bjagadee@codeaurora.org>,
 Jack Pham <jackp@codeaurora.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp: add USB3 PHY support for IPQ6018
Message-ID: <YQ0zk44peRTsbLnu@matsya>
References: <3d86f45004fe2fcbae0a2cd197df81a1fd076a1e.1628085910.git.baruch@tkos.co.il>
 <6eec7ef4ecd1e8360ebe8e425151121684e997ed.1628085910.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6eec7ef4ecd1e8360ebe8e425151121684e997ed.1628085910.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_060527_503706_0D5043D5 
X-CRM114-Status: UNSURE (   4.35  )
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

On 04-08-21, 17:05, Baruch Siach wrote:
> Initialization is identical to the IPQ8074 USB3 PHY.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
