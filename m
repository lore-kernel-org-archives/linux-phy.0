Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16667CFB421
	for <linux-phy@archiver.kernel.org>; Sun,  6 Oct 2024 01:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxwnFqOZDS3MczSHEDnHY6gC2D6Vdb59R03gTeo21CM=; b=0AQcnb5EAxjdZH
	CM/FpXZvt90JhzEW2YbFGMrSj3tNeSYWLGS50Efwy9OSfo5uJktRU1Zhyr1g/ExDYbvf8au/94Mvd
	TEBMfcMJN/gjnNcIaMDp0JlBI7ldF5neYGw2AV4xCn+ffXUPmOdV/ur6UlAS1cXkbFBOG0d7IWjy/
	t/k+3M4WiTjjKECV6ZxdQ+/fgnKN4XKsrEsrpLxORbVhaiL2Ayl2OqxsH0qh8nR+aA5WKbv8Gfacl
	Nv1fMz4bjBdCW7POfZIyB3g0GXqyf8b0IXjeFnuSbx5Ban/Dw5klo3fVldwyp6fmB/73Yinb88t7B
	G8qhhzNR1QXtsR5/AtKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxGWE-0000000GQ14-0Ot0;
	Sun, 06 Oct 2024 01:57:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxGUv-0000000GPLP-0QW2
	for linux-phy@lists.infradead.org;
	Sun, 06 Oct 2024 01:55:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 38DFE5C560D;
	Sun,  6 Oct 2024 01:55:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C38EC4CEC2;
	Sun,  6 Oct 2024 01:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728179748;
	bh=rC+M5Q4mJ52FdeEm7n0DqxEJm1JtZU9xFaRkElGY0cc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ANAu7fCFnOLld8npK91JMiF0SSNILGzX7Zxq3t17I20gMXHlfLIAhNINRBVvQ+MFh
	 wLrNy6x7BrJNiI0rDjIRCpBXFGLNJ+ZGLkE5gEKh7CSZd7NjXbkUOk4z34uP+DH4hR
	 aIKX0fAbD2476S++uZJvu/P3+YutJuBIqWYihXM+tsAjjdBjNqc31cvaas2hZ8cY5l
	 yMH+ywiAd5e6YRLZUDWyQf8MQX40fK3D9IvPcdpVlPMej83wmuQT/V3ayrRZWmyzoo
	 T/xp1m3R6zLBTXdN+5tk8kvKHVzjHjoRMNFoY/P/dfJu72jb5EVvVmnWWhSgrxfSXo
	 N759TeFLHt1pA==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Simona Vetter <simona.vetter@ffwll.ch>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Marc Gonzalez <mgonzalez@freebox.fr>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Arnaud Vrac <avrac@freebox.fr>,
	Pierre-Hugues Husson <phhusson@freebox.fr>,
	Jeffrey Hugo <quic_jhugo@quicinc.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: (subset) [PATCH v7 0/6] HDMI TX support in msm8998
Date: Sat,  5 Oct 2024 20:55:37 -0500
Message-ID: <172817973327.398361.7245928166448591196.b4-ty@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
References: <20240724-hdmi-tx-v7-0-e44a20553464@freebox.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241005_185549_303808_00AD4481 
X-CRM114-Status: UNSURE (   5.34  )
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


On Wed, 24 Jul 2024 17:01:33 +0200, Marc Gonzalez wrote:
> DT bits required for HDMI TX support in qcom APQ8098 (MSM8998 cousin)
> 

Applied, thanks!

[5/6] arm64: dts: qcom: msm8998: add HDMI GPIOs
      commit: 1b97f00d1b11ed6e349816ba7e60fa76e477fcbb
[6/6] arm64: dts: qcom: add HDMI nodes for msm8998
      commit: 2150c87db80cf7eed3939f32cbb18393055c58ce

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
