Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D6E3C43217
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 13:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w0qPhE83yDpL+xuBt7k0m9DqpRdGOXJNoiW/GoOoirk=; b=LhlG0KUKAqh1Pv
	tFpQI0pFBfEUMWcPuHfCAON116WS61sgGL995QrxXWsUuo3dn4AVoezcn+wMiRreQekm2C3HyHK5x
	eT7a7rJZNvheMPmEswCAHlx7rnYgeDcsVPdPSOnGQIZB7s1Q007q1ESjPqxPTnkfr+iekVjDkzfk4
	Miv6rGWb9/S/k1c8e7ucqbYm1YYb2H4PVQ537ciFoAnlWOHN+4z8KpDiNAHZo+mD2OsISW4yTwkiA
	rHT6StTfd4aD/ukmarEFt4N9Fck5maJqqElIyn6Qu1d8WgYhSBeB32oDjqshR3x7Y4Aw4ait6xL52
	sSMUWcDPqoBumwHmbIgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZlO-001Mjr-6S; Mon, 14 Nov 2022 13:44:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZk7-001LhA-DV
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 13:43:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AED236119C;
	Mon, 14 Nov 2022 13:43:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1566EC433C1;
	Mon, 14 Nov 2022 13:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668433398;
	bh=+rUAKU4F4KMfNm2lJiU2VhM2X6gLYie65kUp+/R1TbQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=femIr9S38iUEetX6LwA3OOiXRE4wEr2LkJbNJjOu5CgRqhcWL3//6Ug066qNGvCrM
	 UuFce4rz4qu+hyphkB3lgKKVVvonIImst51Sxl/KDncVolApHMQ5DJPXEvOZ/O88hH
	 zSZ7IjTo+AnGnEwjLcc5GlbNFaXbCMxI77cgEieYv/AlFz7sNIVxavbqofhKHExWs7
	 3Hmr8xFIFqm9o0kbHLQnQ5wHiB71NC0AOseFG4wJQ+Kptg6EmAfSQercWrLWUwREKM
	 gU8/UlMnZqSAaT/eUdeqIgKNfKp6wshgrANf15wEJGfolE7GSCdyRG66X3FJBtS8MQ
	 HScypD5Z/PBkw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouZjZ-000336-Tr; Mon, 14 Nov 2022 14:42:45 +0100
Date: Mon, 14 Nov 2022 14:42:45 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 05/14] phy: qcom-qmp-combo: register clocks sooner
Message-ID: <Y3JF1Yb2cEe9CQCZ@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-6-johan+linaro@kernel.org>
 <9c94f81c-963e-d1a3-6514-f803bb7e05fa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c94f81c-963e-d1a3-6514-f803bb7e05fa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_054319_543001_CDFC4496 
X-CRM114-Status: GOOD (  11.93  )
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

On Sat, Nov 12, 2022 at 02:15:04PM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 12:24, Johan Hovold wrote:
> > Runtime PM should be enabled before registering the PHYs, but there is
> > no reason that the clocks can not be registered before enabling runtime
> > PM.
> 
> This will have a side effect of DP and pipe clocks not using runtime PM 
> during the clocks operations (see the code handling rpm_enabled in 
> drivers/clk/clk.c). If this is an intended change, it should be 
> described in the commit message.

Good catch. I'll drop this one.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
