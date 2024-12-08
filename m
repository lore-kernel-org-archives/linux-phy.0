Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F0A3E77180
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 16:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u02sx6Hx8srjwSYGnsSOe0fksuAHmLKui3FYdBEk8A8=; b=TqRRJSPX0rOIUb
	UTuyCgUM/o/BQSCJgDnAUYUkPOpQI4/Yim1UcOsCVuD95XP8CZUWIYhaPHGcqHID3727yfv4ivNnt
	dy9LLkUSiRUSRo4EWMxB4QTsZFqIhQxkq8rncviFdm0UAzRWtOymKLxMtRfLh0kPCBaH9Xo3Gy+e2
	gPRLek4yXLkKkVzaKMbDpb99R7Gw1+sdV06qCEpRBkgyy13PvDEeXxIoE/XdHYg53R/CbCf1C2SlP
	yOecHHfDkG/BOsYYx4pWCYfgXhDsu4jwNNFW6o88vn/uZtND8dpqvS1zyIbH/k6dZE97Qx79aJ9A2
	tvG6pfkpBqAJQ4gGoUTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKdT-00000005bLO-1ElR;
	Sun, 08 Dec 2024 16:59:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKcU-00000005b7R-3RIi
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 16:58:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 43853A40C66;
	Sun,  8 Dec 2024 16:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4556AC4AF0B;
	Sun,  8 Dec 2024 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677137;
	bh=4b8k6Gcyhw1gaSHNTpYg9f2l+lRd2mJlHG6QsYQQKsg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ndLAxfN8c4UFvtBiwysKL9Zvsa6fKpLxJhu55E0mHGe6iKRZA6uEH4JW7gr3jZ03Z
	 rjjg++Ghx9gP6qK/37yTqgfvdehRD+UTGlYIUDJzyw+R8crlfi4gnw8MtsOSGeT8/g
	 1TqSbkVoIej9n5a+t6kSvqo2manBdjuil5z/H3TR3EQwU3CMoG2wmKF8AvuCuygcYx
	 I74rJYIuz7u8IRSE1rzWbhQCEdWsdo1qOeCwmm/Bsh3QXNRjEhVRsw10MrclvwrWGX
	 0DGQTUko6aK6d4T5ZC41JEmrHAn5ITNLLo4+5YCpNejEXxnR3HoNwanyLP/f8ydhIS
	 xfudYZkk09j+A==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <quic_bjorande@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Mantas Pucka <mantas@8devices.com>, Abel Vesa <abel.vesa@linaro.org>, 
 Komal Bajaj <quic_kbajaj@quicinc.com>, 
 Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, quic_ppratap@quicinc.com, 
 quic_jackp@quicinc.com, stable@vger.kernel.org
In-Reply-To: <20241112092831.4110942-1-quic_kriskura@quicinc.com>
References: <20241112092831.4110942-1-quic_kriskura@quicinc.com>
Subject: Re: [PATCH] phy: qcom-qmp: Fix register name in RX Lane config of
 SC8280XP
Message-Id: <173367713289.1031947.10070868300921760788.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:28:52 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_085858_932884_E4176C4F 
X-CRM114-Status: UNSURE (   4.11  )
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


On Tue, 12 Nov 2024 14:58:31 +0530, Krishna Kurapati wrote:
> In RX Lane configuration sequence of SC8280XP, the register
> V5_RX_UCDR_FO_GAIN is incorrectly spelled as RX_UCDR_SO_GAIN and
> hence the programming sequence is wrong. Fix the register sequence
> accordingly to avoid any compliance failures. This has been tested
> on SA8775P by checking device mode enumeration in SuperSpeed.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qmp: Fix register name in RX Lane config of SC8280XP
      commit: 8886fb3240931a0afce82dea87edfe46bcb0a586

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
