Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 801FFD0E6C2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 07:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuGMNjEBmdaU2F7/AA1i8KYfy8LG+2+rnmxWa963PSs=; b=LmRlGp2yX34+xn
	ud8HaZAtX9VCwnLrSwHBNy+IFZWEEFgBkY6sih5vC6RUQOsQopiG3V0+uYL4cDJ8s+7ngGLiXWWWV
	W9kExOrnObrEneXOxwQBRmPSf83WJ8gICD1Ct1UU7IKuX4tk8h3pgQRrzjPAWtiz3qcz2x4RY/SR9
	pCdBNKku6eYdfPTA06cqvO78EB2qJxNdqYwajDWpXjJSJG+cBOpm+vhGAiOr2BEKs77b15i+cpE8K
	tnG/oJggCyW2XS1MWaMr4ZR1A4+RCbp0rrGH1FOt1NMvobbmy4qWAt4HqNsRglx3MeP6OfbU2KQO3
	bzqamLni7Jplrmb1IVvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2n41-00000006Q45-3nj5;
	Mon, 21 Oct 2024 07:42:53 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mx5-00000006OJI-2Qs5
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 07:35:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A2040A41B78;
	Mon, 21 Oct 2024 07:35:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60D28C4CEC3;
	Mon, 21 Oct 2024 07:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729496142;
	bh=wybT2bUv36pflpIUF9oYJw/DtXVn6jl1SVHa2Dbie5k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SQAi490zPpFuqUV7lcumXm7ZrkdzQ4dgksxyjnRTfnGpsJce1tTfSubFoMZ4951za
	 CIkPmeIR/l17jNcyiFOged4raszJNDw9MkyHzDmcO0LUN6ufqY3r2OwQNmhKodKVrC
	 XtLIghQNXAEfcIMG65cin93GuFjkQv4Gyb/fGRTxBxGfbrOUz+vjjbL8dQ4TzUESjD
	 e4lOSo1Yy/PPkeFmHqli8p9FcKhC71gEdxWQrDhvAdIGYStyDyW9LxGgm1Nf091U0O
	 YT+IyRo+CugyUGR1xxcgfAx+j1xXe/1SrAQQ5U4vCtfcJvaFeMZt2w+tcckDfcYv0R
	 7KtVuImIn9KTg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t2mxD-0000000020n-2rH7;
	Mon, 21 Oct 2024 09:35:51 +0200
Date: Mon, 21 Oct 2024 09:35:51 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb32dp: Add
 SAR2130P compatible
Message-ID: <ZxYEV-hS9NhlnhYZ@hovoldconsulting.com>
References: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
 <20241019-sar2130p-phys-v1-1-bf06fcea2421@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241019-sar2130p-phys-v1-1-bf06fcea2421@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_003543_712472_920B4111 
X-CRM114-Status: UNSURE (   6.55  )
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

On Sat, Oct 19, 2024 at 06:44:50PM +0300, Dmitry Baryshkov wrote:
> Document compatible for the USB+DP Combo PHY on SAR2130P platform.

Looks like you got the patch prefix wrong (it should include 'usb43dp').

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
