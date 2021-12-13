Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3966C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 23:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=e8NPS7cfy6zu+fKWe4/UrjkJoXhqHd3Wn98Zle9tYbc=; b=3UAHZAnWFsHNHg
	jytPsuJVvIur2J2abaDZcVg05Gu+wQjW+3jargIgzfBtvI8xQAAMQr0WSW/ZdnWy3bdlxtD+TcGMN
	Dz1HU1eM/A5GWRT1i0IZk2BKiqEpk1pQ6R1HD69rCxaABAVKY4MiuQRAIwFGmXl1iZR7uvKP68sAE
	BvREbWM9t/wrhdvJMDP4juL5bhgJfwkN1Cl2pXy1zXHF572Bp/Ge6YrUCladzdqccuQUuhyBcxLKf
	kBrH56f870PrviSoSD24qD8rGHXZ5+65kJ0YHbH4kVoe1bLN76kVAMpQN8TahESu9E3keNp5KOiKh
	Qz/IDExaLjnKrrK4k45g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwugx-00Bxup-6L; Mon, 13 Dec 2021 23:25:11 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwug9-00Bxnd-2j
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 23:24:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1A0D0B816DC;
 Mon, 13 Dec 2021 23:24:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EB36C34601;
 Mon, 13 Dec 2021 23:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639437857;
 bh=A9pKYsIk8sVgWhuPxxwl6CXmwAOIQO9QyUcOm4pfpSY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=fI/qqDW72TRDXIw9jcT0c5ByYhyLm7Wlw22TzOKpb9YX8lNF8qHEWcs9pjP9oKegc
 ZZu9byNHqjd27HrCqz6iNi+gBLEswNRHbb5Ds29H99f/RtsYSA1dPkHb/eqT0KfIDb
 ugnclVHE205t21hoDIJMrIkqSRO1PzyPtjkyVifsv92oGqGLdYeuJgpzugQ7hGJW78
 sCeVDoWLX+JBq0lrq8yvUEOJjqo0Ee81o1LHdcXm/2haSs5b0zPFZ00VFcLH0ty7Z3
 Yg4S98c3MMNi0R5912j6QrJPqbms/kPBGyL1OMJvc04IAQ9hhzafi2Dy5Baoqm8Kf/
 gGYkjsT4wPkqg==
Date: Mon, 13 Dec 2021 17:24:16 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 04/10] PCI: qcom: Remove redundancy between qcom_pcie
 and qcom_pcie_cfg
Message-ID: <20211213232416.GA554939@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211211021758.1712299-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_152421_325809_5C486361 
X-CRM114-Status: UNSURE (   8.71  )
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

On Sat, Dec 11, 2021 at 05:17:52AM +0300, Dmitry Baryshkov wrote:
> In preparation to adding more flags to configuration data, use struct
> qcom_pcie_cfg directly inside struct qcom_pcie, rather than duplicating
> all its fields. This would save us from the boilerplate code that just
> copies flags values from one sruct to another one.

s/flags values/flag values/
s/sruct/struct/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
