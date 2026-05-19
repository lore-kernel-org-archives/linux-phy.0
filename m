Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB8F1CD4F57
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 10:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQYhq5N0DiStsR3W5GkpinM+Jx/nZ+jEVFBLKJQd/rk=; b=bQOWzwO5xcj1lw
	iHdeiUE5Tdc5WCozw2w+2/3L23VPwRX5kJV2TjaPWidmEEoEJxcL56uh9I76SKOEwOQKVTRI3CVMp
	FxBpRW5mf/znjeqXazRWSA5mFKeC97JLUgGTwNy/8IdPOLSUAJQ4uW3ZHxVWJ13fT1nXSADiXjH2D
	mN6/yz0Usuq2BpaZTkp7t9QyXjgtgPO8AaSLIfGUY/adDm9NHKQWmVRag1lFiRqgk6OHnmKPAmXfX
	/Py17V7s4xku7+Y2NGQQVnDazNThvsN17j7FX66RGHEEhzoritX3LcqaKagjbxK/JZeOxamqIgZrY
	pkU0CjVdxoVdhD2/V67w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPHvJ-00000001BK2-2OIf;
	Tue, 19 May 2026 10:43:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPHvH-00000001BJM-2cjm
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 10:43:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F236D41A9E;
	Tue, 19 May 2026 10:43:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9744C2BCB3;
	Tue, 19 May 2026 10:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779187418;
	bh=5Frg4kEBpL1XHsTK+mmKJI3l2jmo9pJ9ot0o29ZBy70=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ud/kidhP6C5iAoIr81Sgpel3wMbbQXALsE5XL7+YU5/0YK6zaB8r0VsGM1PxVNwJX
	 mUXhx+hDZOMniwqa/g3TzdTvaRRi+uEaQUvgNFfqMxsg7fzSYQp9tSWgWT5wdww1QT
	 XFdACWGaMID4VkhwXto9Q1EwXbI1U/Le7y0tk/CLm3Y4hUIre0QnQz5JkNfwxkg2xq
	 oTzJR8cT7Ea6Cm1cKhAXCuFwJw29qhI61T+qIsP9lx1bNjq+y0joOnHpCf63voGbaD
	 1pYM3GwXQu4+dvdmEugC1RcwC3be8TGN8CdBYZSqtjTFYOKfxDNzrru9fUOLVh92TU
	 O9EJJofbjFLuQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, fange.zhang@oss.qualcomm.com, 
 yongxing.mou@oss.qualcomm.com, li.liu@oss.qualcomm.com, 
 tingwei.zhang@oss.qualcomm.com, Konrad Dybcio <konradybcio@kernel.org>, 
 Dan Carpenter <dan.carpenter@linaro.org>
In-Reply-To: <20260227-master-v1-1-8d91b9407fdb@oss.qualcomm.com>
References: <20260227-master-v1-1-8d91b9407fdb@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom: qmp-usbc: Fix out-of-bounds array access in
 dp swing config
Message-Id: <177918741546.257287.197313135336339918.b4-ty@kernel.org>
Date: Tue, 19 May 2026 16:13:35 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_034339_686055_EA639484 
X-CRM114-Status: UNSURE (   4.81  )
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


On Fri, 27 Feb 2026 20:15:01 +0800, Xiangxu Yin wrote:
> swing_tbl and pre_emphasis_tbl are 4x4 arrays (valid indices 0-3), but
> the boundary check uses "> 4" instead of ">= 4", allowing index 4 to
> cause an out-of-bounds access.
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp-usbc: Fix out-of-bounds array access in dp swing config
      commit: ea17fc4d7dc2ba6459b1a318962960520201baf1

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
