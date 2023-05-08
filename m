Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88FAAC7EE22
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 09:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2J0OvURuOsI8aaoZi2CWjWNDB63GGR1oE5eXFR9neI=; b=bsks0FwEMo8EiE
	uoRUYpUjTAVxuPklg+I2mUb9zC87g8QBvu5QnlHlUwUn8JzTyehzUizZQDTw9cY2jjE82gTCWm5Nd
	tjZ4PEZn+jiYdASu+n+jR5gJ0tu/iXKuvMwO85pONEwe1lA6NvFpy4GMSRNwGvCnfy1RvZP6D4zXf
	vduDN/Cm9d7Aao/ksRK2NdO3Xa50sdavjWYCf9LEICUG1kdBHIPM8OWK0bpHxWMvrwI/z+MMEg6Xj
	rMfTkww+1tPxtWBo35RXv51iQPBQp54FqVA6J0H4b9c6SaYkN0G2E55McffxbbAo3UyRlLmpKTFGW
	KGqJMybbCTD5rYEzvcYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvwsh-0003No-0i;
	Mon, 08 May 2023 09:10:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvwsb-0003N2-1O
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 09:10:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F2B2062115
	for <linux-phy@lists.infradead.org>; Mon,  8 May 2023 09:10:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88BD6C433EF;
	Mon,  8 May 2023 09:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683537000;
	bh=lvnrhXc1yCKmnMtOBPDRvHxMxBg3yKrzJG5/GZcaw4A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Go76Wsw+cdJr4iE0cqwDon553UuihbZG1WbD5TGzhUzJ81te1AdBqTIP3kZhSJ61f
	 VAw7FX5wbx/Fe5nDbGj49yYNhAxRwnH3cfHU8cbT7f9xMF9p0U0KN5ctCCrVKvxpoq
	 3P88hIA5UsJyU3U0lDIsnf0Q+EmnWsadOzRrTEMHcEgt7yIonmC5s5svJIotEw88S+
	 JIASNU2vw2GvEbFEnaMYK7NXKCYBa8O5Vv24wx6B73q6FOGtxEdjouDJd3FkBM1ylI
	 wchDihSGC3nnBmMnEsQxfKP684upSLK6TPyEaGFg/9MIHbtyTJ4eYpv9CXy1vegcyI
	 rYH4UOZ685U8g==
Date: Mon, 8 May 2023 14:39:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: qcom-qmp: fix init-count imbalance
Message-ID: <ZFi8Y32DcmtfxYdF@matsya>
References: <20230502103810.12061-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230502103810.12061-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_021001_532044_81DB608F 
X-CRM114-Status: UNSURE (   7.18  )
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

On 02-05-23, 12:38, Johan Hovold wrote:
> Two of the dedicated QMP PHY drivers suffer from a long-standing bug in
> the common-block initialisation code.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
