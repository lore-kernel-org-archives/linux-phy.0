Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86D4DD3000E
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 14:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hF3jeQB7p7kBZxyHgosMTDCYNfj4Q3F4cY9EYgnLGY=; b=fVt4BOuGMwPHIs
	zTnogTLUVzQu/dQuRPlDLvOk9Zx9jt1RBeoZ8XLmwvZ2jUt86OJDPVUqM5WackUBzIjjZaWO1jnW/
	Wz1le5XRA9DywuHt1y3RAGQAD4b3Uag1FHQdmscHWoQVTx6UX9RdJpZVeCxMGf0R6bPig9n+j1qGq
	weHr3rMrHDXSuYFeHDnYtRKULO5Vwm6dQm0S97+HT2S3gB1AYZ1SUiCi7o0nCTG5/AVY44yS2RFQZ
	CrG9Zd7O09YSGrPIBMs3TAI6fsKN3iVX9LqmAU/2nA8rYhvwg8kvvNIy0ataceYT+nC/QAAaJt+Na
	BQjRrHi1/yQIjD9QAvfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ne3-00000000zkT-0clj;
	Fri, 18 Oct 2024 14:07:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ndz-00000000zhz-3R4b
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 14:07:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DA2A8A441D8;
	Fri, 18 Oct 2024 14:07:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7781FC4CEC3;
	Fri, 18 Oct 2024 14:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729260474;
	bh=KoTOyaOYxqjWuJ0H2HvnvhPl7uAzpooAhPcSM0whM7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ld7pIYdKMKPRjWV5dCBpYxSV70GUzeXMnVBpFMgbmX1x70ojqIf+w3zO3mTZvkTq2
	 7M1vJPWC/ab+LLM7v9U4rQ+nhagTCQpyJLi6nnuZaUDgvZbP7sAfxq6bvPxM6yn2mg
	 +PXzxI931GOA9aNmjYd+WZPNk19vwmQ9S4Eooa/E6HnvDB9/lGPVoOu5p2GDBE2Cg/
	 ZPFVArGMGHKlq/n55XlN3UIYuo301Itzi9Qknbh1WTMw4etkv/O+XZZzBz1IlHWIfO
	 1jTt8viuZ6lPPlHRCu6nhOwfEQBbWgBeOp9Ba65aqriGCnDc/j4iLMYXV2WGO2+bwH
	 v/M6MRvqQWsKg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t1ne8-000000007K1-2QbU;
	Fri, 18 Oct 2024 16:08:04 +0200
Date: Fri, 18 Oct 2024 16:08:04 +0200
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org
Subject: Re: [PATCH v7 7/7] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <ZxJrxDLSoQpYNtYC@hovoldconsulting.com>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-8-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017030412.265000-8-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_070756_315811_71DE7C36 
X-CRM114-Status: UNSURE (   7.05  )
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

On Wed, Oct 16, 2024 at 08:04:12PM -0700, Qiang Yu wrote:
> Describe PCIe3 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe3.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Looks good to me now:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
