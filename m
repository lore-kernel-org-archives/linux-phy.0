Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99C79C7EE23
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 11:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jz5+nZwxfwuGgMV1t2AOu4d6agD28GefE59Cw9r4HYc=; b=kIwTUpzL3Is/fY
	m57zkgZI/dfI1vfepR78O9gixXoI2mH5fETMBRpIRhNAcnDt4MqKtL5xDn+jJIflDj7QFl33qI9Cl
	Rk8vcH58TRHL49Rdq6zi8Nz0POyWIsH7Dw0nzF2OUBZ+9ANEA5jUKUY5vnaBb7kgpixyEpXef32tV
	HhqzCrdEv9u1hUu3HBonErureG/PAy0mZhfSJlS4RI8YhzUngLUQBqNYI11KvBLTwsNcRhGTo5oip
	we5S28pbWF/VQHrlww6Q9j2Cbn+dq0Hfz2JWZcrH0fdSTGsjBrHe+b+1J4zzLVup7fRgSUiSw2YA0
	cnTjhM4RtoomMJB9TmQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xtR-00Dj6j-0u;
	Tue, 30 May 2023 11:52:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xtP-00Dj65-0Q
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 11:52:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A9A1662E82;
	Tue, 30 May 2023 11:51:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C45F7C43442;
	Tue, 30 May 2023 11:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685447518;
	bh=ADHPy5/jA39vD36+Oqj7ag/+zmUCqpdbJbeR+nWL7x4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SO5fKTc6MqluiTuhZQ1SKaaNMUYn7QjiMbh+AaQJATYVX2FJF4bMQLPDjHvDLbb+z
	 0yntORvzQvw6qh6Xu24aQPNgMcUNMV2ZErfhaqBXIuMUTQUslMDnKfy0y82QHrD6kK
	 /QGBbVeYe1iDCkupEnPn+Zo+iz/0yXqc/3EosrRZt1KPSnobHXCTFXZVgt3qU+I5jz
	 aTJkGfgw3DCIlAah9o700sIkYFkYYxifYRkNVex8FPxY1SHANpce52KtI5GgLEcOpm
	 ukNnwoG/HEcoxIMSIPYfxNcnm96vdVnxH6xqkRUiVfoGO/bgED2GkNMDWszAB/x665
	 FP5Vt/1y59JHA==
Message-ID: <c22c21d3-b34d-7d09-1302-f67adb9ac3e9@kernel.org>
Date: Tue, 30 May 2023 13:51:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 4/5] dt-bindings: phy: qcom,msm8996-qmp-usb3-phy: drop
 legacy bindings
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
 <20230521193635.3078983-5-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230521193635.3078983-5-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_045159_215367_CFC14137 
X-CRM114-Status: GOOD (  10.99  )
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

On 21/05/2023 21:36, Dmitry Baryshkov wrote:
> The qcom,msm8996-qmp-usb3-phy.yaml defines bindings for several PHYs
> which predate USB -> USB+DP migration. Now as sm8150 has been migrated,
> drop the legacy bindings completely. No device trees use them anymore.
> Newer USB+DP bindings should use combo bindings from the beginning.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

You missed at least DT list (maybe more), so this won't be tested.
Please resend and include all necessary entries.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
