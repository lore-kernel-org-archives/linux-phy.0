Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A76D1C47DDB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 14:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7JULIvahTElvGIa4IWBHjGUusU9ZtM+n7SUqDfQPdg=; b=l/38Tm49LA8vOn
	eV1otlQZTcRKYDyiABPk5kHSN42Gud73fNpE3S/xYZUMq7aACgMMU0gudt7I7fpsb4X97/I8A48eP
	0QLfSLQZhPhSf4QiyUEp4hvIbUqirg/oAII8lUfpeg6rkCAhuZV9z0BLAQdl+dIkvTmxtDORk3IMj
	v248Pcdm6+R8yd5boos2EIHb5CLyKCbCb9msnPtCS/C5t+GwScjKvSqsvm/1++Tq+kb/kEg18SlL8
	bDGwXQ+4Pg7MHbrme8C6Nh3tfx2VTbz+10bZBwy+8DhbAhrNgXkxO3cayCrJ0Pejgdmfcc1GQG6Dd
	HkpohvriroBcQ88UNx7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHem-00Gn9Z-0k;
	Tue, 23 Jan 2024 14:21:40 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSHed-00Gn4B-1a
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 14:21:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5E848CE2F45;
	Tue, 23 Jan 2024 14:21:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E5E2C41674;
	Tue, 23 Jan 2024 14:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706019665;
	bh=WKRQ73No1XIRwu2KqkkEv1r+kkKq7aREKeLPaUxbAqY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=CtAV89QFv0xzENblAt7WHnJuu9MVJHmLkTbm/cuJbA/cvhLDjkhKYf399tf3B6x5G
	 n7vGfM0uFl1feFsr78vmbluhO644RLIWojIp7cZaJI/oxid4lL3KpjELcC/V4LFU57
	 Iy0/a9oDegibaJE61edB/jj0WpDYJ6cm2hTuvw7ZLZu0Rr8l+4gRD4cI7PVODsZcBO
	 6FBBr5+NSOA/4i4LTiElE7fACRLZCsWjsfdQajf6d34StF3/uJfrV0jQFh4aIjs76Z
	 1d5erJ3mxOuYKkj8OlAIyrXhby1q/xSijek+ojQ0LuCiUa9SQB4dQEdH48gjEAjKYB
	 TwB8HR0CxMSfA==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org
In-Reply-To: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
Subject: Re: (subset) [PATCH 0/4] phy: qcom: qmp-usbc: enable SDM660
 support
Message-Id: <170601966220.371263.7812920821998823049.b4-ty@kernel.org>
Date: Tue, 23 Jan 2024 19:51:02 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_062131_701614_845DFA64 
X-CRM114-Status: UNSURE (   5.19  )
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


On Tue, 16 Jan 2024 03:10:54 +0200, Dmitry Baryshkov wrote:
> Enable support for the USB3 QMP PHY present on the QUalcomm SDM630 /
> SDM660 platforms.
> 
> Dependecies:
> - PHY-related changes of [1]
> - [2]
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: support SDM660
      commit: 0ca5e2bf2f4753a879ed3f4a747ee5c947152838
[2/4] phy: qcom: qmp-usbc: enable SDM630 support
      commit: 78f2d7df63cd3811ef878e881fa017a20a648c0f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
