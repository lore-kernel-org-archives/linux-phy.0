Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84129C677F1
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 18:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uT6u0FYVn0MpLZgprf72KJv0X8ukYJKWIqBIEEi79MU=; b=QNGhEy+N8vdBuL
	x3nwANg+wWuTqiEgY1wYhsHbnRZhXEPE5dsPPZCszLIrOm5g7LBIH6UD9P8OUYpTa0E10UqtCN0bW
	VroTlbxBOsOzWolxUQGXx8+xD1Gn3wQ/mNbvupbI7YxKnsBkUykPuFPcrOJWRY8RVgjEf9Co7RUjv
	ePKLzzlp2HhbhYomPInvSx/dBqo9P9vHDZYpvZmeHD15jJY0omGDojMe8KvrRNOxefYAS/oNYoa41
	zIeRC4AnGlL9B0wQS9R8OX2rCKeVvZbpxfygrekGRV1tUcSM0325mcrdu63EyO2sM+QUVsGYCQPsk
	BmfE1o1GffI/j4t9hyrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHqdd-00FQbB-S9; Tue, 17 Jan 2023 18:24:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHqdU-00FQYO-5Y
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 18:24:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CC133B819A2;
	Tue, 17 Jan 2023 18:24:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C97DC433EF;
	Tue, 17 Jan 2023 18:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673979877;
	bh=lRFwpAKdAYE3kwmieJAq9DQx3YaX1gDTwYemwH6BSiw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IRHLfRKvCchsVE8EgOtguM10LltM6kmiC1LW6jaXZ0si0wCbK/n15Fchh8ybLr4HP
	 wtRhevHjtteiE09zucHpRNot+oCg2HS69kmd48Bj22gMioTLKBlSsCgjIuAhBujYbA
	 CouF0NNPAl/V0Op7EL07mENxtMlKH4CAPzM/fXCFCAZt/xTZzDzVOZ8Q2e0GACD7A+
	 FFe4vz9CR+IKzJIf+nenvJx1rCyT3z8ubU0u4GxM3P8umS4ps3zWS23i64bBUWfslB
	 vbd334uK+ESZfn/ALkJ5FmLdfZYAzLuTnZEsJ+4D4APNJsKG79UrxPw9+elA/fQpKQ
	 kSp1pme05klbg==
From: Bjorn Andersson <andersson@kernel.org>
To: dmitry.baryshkov@linaro.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	konrad.dybcio@somainline.org,
	agross@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	p.zabel@pengutronix.de,
	johan@kernel.org
Subject: Re: (subset) [PATCH v9 0/4] phy: qcom-qmp-ufs: add symbol clocks support
Date: Tue, 17 Jan 2023 12:24:22 -0600
Message-Id: <167397986254.2832389.17639980033848881749.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
References: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_102440_365355_A1D9FCFC 
X-CRM114-Status: UNSURE (   8.78  )
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

On Wed, 23 Nov 2022 12:44:39 +0200, Dmitry Baryshkov wrote:
> Register UFS symbol clocks in the Qualcomm QMP PHY driver. Some of the
> platforms (msm8996, sc7280, sm8350/sm8450) expect them to be defined (to
> be used as GCC clock parents).
> 
> Changes since v8:
> - Send proper patchset this time.
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: qcom: use UFS symbol clocks provided by PHY
      commit: 86543bc6eec499f7fd12e1628a29838aa90c288a

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
