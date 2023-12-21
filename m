Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E04D8C46CD3
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 21:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wwMkhw46s6u3ZU5r+4iT+znt+CNq8kyFr0dgrhEe8s=; b=hGl5xDqSR/6xfr
	HjgOPCPAk2NpRNTf5MBmlgtrgJYb8Y0GMevRkObh7osA5HKGEOrvn7vcvhrz4HNi9EJnR+wuRXpOL
	OZk76ljFZFPtjfKeXG1A+HOc6E/WYklNbRZ7rgUOYrRsKbub9ABIF9zPYnKmAXvvdNBYzJkw39nss
	gcQppIvF7tJJrVbKZQzCzwjGUigZy/q2WdZgntWM+GJuEC6twTGxdl5zpGq5/rS/pifsMBn2jPgj8
	N3NMhmv7Pz8LOCp7VjKSkhhD8mDE9zUvCw4F0XG4LP0kvfttPksbMdQwdhtujicAXCyVjycCfWdCA
	Reneg4uRWjDNaTScic3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGQGc-0046YI-1i;
	Thu, 21 Dec 2023 21:07:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGQGY-0046X7-2g
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 21:07:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B8DA061A53;
	Thu, 21 Dec 2023 21:07:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6605C433C7;
	Thu, 21 Dec 2023 21:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703192856;
	bh=l8ep+ho90zz55mBaxz8kcOinwOvjzB7qaAX4jDuIHnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NZSUBm1b3ftXaEDWfhDKmhQa1MG/iOb2MaLnppHsD92h/baQnjTg7AUsC7dKIOZzJ
	 H2WI2v1NrzlBlPJZqC3z2gZCmNsYt7a8q+9ejav8lsDZ29Yfug1xDLzGBLPN/47X/O
	 rApMsy+pxCiiDsyD2hbkziXvu9geOQVOdQ4WWkKeGR3J43aOgkyEf5IONRLDytBr81
	 BL7QRVL9tdJJh6fKs3+/zLX6Skd9G37xGtynFLrrT8eacMD8uN4W66v39Lg+V6CRsG
	 S6ymSIZbzO1dX9aSSUCARo7JR2a4neSIyYSzF/ohyG6qOU9F7XV0TlUW5Q1C9Ghgf+
	 zIek1eaHIs5Og==
Received: (nullmailer pid 95648 invoked by uid 1000);
	Thu, 21 Dec 2023 21:07:34 -0000
Date: Thu, 21 Dec 2023 15:07:34 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Jonathan Marek <jonathan@marek.ca>, Marijn Suijten <marijn.suijten@somainline.org>, linux-phy@lists.infradead.org, Krishna Manikandan <quic_mkrishn@quicinc.com>, Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>, Kishon Vijay Abraham I <kishon@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Clark <robdclark@gmail.com>, freedreno@lists.freedesktop.org, David Airlie <airlied@gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: display: msm: move DSI PHY schema
 to bindings/phy
Message-ID: <170319283595.95147.10971652363367515055.robh@kernel.org>
References: <20231221102506.18320-1-dmitry.baryshkov@linaro.org>
 <20231221102506.18320-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231221102506.18320-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_130738_923881_8300DC8B 
X-CRM114-Status: UNSURE (   9.96  )
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


On Thu, 21 Dec 2023 12:25:05 +0200, Dmitry Baryshkov wrote:
> While the DSI PHY schema files describe the display-related hardware,
> they still describe a PHY. Move all DSI PHY schema files to the phy/
> subdir.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml}      | 4 ++--
>  .../msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml}      | 4 ++--
>  .../msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml}      | 4 ++--
>  .../msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml}      | 4 ++--
>  .../msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml}        | 4 ++--
>  .../msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml}  | 2 +-
>  6 files changed, 11 insertions(+), 11 deletions(-)
>  rename Documentation/devicetree/bindings/{display/msm/dsi-phy-10nm.yaml => phy/qcom,dsi-phy-10nm.yaml} (96%)
>  rename Documentation/devicetree/bindings/{display/msm/dsi-phy-14nm.yaml => phy/qcom,dsi-phy-14nm.yaml} (94%)
>  rename Documentation/devicetree/bindings/{display/msm/dsi-phy-20nm.yaml => phy/qcom,dsi-phy-20nm.yaml} (93%)
>  rename Documentation/devicetree/bindings/{display/msm/dsi-phy-28nm.yaml => phy/qcom,dsi-phy-28nm.yaml} (94%)
>  rename Documentation/devicetree/bindings/{display/msm/dsi-phy-7nm.yaml => phy/qcom,dsi-phy-7nm.yaml} (94%)
>  rename Documentation/devicetree/bindings/{display/msm/dsi-phy-common.yaml => phy/qcom,dsi-phy-common.yaml} (90%)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
