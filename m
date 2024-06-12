Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D1D5C27C75
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 17:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtHIxVd13AnERwD8DvrCkk+bfcOQpm68o8Ox2OoDWi4=; b=B5wTUKH8x6a0+G
	NsG1Hr+MFgmwV4qg/BPVzKY33x4TDfh4N1IcpAeFeHJAQsLESz6FvoXN3G4jaBE3F5pPsobMpWXXR
	FitFCNbFOE9tz8pg7vK9PKk6cwMZNakIzL9H08aS3KPTkqFcrOEwQYjsmUTYvJ7NrT73uig99UHIL
	CRAY7Fmo556zPtNnLUvQLbTXPMYAu35vaUdivU283A9lExLdU6fig5ryPJmtrAaxCy1zkc7lsLF/C
	GLPyNSC9dFDwKZpW2OGwiSjJgwONX2sac3q/MK7C45pR7/KjCGJ2scHmNIERp9azeSAXRQxNTlT3h
	SIkaY+M7iKl05vtP7WYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS1l-0000000DbuO-3kfP;
	Wed, 12 Jun 2024 17:44:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS1j-0000000Dbu0-2S91
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 17:44:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CF980614FD;
	Wed, 12 Jun 2024 17:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4255FC116B1;
	Wed, 12 Jun 2024 17:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718214290;
	bh=S5pPQlYqkbKDLcynx5VnNb+C8Z5Qrs/To+KuhbkFjbI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c1vrovK9foKbDhjD65lGc4PoEWhjUJcoEOsVg0XkgjErc0SRNTBN/FzjoIUOEDe35
	 VM5o4m4uALf16m/ToFFp792Xr4s+axmjxMzKg/SQ431cYtsf5KfLNA7x0E1JPPgnHd
	 fhuBo9pEIgUtZpTliY+4Pztop1zb6WSy1FiKm4j7Ggoz3AbF/QPh+klWSRYh5DmF1t
	 LEBPLC53wR2iNVw2kpC/R/l4kgjsqSlAbYUp5jHQaVu0OdpuqQcLKBRflCNf80/uvm
	 3QNscn2A1Xc/+Zbc3PhaDD+9MjyAkFVUVBv9IPInViggK/SmFkb0i6/6RPZsrClhtd
	 +9O7lffYFr2jw==
Date: Wed, 12 Jun 2024 23:14:46 +0530
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
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v3 2/4] dt-bindings: display/msm: hdmi: add
 qcom,hdmi-tx-8998
Message-ID: <Zmnejlkb869mN3eS@matsya>
References: <20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr>
 <20240606-hdmi-tx-v3-2-9d7feb6d3647@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240606-hdmi-tx-v3-2-9d7feb6d3647@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_104451_697470_CE2103FA 
X-CRM114-Status: UNSURE (   4.29  )
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

On 06-06-24, 18:07, Marc Gonzalez wrote:
> HDMI TX block embedded in the APQ8098.

This one too

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
