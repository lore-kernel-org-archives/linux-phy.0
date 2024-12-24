Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D995EE77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 14:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHO0pCxqDJKdSDnrN0AABrrb9Ygp35sEgFgeuD70hLU=; b=R/Bv2iIlcFpIGj
	4hnUkJgpWaXkWMQI7FXE3RbijNL+PgQ05d01J1dJ0lRRa1FqiA85Z8n4050andYrEUxV8oMm9wW0X
	p+ZifKc6ahaXsvxnyP8+h49NKWrVY4ay0Oi5RTvWOY9yH1TI85i1bCxA4UL5Kqt6QA5QhlK6WluIW
	2hJbpYKRqK1WylX1Cz2wWD93DUEFvO/zk3buMbU6McRqEGqv9RxJGK8PX9gFtTMCcWT/HGbyyzlZH
	f6ha/5EmNzkzWUu3HkQilRPaEdChhWywqPeRn6LtcK5sMnNKqswnCamDRqV9p43gM0PRAkOyXwPWJ
	nfnhh12WeyzRTQgUjTjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6BK-0000000CAbr-0RFK;
	Tue, 24 Dec 2024 14:46:46 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6BH-0000000CAbW-2nTa
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 14:46:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9EE68A41492;
	Tue, 24 Dec 2024 14:44:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37B8AC4CED0;
	Tue, 24 Dec 2024 14:46:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735051602;
	bh=AHk13ZAMnRVat3D717PVrU2yOWEilqokAf0OwV++COU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Otof7nH112K8AJcYznBV7brNq8It2SurJ/dKqozubjmABDw42TrOwQeOyWhdvAMyC
	 kPAgTwimX4vhoRfcbR1mwKrmtVTZl7LYv24ejiYmtQSxzl3lZyIvBG0jGnodKpNTic
	 qJqF8sk20nxoOiQ0/NUBZarEnvOO8fLR6BgeL25HCqesT3vZC+2MbojcA3LBTR83K+
	 TA3MAClI1JGuELZA3mGRcAudbu3XhEOfICpfs2ah71lfUFnWNOY6Ddzb+KaASrIiPi
	 A3bfK2+jqJ5I+RPfpQFAqhbJJUv06Wu7Bht45xpC26Uu2V6Y+HFtNoNSx812hADr7e
	 +qpuhItqRaESw==
Date: Tue, 24 Dec 2024 20:16:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org,
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com,
	dmitry.baryshkov@linaro.org, quic_srichara@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/5] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <Z2rJTgYxNMqnZuyi@vaman>
References: <20241217100359.4017214-1-quic_varada@quicinc.com>
 <20241217100359.4017214-3-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241217100359.4017214-3-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_064643_782971_F2DBBEE5 
X-CRM114-Status: UNSURE (   8.58  )
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

On 17-12-24, 15:33, Varadarajan Narayanan wrote:

> +#define RST_ASSERT_DELAY_MIN_US		100
> +#define RST_ASSERT_DELAY_MAX_US		150
> +#define PIPE_CLK_DELAY_MIN_US		5000
> +#define PIPE_CLK_DELAY_MAX_US		5100
> +#define CLK_EN_DELAY_MIN_US		30
> +#define CLK_EN_DELAY_MAX_US		50
> +#define CDR_CTRL_REG_1		0x80
> +#define CDR_CTRL_REG_2		0x84
> +#define CDR_CTRL_REG_3		0x88
> +#define CDR_CTRL_REG_4		0x8C

Lower case here and other places and please be consistent

> +static inline int phy_pipe_clk_register(struct qcom_uniphy_pcie  *phy,
> +					struct device_node *np)
> +{
> +	const struct qcom_uniphy_pcie_data *data = phy->data;
> +	struct clk_hw *hw;
> +	char name[64];
> +	int ret;
> +
> +	snprintf(name, sizeof(name), "%s_pipe_clk_src", np->name);
> +	hw = devm_clk_hw_register_fixed_rate(phy->dev, name, NULL, 0,
> +					     data->pipe_clk_rate);
> +	if (IS_ERR(hw))
> +		return dev_err_probe(phy->dev, PTR_ERR(hw),
> +				     "Unable to register %s\n", name);
> +
> +	ret = devm_of_clk_add_hw_provider(phy->dev, of_clk_hw_simple_get, hw);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

just return devm_of_clk_add_hw_provider()

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
