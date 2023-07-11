Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 650B4EB64DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 04:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joq4M34dzwDHTBV66G4TATfcjiBG86tNcGc1f5kYJLI=; b=ClqbdC94IrLqsa
	W1ZkeOR/rwBL8XvcnjFDdaAYLBw+RiMR6A4zjP6MM0e3wSko4qmGdCVege11CvRW73BZP6STIEhXy
	d+2ISswmaO13gj8ncehcr9FX06TZ7TDKjI6Pn+4FW3G350rWpyIOcCE0qZloPtDw8gAc1GdzgZkoi
	+2PiCEWCXLbFrWwRxx+1Wur/2CQtLCN7uoNKBOGFIEvSZGzM4/r44dX95+5X5Pg62NgBSe2/+oQOn
	isrl2kGY8S97AxRc6unfl9VGQhhqByafSzbech5/B7W3e2n/RWbvnIsDeLouLrqXzj4MGPbl8Fm6w
	3W6RTX1A28ncFrWxpsZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5TJ-00DhOx-0C;
	Tue, 11 Jul 2023 04:59:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ5TF-00DhNX-36
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 04:59:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8E38F6130B;
	Tue, 11 Jul 2023 04:59:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77F01C433C7;
	Tue, 11 Jul 2023 04:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689051568;
	bh=BHYRB7fUcdE8isC61HuBY+Z3fojLdw0VHXO4sAwpFSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=thTFNZ46dEEA7vRiS3KRN2uz6yvGmc/9bHjQlEzve1wt3AoFfSXd1+7OXevLsstVE
	 w/ndNU6yOx+5Tu5AHEoWfLf7VyENjqZ8UmsPZ81BB0LmPJi5UVdfQwYPjOwlwu5xUv
	 12joYY9b59xxn5GydiKGEJzrKa+tRIItTK9XC8xSBP8DYjA90cI/ooqde3vae0HRgP
	 QneWL0F+Z8TWmQAckKf1OsKvDEnmz6ALlaFnk5sM3slNIyu5FuxR59aA+diWRkW6bc
	 NeSNXytogeyoeT/REqp4VuMCUDIzf6hAG2y64DK6KCn8J5dSK8BcOspHYeA7M2rr1J
	 PJkoKX2TmZafg==
Date: Tue, 11 Jul 2023 10:29:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 01/11] dt-bindings: phy: migrate QMP UFS PHY bindings
 to qcom,sc8280xp-qmp-ufs-phy.yaml
Message-ID: <ZKzhqxBu5my2agdp@matsya>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
 <20230523140622.265692-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230523140622.265692-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_215930_041068_4289E383 
X-CRM114-Status: UNSURE (   6.77  )
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

On 23-05-23, 17:06, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,msm8996-qmp-ufs-phy.yaml)
> to qcom,sc8280xp-qmp-ufs-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.

This needs rebase as well

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
