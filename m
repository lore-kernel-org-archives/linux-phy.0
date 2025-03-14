Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A873EC282EC
	for <linux-phy@archiver.kernel.org>; Fri, 14 Mar 2025 08:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KErqKrvRrfZoqi5WAQU9xIEX8J/YwAj17OO6u32LQk=; b=FpMt0xp1oEi5aV
	lEzAwxGI/Yzrkq0ebk1GdYZL1hHviEkGRLObSOfW4s/rXcfhMe6P5XPSthGu9tO39PWeiPJ4aaf+K
	bDOk16Wxpk9oCsLqZmcz1S0e21NN9xyN6cPEAMYce0eloaTbMuthxuNytUCs4LYB/MG0GUHehFIje
	yhdNAoAJwkbnOCQkifaR2r+OGyHtAK875xSGz0D5SiCdv4jrdiZZOUgZyC/KVhL4G1R2wuq/L0n0k
	x8TvFjDoyt0y1q129UDc56Sac3fOmT5qZjQRNOu0KLzUlPuy0QwDXZvGFveSpnF5xyZybGpNVv4Lv
	Nb+jBt5OpLKldy/ZusnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt0XN-0000000DVSe-1iy9;
	Fri, 14 Mar 2025 08:37:01 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt0KJ-0000000DRmx-0wIb
	for linux-phy@lists.infradead.org;
	Fri, 14 Mar 2025 08:23:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8ABB7A48861;
	Fri, 14 Mar 2025 08:18:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DE41C4CEE3;
	Fri, 14 Mar 2025 08:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741940610;
	bh=p3W9L9eQEmfvgQjAeaqE5U5MwnuqJ84k6yF4D1vFkXU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jhPbW3bAUHpzxrOImQwFd0W8TpimXhBKo5pT5v3OtF6Xp2xz/W90dFsAtMtvoQHXF
	 51e/M8pYTkrv/ewLRJE+CzckeocmCPiF4zhSjOFYgFFPyrU7kkG7BKH/beQGcgUpU3
	 1R3Uwo+ott49smSNQ+LSySuNNlgAxMw0sPM9J2hpi3q2x/lrFIV6Jowu8KdVid4uE7
	 KgIWffepZPcrIqNi+G5fEgaWJXQ/y7+y652T6QyzPVUu5HFUEUh+IkElgpduSEqTXC
	 svkt4pRWez8JcZQLZTmzXqSEKu80wRIbmN/yjVZIpOk2nXOSOYY0keS+1kta7Or0Nw
	 swnunEAGCFOsw==
Date: Fri, 14 Mar 2025 09:23:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, andersson@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	lumag@kernel.org, kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	kw@linux.com, lpieralisi@kernel.org, manivannan.sadhasivam@linaro.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com, 
	vkoul@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v4 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <20250314-perfect-free-oarfish-b153be@krzk-bin>
References: <DS7PR19MB8883F2538AA7D047E13C102B9DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
 <20250314055644.32705-1-george.moussalem@outlook.com>
 <DS7PR19MB888366F3BFE6262375217FA69DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DS7PR19MB888366F3BFE6262375217FA69DD22@DS7PR19MB8883.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_012331_322551_CD40FF20 
X-CRM114-Status: UNSURE (   4.86  )
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

On Fri, Mar 14, 2025 at 09:56:43AM +0400, George Moussalem wrote:
> +			msi-map = <0x0 &v2m0 0x0 0xff8>;
> +
> +			interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;

Was this tested?

Anyway, your patchset cannot be even applied due to broken threading.

We keep pointing to issues in your toolset since more than a week.
Sending is so trivial that I do not understand why you keep it having
broken:

`b4 send`
or
`git format-patch -v4 --cover-letter -6 && git send-email ./v4-*`

NAK

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
