Return-Path: <SRS0=mYmN=QE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AFEAC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 06:46:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DF15663215
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 06:46:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DF15663215
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcWaBngmtYL075M2Mq7dnLMnH0rvo4/aPy2Exi1A5uY=; b=JsUgn5s4Kupkzp
	rH1DgsPzdKzxWDcrRteL39F+GJLmuCKaLdZDxe+qxaskMEMYTxh9b3etvvNVpk0aJcdfoh3au2NRo
	lFEO+fBuZxuiu1F5DHT5J/vfrv1MSqHVf2TjgVF2Eh8LwHGLQHizwSb/buvQqgRECQBSwMbUyu5CN
	u02tRhPNaeg8JIOlnHefeH+tdMGQXvfxeVaePiqNcAv3AGWsJzKYXgjiFxaB34vluDEFvqEYdn6lz
	R4tlc8fGsvHyun+tP+yMKjNvMgRWKBAVqdEhhRdprP5dw0ylxinNqqnuTSqkdQLVzTaY/4ylKw5eJ
	8eplt4QHZ59xIHq1FkTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnEhz-003X4G-DZ; Wed, 17 Nov 2021 06:46:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnEhw-003X35-UT
 for linux-phy@lists.infradead.org; Wed, 17 Nov 2021 06:46:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D7A8161BD3;
 Wed, 17 Nov 2021 06:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637131571;
 bh=y2OiJMPQRyc+lScL3rg3mfbNG2sQH2Dbv4lfz+zJFpI=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=VDflQugwP/UdxV6VvW6jdFnDGTrIvWCG2qT4ibSrctcea/+iU8mqdtlw/JDibgUoZ
 BwE7WL7XfJf3WOnd7dPz4z7iRs7yJL4llHkzEbfRpp+kzIakbLJ9QhShz6UFSS4Y8P
 hy9o2/tMp+QdL8jVNoXz7HGUS5h4pH6C6bIl3h4pn+Lkn/IonAaR7JFkp7MAz5WJXH
 8zFmUweL5imMoCtR1aLoqZQyJNeE5c+XoTCqdCNm5AFY7XdD9NgLcjfGDywntI2fiJ
 JcGI3fEdfiZcemij0uEBgbcw8V5PUonZDoTtC9Hk34pI/vhTrI/5zw2ed8GtltmfUE
 tzQFD/NtBl8Ag==
MIME-Version: 1.0
In-Reply-To: <20211103234410.1352424-1-bjorn.andersson@linaro.org>
References: <20211103234410.1352424-1-bjorn.andersson@linaro.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: Introduce Qualcomm eDP PHY
 binding
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Date: Tue, 16 Nov 2021 22:46:09 -0800
User-Agent: alot/0.9.1
Message-Id: <20211117064610.D7A8161BD3@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_224613_017625_2B2BF9E4 
X-CRM114-Status: UNSURE (   4.93  )
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

Quoting Bjorn Andersson (2021-11-03 16:44:09)
> Introduce a binding for the eDP PHY hardware block found in several
> different Qualcomm platforms.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
