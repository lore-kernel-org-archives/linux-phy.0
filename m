Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3F9DEE4996
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 14:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FRxFAnWs8SrQVgj+OjYSheQsLR64Bncf3xqDzlzZhw=; b=DMPypx4lbsyvy7
	GSGLOtAkLEz8HB6MtmYJEUY0r45IdjPB/iVY+rQOylt6Rj3/GhdfiHm0lBYjbdM3JxigAai/M579O
	UtkCFaQYfKs/BtxUlnNIZJ92OwbiQ1YZad/DVw2kxDjubfZfU7hBQsWZY7YyRBWC6HHYHt9+WYjm0
	QKo2SjEEat4HxLQ8wcjYQ6yRuVi/Vu/7RdT/h6RTaWP/BmJglCiYWtYTCa6KO9GORiJh9NKb3ERQz
	/tut3DzvjxPWlyLX4jYC/6TXBHLVj/kXrFqxmakKGUb/CK/rZMA5DEQMOxX2aZRWV6FZbVHttzvqb
	jDqdK7iKQcIoQ39qePlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSNk-00GD3R-1c;
	Tue, 22 Aug 2023 14:29:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSNh-00GD1b-1e
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 14:29:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 11ABB65934;
	Tue, 22 Aug 2023 14:29:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24B4BC433CA;
	Tue, 22 Aug 2023 14:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692714556;
	bh=/oRO8tGRBpVCWe3MdpLqdfhWpLbtOHmnqujYSWseS7A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LA60ROlNtx5Z7R+ttVGZux7+k+mjl5EYzYLEJ5QheAjsjIoI3/YlNIimB34t6qUlI
	 BNRk/2Z3M1aX4V8Slyr3zStPy52yuXXaIoHAla/x2wU+pFfhGReapKA03bMSZ2yS0J
	 AUeyIG1Nz4xWO69OAb7E/51Ose89o0LlIRjELDSfc7Sr1Lb3KeCUrYfAsWYo+RaMI2
	 1HC2PdtcZmhJpfh3R79Blac1GMSx9I0j2ZldaS+u4fvb3OBjCQJA+ofVNoeL04S75z
	 mwWyrLNDbixrh2necaa4Z9uaOJDvdf5r0sS8qaZJ6Nrln+9Xmh6xnzyKkrrZo2wdL9
	 XTE9H5K5oSPig==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20230820235813.562284-1-dmitry.baryshkov@linaro.org>
References: <20230820235813.562284-1-dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH] phy: qcom-qmp-combo: fix clock probing
Message-Id: <169271455366.280543.14057160725064934514.b4-ty@kernel.org>
Date: Tue, 22 Aug 2023 19:59:13 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_072917_594774_B1AEC5A4 
X-CRM114-Status: UNSURE (   7.81  )
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


On Mon, 21 Aug 2023 02:58:13 +0300, Dmitry Baryshkov wrote:
> During rebase of qcom-qmp-combo series a call to devm_clk_bulk_get_all()
> got moved by git from qmp_combo_parse_dt_legacy() to
> phy_dp_clks_register(). This doesn't have any serious effect, since the
> clocks will be set in both legacy and non-legacy paths. However let's
> move it back to place anyway, to prevent the driver from fetching clocks
> twice.
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qmp-combo: fix clock probing
      commit: b83eb8ba2ab9551217ed36320b8999db2f351e57

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
