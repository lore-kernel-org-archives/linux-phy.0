Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAD63ECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 17:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wx1ob2AU50sXkC6DQHrLEJ8zp7OGj4bdn/UHMgXMiSE=; b=1wYJthXgH0CmS9
	vCYL2wxJoAxvdLJtfasdjrNPoH6uNup0kvTZ0KV4/xYe2BoA9nqMjSFrxLG6ohXzrAerel7XXjUXq
	YMIhkDQw3xHE6sImZg8t/VoXLZcSXoMK70HzRfmk1tcOUv8w0bzoLtjWW2pmWRwoiXMeLfedQlqwc
	Jw0OFyserX1NhVpMyFG8cboom0ATdchBxfTkpf4qjnRy2My5crNKb6PulzIjIGdU1usj6EYL/j6RO
	e23r3EwIuTCZE8U5Bsy0Eo85R4YwHl5I3lXG5QJyPhSwij39KMQmIa10lhlHTj/eOTtX9rXGEnKKu
	0WDqEcxc2XAtAkMOeTlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAfh-008HQ1-6S; Fri, 02 Sep 2022 17:41:37 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUAfV-008HH2-CO; Fri, 02 Sep 2022 17:41:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id DEAABB82CD1;
	Fri,  2 Sep 2022 17:41:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA429C433D6;
	Fri,  2 Sep 2022 17:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662140482;
	bh=Fhpz1/e1H4HMa8Jtwgh0t8VzDicCBOWzSpuCa2Lmwbo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gFBRhA2BOL7MvGuouJRoyb3fUbvKNAtmooGPN+NY6lYQwKCWYUiVKqhmMGr1JJ7BC
	 KqMafQu/Vw8/9bCWvPOnB9H1oN/sJflozPajNK7ujhSWPHfyp8CwbZ8QisTz/3qJGT
	 tL6tdsfQZhbV0pEF05vlIQi8kFS93RdBj+GFQDTS9Q3hQgN4RocJelo1+EIuXH0wpj
	 6dKpnCSnz8P+osDbw3jxnHdFHLjnYLcWLDIdIaMXa7yjhOhP+QGev9O6YZVMi0VSHy
	 3MivnCmDTGiqZh2ZazTkJseGCB8J1Hqi4qpKpWr5PWZtqki0NGeaTXYsiBUnd7fPDE
	 YYguD0oecoW9Q==
Date: Fri, 2 Sep 2022 23:11:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, Li Yang <leoyang.li@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v4 0/8] phy: Add support for Lynx 10G SerDes
Message-ID: <YxJAPbfBpUpHeiqX@matsya>
References: <20220804220602.477589-1-sean.anderson@seco.com>
 <6d312336-4bfc-a8d4-783c-116a21284edf@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d312336-4bfc-a8d4-783c-116a21284edf@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_104125_575282_FC0221F9 
X-CRM114-Status: GOOD (  10.17  )
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

On 30-08-22, 17:44, Sean Anderson wrote:

> 
> ping?
> 
> Vinod/Kishon: any comments on the driver itself?

Not sure why this is not in my queue or pw, can you please rebase and
resend

Thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
