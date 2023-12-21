Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72D61C46CD8
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 21:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmglTcN9tMYlIrJmipsKKCo3fa7odP4K2j5pjezDcQg=; b=UCRlw0jswDtoP3
	/U+PzhiKwany+QcnP5XJ/kTe9/1SoPYB6vYgynzaCv/5FqxuI5ECIaL/o7iPhtuAt26w2tZGbGM1G
	TKQk/o259nc6R9S9nNY/+5gBikW4iNrIuYAXv/0UJ2sOhOCmj6ju3Eht2b6Pb2WPAx6he8uufFgdO
	q0xpQug8bMu+mir/pRSj47nDXJiXhnndZCYW/uTiuWQv3I3RMe94bXJYCZTog3SYe2K47en/5TDVd
	21o4iboedujVsoENqaR0yqG2rkimqkOaZ5q249Y9rYrjka7DMSgDxsQnUncjrvVQdNsSCz+vHP7ry
	48fMgNOZmX/2yxxX6a2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGQHK-0046iV-07;
	Thu, 21 Dec 2023 21:08:26 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGQHG-0046gW-1D
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 21:08:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 7B544B81FF4;
	Thu, 21 Dec 2023 21:08:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39DADC433C8;
	Thu, 21 Dec 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703192897;
	bh=rWCnstf7VPSOkoEfMQP6U3T55hfbyUebaA/zKF3SW6A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZZ7HE0KHCIPLUKI1EzXKui4xroGUa8k+MkxZf2om2cKxHYz8+4HQhzqMKEPXMx7gR
	 huk2J7CH7sWq+E8lBkVWUcWMi1HhvHSzp9zPAgVX9/Mj8oVnzqKroY74U2Z+r9QAcs
	 nPYwkVmMhPmRKICorGd/SsfCi7LZ8jNU4gLkWRtvSQR/qm4V4ZxGvSxFCPjd1Uh7Mt
	 kvRwRm8Umq2pLP3JLIDBQeowsClO24mRsJ28B0UMY7H0TZ0UJjKuM11+Uwv1AkFB4r
	 sQM6Qv+t07my4qnQlljljnbCZTglWmWLTkXWdGyUG9mWy9fwi8S2q+q8MYCMVDH0aZ
	 y15MJFOds2NAA==
Received: (nullmailer pid 96522 invoked by uid 1000);
	Thu, 21 Dec 2023 21:08:15 -0000
Date: Thu, 21 Dec 2023 15:08:15 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: freedreno@lists.freedesktop.org, Marijn Suijten <marijn.suijten@somainline.org>, Daniel Vetter <daniel@ffwll.ch>, Rob Clark <robdclark@gmail.com>, Jonathan Marek <jonathan@marek.ca>, Vinod Koul <vkoul@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Stephen Boyd <swboyd@chromium.org>, Sean Paul <sean@poorly.run>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, Andy Gross <agross@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, Aiqun Yu <quic_aiquny@quicinc.com>, David Airlie <airlied@gmail.com>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org, Abhinav Kumar <quic_abhinavk@quicinc.com>
Subject: Re: [RFC PATCH 2/2] dt-bindings: display: msm: mass-rename files
Message-ID: <170319289437.96441.9965499072649831420.robh@kernel.org>
References: <20231221102506.18320-1-dmitry.baryshkov@linaro.org>
 <20231221102506.18320-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231221102506.18320-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_130823_505856_E31D519E 
X-CRM114-Status: UNSURE (   9.44  )
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


On Thu, 21 Dec 2023 12:25:06 +0200, Dmitry Baryshkov wrote:
> Rename the Qualcomm MSM Display schemas to follow the main compatible
> string instead of just using the block type. This follows the
> established practice for YAML file names.
> 
> Cc: Aiqun Yu (Maria) <quic_aiquny@quicinc.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/display/msm/{gmu.yaml => qcom,adreno-gmu.yaml}     | 2 +-
>  .../bindings/display/msm/{gpu.yaml => qcom,adreno.yaml}         | 2 +-
>  .../bindings/display/msm/{hdmi.yaml => qcom,hdmi-tx.yaml}       | 2 +-
>  .../bindings/display/msm/{mdp4.yaml => qcom,mdp4.yaml}          | 2 +-
>  .../msm/{dsi-controller-main.yaml => qcom,mdss-dsi-ctrl.yaml}   | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
>  rename Documentation/devicetree/bindings/display/msm/{gmu.yaml => qcom,adreno-gmu.yaml} (99%)
>  rename Documentation/devicetree/bindings/display/msm/{gpu.yaml => qcom,adreno.yaml} (99%)
>  rename Documentation/devicetree/bindings/display/msm/{hdmi.yaml => qcom,hdmi-tx.yaml} (98%)
>  rename Documentation/devicetree/bindings/display/msm/{mdp4.yaml => qcom,mdp4.yaml} (97%)
>  rename Documentation/devicetree/bindings/display/msm/{dsi-controller-main.yaml => qcom,mdss-dsi-ctrl.yaml} (99%)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
