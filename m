Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B61BECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 14:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMoeph9qX6ugC/iTh+LAziKT2jlC0OMZgv1Kyq867FE=; b=GHAzg5YhLElXKf
	Nr7/Cy8yoazTbo7X6n1KHA6jgatdThX3ekYf92aLn+UdAvoWq+1Ki8SI0Z8A8qehCz350VS5z+HLB
	V/3ZFNq0nNCdhyYeDjGmorGRzwKK2UGOeEpTphh6uqxv/kIBfkULY858YgWMNv69p8eNS9wqRqVbZ
	0EdUIhwkNQ5TOqGcq6CqIpeQi3a3QhzZ3FfHbNeGc8y+hpDBC8rqmDF+52+46VYKn6SDwpqO4sBST
	tKSoaMP7D9wjg8r2LqipuAoYPymuhhh/knwgw2a1XJlQ/CjNpOuoJnlhUWUWU5DSQ+QNMGJI0UUKm
	nKsNZDUQTVg1wuw/zZbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadvW-004LuQ-Nt; Tue, 20 Sep 2022 14:08:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadvU-004LtA-Dy
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 14:08:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D5B6A629FE;
	Tue, 20 Sep 2022 14:08:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D617C433C1;
	Tue, 20 Sep 2022 14:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663682919;
	bh=hBWGuLHbJhISwXVp5Y2WWvwMfSnoyTJ0CuMkDeoWT44=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ziq1dFWSBH9MPMpoyS3G6lV8819jF++Hoxe5HsBdvjiFOSJtCGF+XBYT4KyEttGGt
	 n+FlIaeqIN6dPSZrQtU+lZZJXO3KdyWZTRVfqWop3wT47PzcDGb/8AVFtmwldl81oJ
	 DdRQkwX5Lf0F9dvkWKxhYZ0NOJWhNnj0wWgWJRWMzSb74l+50Oj57iETGCodM8qLQA
	 DRS5yZH6jm46RxdU3Sccp+zy57fBbF07j9qB4hKcW0Wk63tvAWnYlykhtrvLn2cpwH
	 Kum8H1oIrUlok9FYm4Cma292fRhIyYEV/LvsKPMCVbMQCkx0XpNJx/7T6Clgq6dg8p
	 pO/dgo0AwI9OQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oadvW-0000Bs-1B; Tue, 20 Sep 2022 16:08:42 +0200
Date: Tue, 20 Sep 2022 16:08:42 +0200
From: Johan Hovold <johan@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 17/17] phy: qcom-qmp-combo: drop redundant DP config flag
Message-ID: <YynJatNg2Cfa8ix4@hovoldconsulting.com>
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-18-johan+linaro@kernel.org>
 <66450c6b-6435-e537-2268-c6fc97d92824@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <66450c6b-6435-e537-2268-c6fc97d92824@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_070840_541006_10A0B9EB 
X-CRM114-Status: GOOD (  10.05  )
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

On Tue, Sep 20, 2022 at 03:52:23PM +0200, Neil Armstrong wrote:
> On 20/09/2022 09:38, Johan Hovold wrote:
> > Drop the DP_COM control block flag from the configuration data, which is
> > set for all combo PHYs and hence no longer needed since the QMP driver
> > split.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks for reviewing, Neil.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
