Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE88BC433ED
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:44:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 640C061457
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 11:44:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 640C061457
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Szu5qt55z3qgNp6tKk5Ywz5pT2yruVjLkmGZGviKWTY=; b=VtB1Ig7X4IxKSdqVJI/UUqNGl
	WnXDgV+Uz4iOpWbAmVk6rlFs6qFUQHR73DuseB09D+nIju5tzkePz1vJpsAjXYD3yJ7+dZe++BG6h
	nZFQAuHDXluwGim/tnaKM4JfM0mGHdft3j7UZZxOnKNlKYwTlak3pjaw0jZrxQkSrl0sqnRNcRQ3F
	80vODYO58PRp9q0Jwvblir4aOAg8L8wt3Cdf9LT9JPJ7VwYvT+DWlb2u8IGUYDMT1w0Dkalb3slDb
	B5AgxoT6Ts3GkbYW/Sms/cTGh8SpHSgtBw9RzVX42F9X2qzBCBbBqe9ts/RgYqlioPogOJe/MOlSQ
	+zzEJrqWA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWEt-007x3T-R8; Fri, 14 May 2021 11:44:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWES-007wyT-2G; Fri, 14 May 2021 11:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=RGymiw+2Z0CrVGQL3tLC/2joq3j9YANXn8aNlznTKfc=; b=1SatdrG5iJAisZM3ExWTpc2X7T
 xTvFb7KeWd9SLDemslWOw7v+O4u+si+yo5dJ22FGoo3/z6KfMETsHPdqAz+kyWJDJL5Y84Y4EQBvj
 5aGkklLrlF3W06mPa0j4zR3PGurM2/c/cHXIBhte7D79mk1SvDOYIiO2nhtdEFsxtnKDyXP5z1uWv
 c9H+jbu0Bv+4wRdsfY7JlhUQeBjzFypLYFBGy0sXOPjIA2fLdpFJjxShwm6l9VW9ICNo3aGXCwLvt
 rwKTLrL9ExtYNZsZz2nVBzONnnVfyTtiFoUK5hgFHJ4J84tEQFOuAePu4C3kM2Zol2SZN+Mvid1ZM
 p7Byty2w==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWEP-00BwhV-Kd; Fri, 14 May 2021 11:43:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 454AB6145A;
 Fri, 14 May 2021 11:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620992629;
 bh=DEEn9u4JI/4C8qoAzzUOFfbfbwR5u1R3Df6cNGtTaoA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uRXvrns4KL4up+D0gVwsTVoGHiP2V+JSFcgAVEdNrb91oeb7gVzADVZi44e3Uqj/Q
 pmHkkT/E5C4n+qlb1G0XegfO0nD8AI6EyJG5aJlr+jde9VEQ4AVPpXdW4NPiy5afhZ
 4vNtCEmbNBN2g/a7iKjcf7jBJh549zmh/SmvX1ynSsCWtKlhAEazOlDl9YrlGgkWhf
 N7s4c/WsDVMxJ1a1Oz5Th58J7A3mMaYQMpHJ8ERrKY7gWYbiFihI9JMW15Nlt8O4/U
 eOwIR5qSntpyFIYkHjL2BkfvYqKO64hQwbuHvukYDStjNfqfiVTCImSkBRZ+kFZeij
 6uGee/o/Vs2Sw==
Date: Fri, 14 May 2021 17:13:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Baruch Siach <baruch@tkos.co.il>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh@kernel.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2 5/6] dt-bindings: phy: qcom,qmp: Add IPQ60xx PCIe PHY
 bindings
Message-ID: <YJ5icVahK6aOGoig@vkoul-mobl.Dlink>
References: <cover.1620203062.git.baruch@tkos.co.il>
 <be83d8580942ab9d141dffff4e4f33f34a4c9ed9.1620203062.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be83d8580942ab9d141dffff4e4f33f34a4c9ed9.1620203062.git.baruch@tkos.co.il>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_044349_712974_70B0C803 
X-CRM114-Status: UNSURE (   4.50  )
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

On 05-05-21, 12:18, Baruch Siach wrote:
> Add ipq6018 qmp phy device for the single PCIe serdes lane on IPQ60xx
> SoCs.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
