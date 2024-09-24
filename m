Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CC03CF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 15:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bU8gx/E5AgiHwOVtpl8QkZyH01o+i0B2kcFaeXbcJo=; b=USnmzyUDEPBQtl
	ayJ7Y6xE0NmJzSMA4NWa0sGsflgogmU7bYSCualZN9x6rgkPPcY2Rcgdjxqm3YXp64rHcroT9QqoF
	zAtzLDcmxc2lZhnF2wZUYCMGIKhx8NunMEbLM5mZLnFTac2vUBasl3611ookiWkdWQAKUHXXObueV
	ZvTfLxja0x9kREkPaNfx/BkqV3WiaRCPLtIRb9lR4uMpMKnSUZmoDRaZhHZ1Fra0K8v6bwTlSmupu
	QV9rzJ29ldZNuI0gYVU/bZPNBzClAPk5zSYGjP3MZzwqrd2omTwpWuEJstrbpQArsx6ofvzTIIbVZ
	Cs/extaIjEawoE5RwkRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st7II-00000002eDR-3O7A;
	Tue, 24 Sep 2024 15:17:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st7I3-00000002eAH-2kMY
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 15:17:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D73E0A435EE;
	Tue, 24 Sep 2024 15:17:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82513C4CEC4;
	Tue, 24 Sep 2024 15:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727191042;
	bh=K45iTz1RzuouoCG+1FPCQaMpH4ux1cedGX96IMVXfDM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pTT+d6+anhV0SAGbGLH6jxitdEhE8CRPa/T3338wYjxKN8j1ZLOwsid9k1oekodLB
	 AbtwjIvLw8xQlWucy9eWzydHLXhj2D3hnzXm1ug2mEz3YIPoRUC6z5ZBDvcdJb6gF7
	 ME+mqSt0evhwN45iTDLGK6oUl/FAHPKrtZqryCTaGikwgRTyMmiMWEaUAd6AZ0Alhb
	 ym5l9EH+nii/homxqmaNf/b2XhRTjEf5qvgz+cjlavZ6fuLOFthyQTvCJiultaiFsE
	 JuYgRYXrar3lpnQrfnFaGmDZ7seDpC3JEVkLGorY7CJsOb7mY9ZNIFRd7jphhYb4UL
	 upOtRWgOUBJhw==
Received: from johan by theta with local (Exim 4.98)
	(envelope-from <johan@kernel.org>)
	id 1st7Hz-0000000028G-0Gw4;
	Tue, 24 Sep 2024 17:17:19 +0200
Date: Tue, 24 Sep 2024 17:17:19 +0200
From: Johan Hovold <johan@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 5/6] PCI: qcom: Add support for X1E80100 SoC
Message-ID: <ZvLX_wkh7_y7sjPZ@hovoldconsulting.com>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-6-quic_qianyu@quicinc.com>
 <20240924135021.ybpyoahlpuvedma5@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240924135021.ybpyoahlpuvedma5@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_081723_791161_2AD156FE 
X-CRM114-Status: GOOD (  21.30  )
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

On Tue, Sep 24, 2024 at 03:50:21PM +0200, Manivannan Sadhasivam wrote:
> On Tue, Sep 24, 2024 at 03:14:43AM -0700, Qiang Yu wrote:
> > X1E80100 has PCIe ports that support up to Gen4 x8 based on hardware IP
> > version 1.38.0.
> > 
> > Currently the ops_1_9_0 which is being used for X1E80100 has config_sid
> > callback to config BDF to SID table. However, this callback is not
> > required for X1E80100 because it has smmuv3 support and BDF to SID table
> > will be not present.
> > 
> > Hence add support for X1E80100 by introducing a new ops and cfg structures
> > that don't require the config_sid callback. This could be reused by the
> > future platforms based on SMMUv3.
> > 
> 
> Oops... I completely overlooked that you are not adding the SoC support but
> fixing the existing one :( Sorry for suggesting a commit message that changed
> the context.
> 
> For this, you can have something like:
> 
> "PCI: qcom: Fix the ops for X1E80100 SoC
> 
> X1E80100 SoC is based on SMMUv3, hence it doesn't need the BDF2SID mapping
> present in the existing cfg_1_9_0 ops. This is fixed by introducing new ops
> 'ops_1_38_0' and cfg 'cfg_1_38_0' structures. These are exactly same as the
> 1_9_0 ones, but they don't have the 'config_sid()' callback that handles the
> BDF2SID mapping in the hardware. These new structures could also be used by the
> future SoCs making use of SMMUv3."

Don't we need something like this for sc8280xp and other platforms using
SMMUv3 as well?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
