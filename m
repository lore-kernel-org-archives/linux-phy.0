Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC110C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 07:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KlEchJ6l6wyVkkVKKipRkuOEW1mnU2GvzKMcb2Y0cnM=; b=4xm/o9XSpkUkPf
	A6MDZOmsyASVeweKygDMJcPp5txtastAkywgTyvVkAfFr5yPdVSE7hLn89DGsmroEnSivRi5Jyy1N
	LGfhNqXeqlBf51nHZW1FzWIMZKVCGCR/+u26KlmM8De+DqGOCeTA68SYCAreErkm3E6SQxScOX1OM
	p2lnRwzcJkv7RLVR7IfR3gNrhYMsFErMlxEaw7BRCBBCsodnK3S5U5ff1W/5unTRpeKY2My+legiZ
	gdYMLKCeGc9qDKFJj7Zw0MqMGv0euF8edlGo08cEaJBtam9d6izOlpzh92T2cNb2rXHxNENy2pT7F
	xntYq0Vdt6iynqCOldwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKno-008ZHV-8e; Mon, 17 Oct 2022 07:44:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKnl-008ZB3-JW
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 07:44:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 35B0DB80D4E;
	Mon, 17 Oct 2022 07:44:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67137C433D7;
	Mon, 17 Oct 2022 07:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665992683;
	bh=762l0StSz/K7tU5EDi5x7CTZNdEOP6u673sfhPq8Obg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d2Q+UQLuzVLVgjbv7NgmM1ahBDHgvOcAoa4jED6v3iWUKhJrY9T/sdvoP5YDKTFWg
	 TlIc0EdyCI73QPOvlCrR+GSRgtje7fTLng01LLj8HoHImcQTYXzrrPkpStX80aZbHY
	 liK+NVaV5KiRgRVFmAlFV8b8or3fGEONsj1K8L28vIHvFPLA70p6ukY+GOUI0p5lbF
	 ppVJA9PjPnGLl3bHGo+C5ikiwIF3U924NaXIHVMVDf+qw2jZIf0vgF3Hbf2I0078lI
	 ii/z7X4Y8XYmpXdA5ysyzAzz1zFXe0AVuxShoBMCKXo/woQYFZoevRIdk2/EBNW+XL
	 UI3YnOkawfCZw==
Date: Mon, 17 Oct 2022 13:14:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 0/5] PCI: qcom: Support using the same PHY for both RC
 and EP
Message-ID: <Y00H5te4zXVAgS7M@matsya>
References: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_004445_819340_6095B7B7 
X-CRM114-Status: GOOD (  17.83  )
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

On 27-09-22, 12:22, Dmitry Baryshkov wrote:
> Programming of QMP PCIe PHYs slightly differs between RC and EP modes.
> 
> Currently both qcom and qcom-ep PCIe controllers setup the PHY in the
> default mode, making it impossible to select at runtime whether the PHY
> should be running in RC or in EP modes. Usually this is not an issue,
> since for most devices only the RC mode is used. Some devices (SDX55)
> currently support only the EP mode without supporting the RC mode (at
> this moment).
> 
> Nevertheless some of the Qualcomm platforms (e.g. the aforementioned
> SDX55) would still benefit from being able to switch between RC and EP
> depending on the driver being used. While it is possible to use
> different compat strings for the PHY depending on the mode, it seems
> like an incorrect approach, since the PHY doesn't differ between
> usecases. It's the PCIe controller, who should decide how to configure
> the PHY.
> 
> This patch series implements the ability to select between RC and EP
> modes, by allowing the PCIe QMP PHY driver to switch between
> programming tables.
> 
> This patchseries depends on the header from the pre-6.1 phy/next. Thus
> after the 6.1 the PCIe patches can be applied independently of the PHY
> part.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
