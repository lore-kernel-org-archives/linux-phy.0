Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D413EC79FB3
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jan 2026 19:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxmzfrt1W/zugQ18Zs0nDqQjENO+yGXjsdQ/IRfJVRM=; b=UVKD3E5gxeHKlM
	D/Yq69Oxol+xP+mhbRNU3NJegFCTXCsEKZ76asPuPX6/X4voDhISI1JM9VGXNiqblfgsukZriFBzc
	t7T9bIHJOB7jIWRTv+f77ZvfORvQ8J531ar13o6AsF83T/AVOuoMegSrhDLd15o/b23APAyuEuuuF
	7t82NWi+iTaq8FcN4NaEp+ze8S4VfYpv28AIv0iD8TQRQ4aFNpKzfRjspmb4gBNFm1+GHscOryeNF
	VuH6G8lonsjS2qbgNOGNdNNjWa1DhxdUquC1EQFk1yfj1Z/apWzgpuA6eYbhyJwnm1tWdrBSNR1xq
	bBqInkI/Dqdz+lyL3cAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq4M-0000000BxuO-26Ox;
	Mon, 05 Jan 2026 19:16:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcq4K-0000000Bxtw-2r3J
	for linux-phy@lists.infradead.org;
	Mon, 05 Jan 2026 19:16:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 66F1340DEF;
	Mon,  5 Jan 2026 19:16:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D88AC19422;
	Mon,  5 Jan 2026 19:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767640604;
	bh=PrjmIebn6x7x+kTJN8YuN3S+cBkcKFEhmP6QFXPNwrM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=srvTsG/2mc2jvYZsk7CuXBhVaf2sA5s1ORQ7Qo/9DRTTQhzx3PhTCnmbvmyfn4UcM
	 yHyOdWXiyvvzuEmHv6lBz5A8XkC+e3hxH6ad6Y/7l3TfqV4vCgpoyy7YWw+wjYq1kX
	 kh/phfloUSk6fSWogO9VBgK1dhabJvLIdpF/7zdAhkLB+px1SD18jEPKIyz3QnpK0D
	 n50PPFqR0u//0UbWVl0iJeEtCNqr7dxmL+X0ALlwPjT+Ny+n7BvmuvTcfQQDHmjkNj
	 CiMHXnlvxUVG2UoLks/Aolov/U3cMnuMe5fBs/KTa8tQ98tPC1z9iakztj7mJsEcaE
	 GcdJVGemCO0Mw==
From: Bjorn Andersson <andersson@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Pengyu Luo <mitltlatltl@gmail.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/3] Add eusb2 repeater squelch detect parameter override
Date: Mon,  5 Jan 2026 13:16:23 -0600
Message-ID: <176764058409.2961867.1947297193392128715.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_111644_761092_2B0637F6 
X-CRM114-Status: UNSURE (   7.77  )
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


On Fri, 19 Dec 2025 23:01:05 +0530, Krishna Kurapati wrote:
> Add support for eusb2 repeater squelch detect parameter override via DT.
> 
> Squelch detect parameter adjusts the voltage level for the threshold used
> to detect valid high-speed data.
> 
> Changes in v3:
> - Moved status property to end of repeater node.
> - Updated commit text as per comments received in bindings patch.
> - Retained Krzysztof and Abel RB tags (since its upating commit text adding
>   information in bindings code and moving status property in dt code)
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters
      commit: 09d87fdd83894bf3df4ecb79296d03c7a1ac24c3

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
