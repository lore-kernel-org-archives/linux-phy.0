Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CF51D18135
	for <linux-phy@archiver.kernel.org>; Mon, 14 Oct 2024 17:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=3WeHbb6Eyyy5SK+xP2gX3EguwjxCFH1XYRXAvwrjpig=; b=UzNRfFkd8wHD51
	tkqpq71HmHLSyloSTqKNFQs5dhV5cHRO2/+A2Ry0qFTPQT4PWmuP4XT4kg+vOzrQwh6+hx6h++u1C
	k4wqNMuaATYoNRBXSsEf4qozZX9gJwq8KzoneeWDE1EuzdTVI4u+1KBC+EAGELTghQ4onb2EPFTle
	EJI8donGbvcQgGW7cKzf81V3TcHz2o4jcA58xMvmwVWoB7Z0r5PyCrZ9w5VVXyGubeSKqjJSfruEK
	hbsfGWQzftXc2KwyAiSyMuCqGkNvicgbT7WPWXMBM/wzHifIsIcTzE71pR1fmIuhPZKjUsazoas2F
	Ja+61tUDxZGUSr0PUNKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ojm-000000061pK-364p;
	Mon, 14 Oct 2024 17:20:06 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ojj-000000061oZ-1keB
	for linux-phy@lists.infradead.org;
	Mon, 14 Oct 2024 17:20:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 82836A41044;
	Mon, 14 Oct 2024 17:19:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD114C4CEC3;
	Mon, 14 Oct 2024 17:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728926402;
	bh=Np62Up9il5vG205tNL0IREXGDm1XoBvQ7ES3tBuqiSI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=jspzCD3Aw3An6B7xeaJtD5Ud6xL8ZrkU8JKHagUm6ZeV/tFf4S2LVwyIhekC5k01B
	 3PKDIXVihcupi6fa5Q4sslzbf1jWHiGD3lms0g4ZJ7GwTpZ8RjResdB6UG8EJ557VU
	 jih+np1a8BCduiGQU21NjIDWK36NB7KJafvW8k5iKQdpznPNS5O6Na6C2YBppYlEiq
	 lRVaduMQTW0etlOIzZgPvXngyx92wk+fCCIBya9A6XrRJqJZ0i9amqI6T63aCg0wwr
	 sVQW0WK1os1tKPuOH68F7rA3u3lJIYn+GBoLxMprNKuDK0PjdoOS1TtTYikv/WGrAM
	 YVu2VdGp9CRZg==
Date: Mon, 14 Oct 2024 12:20:00 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v6 7/8] PCI: qcom: Fix the cfg for X1E80100 SoC
Message-ID: <20241014172000.GA612658@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011104142.1181773-8-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_102003_548227_D3223870 
X-CRM114-Status: GOOD (  15.22  )
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

On Fri, Oct 11, 2024 at 03:41:41AM -0700, Qiang Yu wrote:
> Currently, the cfg_1_9_0 which is being used for X1E80100 has config_sid
> callback in its ops and doesn't disable ASPM L0s. However, as same as
> SC8280X, PCIe controllers on X1E80100 are connected to SMMUv3 and it is
> recommended to disable ASPM L0s. Hence reuse cfg_sc8280xp for X1E80100.

Say something specific in the subject line.  Apparently you need to
disable ASPM L0s for this SoC, which is important to know and much
more useful than "Fix the cfg".

> Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 468bd4242e61..c533e6024ba2 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1847,7 +1847,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>  	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
>  	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
> -	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_9_0 },
> +	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
>  	{ }
>  };
>  
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
