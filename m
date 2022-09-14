Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB2F5C6FA89
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 06:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3NZieolZ3iIQYEKIAUniJ86yPj3qEDns6btGQH0ap4=; b=1P2OlnRnqG5XXD
	L/Yl/BXfEx/grTZFp/qazUCh387INzcO/VmlqRx+lyNd4uf/j45R1jpVqa6nhk5bExdrvwunOUyPF
	akMEzRqEfEUw4s0+4f2lY1JiRa4E8kFOuJ8BYdGiu2aniR1TAHCUMMp0ii6Oi+WxAJ1WYXK/Ui7VI
	mSITUpqxnev0ekU/Ax3c+EZ33XJfhf4qpszfLPH0bIm3dQVZWHFj0QJ63qAXgXPjTj8HcffAwHbgE
	2FO0bXrP8o5WlGtzaLSUCK1s7EQayI5YnLZxWU0PpWNJdpauzp/UL44v/V/sSwI6tBD6ZIhCkidk/
	WgOinNxG2oGa3FaK7LKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYMNJ-0096e8-1l; Wed, 14 Sep 2022 06:59:57 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYMNF-0096YN-PU
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 06:59:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 020A1B815CB;
	Wed, 14 Sep 2022 06:59:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94BE4C433C1;
	Wed, 14 Sep 2022 06:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663138790;
	bh=Whs4IM7U0IGGXZo3pyOaHLLggtXyRjQJNmPd9HwSIX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cmUukbaAhnYWX2B+yqopCAhZOaftArJ6p2kTJWhqv3KTJtD16jAfR3xk6MQDZq6vl
	 NNyXjyeT6dz90ag2MXDg5vW3BswGsy+VIBrtH6qUqqOn+W9zTGzwWD4d9NEgF+6SiE
	 U0sUxG+LrEyRrdjSLZWsGMXeNIwDBoY0kG3Qm/wmOjLBRAXFLONnxhHURq3RKc29ws
	 pafB7jYlKAmqSSg3gcVESvZ1Oy7+yTJcFRbUqxIdoaXr2idxg+DqOFSq7FBH9kXBM5
	 931CoIl9oAOPjtAd87jLkL0aUANcbVbPABKAJjXgnTHyFVg1WedvYXuITmOB93RUcY
	 obam+Ivgx6dSw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oYMND-0003Cj-16; Wed, 14 Sep 2022 08:59:51 +0200
Date: Wed, 14 Sep 2022 08:59:51 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 5/9] phy: qcom-qmp-pcie: turn secondary programming
 table into a pointer
Message-ID: <YyF757ZdlqW4NfYN@hovoldconsulting.com>
References: <20220909091433.3715981-1-dmitry.baryshkov@linaro.org>
 <20220909091433.3715981-6-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220909091433.3715981-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_235954_074428_F8D85123 
X-CRM114-Status: GOOD (  11.21  )
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

On Fri, Sep 09, 2022 at 12:14:29PM +0300, Dmitry Baryshkov wrote:
> Having a complete struct qmp_phy_cfg_tables as a secondary field in the
> struct qmp_phy_cfg wastes memory, since most of the PHY configuration
> tables do not have the secondary table. Change it to be a pointer to
> lower the amount of wasted memory.

Please be a bit more specific.

We're talking about four pointers per configuration and there are
currently about 15 configurations.

Is the added complexity really worth saving 400 bytes on 64-bit?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
