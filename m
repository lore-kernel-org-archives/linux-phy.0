Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8783EEF31D
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 08:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gt4b7SLN+YiBANoS6G0RA25IKRtxwDKdPRlM+xYE3mw=; b=L7FO1S08ZBzoyq
	9qQcEQIvK/XMzNxIccQN4jgmh+gpXmrAQrl22Esez/vu2kTasFy17MhC80WvWz1BI+pS9Nv2NzJw+
	J1YIdbbY8qz0BfaUjg3eYpBsFjZVraJSjx8ygtHrrMKIbWabWKjec6+eMYYgkLEPARz1n9La1KJUX
	wXRswkVOjyfc3aON+5cd5sea8EHeXXf2iW0By+L+g3Y46WgKPBhAN6+4RXUSsYinojvPgVjTdYoDp
	bg4U2onvbjvX6dxOxB3aJ0qb9dt6DccIQPaHWLG6EOr2kPL0o0FOpwnKlW1BHcudg4oV3DOD0+3NZ
	M0ioPwoVCP69kmEr2oVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4Bn-00000001D9W-2NsH;
	Thu, 05 Mar 2026 08:36:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4Bm-00000001D8z-1cVz
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 08:36:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CE65261344;
	Thu,  5 Mar 2026 08:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED511C116C6;
	Thu,  5 Mar 2026 08:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772699769;
	bh=UHs7hn5mtQNWpVM3mVHlD2Muf1/IXQVhS6ToW829khk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vQtDtSO9yzbZVERtVTp/xR6Z0Ga1UpXACJ0kMV78vX3k4D1T+9+T2AK4U5wJ4o+Ex
	 DoHSLLph+JA/x8zF178pCrtGqUen7giIdEleGYZyLCu8nUDjKUnBsF/X9vEvLj6K7P
	 WoEmgs3D0epB8OWsOfEvncYnb/0tzd8gYAbjmNL6eCuK4FnqHAQKzCF5XjWxpducOd
	 2d2rKj74GVXM7NVB40MkFtU1AaxD5FFmcVYuwjEANUL7APcnGNQ0NPo6/PvI17K230
	 EPllrtOmWt6yNI18fWdNiPKiu+9b60KB2O2gATU8tAOE42aQ1KehNYuYc0YxeKuo43
	 XmQ3hVFm/1UBA==
Date: Thu, 5 Mar 2026 09:36:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Jonathan Marek <jonathan@marek.ca>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: display/msm: move DSI PHY bindings to phy/
 subdir
Message-ID: <20260305-nano-sunfish-of-essence-87de43@quoll>
References: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-msm-dsi-phy-v1-1-0a99ac665995@oss.qualcomm.com>
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

On Thu, Mar 05, 2026 at 01:47:12AM +0200, Dmitry Baryshkov wrote:
> Historically DSI PHY bindings landed to the display/msm subdir, however
> they describe PHYs and as such they should be in the phy/ subdir.
> Follow the example of other Qualcomm display-related PHYs (HDMI, eDP)
> and move bindings for the Qualcomm DSI PHYs to the correct subdir.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Merge strategy: I'd ask to merge bindings through the msm tree, reducing
> the conflicts for the current kernel development cycle. Starting from
> the cycle after this patch is merged, DSI PHY bindings should go through
> the PHY tree.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
