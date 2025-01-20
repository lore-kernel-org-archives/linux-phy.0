Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F3F2C02188
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jan 2025 07:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02hKHNguasfgaYAtKu58bJJm64ERGUF3awPl6p/u2+I=; b=pnEGXeB2T6SseN
	YnH+2rAGLPxwV8QeRJ7x6s8XFNcLvbsL3X7I/ikAs8us/ebqieeAv8d8jBx6OKBcEz245TzQCNP6N
	7Bq6O6mxUm4kTyzRMOltY+bLX6axk0zYtwOcUP2nQmdYkhtb3dXVhv462h/xsO1advofVbZszLTH7
	o20ajRX1I4ShwxmONfcxy9rTKEC7J6US8axzEkzF7hdNpNj/LReONu/A0kkhxVSYszW759R3c5n2D
	9Ge5ecftWQxZ0yROHTl55NptLGd1SQ2W7oxn3iPxpEOiNs5dBOB2xWWh4ODIDZK5V4c3X+/RTM+HM
	zHxRDWQu5tNQAUSMaVCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmE5-00000004vMY-1Axc;
	Mon, 20 Jan 2025 07:29:37 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZmE2-00000004vMD-1cjs
	for linux-phy@lists.infradead.org;
	Mon, 20 Jan 2025 07:29:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B1FA1A40C73;
	Mon, 20 Jan 2025 07:27:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E89CC4CEDD;
	Mon, 20 Jan 2025 07:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737358173;
	bh=QYLdcOf2omnC+tqf+1HFeg9aqbpCJGX+M3S2jzNrCQ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EIli/PuDTXfGXU+5D8nizOFQsN2ScphpfdASkjSpaIFqViocpmuNsPJHUWRigCbYk
	 maREfl2cMtpzeTgRcBiKk2Ev7n/NPajVuqX/gNEO8AKMiU5DUXpT/aaM/Pa3M++EsG
	 bKoRcTOA7BxlgMhzN4YVK418RBwhU+egttzvV36sjkW04rYaVqd3UWjyVuiJeJ0w0s
	 hFCjDHo7Wsx554dhm7rHjOjarfidtKhr+FiYyrTVsZvHGXFhN3X78uQbTpV37misfw
	 e/cBrEFH0mKLAJveNQfYRQ2erwCZc5AlRwpunKPx7oJ20ccveuBXM1a3CuzQQsoqIW
	 ILMRlJexxGdug==
Date: Mon, 20 Jan 2025 08:29:29 +0100
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
Subject: Re: [PATCH v4 3/4] dt-bindings: display/msm: Document MDSS on QCS8300
Message-ID: <20250120-economic-sawfly-of-agreement-541c8a@krzk-bin>
References: <20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com>
 <20250120-mdssdt_qcs8300-v4-3-1687e7842125@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250120-mdssdt_qcs8300-v4-3-1687e7842125@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_232934_529603_13850E6E 
X-CRM114-Status: UNSURE (   9.88  )
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

On Mon, Jan 20, 2025 at 11:49:20AM +0800, Yongxing Mou wrote:
> Document the MDSS hardware found on the Qualcomm QCS8300 platform.
> QCS8300 use the same DPU hardware version as SA8775P, so we reuse it's
> driver. But QCS8300 only have one DP controller, and offset is same with
> sm8650, so dp controller reuse the sm8650's driver.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 244 +++++++++++++++++++++
>  1 file changed, 244 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
