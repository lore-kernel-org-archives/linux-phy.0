Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C90CEC678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 04:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnBA2d/kTjJQ2EwXjW3trydk56Sg3SuxnaWbUj8zyqs=; b=daDlyJt7ooHDlj
	4YbXKuTo4SGbMLY+dvgaQ9K99Dp8cRSLg3V19VVRbbG9NfCDlCDLDESvUiq80DeRS1+52xWlei5aJ
	brCZV3kitiL374466rlUst6Chl8mbDLvrLVDaEVchtpK1mViosaR39WOtMIUEk+LnixZojzDxSrF5
	KaMP7y0JT4xHQ5il4dkB9/E8A6watPutAQhA4OlYehIp7BwPqvdk4nW4oQlcqnOZ7CJAALXHakyHW
	yOqkMEeSgI+F4NdgOY0YanfButO2YOl1NaYLkpboMoXCQwE1tYLQYb0RHbIVm0DYhNccm9+qJpucD
	AUUfTwncG9YUDoPyT9Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZOlN-00G9T8-5T; Tue, 07 Mar 2023 04:17:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZOlK-00G9Ph-Df
	for linux-phy@lists.infradead.org; Tue, 07 Mar 2023 04:17:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B110F61219;
	Tue,  7 Mar 2023 04:17:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF087C4339B;
	Tue,  7 Mar 2023 04:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678162633;
	bh=RicJ3qXIV9Fl4AR02iRR+L+juREsdw4zlXJgemMP7OI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AN3YQNRKvoLZCpCmg3JTExSU9Hf90sHSWbFmkMrgeI83vZ28gCAg8WLSbNuEKzBit
	 pRv/XUowGHbnr1JUDw8M7IpYZ6kTvEWqFGTOay6Bvac2m3E0C2UYCQzhjnSHPa0543
	 TToNFQgnFFgo7oDFxazQC4WAMppaQtQmtgSqU5DPymyQV9hlVlAhlHdb8ZdIzg37Pu
	 H+vUbL7+FhI7HcdBL+KGD9zKteZGubbeZL2kwRDNMGn4h93up4ru34NvmM+kxG00Ji
	 g/BmY8mHnYW07klJcTeKfRA9ci9gwzxNzN+jzQPzgIuN1BEee5G5Hxkx6X7Il0WN5s
	 sNZLHNxINftQg==
From: Bjorn Andersson <andersson@kernel.org>
To: helgaas@kernel.org,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: kishon@ti.com,
	stable@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-kernel@vger.kernel.org,
	quic_nitegupt@quicinc.com,
	linux-clk@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Prasad Malisetty <pmaliset@codeaurora.org>,
	mturquette@baylibre.com,
	svarbanov@mm-sol.com,
	dmitry.baryshkov@linaro.org,
	quic_vbadigan@quicinc.com,
	vkoul@kernel.org,
	manivannan.sadhasivam@linaro.org,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	quic_skananth@quicinc.com,
	kw@linux.com,
	robh@kernel.org,
	bhelgaas@google.com,
	linux-arm-msm@vger.kernel.org,
	mka@chromium.org,
	quic_ramkri@quicinc.com,
	konrad.dybcio@somainline.org,
	swboyd@chromium.org,
	Rob Herring <robh+dt@kernel.org>,
	quic_hemantk@quicinc.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	agross@kernel.org,
	lpieralisi@kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH V2] arm64: dts: qcom: sc7280: Mark PCIe controller as cache coherent
Date: Mon,  6 Mar 2023 20:20:35 -0800
Message-Id: <167816282865.1458033.5335158204914566504.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <1677584952-17496-1-git-send-email-quic_krichai@quicinc.com>
References: <1677584952-17496-1-git-send-email-quic_krichai@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_201718_537821_E908D47E 
X-CRM114-Status: UNSURE (   9.93  )
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

On Tue, 28 Feb 2023 17:19:12 +0530, Krishna chaitanya chundru wrote:
> If the controller is not marked as cache coherent, then kernel will
> try to ensure coherency during dma-ops and that may cause data corruption.
> So, mark the PCIe node as dma-coherent as the devices on PCIe bus are
> cache coherent.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc7280: Mark PCIe controller as cache coherent
      commit: 8a63441e83724fee1ef3fd37b237d40d90780766

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
