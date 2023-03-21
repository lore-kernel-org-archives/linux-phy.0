Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8F96C74A5B
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 17:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJXjOEZ4B+Gpi7a6eYZ2Ei285yLzHruqmzvz2fZVssY=; b=A/8ZpsYbN/fkXS
	0Hb7Arqs9pXq2S0cClbTQDFKHoP6hAsYFAQOmgNag/Vx3V7kxZcIzjsP8W4ALW3+j7GJQv7E2QrYp
	VrNSY+DuDsTIpdMnKOiUk5tSU72ww2lCoGCodTcq57hzDpAkXd9EZxJHDcMfJY2r3PWwvOEH3xPum
	7Bugg+ZZL8eBoq3zT0WKvrxSNSyG/PnzozB1ccb584LMMJPHd8Sw0BKC3cLjmJJmSoA6uP2CfwDAy
	jyY+T+dmQWgp5V95G4qG0Kk6UznX3PVR3mZhx2PtaIvTsTMlXXWGKRhNiZUzzK7oNOCA550ShXrpQ
	8P/v5BAqY0k0tJyuiPRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peg2x-00DGsJ-1i;
	Tue, 21 Mar 2023 17:45:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peg2u-00DGrm-2k
	for linux-phy@lists.infradead.org;
	Tue, 21 Mar 2023 17:45:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 686FC61D70;
	Tue, 21 Mar 2023 17:45:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2931C433D2;
	Tue, 21 Mar 2023 17:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679420715;
	bh=N3J1/tOTpmUVVtlZBsmsKwvceQFZJ+nVYVRndnoaBKc=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=VIF/lRfRgRLDv9oGNCbhKz07Zf1QpSuheZkRJ2MVg7FQqLDg5eQGQDXRKn2WqNq+h
	 n4ZHRqtdT1MvnAdm2aVgQlZRUPO2kgvoWUS/EDybdaLdR0rM8B7Q7Ux+3IPmoPlZyi
	 2cqqEXrQxLNtYywSUpec6MidpatcMs+F8fEAWgfcYzLACVtRgPVBU4R4LvEMrbNP8w
	 z0uwcfO59LQmRtT4OS9cpQ8Fxu1VaK/EjQttg82pJS9d86XBbSMV/1w/zuDG9p3eH/
	 L/p4PMkS1nBpEbUIVWfiSrbGBhxF4sbMbWcmHsIiQHnf5XX1mH63KxRhHa7JlQWMWo
	 jVi49K815wd7g==
Message-ID: <a1a827bcdc4bc6ceb50bd1cc6d47df66.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <24293be77ccdcf5e9b1fa0fd219de6152f234616.1679388632.git.quic_varada@quicinc.com>
References: <cover.1677749625.git.quic_varada@quicinc.com> <cover.1679388632.git.quic_varada@quicinc.com> <24293be77ccdcf5e9b1fa0fd219de6152f234616.1679388632.git.quic_varada@quicinc.com>
Subject: Re: [PATCH v2 4/8] clk: qcom: gcc-ipq9574: Add USB related clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org, andersson@kernel.org, devicetree@vger.kernel.org, gregkh@linuxfoundation.org, kishon@kernel.org, konrad.dybcio@linaro.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, mturquette@baylibre.com, quic_wcheng@quicinc.com, robh+dt@kernel.org, vkoul@kernel.org
Date: Tue, 21 Mar 2023 10:45:13 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_104516_954761_7426396C 
X-CRM114-Status: UNSURE (   5.85  )
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

Quoting Varadarajan Narayanan (2023-03-21 01:54:22)
> Add the clocks needed for enabling USB in IPQ9574
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> 
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
