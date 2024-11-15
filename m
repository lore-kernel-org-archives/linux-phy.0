Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CD00D68BCE
	for <linux-phy@archiver.kernel.org>; Fri, 15 Nov 2024 17:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBXYYbJ2byY6OoVTfqZFYGNDQPuRtMm/SNyx2fEYfjs=; b=L9ATTpvgWZBKAn
	Ub1lcYehFtBbB+MhCStftYvSXgoGHCi8T5omMNTK+k3QZaNJu8/dhMdmdlMliacOE6hOJkMh1+mjr
	mDNHIEJTCc/EoGqmoHFA91xYKImQlrGUUjfsikvNnqP+YDQK5a/X2ozb0ISe8cRlXt4l3NwnhFMSB
	YMEgarcBWCMjW1R7do+G3SdgUPJ37R5zBXsEzMD40E/rsxhpOPrn9CpOaciN3JWunMaq9/ePLYLVl
	Tqx0izMOG4+p8+0hPz8zMI9VFLRJczTgdx2FIGEzYyYLaK6jC/HWKdBv/U3B3DvV/rRSvmw+JD9Fh
	nfDP2KjrSLA4ujCxghFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC0YY-00000003cvv-2iXB;
	Fri, 15 Nov 2024 17:56:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC0YW-00000003cvI-3n1b
	for linux-phy@lists.infradead.org;
	Fri, 15 Nov 2024 17:56:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3521B5C25F1;
	Fri, 15 Nov 2024 17:55:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC3BBC4CECF;
	Fri, 15 Nov 2024 17:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731693388;
	bh=PpjHatN5WUoKRqKa0DE4zFuPaulc3V56sLVbfXpGETk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HP2vswY0Fjhtfvm6xM/UAqEvSORiNQ/P1DUYFNrbDv3s4+rLoy6RS77Y44bdm/4Pe
	 GEDjj9oGiSmoAvXjYRPRB0nbFVHqYKvW6aKzwEb6uH4Anvgcw1Ln1a1w0YWBtUiL2u
	 am4oCjD2My1deqe1wkCsP1TJw2703Q3suxVCyr9UqTF6Vo3fyW7/UQtV+xiZsAQV0g
	 X6R0rTrAA731e41VIL8X66HjnNWY/LrXEN8OTutmngoqjmRJ7NRGDADcp5ejoy7cfw
	 NRM/4D16WxQ2OExK7jKCnKj/oDVqZFfOlrSwYYOSi+xxHuROEINQ+K933TwXniojhW
	 9jO7RkJZq7PIw==
Date: Fri, 15 Nov 2024 11:56:26 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: devicetree@vger.kernel.org, bhelgaas@google.com, kishon@kernel.org,
	quic_tingweiz@quicinc.com, quic_tdas@quicinc.com,
	conor+dt@kernel.org, quic_aiquny@quicinc.com, kernel@quicinc.com,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	andersson@kernel.org, quic_qianyu@quicinc.com,
	quic_kaushalk@quicinc.com, lpieralisi@kernel.org,
	neil.armstrong@linaro.org, manivannan.sadhasivam@linaro.org,
	robh+dt@kernel.org, konradybcio@kernel.org, kw@linux.com,
	linux-arm-msm@vger.kernel.org, vkoul@kernel.org,
	quic_shashim@quicinc.com
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the QCS8300 QMP PCIe PHY Gen4 x2
Message-ID: <173169338569.3465197.14104192908235199622.robh@kernel.org>
References: <20241114095409.2682558-1-quic_ziyuzhan@quicinc.com>
 <20241114095409.2682558-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241114095409.2682558-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_095628_982983_EFBFF7C3 
X-CRM114-Status: UNSURE (   7.37  )
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


On Thu, 14 Nov 2024 17:54:05 +0800, Ziyue Zhang wrote:
> Document the QMP PCIe PHY on the QCS8300 platform.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml     | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
