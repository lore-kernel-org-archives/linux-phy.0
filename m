Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD0AEC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 18 Oct 2022 03:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMxU+g76jlcLNRWQW6d38Mqkf4PI7BEYlINqN2IF/W4=; b=sCS48sjTZGEueK
	x4TkoeRW5ket2VPEgvuL78tfyPsnSin60Xy1Q4rqwOi3Gs9ai0tKtmWVSTOt2rEueAEsJBKUyEaEY
	F0JMxhyOTgJ0NzvDvOI0JmZzJ4CIKQtpMfa7klbKLdcQ9M7J50PeeZaxzshBN0C+oGAvav9c42eKI
	KyNIKF8ND5iAIDs9C3GwJhqO96IL58+pnfVPttlHkpBwHfdgLuv1yjqKBUIQF2y2YmPwiclq8WvVI
	4uq19QYEiq1jfknQW2qmhjhRy/1wX0myV/IlkeDC6IpglG+A5eUd2AW/0JYpKXCHivzZuj1JT/zu0
	eN7WSjdgJnTBJ5Iyiedg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okd3z-001qv5-BQ; Tue, 18 Oct 2022 03:14:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okd3x-001quU-Kn
	for linux-phy@lists.infradead.org; Tue, 18 Oct 2022 03:14:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DF4866140C;
	Tue, 18 Oct 2022 03:14:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC55DC433D7;
	Tue, 18 Oct 2022 03:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666062880;
	bh=jrFTSkSw8/OLP0A8Fwb4P0GAlBszX3caoZ5KrK3ljEM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e1+t1IhIYwzgwbOkbSNMO/bNRkrBjYOYiNqurdi+LW8vyuZTF8jIPt5M/oVo5mSOR
	 WkdS8gCf1OH/kk0yuvQmkT6YrkvpnqwMVVJfQT4aYAd6pO7US7MQnBKMU06yOBOckT
	 9czBaAsTEHwTzewgU79gXPBG+s4Xt9Nht+kYlBOUBQQ5fEp8N5ih7Yx/nwwbTC0Ucq
	 ckqMKYZhEaiHHB3bHdvu1HklqxMg11i7RqEk4IjPtqMmuhRu331GY0WHVwbpE5o8v5
	 SrboLXhxOplLDqLMFpowRcVjxYXXO8kdN2CTgKPAVeSvdKqh8rkKdBfR75Pv7ITKTM
	 u/AL20LuHTB4Q==
From: Bjorn Andersson <andersson@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	quic_wcheng@quicinc.com,
	agross@kernel.org,
	quic_kriskura@quicinc.com,
	vkoul@kernel.org,
	kishon@ti.com,
	robh+dt@kernel.org,
	Stephen Boyd <swboyd@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Doug Anderson <dianders@chromium.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Cc: quic_vpulyala@quicinc.com,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	quic_pkondeti@quicinc.com,
	quic_ppratap@quicinc.com
Subject: Re: (subset) [PATCH v13 0/3] Add QCOM SNPS PHY overriding params support
Date: Mon, 17 Oct 2022 22:14:30 -0500
Message-Id: <166606235851.3553294.12620286711674222439.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <1662480933-12326-1-git-send-email-quic_kriskura@quicinc.com>
References: <1662480933-12326-1-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_201441_752031_5B54476B 
X-CRM114-Status: UNSURE (   9.37  )
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

On Tue, 6 Sep 2022 21:45:30 +0530, Krishna Kurapati wrote:
> Added support for overriding tuning parameters in QCOM SNPS PHY
> from device tree. This parameter tuning is required to tune the
> hs signal on dp/dm lines for electrical compliance to be successful.
> 
> Changes in v13:
> Fixed NULL pointer check in driver code.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params for SC7280 IDP device
      commit: 3b08e3fdf056cf30ecb1413d2bcb1353a333024b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
