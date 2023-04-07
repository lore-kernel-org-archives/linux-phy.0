Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80085C6FD1D
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 18:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIhsA2rmyil7yqjBgXL6cJDAu3wXXUorj7zddIItJlg=; b=kV9jyfgrHgbKHQ
	f0nt5nLf3pO5nr0VA6RteqIdTL6Li1N77fLUlJbecwvks4u+SWjia+7FxMuY80maDRNomBjlepXCS
	mOHl6ScFrbBey0Pbn/n5dXnVOb/2Nm5jaEbeGv5wCmt9sSWoMzQvtE6RXyS5Fw5B+O+7VlBVvfZRy
	xlRg15KQ2kJ5WJVkmCbmRtgHRvZW0b1xIOt3k+AeXgS4+03SDwLhD4gkZZwQ4VTs7BgaY9VepuJ/v
	4b7iiMpvTAiU0OoHG8IUBTXKQMKCt9tnfb1c4hKuwkjuZ32j4uGea663RxZ5ARcCZ2yvBjSciBSfG
	Uj7/5/H6kyme8BQPRIVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkr97-00Av9h-0T;
	Fri, 07 Apr 2023 18:49:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkr94-00Av98-1r
	for linux-phy@lists.infradead.org;
	Fri, 07 Apr 2023 18:49:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 765E765403;
	Fri,  7 Apr 2023 18:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D83AEC4339E;
	Fri,  7 Apr 2023 18:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680893348;
	bh=6yx3kBkzOOFOIXrZ5IlOXinROnMpeUBN2SLNMieLd0o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=G7UiPTGKJVLey1Y31us6wLu6kINwZhvkpdpBmbqsngHbe2RUmy5IyYmcw4w9n4mGz
	 JTIujWy4c9nO48ZPu1oB0DjRcj1WIs7a3PTSCRMdqzkOsR23424wOL8IJYxo1qe5LM
	 xKQCmZuuyAmHAps61p9IXqSpWMBd7nnjjnIiqTu3m1MHZmf0uJgw5ky2G3JNkeppYP
	 7jTOYLiPsg24b/EFWV98/bu42dwHYiRz9xRcFMMnp/ddNtNpP2BV7TTTESXM6UzF0z
	 mOKsgAgbPH+id1BL+3Cr72niYRjcO9GQqvMQxvov03i5DyQCpatBmRhlYY0hRiplWZ
	 L8ir50CiwOSuA==
From: Bjorn Andersson <andersson@kernel.org>
To: tony.luck@intel.com,
	kishon@kernel.org,
	keescook@chromium.org,
	Lux Aliaga <they@mint.lgbt>,
	konrad.dybcio@linaro.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	vkoul@kernel.org,
	agross@kernel.org,
	gpiccoli@igalia.com,
	bvanassche@acm.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	phone-devel@vger.kernel.org,
	devicetree@vger.kernel.org,
	martin.botka@somainline.org,
	linux-phy@lists.infradead.org,
	linux-hardening@vger.kernel.org,
	marijn.suijten@somainline.org,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v7 0/6] arm64: dts: qcom: sm6125: UFS and xiaomi-laurel-sprout support
Date: Fri,  7 Apr 2023 11:51:55 -0700
Message-Id: <168089350725.2675207.12664655613060591288.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230306170817.3806-1-they@mint.lgbt>
References: <20230306170817.3806-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_114910_676826_40A8CAAF 
X-CRM114-Status: UNSURE (   9.50  )
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

On Mon, 6 Mar 2023 14:08:10 -0300, Lux Aliaga wrote:
> Introduce Universal Flash Storage support on SM6125 and add support for the Xiaomi Mi A3 based on the former platform.
> 
> Changes since v6:
> - Add struct for v3-660 UFS PHY offsets and replace the v5 offsets in sm6115 UFS PHY config to these
> - Set ufs_mem_phy reg size to 0xdb8 in sm6125.dtsi
> - Drop "#address-cells" and "#size-cells" properties on reserved-memory node in xiaomi-laurel-sprout dts
> - Move "status" last on &pon_resin node in xiaomi-laurel-sprout dts
> - Modify "&pm6125_gpio" pointer to "&pm6125_gpios" in xiaomi-laurel-sprout dts
> 
> [...]

Applied, thanks!

[4/6] arm64: dts: qcom: sm6125: Add UFS nodes
      commit: f8399e8a2f80adfac2e7f5dbe223eb428fdb6fe9
[6/6] arm64: dts: qcom: sm6125: Initial support for xiaomi-laurel-sprout
      commit: b76c8ceabe871470cee17990289e8dd39b96054e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
