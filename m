Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6D36CCA480
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HneeOVxSwiXqpXtBQksZlfnwLEZ9KKO8zyC5oWq+oo=; b=bJj7q4+qXU06pI
	dXL1/JhHCsZjycROZMiOfXs6xSFGAvKqGnAZM/jWTAVUEBu72iEdd7DI/dcTzog2IlCLgmiZ+OBQZ
	eMGE+ukBJjjxYdO9yZh16sdiE8XoyoO1JNJUTdb8CRJNOuT5yNhi645gep6FaYA42yQ/F9ze6BDY3
	4T3IPfuUyXoYdV6OzDsD3Bh43ihMCAclZBjfe60bLeLGgldR7luFeknB1MI4tgyDtCRLGOryyjAky
	3vJyp7zZilpQdwD2r2A9cyXHIWBzJFQ9z4x9cQmF0ro66ULwDaap915Hvi7eS6kY9qU0rJumcIZde
	jlsl9amLkY8e+UeUtSOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvON-00D042-4S; Thu, 14 Jul 2022 09:44:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvOK-00D02d-Ki
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:44:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 44D88B823F3;
	Thu, 14 Jul 2022 09:44:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9C93C34115;
	Thu, 14 Jul 2022 09:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657791853;
	bh=AaG5DijCBCbZIPwIggTULO+h15a919z2ZS94dMzJroY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lbIP8/t/lBeB+OdaUEhX2HsSDs06lOpzNUScj7RaB7i/msLrjMmTTqB2d2NF+3Qzm
	 4JuGWMqkXa4D6vUvwE/zFCsVuowFSGC5wkfuvJl/S2QHtdJT/21/FzZ1bJVTkSU/ox
	 90iF1pBXes8zbxXd8kwlU7M8DJptdOYmvvF1DfpZB1kVaFHcaGdmgRhhS4ONArmNxE
	 p7tDJ0+fir60cv6cVKu7aGLiZeE0nJtMLrlGXBhkALr+CzxWNIUgXZW6DFK6iaBPmF
	 4k0/Pmgkv+GnGQ79B+Ok3pobjvVAif/I32B/sLFixvL/f5LqPdKWF9X98X+tOpNxVC
	 GorCtotJOL/sA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oBvOM-00057B-1x; Thu, 14 Jul 2022 11:44:18 +0200
Date: Thu, 14 Jul 2022 11:44:18 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/30] phy: qcom,qmp: fix dt-bindings and deprecate
 lane suffix
Message-ID: <Ys/lct4Dc0o426xy@hovoldconsulting.com>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <Ys/QBPJmkWO6O3Fw@hovoldconsulting.com>
 <5187985c-7f86-320b-aee9-a1107c8ce0a7@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5187985c-7f86-320b-aee9-a1107c8ce0a7@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_024416_843548_34C38FCC 
X-CRM114-Status: GOOD (  10.39  )
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

On Thu, Jul 14, 2022 at 11:31:22AM +0200, Krzysztof Kozlowski wrote:
> On 14/07/2022 10:12, Johan Hovold wrote:

> > Any further comments to this series?
> > 
> > Vinod, I noticed there was a conflict when rebasing on linux-next due to
> > commit 85d43a69db2d ("dt-bindings: phy: qcom,qmp: add IPQ8074 PCIe Gen3
> > PHY binding").
> > 
> 
> I got few comments. Apologies for a slow review, I am a bit overloaded.

Heh, no worries. Review within a week is awesome.

Thanks for taking another look.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
