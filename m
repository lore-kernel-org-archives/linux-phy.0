Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16DBFA3741
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KckxzUt8TifsTYPeKmwvW+Aovwx8vJo01okjeE2pnE=; b=VmPckoNbC1nfwH
	0nrUdN2HnsTzWwxXE1SteU9YoneFm9uMKJSRVdb96nauCTSVMVbWjykzT/h4sbkMVSetI5xdYhdcD
	mstUSRbRvWbPtfWdjcMDA5VuPFW9WpnY2hwlL46+WCJq/BwssLL/5YQ1Fu2//h4J+ib0UKPhjHtmJ
	syWe00FGY13q2TbJGrkCBYg2qO6VFcFydq0SjDtb2NWLgnT4RYYx1xfgxfmY/sYnPS3efFiZNdKQA
	d5uST3eW6Bri0U8Ui3YUVtL5vuj2ea32zHxyIC/CTom2ICOiYnHtYxQtNLbJCbID0ryoz+Ujae2B7
	G2Ge4h5j+EAERcaQEWTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOyl-00HCDi-8n; Fri, 28 Oct 2022 13:00:55 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooOyd-00HCBh-34
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:00:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A2BABB803F4;
	Fri, 28 Oct 2022 13:00:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78BA6C433C1;
	Fri, 28 Oct 2022 13:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666962044;
	bh=ePeMsjxXdLiOOfUUzNUw3FJDyNeX4zvzgeUxZV88UCM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dn+wSexzopWxdmzMsf7LuHWXqxeG0MYEp/zawI/K8pl0nbOdoVRBD27i4Z2ls8RK6
	 ysPuZIoeq2hcMYpPv8CEX+DMrMSmX1RVwEZjQu2IPyKm3Y6AzOdOMQjlgaafnH/av4
	 6FhJGopEYEAVFMQwgDynqx9HSlHygir2z0U9hBcqEZbliOjiJFgLlztZ940qDHrbq8
	 Cc802FXXlEr/QjZJ8+HOMkpJWbtOK71l2CZshSCOKTtQva7jhlf/AA65Otzxd1Rn5Q
	 K++OYCTqh4iWsZ0kLsduLdcVR45mzJCaAiDtufMVkoVExwvxFdbJX+P0P33UqGQvKx
	 s3tkrk0IMjeXA==
Date: Fri, 28 Oct 2022 18:30:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/10] phy: qcom-qmp-ufs: fix sc8280xp binding
Message-ID: <Y1vSeMpXqLsPBOLZ@matsya>
References: <20221024090041.19574-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221024090041.19574-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_060047_326456_EAC26816 
X-CRM114-Status: GOOD (  11.08  )
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

On 24-10-22, 11:00, Johan Hovold wrote:
> This series fixes the UFS PHY devicetree binding for SC8280XP and adds
> support for the new updated binding to the driver.
> 
> The first half of the series clean up the driver in preparation for
> supporting SC8280XP and its new binding that drops the legacy child node
> and the (incomplete) description of register subregions.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
