Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 706A1C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 06:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhSSsniuEm/hHELNK63fsSTJfZuFeMWF4HJkRy6UxaY=; b=xivqi66P7WFpSN
	qpZKCndP2+/DrJp+a7ZX/GWtqC5vWzisGc600rkSoNCGOUca8bO4y0kYNsp4wfgLrZYVmWgYUU+Su
	1Hm7VikDZd8C7r+xQF4mQcpj3FFfJRku5tZ6OSdwvLTOTLDgySdfcUVMztZMOlEROD70p9Mc1Akpp
	i7mcQoVBAmeGfXH21xz9j3tujzYGfw3i8zEwHnu4Ie1YA4kBXQHa4zL6AdOetr8MQT3L46/dvxugl
	fwh0wlOOUpetVB0MqQ0PaKllBy/I32g5xyPDIPKgFHO16VT+HKeixjfZZUZg++URgOxCUWRYHqSVz
	24FSSDtEYc7recUgDorA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okK20-008DsI-M0; Mon, 17 Oct 2022 06:55:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okK1y-008Dqz-Ea
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 06:55:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1E5A9B80F4B;
	Mon, 17 Oct 2022 06:55:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1097C433D7;
	Mon, 17 Oct 2022 06:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665989719;
	bh=PNnJGOyQxGlF6kxJP9vN4ecaF/KlHCOIeam3mAgZbNE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a3kxCqOZfArXCq6cer8xlXYc+oB2CcUQ71hSXKx4Osyc5icd+QXlsO4ZfjN7R/Zou
	 yyfuY9PGYzZkuVlRYAy2PtPB+QmmxFsdRUFnaYo2XehR3DEzxddcOv1dH3DrINlz3G
	 ZoRKWSEj+havq+Ohwxz/o5worCL8zUwy17vLKUY7S2ih0tcvQ5/Hn7+sDLv0i7iHhw
	 sG6PgMzZy28BLPgnmDrcDZlzwLaeeFzUb9C/eMTMH+qKvsrAkBOFkBcmPRJz0VwOmF
	 2nlx5b3sgXM7a4DmLlVhzZ3oIrs7PKA3vWDBaj1rJd1S9Jg3gWpyF2aps71l9ekWJh
	 fMab9kAqwjTBA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1okK1l-0005CX-2V; Mon, 17 Oct 2022 08:55:09 +0200
Date: Mon, 17 Oct 2022 08:55:09 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 08/20] phy: qcom-qmp-combo: clean up status polling
Message-ID: <Y0z8TWt/AA4Oh9ww@hovoldconsulting.com>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-8-johan+linaro@kernel.org>
 <ca4eef6a-dedd-1823-9525-67d695ac3e58@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca4eef6a-dedd-1823-9525-67d695ac3e58@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_235522_652680_C574691D 
X-CRM114-Status: GOOD (  16.52  )
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

On Thu, Oct 13, 2022 at 12:14:17AM +0300, Dmitry Baryshkov wrote:
> On 12/10/2022 11:49, Johan Hovold wrote:
> > Clean up the PHY status polling by dropping the configuration mask which
> > is no longer needed since the QMP driver split.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> 
> This comes in expectation that 4.20 / 5.20 PHYs will be limited to PCIe. 
> I'd add this to the commit message.

I don't think that's needed. The commit message is correct as it stands,
and the fact that we may need to change code in case we add support for
new devices that may need it is quite natural.

Also note that the vendor drivers (5.4) only have such a provision for
PCIe PHYs and not for the combo and USB PHY drivers.

> With that fixed:
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
