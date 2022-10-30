Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B7A8FA3744
	for <linux-phy@archiver.kernel.org>; Sun, 30 Oct 2022 12:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VKzV8WrBl2i0RM5Y8O/ppmCeKlZEpK+EVSBuwb9V2U0=; b=uW/VsirCcK8CI8
	EkG80WJfqlYnQncEihdYB8IyUYKoqauQsSKt5FHOTvizNPAkPyxY0csHroG06ofbRJPlrTr+bSWFS
	EGY7je34OHtIOV7l9W+gdziRW+HzQO/K2LJkPO2cV/SU7aKJ2me8w8WGNMnbtrY2uo251Pmmuo5gx
	98vEIYR+H6/9+GMeOqrBzj6QYtaj0a44o7Q7p1WYxL2Qt3GlHlbVLb8jDfhhOFyPpPUPW3dJrkHXj
	/uZvojKykOE4EqNwkV8JGJiI1POdZUC+lAqI0KTD/b9YzdcjP4HNf7jPV2jvq6mhmRv6kKKIr2flW
	xhR1JsYeGBiJbKmDTY5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1op7Na-00Fxto-UG; Sun, 30 Oct 2022 12:25:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1op7NY-00Fxsg-J3
	for linux-phy@lists.infradead.org; Sun, 30 Oct 2022 12:25:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CE63960EC6;
	Sun, 30 Oct 2022 12:25:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3669C433C1;
	Sun, 30 Oct 2022 12:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667132727;
	bh=8WVf6807pwphI1dXEwQpsvpZJ8jktxWXzKRXjmkztlg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=iw6+VgHIRjH01QPIV+N60+nK2thtqxdxlwtDp6I0g58AvQWQgzBeQ6Tv2R5wd5fDB
	 xWs/h/Iga/+d2ql6UPbGI4cFjA9OscgQg6rJlRjTLNcf6ngs6LsuYAgNBb3FPs8p0v
	 CO4kovLqGUijgaXMZyOQn9rcC9hhlrTTxI66RrLmbqFaOzBNXiKLnfxDRRv398bJ1D
	 kWIBzudRdmjNN+mi+O45sJd/jfrAaLl7v8wROvZdgGFIuw3O2WTNQv241Of0BK4goB
	 /0uSrDzLurV5AqaT2fZIpL/2SV2PL8qZCs75XXJpZOs0n1FtFiWfjxyDKp/gq6YaOB
	 z4OHux2NqTyVQ==
Date: Sun, 30 Oct 2022 07:25:25 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v1 4/7] phy: qcom-qmp-pcie: split and rename the sm8450
 gen3 PHY config tables
Message-ID: <20221030122525.GA1022832@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221029211312.929862-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_052528_699784_DBE89263 
X-CRM114-Status: UNSURE (   8.51  )
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

On Sun, Oct 30, 2022 at 12:13:09AM +0300, Dmitry Baryshkov wrote:
> SM8350 PHY config tables are mostly the same as SM8450 gen3 PHY config
> tables. Split these tables to be used by SM8350 config. Following this
> split rename generic tables to remove x1 suffix.

Commit logs that say "Following this ..." always make me ask whether
this could or should be split into two patches, one that is a trivial
rename that's easier to review.

But I guess this is a phy patch that Lorenzo will look for somebody
else to ack :)

Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
