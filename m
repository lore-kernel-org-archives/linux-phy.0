Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253CBD729FC
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 19:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=qDamqu34Rv4O4Y4/zncldMf6jFiwmEyo7qCEZalVSoo=; b=jI+CVjoSB83M1c
	fWoi8Nb1z0YRw6/6r9PR9TMzBK1b7hPwqFXMO5+VPC5Lim17lCnEjbGVhlHJSta/5QxbrItFRs6k9
	q8uTd4pYqz1ezFRxcXFBe+QjaaBXrFQ11lf81sgS3OKLXyRwLSWNkml0b86zhiAWfZbOLBzXtJ5hc
	QBmrgrTdmovc9g8dwYT2fyCXEAYHmZP8yn7eLZmC5Tt5JegWWJB2tsHGWxw6F8GfpCwr6651KlXzE
	U4rkRqYv8KXsZoJkMXrR0n6zMayo+gmWEDSZ2MFvpPGbafZ3iVvjp6ENdLYzw6Bn5TcBALsMQB3JK
	wYttzKVlQF+n5KGLr1UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH6MP-00000000ooF-13yt;
	Fri, 29 Nov 2024 19:09:01 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH6MN-00000000oni-2bz6
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 19:09:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AAF4FA40FB2;
	Fri, 29 Nov 2024 19:07:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B19EDC4CECF;
	Fri, 29 Nov 2024 19:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732907336;
	bh=W7Vm0c37DPHmUeeFB1k3BNHaU33p3uZ42pyukGFCFXg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=rAKh8YswPbE2+n1dh1WvdhRxb1FNWEpo1HfViFmvqPNcwxyIUGLG18AJEL1WaNkxh
	 b4B1ACVZPMY8Zn9BIrw1NfHK2tzbG7Xf5FKc39/9GAz9DdEZZ6tsuG4OH7YZsThAwe
	 3r+rIsGleh6dWlWL+1sB5gcfRcSktRcNNEBgvg/oWpZtg2squMHReRMERSa+5AuXRw
	 WI3LTldvfQ/aqotz/54vcPmLicGf8CFz+k2eGEzG8FtEiV5jqqwHf/LEZB3l4qLuXz
	 dzQ+tsDmV0jVPFI/dRGy1b8Rnvx8gzxcX7wCVGo4Fo5G43YumJ8XzQIaL+KmA9UD8a
	 jw71Yaf5sQuIA==
Date: Fri, 29 Nov 2024 13:08:54 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
	manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
	lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
	neil.armstrong@linaro.org, andersson@kernel.org,
	konradybcio@kernel.org, quic_tsoni@quicinc.com,
	quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
	quic_tdas@quicinc.com, quic_tingweiz@quicinc.com,
	quic_aiquny@quicinc.com, kernel@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 4/8] PCI: qcom: Add QCS8300 PCIe support
Message-ID: <20241129190854.GA2768465@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241128081056.1361739-5-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_110859_725762_792CE007 
X-CRM114-Status: GOOD (  12.97  )
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

[+cc linux-pci]

On Thu, Nov 28, 2024 at 04:10:52PM +0800, Ziyue Zhang wrote:
> Add support for QCS8300 SoC that uses controller version 5.90
> reusing the 1.9.0 config.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index ef44a82be058..5932b228aa17 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1830,6 +1830,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-ipq8074-gen3", .data = &cfg_2_9_0 },
>  	{ .compatible = "qcom,pcie-msm8996", .data = &cfg_2_3_2 },
>  	{ .compatible = "qcom,pcie-qcs404", .data = &cfg_2_4_0 },
> +	{ .compatible = "qcom,pcie-qcs8300", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sa8540p", .data = &cfg_sc8280xp },
>  	{ .compatible = "qcom,pcie-sa8775p", .data = &cfg_1_34_0},
>  	{ .compatible = "qcom,pcie-sc7280", .data = &cfg_1_9_0 },
> -- 
> 2.34.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
