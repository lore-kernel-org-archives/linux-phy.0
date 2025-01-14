Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D26BC02185
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 07:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyNIY4VO8qZvGJr/uvOrvrl/VIUxZcJokxvbt8Q91Xg=; b=EhlXyUn+dTplPW
	bX/QcT5lqag1hn7FgZ/SjmtzFVKih4UhWFPfUJn2ElV0DYjDHgpoqByJ+8RRYe8Q2Yc7aAYpBzgaG
	1bsuQFc2qAYVkNbPEPrjbeLORaEuuNYgbgI163boKPOSiDPYqvBLY2u4EhSljGN36ml7YAWoTzHXU
	GKNYTbL+S8NFTFqKMsgBgr9p2YsaRR8YMfFS7u0KENytWS3k4jHl9HCyxzdfeFWnibRHlqxLPwv5b
	gf5eW7t24Mt6goLSxMphDrHqUlvke9KI4cJQpWUQCAEYLWnkQYvAV5Uc72xVYapDSSn5XPqJq2Pph
	GDJrdug6NpLJCrdJfy1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXbnT-00000007kyM-2Hdd;
	Tue, 14 Jan 2025 07:57:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXbnQ-00000007kx7-0tWs
	for linux-phy@lists.infradead.org;
	Tue, 14 Jan 2025 07:57:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A4CFF5C56E1;
	Tue, 14 Jan 2025 07:56:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F08EC4CEDD;
	Tue, 14 Jan 2025 07:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736841427;
	bh=ZloWZNduwAPjDvbGadMXp2gP8vQf1XX1e+wOh0WKm7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UoSLtcyoyKBgQ0ahEo0MIpQJ5CIHFw61HjTFG2rLHJKe/RQ8eqfVGEEbT9uBFIQ1Y
	 f1UuX4Bzdl4DPrVun1gYmxjAwRxBWMiBeT+/6EU8QlZZx8r3iolZazKFa92DeE1guA
	 XWw5iy9Ixx9Pv2Rhn1LmOjLDlZquKEnx6CZsVC/TPTQZuyZ+D0r/7PAj84UaWciOjH
	 0TihPtxkTLaTjhSLbKkV3m4B7UUknwEo9o1a8rURDRXsSfA4z+pdWtCrzSp5kOXjMJ
	 wK+C/MaUZpVPOUEQwo5ekuY2uVCMbkUyTVg0iUMCsf/POPIhoWog6Ug1v3RNUa7V1v
	 Qt6jRxWMgcsOA==
Date: Tue, 14 Jan 2025 08:57:04 +0100
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
Subject: Re: [PATCH v3 3/4] dt-bindings: display/msm: Document MDSS on QCS8300
Message-ID: <lyv4bopv3zw62qll5cjjx46ejdjjmssvhabdxj2uq23mcmwqpb@lld6hynsiwfe>
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
 <20250113-mdssdt_qcs8300-v3-3-6c8e93459600@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-mdssdt_qcs8300-v3-3-6c8e93459600@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_235708_295597_B22A53E2 
X-CRM114-Status: UNSURE (   6.95  )
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

On Mon, Jan 13, 2025 at 04:03:10PM +0800, Yongxing Mou wrote:
> +patternProperties:
> +  "^display-controller@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        items:
> +          - const: qcom,qcs8300-dpu
> +          - const: qcom,sa8775p-dpu
> +
> +  "^displayport-controller@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        items:
> +          - const: qcom,qcs8300-dp
> +          - const: qcom,sm8650-dp

Parts of qcs8300 display are compatible with sa8775p, other parts with
sm8650. That's odd or even not correct. Assuming it is actually correct,
it deserves explanation in commit msg.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
