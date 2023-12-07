Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BB78C10DC3
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 13:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZle4c0BIWbltddpSEz5ysfiNtD6zSr8QeKM6y6Pnbc=; b=Ov1X9LHFnDpHiN
	fd0CjCqcqau3LHLgQQ/wAMq+GCUBZsYqe24lxPHNLlfSwWNOAzFXCnGfoFpe9s9cTASOAWtEKakwA
	j+tZibmTDh+nlBz8kO8ySQcnP7i8+Exgu8mPZojHKJ0UJsxlg2Wv0scRLwf8D7dr8t1FaAIpxTiJi
	BFIbAflB1N+EZ93xKe4RuIR6Tl4nCYD4gDSfgI/TkwrEsUY/cBcfze1zDT6PkpxUpWu1si/8UjPo7
	k0AsxhznCwxWen8NcIgV+Fh/lSInKmONXm/zXscWiEoKBvq6cmK6Oz5c4teH45+apzJQ3SK+SpEPV
	QWdMVddNNRwzI/a2NHOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBE3J-00Crx5-0x;
	Thu, 07 Dec 2023 13:04:29 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBE3G-00CrwA-13
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 13:04:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id DBF06CE2387;
	Thu,  7 Dec 2023 13:04:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D67BC433C7;
	Thu,  7 Dec 2023 13:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701954263;
	bh=4jBaR1qmNEDVE39mC30/eFVzEXe5bQ1xUwFeHyj0RXY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e01Eyt0rpcM1Ytp27Vi/5Ux5jIZUUg3qNyVEgLwye46M3zTNK5v/AhaEytBZ4LHRj
	 BPtpM4DFz6IHzU1/ql9R7G78du7TsHXIPrhm8VN+4RsUrHks32ZqIjv0yWEMIaFqNB
	 jOd3IVBrVb9tKtDTZulik5qo9s57vl4bxKLhS/RSV1gmsVUAREBJnf/BImCYnPvMGK
	 d1z96fqnY6a1WjT9XfmIt+ou7UN8pd+TQrHhALYpDyKHW1CkCwBzxdPJxH6g9QhFSx
	 D83TwKDW42u9M/tS8nbeKhFC9yXF4/YbUPkVLUdlp112U3z+4NmNtoKzbviQHDoMQk
	 qBfWp47EIJBJQ==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rBE40-0000IF-2r;
	Thu, 07 Dec 2023 14:05:12 +0100
Date: Thu, 7 Dec 2023 14:05:12 +0100
From: Johan Hovold <johan@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <ZXHDCNosx8PCUzao@hovoldconsulting.com>
References: <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
 <20231206131009.GD12802@thinkpad>
 <ZXGVjY9gYMD6-xFJ@hovoldconsulting.com>
 <20231207101252.GJ2932@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231207101252.GJ2932@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_050426_593583_D7B8F5F1 
X-CRM114-Status: GOOD (  17.93  )
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

On Thu, Dec 07, 2023 at 03:42:52PM +0530, Manivannan Sadhasivam wrote:
> On Thu, Dec 07, 2023 at 10:51:09AM +0100, Johan Hovold wrote:
> > On Wed, Dec 06, 2023 at 06:40:09PM +0530, Manivannan Sadhasivam wrote:
> > 
> > > OK. How about, "qcom,broken-refclk"? This reflects the fact that the default
> > > refclk operation is broken on this platform, so the OS should be prepared for
> > > it (by keeping it always on).
> > 
> > Shouldn't that be
> > 
> > 	qcom,broken-clkreq
> > 
> > since its the CLKREQ# signal used to request REFCLK that is broken, not
> > the REFCLK itself?
> > 
> 
> Darn... You are right. I got carried away by the initial property name. Thanks
> for spotting!

Thinking some more on this after hitting send: It may still be wrong
with a 'broken-clkreq' property in the PHY instead of in the controller
(or endpoint).

Could there not be other ways to handle a broken clkreq signal so that
this really should be a decision made by the OS, for example, to disable
L1 substates and clock PM?

Simply leaving the refclk always on in the PHY seems like a bit of a
hack and I'm not even sure that can be considered correct.

Having a property that maps directly to that behaviour has rightly been
rejected, but it seems that simply renaming the flag but keeping it in
the PHY may still not be the right thing to do here.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
