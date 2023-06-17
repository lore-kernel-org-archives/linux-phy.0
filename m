Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD9BEB64DC
	for <linux-phy@archiver.kernel.org>; Sat, 17 Jun 2023 07:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmaaZhs+fybwA0ychGC4Goukb9ZDLI+lkvucnI/JQLA=; b=LlnEq7Nr7KkDUs
	PjTbZSYxCV4C6+cgKj5zoPf4U7s7UGjuqBRYiGMWbkZSF0IDWAX0n1PkuYN37zsO0txziMtQABFvj
	vvdKsTRqdvqAl9d3uEPTYSZtawEjfc2OPXJci+XKeCJ4TuKiq3U3aL+kizJklGEwZKnb07JAjTUPN
	IU7/2q3eIhz5bsQE8D48vZTKrzpO6XMwqy4ZxRJdb7LUeuvEddW8CdxDfuChaKjQtbWoWc2nutoYP
	lAcTi5D4v3iMOBfWhX8LixpvCK+jr2w3IUTD28JLinimGJpSQ+NmGVrhuoV0Hn+Tfcib95jctDPl8
	tanVxFQUH3t8gnSwT+6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQB1-002yRd-0l;
	Sat, 17 Jun 2023 07:16:51 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQAx-002yQh-2X;
	Sat, 17 Jun 2023 07:16:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 16D3D61119;
	Sat, 17 Jun 2023 07:16:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F6C6C433C0;
	Sat, 17 Jun 2023 07:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686986206;
	bh=SXMxzkupl69XgQE1gIRNMtbifDnHxKajI1lVuAlonhI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=pR9bjbOFinCB4jeZ+6kRKbxOCYZNNR4jPikGiYb/Q5EDZK7KRVBI+lFOSVwqD8w5Q
	 vzg3xmAjpYJg2W3sDGRBzkh90n734ANb7DUTsjNAXsziVxxtbndq+3S+dDcnvzsafD
	 7OVzrKCUKz+syiDlVQyu2xeffY/I46oS04G1wbKcuaKW4pPMzK1WJhuDZydpaeGGoI
	 r0PErEKExgQj0AkaSJ7EyT5HW8TcZTP7eRzXFB3iomZs8i0Z4bcAgBKeNo7xfq+tli
	 cT0NiW5cXDq1orS53xzviD4aONKfYKtwZMq3cfxGV64NOK/Nby6JO9MAyr5nxuNPRV
	 WuHcOk04Oh2aA==
Date: Sat, 17 Jun 2023 00:16:44 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Vinod Koul <vkoul@kernel.org>, Bhupesh Sharma
 <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>, Bjorn
 Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, Bartosz Golaszewski
 <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 00/23] arm64: qcom: sa8775p-ride: enable the first
 ethernet port
Message-ID: <20230617001644.4e093326@kernel.org>
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_001647_874102_DCA2A59F 
X-CRM114-Status: GOOD (  10.11  )
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

On Thu, 15 Jun 2023 14:13:56 +0200 Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> There are three ethernet ports on sa8775p-ride. This series contains changes
> required to enable one of the two 1Gb ports (the third one is 10Gb). We need
> to add a new driver for the internal SerDes PHY, introduce several extensions
> to the MAC driver (while at it: tweak coding style a bit etc.) and finally
> add the relevant DT nodes.

Did I already ask you how do you envision this getting merged?
You have patches here for at least 3 different trees it seems.
Can you post the stmmac driver changes + bindings as a separate series?

>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c     | 451 ++++++++++++++++++

Noob question - what's the distinction between drivers/phy and
drivers/net/phy (or actually perhaps drivers/net/pcs in this case)? 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
