Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D58EFE7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 08:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99crZQBqjF9J2/jbygm/3syq5TRYIKS5ytxQDcQVdNc=; b=4nxkwKiko3Wi88
	9iYAkDolB0otHgb+Zn1s1vZPF/Dbb+M3caDC6hK/CbfQBGZbaxLs16GHQme41pmPve38VIgZiaGR6
	ijeFCMKeukilNIcQmza3mMdckBvMTY8fx/HCW1pDlyoXEAhHnW8gzEDBxGXg0ChByyLSKaU+ihkKD
	0s2eQUi7fIJkyiTlpZqgt+f0+1h6or4hCaVZ2vl/CSNGveQTlZHGjTC2RN48KPzqjBtAa2taipV9H
	AhO/7fouSZyQYDAjK+sJbDohDQ+clRoDbDll8CcXLnLUE4RqR2L68rvvzp80Sqs+zYdE7sVo2KsfR
	LUuRH0ADQe1KqQ67lbSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5su-0000000HOm5-2eCP;
	Fri, 27 Dec 2024 08:39:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5ss-0000000HOlZ-1LGU
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 08:39:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 04F9E5C5DD1;
	Fri, 27 Dec 2024 08:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AA23C4CED0;
	Fri, 27 Dec 2024 08:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735288789;
	bh=+0FfP/it/g6a5NcBaGoGxMC03dKPY+plNCRmhB37Yqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jBDVr7LRS7ZJolIw/KKBRGpkLWRTbIZnQ5XBdsnWYztuxrcn5Y9ZLYy5g0gGHqZAW
	 jAGMm+1nWOLcAbCShvSnxwecD1HAfNqIwMD6l8aoL/h1bPsjAbSkepPU4cGVnTc7RA
	 ZbFsOtZH+YlS9a81UI33JH1fju+J4GwFF4gtQLA/FJghudZekNSfatmFdIAj2+sKXX
	 KdElQQEl+3E9wZI5cw4X4Pf2Ggua6l8r3diI5T7O515poDKJoHGmXT/Ehm21QPMxGK
	 AIy6BghZIevtOMYZ8WrZsyWtXQ+z+boeSadaL+hvIg/PfMhoJOQLCeID+ik4cwgiYR
	 4JPHBoRBDc9xA==
Date: Fri, 27 Dec 2024 09:39:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 0/5] Display enablement changes for Qualcomm QCS8300
 platform
Message-ID: <d6qiwltykiw22o2gydqguaqzf5tf5vpbzdt34qodipc6pxakfy@4tmihfn5fta2>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_003950_410592_819AAAC0 
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

On Thu, Dec 26, 2024 at 05:40:44PM +0800, Yongxing Mou wrote:
> This series introduces support to enable the Mobile Display Subsystem (MDSS)
> , Display Processing Unit (DPU), DisplayPort controller and eDP PHY for 
> the Qualcomm QCS8300 target. It includes the addition of the hardware catalog,
> compatible string, and their YAML bindings.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
> This series depends on following series:
> https://lore.kernel.org/all/20241203-qcs8300_initial_dtsi-v4-2-d7c953484024@quicinc.com/

Then why this is not part of initial DTSI?

> https://lore.kernel.org/all/20241106-qcs8300-mm-patches-v3-0-f611a8f87f15@quicinc.com/
> https://lore.kernel.org/all/20241114-qcs8300-mm-cc-dt-patch-v1-1-7a974508c736@quicinc.com/
> https://lore.kernel.org/all/20241024-defconfig_sa8775p_clock_controllers-v2-1-a9e1cdaed785@quicinc.com/

So it cannot be tested?

Way too many dependencies for me to review.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
