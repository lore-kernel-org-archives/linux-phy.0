Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2300C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 23 Dec 2021 11:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpRYrvEhNCg2ozEZIcqPdU/uvq/a6ioLbJfDJx+iLrM=; b=pMQ8BUuJD11jYa
	v6QVMPehi2gYyZV7UgrWQuXnV61b99xmPi8uz1M4PN20gQzzKKL66W5mJjDZign97bs9SoGyuYYkH
	nmeYnT7aTFgVWKQNmMxwlyviOrkgExacaJdb5a7Y419vJ46A8g9j4Ce+ZqShstQvsfQ/a00m1NvqE
	hGs85zkmVkpF3H6cmmmI3Tc/Tdj2EDaNvrHH/MMiNSjHRfZxZ89FS/WAAWER4uzJia/RgaA1hOKx9
	oselPWN1W1iObYOyo8zDhC3hfHcbwLA37B3qogJL7J25IHKm3w0xC+EgcUJFasOAJg+1iC1/Hk7cf
	B3wJs7ybQBSUNpVas4tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0MLF-00Canc-AQ; Thu, 23 Dec 2021 11:33:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0MLD-00Cams-9B
 for linux-phy@lists.infradead.org; Thu, 23 Dec 2021 11:33:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C842D61DFC;
 Thu, 23 Dec 2021 11:32:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B682C36AE5;
 Thu, 23 Dec 2021 11:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640259178;
 bh=0RrhX3k1ZIV+bJYkPMaUSIE5xLzRFmh9h4IrE2Y0Ytc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U0N0zOxaG+hfvhbe6NMb7vBzhs0Y2RSCGxjDsFCD1+bUxqfzCTkUx1D5FGuLOEQTF
 PaTc0vmTs8slpuAwrPJwsuA+tx9JAe+vFYOn6sACHcMNakmwwfOPlGZJWaCrwim6y7
 ZEVYQoy+09FlQmctw70t7E03e9UgsUqBY3YfFGtt2yXpmYgbIwMpRN+6L9HpQLHitF
 ryzZXuIokw3qZJ1qC7OHaIV5EKbGxVyMQTmdSpaIt6XgyQgQig1c/yvFpNBcuwM7G+
 HwUF42Q2osVSofJq5Uk7v1uw/ZMGOvuvrxsX8qK1iyj3aAprsDveLmbQAJqO2TwAqE
 pfjMhO4k7joBg==
Date: Thu, 23 Dec 2021 17:02:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: qcom-qmp: Add SM8450 PCIe1 PHY support
Message-ID: <YcReZWk8DkhFzItD@matsya>
References: <20211218141754.503661-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211218141754.503661-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_033259_385808_46D68E36 
X-CRM114-Status: UNSURE (   9.04  )
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

On 18-12-21, 17:17, Dmitry Baryshkov wrote:
> There are two different PCIe PHYs on SM8450, one having one lane (v5)
> and another with two lanes (v5.20). This series adds support for the
> second PCIe phy.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
