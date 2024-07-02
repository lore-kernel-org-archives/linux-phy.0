Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9941DC3064D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 11:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fV0d5i8pCiBooVSqhdFvL8uP+A69trge5p2xFWCUKIg=; b=OH52QS6gl0pZuD
	iOfYbHJVNZ/mgXDNQp4zg3vRk4c6Vb533EuCxZ+st+Hte3v/mdyVuLy8ZSXVJ76Ui53aE3x13REoR
	NAJUJXL94NrzoLuE8dT5YLQ/W6fi06Sq8NvMqxIjz/GHZhngnTfbTv20Rqi3numPt3S0Q8uMPuA0E
	JtvCjaWJ+fPsrwn/8kcgtx86YXg1lLCyurWkOjU+GCdu4A3MOGftoBFWmRbLcP5KDAbpQ2pkkVb3X
	ecpEEnXOBsG2HF0y5KryqqmmpjRke/EjQznC60eCCqNoNPQU6yx15qpKuqHu9bZ4EWnVJIsW5cijL
	+Z9gbE2aiSXJlc3lhu4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sObgd-00000006TFo-1P3Y;
	Tue, 02 Jul 2024 11:28:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sObga-00000006TFI-2OiX
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 11:28:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 005D261B4B;
	Tue,  2 Jul 2024 11:28:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA159C116B1;
	Tue,  2 Jul 2024 11:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719919715;
	bh=R8+rZJ4UpBPZnN3SumMPWq4w3upOof4xgExoUpvjPIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ed3SsusnbPQFrOkXNsNT53jAZHRwWGEkjbXL8uLNX4imPdtdA0A7rAZOs/bXabqPr
	 /2aJ1SEJ0RWsG8GuAX2EYKimbbgrPo9k/KtK+YGqs4IIGvGFscQ7VH5H/KJRQg6j69
	 8XUBQe+ebABqr5ZTUAwWHYu44DV130KYFurTdcq48yYMFMWwsNXZbsMD2Jxw6G8hxV
	 Ck45x85p8c4QlgXTQ9GYhdXvizNI9lRrveBiyLsQCr5pc0LoXbHOl8C3gPkDSaG6sX
	 67/HQIH8ndX+UoDiWPpxO+aHH3fc7Ku/rsEx9wT15qCU9qDPcQE36Q97/Im+0xgvd9
	 7kzuiKwSaRlqw==
Date: Tue, 2 Jul 2024 16:58:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
	Pierre-Hugues Husson <phhusson@freebox.fr>,
	Jeffrey Hugo <quic_jhugo@quicinc.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: phy: add qcom,hdmi-phy-8998
Message-ID: <ZoPkX0lE82Lkab6R@matsya>
References: <20240627-hdmi-tx-v5-0-355d5c1fbc3c@freebox.fr>
 <20240627-hdmi-tx-v5-1-355d5c1fbc3c@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240627-hdmi-tx-v5-1-355d5c1fbc3c@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_042836_667202_A6E4FFFB 
X-CRM114-Status: UNSURE (   5.09  )
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

On 27-06-24, 17:53, Marc Gonzalez wrote:
> HDMI PHY block embedded in the APQ8098.
> 

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
