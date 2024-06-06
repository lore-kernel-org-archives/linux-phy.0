Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CACF5C27C52
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jun 2024 20:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+jtB5o0kA6rjKp1Hk24LMH1ro4719I7mSLUYw+xJoZo=; b=pY8S9AXvROerTV
	j8Yn4y1NADmFyYoEeqp4rJdVNyEx+Sw+Dbt1Hg+Lf7e9hMly3nW9c82H7TSAiSOyfgX6JMST+tETb
	d3IwHnQhQU1CQAI88ekTKIoWCPzs1Bm7j9I5AuLmd4EQDFvCOYWpMcMahb1KlNu+8oUOzzr8m7BWI
	V+cbgjNBXg98A2cvvGrjDS4aAX+BKx0KOhJ6yaaBRsQvLf/gJF0/PO7tDn4h5e/Yu8jRgCUV7bIkp
	rJWvq4YO6altYVHF4y2HYv0OFib5D77XMftpW72ptPKARAeRdjMemwpAUmbpqfqiod7udxuyn4nop
	OJkAnosxrCbvdSMAWlvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFKAr-0000000BK34-2CnW;
	Thu, 06 Jun 2024 20:57:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFKAo-0000000BK2Z-43Gb
	for linux-phy@lists.infradead.org;
	Thu, 06 Jun 2024 20:57:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1E2D361EAA;
	Thu,  6 Jun 2024 20:57:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A020FC4AF0C;
	Thu,  6 Jun 2024 20:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717707445;
	bh=wFqALVp5mDtWf6L9b+AXIGvzv82kunIA6A0exDovdCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DAKR5WhDlunhA9NWxm1kfJnmaRG2JG+wyLkKwAhHP/2IXemCWbKsBZfQkUkIyjZRL
	 AbOSc/7rI2Zaauv9CTBPfbfWVB37oQ1gpaP7y2O98CRg16JmYGqnXNuTH9kUl0Evbk
	 CG+iUN3wbeQgZa10gvS/EOvmna74D6XRrM3oe4rqQB2s2pWDmwGJf5rgyhiOhMzLj1
	 k+bx+A8435kCdTvJAkNGwdjFccJUcfscjGVhAZ+Zax4OMu7uBlj+Zm1mWMU+hI26Zc
	 IZYZnLRIcf5xvEjqsRJXNo6vejmHiM1Pl3Tkb91KeF+Ts0tnUtKJAv5DMDcsmMXuTD
	 ZWYqhIZlEBF3A==
Date: Thu, 6 Jun 2024 14:57:24 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Vinod Koul <vkoul@kernel.org>, David Airlie <airlied@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Pierre-Hugues Husson <phhusson@freebox.fr>,
	Maxime Ripard <mripard@kernel.org>, Rob Clark <robdclark@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-phy@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
	Arnaud Vrac <avrac@freebox.fr>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: display/msm: hdmi: add
 qcom,hdmi-tx-8998
Message-ID: <171770744191.3848297.2891281220885073312.robh@kernel.org>
References: <20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr>
 <20240606-hdmi-tx-v3-2-9d7feb6d3647@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240606-hdmi-tx-v3-2-9d7feb6d3647@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_135727_217201_911409AB 
X-CRM114-Status: UNSURE (   8.33  )
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


On Thu, 06 Jun 2024 18:07:48 +0200, Marc Gonzalez wrote:
> HDMI TX block embedded in the APQ8098.
> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  .../devicetree/bindings/display/msm/hdmi.yaml      | 28 ++++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
