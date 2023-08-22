Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CA0BEE4993
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 14:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0XCPnl6tUYNg55dHcRyd/2qCT/pb6j7u9ZW6Y/2YuM=; b=lKq6H5gP+QiloG
	EVz01Ob1bUSalKZHPIItOMkJAz6tkQrs7TELXqT/yCrEVjoPFtdZ/oU43RkySqJjHSVMaeqJztJ6v
	Fqe6WNyH9vjcot2ySFhxpdDw0bQCkIcRVM9nkajkbEZCMJbXoGGWR4K3PxVRM7mV19dFNO6NiCWpJ
	DNK7bzBrdi1oCxvXGaTPmeowkNOvJ6hX4xWEFKACBsbiRe0PA/m7DFfj5drFliWbYEkid2kgc9zuX
	DqtjmYOOVykO1uB+/7i13O9vEuy4qQvjABCQGDBis3yYHxOxdwHepB1TxdOCaJODZbAp3QJ/QYflk
	D+wjxqA99oBU7pY434hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSNi-00GD2O-0S;
	Tue, 22 Aug 2023 14:29:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYSNe-00GCzS-1x
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 14:29:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 144336592B;
	Tue, 22 Aug 2023 14:29:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82E76C433C8;
	Tue, 22 Aug 2023 14:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692714553;
	bh=u9i/0PUen8f4rveR8y6uxO85lsX6aoVBjb6AiC+3E2s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=uejb3yBbdq2oejaRhdnGIf6fYrLDQ2MwbWT+/0a0VhwL/LQUcprMuyMPwqmFK38Fp
	 Q3wITevqwf9VzF/EjJlbcjKw4DBhqo7fSWJ8/dA8DFwsUTpLn889SpTw2+52E5W2ep
	 ecSWcE6p7g0yCXp0Rxh+T0UrWefZdi2phNzAPpZDBtk1HQtrBgXsoXpvYqsM2cbPUH
	 Sn9snYp/YViH4885oe4vNCcQF/N9RVQMvp+edRdfZwP1RDoCam7uihK1+cXJIXMqc4
	 8k15ZhT/S+V8ihL3FMOfEjay0QZlbNo4n1KfhgYgcvaA9DguFmh2j8Izr09V2rYKWu
	 4YIa5ZfiGI3jA==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
Subject: Re: (subset) [PATCH v3 00/18] phy: qcom-qmp-pcie: convert to newer
 style of bindings
Message-Id: <169271454911.280543.9764973402688206000.b4-ty@kernel.org>
Date: Tue, 22 Aug 2023 19:59:09 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_072914_681680_4FD9CA00 
X-CRM114-Status: UNSURE (   8.13  )
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


On Sun, 20 Aug 2023 17:20:17 +0300, Dmitry Baryshkov wrote:
> Reviewing several patchsets for newer platforms made it clear that
> having two styles of QMP PHY bindings causes confusion. Despite binding
> documents having notes telling that old bindings should be used for
> older platforms, it is too easy to attempt adding new platform with
> older QMP PHY binding. Thus let's have just a single documented style of
> bindings.
> 
> [...]

Applied, thanks!

[01/18] dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml
        commit: 505fb2541678944ae90e110088811eebba883efd
[02/18] dt-bindings: phy: qcom,qmp-pcie: describe SM8150 PCIe PHYs
        commit: 377107bcc64a446e017939cf6b59bb97873cf967
[03/18] phy: qcom-qmp-pcie: drop ln_shrd from v5_20 config
        commit: cfe0d203813420e643db08264679982a31fea95c
[04/18] phy: qcom-qmp-pcie: keep offset tables sorted
        commit: 86f703762a9b6c1a8e3ce9fd62fd5353379be3a0
[05/18] phy: qcom-qmp-pcie: simplify clock handling
        commit: 067832dc0387f12d264f449f9eba63cb587c21c6
[06/18] phy: qcom-qmp-pcie: populate offsets configuration
        commit: bf46fa1dafacebedb9de56626fdfa71e6198cfd7
[07/18] phy: qcom-qmp-pcie: support SM8150 PCIe QMP PHYs
        commit: 4807ff70e228b5e9c6ea6c7c5651a3fd74a5cfda

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
