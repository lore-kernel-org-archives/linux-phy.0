Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00709C5479D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Dec 2022 18:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+qD2dfPAprmVLi00CfKbMCqqKCCEdtkM7eKis1Bv3Y=; b=ST/116hYlawRqs
	KSWuqpHPEadh8tdN9CwV2mvWxNnALk+RF/CXUo/HlfWmvZFArL+ZCmtdJDQb8qUNaGTu/DkqIxWpI
	Ujr5wgxG4RKxqw2WGvuBWRPfJO9dJdjS0DedAUAD3tVV7wrLQfxShH8DK17n29psPndCNNq9w3SKE
	RhGsWgAJiQLzDJWS7lAKdGVZOWnifo+Hsg1eR819efyReCiBr9uukGzVPbCRSiJdem7PnTwjFL+Ie
	DggD4bPyqL2KLGOuY6c8XB7QuSJpg20jR2CRm6XpkUbxJo89I3Uwf25HR524klDTU2WpbBipjcMSX
	81xrSRA3nHHN/+rm1cPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAEJA-00F9lt-9W; Tue, 27 Dec 2022 18:04:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAEJ6-00F9il-7B
	for linux-phy@lists.infradead.org; Tue, 27 Dec 2022 18:04:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8C41C611FD;
	Tue, 27 Dec 2022 18:04:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81420C433F1;
	Tue, 27 Dec 2022 18:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672164247;
	bh=Sk+eRGqbQxY+FkYS/vPbI7730UoTKfjHoqFEEZ/bhcY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LRF9zjWsiFmhlsp2NvnRSHpuMWFDFW4OIUBf6FUs/2pGw12TW7AeYRINA+L+nO7Rj
	 dNmi/u1ZrxgtjLy0zfvYZpH2kRzIsu+mpw3fujrZtOfqx9HCEyJmUMK4KYU7Nq96GM
	 nc0zqaSVSywHZFyKhzgO7zrS4AeV7zstvaepnLnbs8EzgjqSMnmdG/GToDoPGgH0rf
	 7RgrH8zLU4F4F4b5C2zCFEqIPAw9x/lQuFlQ68KXNSYQQbFgGXpF9GCmcYu4a8aySw
	 +spmdIcKEweX7wO+XvnBGooeOX8MRRtvfGShGorjDywKqUbCDxb1SHVkC4hql9zSwj
	 tDp7M0eagvhnA==
From: Bjorn Andersson <andersson@kernel.org>
To: dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/3] phy: qualcomm: pcie2: register as clock provider
Date: Tue, 27 Dec 2022 12:04:02 -0600
Message-Id: <167216423712.744668.9651166253347600955.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
References: <20221226031059.2563165-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_100408_508455_C7D38948 
X-CRM114-Status: UNSURE (   9.76  )
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

On Mon, 26 Dec 2022 05:10:56 +0200, Dmitry Baryshkov wrote:
> On Qualcomm QCS404 platform the PCIe2 PHY provides PIPE clock to the gcc
> (Global Clock Controller). Register the PHY as clock provider.
> 
> Changes since v1:
> - Dropped 'phandle to' from supply descriptions in schema (Krzysztof),
> - Reordered clock-related property definitions in schema as suggested by
>   Krzysztof,
> - Dropped extra empty line at the end of the schema (reported by
>   Krzysztof).
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a clock provider
      commit: 977e9262c3542e87b513d4dad4c57b2c85e16c8c

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
