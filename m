Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9073DC5ACB3
	for <linux-phy@archiver.kernel.org>; Thu, 16 Nov 2023 15:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWzjowa2CDDpIDRqB2krLo8OkswS9J7xoE2i1Q3OQ6I=; b=g3QNe52BQgA//o
	jqTU+diJlN+qwfqotODBHBdbm7XaIOckVT+xgslhdWU63Xk8WF+6h7jJHSp6V2YgClldxYP9gjPBi
	Rb1hzdJBIlKy6fUXRcQAjvocrRLIV5tr8/9O2qQG4l8dDNERA5Wm11VwEI1QQcMyRiv1hJ1Nu2F0C
	4QzhH+lexqn5+gbhBaEs/dJbk+a72PP32swcOVsIOuBJ5brbGta+L0hOlpKOJVUpz8Zk9Mfdyo/pn
	csSlnW6xFhJ1j9bcNkGCGdQt5mMFbbj+cE61h9RULKV+YJKY0K/xDvVTZMRwLFjlEHf7gJsT/++PE
	6v8EbBz6XGZnENprYeiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3dqr-003kf0-0Z;
	Thu, 16 Nov 2023 15:00:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3dqn-003kdA-33
	for linux-phy@lists.infradead.org;
	Thu, 16 Nov 2023 15:00:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 260EB61A53;
	Thu, 16 Nov 2023 15:00:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81440C433CA;
	Thu, 16 Nov 2023 15:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700146812;
	bh=l6PrBLJDmc84ulXQqyIUcQml/OreBNZEwB2nLOYE9xQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=D9lGiUnQoS3CEz3XVhRjeaTBbQGXOyFcXarfe7yNRZxnMOqm+ClbgnZabbwm2hqxY
	 cTxzzgJ7pCXs4DoEG/f1ui2U08A9z6uayLZa60yCxY8HOZXDIuEgGIfv9kZce6LRfh
	 9rH784618/FpAxEL2rjm004HdzUebrt4Ai8Maixut+HzpsrUOz1FGuf/fwQNr14Ed9
	 7aS8XVSnlaZoailkXinAxmY2eiOF7h9KYo8x7Y26qDFcu9uddopeFnPcZKYdSUHN2H
	 rSg7tr8xzfUD6DC73yx6/MS6ZIgXIDyDDEVWKmv5uVVDA3XzpfS9n8t5vscni10j68
	 ofR8bnfDNgjUA==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
References: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
Subject: Re: [PATCH v2 0/7] phy: qcom: Introduce PCIe, UFS & USB PHY
 support for SM8650
Message-Id: <170014680803.545052.6114642671955484471.b4-ty@kernel.org>
Date: Thu, 16 Nov 2023 20:30:08 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_070014_092465_51EFAA22 
X-CRM114-Status: UNSURE (   7.96  )
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


On Mon, 30 Oct 2023 10:48:16 +0100, Neil Armstrong wrote:
> The SM8650 PHYs are similar to very close to the ones found
> on the SM8550 platform.
> 
> Only a few changes in the init tables are required for the
> UFS, PCIe and USB3/DP Combo PHYs.
> 
> The Synopsys eUSB2 PHY is the same as SM8550, so only a fallback
> is added in the bindings.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document the SM8650 QMP UFS PHY
      commit: 8c91ef9883bfb5a6315917a7104dd1e06c85b278
[2/7] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document the SM8650 QMP PCIe PHYs
      commit: 9e3f381986f6be1a7199587f8921cbb7e89a733e
[3/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: document the SM8650 QMP USB/DP Combo PHY
      commit: 685c00ac4240c1205005f617916f68b76da78908
[4/7] dt-bindings: phy: qcom,snps-eusb2: document the SM8650 Synopsys eUSB2 PHY
      commit: 330df15dab25931c9214bfa279319755d2201d7f
[5/7] phy: qcom: qmp-ufs: add QMP UFS PHY tables for SM8650
      commit: 7c4bf8cb9d40a7222bb5d641979952b196707985
[6/7] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for SM8650
      commit: c954b6d347e78690f053342b2d2759c650e61a43
[7/7] phy: qcom: qmp-combo: add QMP USB3/DP PHY tables for SM8650
      commit: 80c1afe8c5fec68d9467c543551a0b2fddd463ff

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
