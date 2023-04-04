Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D8CEC761A6
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 20:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L5ytZSh75H6RdH2OUQrm3C8FFKWBuKlbQHKRwKhWE/c=; b=CTfGJ4fwnYQqoB
	kxHONJyGNhV523rdKk3xYSNncAp+5OxVzIMaORXL7hXfXK81cpecmY5GRomFKsCJeIcZNgy6bfWXG
	wGa2PVTdfua6BrSrDCQVRE5ePjYxtglJDhmOB7eOCdRBOlWdz71w2oNdclK9ibBXrXDGU3QAFaF6y
	hWsaXBFmSqXmnY1wQ3lx69I1rbxByf9xCeID5ueVxD4BCYC3TO9DQfZg+RxoZkbk4c/p8Y6j7xtOF
	MgEyLFQgjHnIIbEWASaQdLzrGGZGztFtgTDV0DQZIsxT6Woj0UOTJ1MEJPDYfHS9LH7RuYsgmYl8h
	xyVpf10aR+nvKKDbauEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjn0i-002n2i-36;
	Tue, 04 Apr 2023 20:12:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjn0g-002n2L-1u
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 20:12:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2C635632B0;
	Tue,  4 Apr 2023 20:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E94EC433D2;
	Tue,  4 Apr 2023 20:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680639125;
	bh=3QRJlwqia2QDWk/e0n89D0bcrqXQfIZCY1IoEbSO2IE=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=n8Mq0qza7dwTNwPm0nIIDwj6E/Gjsoqi8BwFRJviM5zeek6Y544V4IUOncLBLsXrx
	 yir2J11YboyfJb8uLDWZGO5kaedpkYcrwMhu3QGTtA2EjbXaOlsPbyaj/f9PVQSopt
	 cp2a9lJEPwKES/zLJVVozX7jiK6tqNmM1lwsWGu1nJsKBcmfGxOiFEAaOcEk+Tg5dh
	 68rnzYotyjpbyrBOvLwtuaCaRNGuB8UKPsH9M1YyJYDsF2nMA/5jd+2H9soaCCym5W
	 NwyNMUdP/luC2md/JKNLcw6nbFRj8Cux20os2XRY6H+1QOQ998HSQ+xjNfBWKV1dCj
	 dmDNOdISwT8sA==
Message-ID: <1d7dae8417d7978eccdc01d7f60107f8.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20230404164828.8031-3-quic_devipriy@quicinc.com>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com> <20230404164828.8031-3-quic_devipriy@quicinc.com>
Subject: Re: [PATCH V2 2/9] clk: qcom: gcc-ipq9574: Add PCIe pipe clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: quic_srichara@quicinc.com, quic_gokulsri@quicinc.com, quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com, quic_anusha@quicinc.com, quic_ipkumar@quicinc.com
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org, andersson@kernel.org, bhelgaas@google.com, devicetree@vger.kernel.org, kishon@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, kw@linux.com, linus.walleij@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, lpieralisi@kernel.org, mani@kernel.org, mturquette@baylibre.com, p.zabel@pengutronix.de, robh@kernel.org, vkoul@kernel.org
Date: Tue, 04 Apr 2023 13:12:03 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_131206_691714_C3083DC4 
X-CRM114-Status: UNSURE (   5.73  )
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

Quoting Devi Priya (2023-04-04 09:48:21)
> Add the PCIe pipe clocks needed for enabling PCIe in IPQ9574
> 
> Co-developed-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Anusha Rao <quic_anusha@quicinc.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
