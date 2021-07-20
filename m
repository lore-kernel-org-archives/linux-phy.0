Return-Path: <SRS0=vk77=MM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7691C07E9B
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 10:35:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7CFA46113B
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 10:35:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7CFA46113B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msyDnpRlZMIyVBQT6Amap5ng28bI0LI+CrxpCDLQFKM=; b=OL22Zic/DVdIfE
	JIxcn4R9rdmbWyNDDW0gy1QP+rvUU0GXO/X+eXMONmYenIdbf/0Xr/Xi+mlBnld2yW5WIT22gV+23
	CM7b5urrPap9Tzak50MSC3C2TOj0sOAum3oJBmhzONx+b6JJU9KJ28lhwk0zU99hLO1bZa16skztx
	oSP/6aamgv9itu0smxYymwCX/3dxSk9UcbncnoZCdZA+ioDUjDi9Ii0uJ0nzs6d3lOXhQ3UNZ1GkD
	AZKYQh8eHsPwXF17Non4hE6LGrFbWZZtTFBzhjmsa/CkNtzdilaDX7kP59cFMeXlbimqnBiRbcJXf
	TVqmHlbnFbY4XoNTuKRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5n5z-00CXVt-Uk; Tue, 20 Jul 2021 10:35:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5n5x-00CXVF-8e
 for linux-phy@lists.infradead.org; Tue, 20 Jul 2021 10:35:26 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00943610F7;
 Tue, 20 Jul 2021 10:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626777324;
 bh=RYG5u04jOFhHEELWkGlORZlrGjhovJ3g71bY1CkTWOE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TLNPMZ4GtPBXI0Soxg5cR+bV9o8znecg8edikg64Had5iRpJhZnTYGw9RBUO17s/W
 Df7BYeAtuFZhRex6RnDbIIb6bzU7rGpleaNLevaRi/63ZJf8Gvn/ihrRwUlojnmp6x
 6AvoKn6w9+zNi44oCXNSgVdoq7+wXAHVQH49AdGBtW7x+/qTM9+HzkAOHywx5Otvvk
 0aDDuV+ngrSgsenYbtMc4UfkQYyDxfpkeWlDEeuyRtK33X4RxJcfHa+w2DjI/XFb1Q
 xVlYndOidhVxm+AC9m/k/NRbDIQucqbcwJDwZzoy0LjLG+oBCdK2zKxVBJZ5w1eJUa
 HZjvjJHNf+hCw==
Date: Tue, 20 Jul 2021 16:05:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Manu Gautam <mgautam@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add sc8180x PCIe
 compatible
Message-ID: <YPam6Bmvmj/4H0rQ@matsya>
References: <20210629004509.1788286-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210629004509.1788286-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_033525_343594_00808756 
X-CRM114-Status: UNSURE (   4.65  )
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

On 28-06-21, 17:45, Bjorn Andersson wrote:
> Add a compatible for the sc8180x PCIe PHY.

Applied both, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
