Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE4AC3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 16:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyK2kgQKM+e5fFz2RpNzMoK2D+bbIj3xltSeZS94XWE=; b=XTJZMcexBtdQJn
	wCHhJFT5Kv42aEyR4X1W4UJ/H7Npjxo9kLV/uUx1KkfrKQF+gZAnR7Eavwz7EA1p03LmzGghBpQ3s
	1WlRJOQMzaTg6usIKrV1UXYeflo/Zem7m+ZqLTIT7M7eg/8JDDt5xE5Evq5MD3Q3UfvC12e+ovlQZ
	Zhx7N7Z5MUR9t2m8Bh4PWxJFzigih+gp4tvv7uFJTLPdTQMLNNVeq4Zm3CTikdL3j9TI805O/aaF+
	JGRFdLOnnP9Bo3ZmLiZDMQUGXXJlmdZQ6FLnktCt3HsrZyUqzdr5rI2se7DgnxaIezwnqOjQgQeQA
	VYLN3ZtnjJqZ9FI+DLwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saeDV-0000000Daey-1Kcn;
	Sun, 04 Aug 2024 16:36:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saeDS-0000000DaeR-06G7
	for linux-phy@lists.infradead.org;
	Sun, 04 Aug 2024 16:36:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3B04360A7C;
	Sun,  4 Aug 2024 16:36:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54233C32786;
	Sun,  4 Aug 2024 16:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722789375;
	bh=fr/EQ9N9Nwyvf1xzY2thmnfz7MjDZQZepdI1/6C2z0M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dr4jxv8Dl/KILm9hJhBkA7xWEyI5yNKmMgQI6gDhXFSecxDkL3iMqOfEIXqvKk69u
	 kBc4NfNIedd5mCIp6q8sz+P+KNC+jOGAZ0yZMrXsKoBJZjSmOopA0/VuBx0NkTx7UC
	 Bs6+kYI++x2K5mroIrIhV1bNrR/8q5BL4QPpQQM25VPTEoYjQl5lmwDPfho0XB38fp
	 WZRw3Ga+dcikCRvsHJam0mPRYtdmWb3Wm6O3u1aRKwmeu6+H39Bf6JqbMJgc8Xn6k0
	 O1euC8g+LbXufjaIfbABLXybiOJ/8ilzQygj0EgU0JeEdrAcktu4r1/k0wJ9tqY6bl
	 jlsFglFbvDTLA==
Date: Sun, 4 Aug 2024 22:06:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: Re: [PATCH v2] phy: qcom: qmp-pcie: Configure all tables on port B
 PHY
Message-ID: <Zq-t-1jfSg3RmLKW@matsya>
References: <20240801-phy-qcom-qmp-pcie-write-all-tbls-second-port-v2-1-6e53c701e87e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240801-phy-qcom-qmp-pcie-write-all-tbls-second-port-v2-1-6e53c701e87e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_093618_151931_CCCAF77C 
X-CRM114-Status: UNSURE (   6.65  )
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

On 01-08-24, 18:54, Abel Vesa wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Currently, only the RX and TX tables are written to the second PHY
> (port B) when the 4-lanes mode is configured, but according to Qualcomm
> internal documentation, the pcs, pcs_misc, serdes and ln_shrd tables need
> to be written as well.

Sorry this does not apply on phy/next please rebase and resend

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
