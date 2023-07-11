Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91CEDEB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 04:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBwHjHAk3XGmdFrKv2kXY3Nw3lfZl50UH/joNiSZyT0=; b=ULFvBl2GEEbm/D
	KM5zvWfxn2R5DBw6TKjhaQ7MVS0Q8IVosr2oQblLhxHUuIQROj7UhiMOTZ5bMhKPpKwDAiBlRyO3x
	HwB5pll3FA13qE22asNKbTFUeYbjAYfxaXxVnOhyctKfOJ39nufoAPMlL64pahoIFtOn6Wf2rWy3O
	a6M3u+botTUWvxZukvxXsQvOY/Ikx15vanSosFYTVkfS7XKzJzDLDH+rwrYGi2i5KncXMt4CJnetk
	RywNjSi9amKYeBZqroVG9hUgR64ajA1FkFCQ7hfY8NUBHtBYFJPfuPOy3bbtGJV+YEOmTH624u2O5
	8qF7MbGE/B/aFGWMQaGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5J4-00Dfjb-0I;
	Tue, 11 Jul 2023 04:48:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5J1-00Dfj1-1G
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 04:48:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A9F6161302;
	Tue, 11 Jul 2023 04:48:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DC02C433C7;
	Tue, 11 Jul 2023 04:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689050934;
	bh=syBSesJz4bQEud1x/w0OsK59AsM6Aw1rlTZhs2Zc3nY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Onprru4RGs8BGok5EVZZeLYazS2vYrBHePqsHz3Qf6DpoPCN3eYX7ABqqAjaaUNJc
	 Ib5UuQIvmEmQkXITD1IWrGEjs6CxMBP9j1I+CpAifl4D15aIUYu46+tY8QTDWAqdbj
	 8fXWWsMZy7+z1sPEhMsLzDpQI3ZVL69E4/1IY1uMHB44kq5vxt/JNSkOtc00NZbsoO
	 LQJgQCDVJqjJ3+qqUqrqOHG5ujCNg1Tx28tycTGyi/t7JDdF0hUC9cPiG8htT57l4s
	 xWEXsY9s4UdS5NKFXJIp/ENFkprVB+wHlVkAD+YwGkkiebskTdEnvcgi61lFJzRoKn
	 LIY4PTuxcV5ZA==
Date: Tue, 11 Jul 2023 10:18:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 01/10] dt-bindings: phy: migrate combo QMP PHY
 bindings to qcom,sc8280xp-qmp-usb43dp-phy.yaml
Message-ID: <ZKzfMZtaaaCb/U/u@matsya>
References: <20230521202321.19778-1-dmitry.baryshkov@linaro.org>
 <20230521202321.19778-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230521202321.19778-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_214855_498539_E6AAE84A 
X-CRM114-Status: UNSURE (   6.59  )
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

On 21-05-23, 23:23, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,sc7180-qmp-usb3-dp-phy.yaml)
> to qcom,sc8280xp-qmp-usb43dp-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.

Dmitry, this fails to apply for me. Can you rebase please

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
