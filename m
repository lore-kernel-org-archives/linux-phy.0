Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D524EEAA52
	for <linux-phy@archiver.kernel.org>; Thu, 14 Sep 2023 16:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LDOQFNPIfkv9VleBRnPM7l3bu30ORahK0zX42pWLyk=; b=pLnEfEYt+Lkvnf
	fBsd5Uyy0P/ZzPkHSzXaRsxElwG4e9COwX4QzumMK2ia+FUGObpmvQ4CuHEJYsAUaidDv3/T0SQ3H
	duAWAFyal8t4OI1o09GbxIHlczyFA/7k0IxOzUrr+6cQ5vIK9E9duRMsjEQ5w/cyJX7Iug4SfNxkL
	SU3KmIHG4cekdNlXRyo0h+FRPNnj06+/SPyffmg/p+hLgyJyJ1+2CpjhFZz9WPPqEAQOsc48mJaCG
	PhBnNBSw0xZKSYs86SbqvzOB5zZs+LWIpltWR55NsMXHD0JiGH+XFl/ymbuWO5UTt1+rq0LSjjbP2
	mR5sS7vXBeY8MVnfkjrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgolh-008qfC-2z;
	Thu, 14 Sep 2023 16:00:37 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgolf-008qe1-2T
	for linux-phy@lists.infradead.org;
	Thu, 14 Sep 2023 16:00:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 31CBECE27E2;
	Thu, 14 Sep 2023 16:00:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0F7CC433C9;
	Thu, 14 Sep 2023 16:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694707233;
	bh=Pq+JZ7AOCNCHzsxRrec+4ynNFyDZYmXwiQzuhBHdAfM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MoeSqVf+7wLEvBQV4am2XJiWhxokbKUEsGzb0wdVF5bcBRp3qeZ3M1hJp0CgSfwWb
	 VrnuPRv7CQ6o7ixw3M22UOFVgddQt3c9U3W56hmHdWdhU7yLeZ0GD0EVhSWCJ/BZRG
	 gra3WVTi3+MGtEkXalHQ8+cFJZNgmq5E6gJXKvHlZyNOI8MEPsf6zce3G6XD3+bSeZ
	 3Urr1QZPJtj2tToOICPflJnhi7dWThZCAUbyKHjCl8tS41PJkUSj6yRow+OdD4/tgP
	 Sc/rsIz3LbRreU4yTJHjm+519mBWesiagPz5/Hhun7Y6X+G3nJtlI9JcUgsr7Bd8RH
	 Sf5NOCNx+O4LQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v4 00/10] phy: qcom-qmp-combo: convert to newer style of bindings
Date: Thu, 14 Sep 2023 09:04:21 -0700
Message-ID: <169470744892.681825.5621004293047784598.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
References: <20230711120916.4165894-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_090035_980505_48391D4C 
X-CRM114-Status: UNSURE (   8.98  )
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


On Tue, 11 Jul 2023 15:09:06 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made me understand that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[05/10] arm64: dts: qcom: sc7180: switch USB+DP QMP PHY to new style of bindings
        commit: ebb840b00b7f9fc15153b37a7d9ec5b47a5308c1
[06/10] arm64: dts: qcom: sc7280: link usb3_phy_wrapper_gcc_usb30_pipe_clk
        commit: 70c4a1ca13b333b00e01266d299605fa1041b0d5
[07/10] arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to new style of bindings
        commit: 36888ed83f998c3335272f9e353eaf6d109e2429
[08/10] arm64: dts: qcom: sdm845: switch USB+DP QMP PHY to new style of bindings
        commit: a9ecdec45a3a59057a68cf61ba4569d34caea5fc
[09/10] arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of bindings
        commit: 0459c56e538bd4d8ed7f128d7a50a8990cbcb7b8
[10/10] arm64: dts: qcom: sm8250: switch USB+DP QMP PHY to new style of bindings
        commit: 1a47520b314a0f201fcec8c741ae60608380e78c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
