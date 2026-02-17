Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 894E8E909A4
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 14:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCsp26Sfm+ehUXvleHD4h8KuL0h/DxLYSK0euJA6Guw=; b=CeTfxYow3e1OXx
	R/X8l6sC59k+tQ/GmSYsUxLtez/y12FS2HXdXeqVUda3OnoYxUQKKrmjPwVgq8I+RpgTnqH/eUCLu
	hZ0WNoXhdCmhNp9jNe6T7ArWZPaFNAOzGnE91IYv6ytLy2sdoYVgJ4jZhx55MiZEb6mT+UvsXWEx1
	aVYTGc+Zs9GA9w6fX5Fyom4feDXFgZrfRWnkFDhSdGXsDymSbE8OHg40O/AY9yZcvvMY0ft2aFvz7
	msOw5PnTarKt37ZHA8h3YWpx8Lg7FCn5FojzuGWG2BzE35YX/lCsNcE8VjBb0biY1X2anbQLip6DQ
	gifkF0h5PAA+dTGuqI0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsLhx-00000008OXC-3mWU;
	Tue, 17 Feb 2026 14:05:45 +0000
Received: from mail-yx1-xb136.google.com ([2607:f8b0:4864:20::b136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsLhv-00000008OWF-06ZU
	for linux-phy@lists.infradead.org;
	Tue, 17 Feb 2026 14:05:44 +0000
Received: by mail-yx1-xb136.google.com with SMTP id 956f58d0204a3-64ad4839e3cso358920d50.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 06:05:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771337141; cv=none;
        d=google.com; s=arc-20240605;
        b=iwdSNaElBxY7OoSnFGMOpp1x7n9n9FPpPGf1Bz+ZKasNAb68iRtBchvXanAOM4bJQA
         gVbGKMNJLxHcxmWUs9jPYxEjqm/+gym3H34bA8cLxUxU3sUScHIOieMKCImXfkMpXO0W
         S2lEiwfYVVYAY2bF8148A+JflILSjijdOcPbadZxfSYxarqRpDDarOkxI8ZmF0Kz6SsS
         tYODoeLK50o7pW+Vj8CIyGGEG9vFEWP7Q6fUKGmt7sNNm4lb6MQDOIWTK+DGgvXsNBE1
         /GdJPWG2hI1/YHEX411+JEZXVg8cT1jmwb+hVehhAJP0kU4WQZKzHsOMEY3CKqI0Ljic
         C3PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=w7/ZxD0gyzUi+GQ6guwRmxS/saZ8Vlcke1WYSE/BbT8=;
        fh=fRThW27W4leAzBKnF6zZnFH0wQ+7QqnTCU/Kg/RuepE=;
        b=CeiXtgQK9NJKFscmV8WFGWhLUrijAAtH6HlqRC6Kmd6DPNUbbdgf9W57I0j/ZAmSDI
         /j3tf03N9Jt0posg10LqnBjysdaan6EU/18u7Pdkgmlus6Dd3rPzPlzd+ZYL+ocgcHf2
         H8gET2TPKdQWGPUl1BfqxveNSshCk5eTLKA2E2o1v9wg9U5DIbSGohmuBEZ/qdpssJEg
         ZqshRkHpvfldFdns8vmL1TL4xdz0TfMTlG6i4jEsabPEWyLJijF+JT8PDhJByEuvGpKZ
         qd93vJWqTuKrRt6CJsihlmr8IruygvF2udD5CyAWt+OiFk2M/ER42GzfQLFODsyJpc5Q
         uBwA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771337141; x=1771941941; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=w7/ZxD0gyzUi+GQ6guwRmxS/saZ8Vlcke1WYSE/BbT8=;
        b=jEToiA/52kZg3odX3YQh5LhzQ0tfP5rMXkvznN4OpIunh3RDsxXySzLNkiyg0eFPMr
         hD4nQaaMbSTfX7ufmm2aiVhGvH/4Dg1l+RrHuqB9foPE8W3hvuttid/+ursHtQ/uciDc
         JZiPwkpanbT/msJvX3yif5zzAIAfvLEqVm/CCLcATkoMWwMXB+61+WQpmSssknvrQpsd
         SqCmnyqppI8m66yx91Vf3BKE8ajhXw9z6Iz+qs9HUbx6Or6Va29aPMZCqgezNJzz7f/4
         nmjemHb1JQ7AY/m8aY2ozlQSITCHUeJpLUHsDLRMSE6faGddgFfDE5k0D6Zy+tdda/ld
         BgPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771337141; x=1771941941;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7/ZxD0gyzUi+GQ6guwRmxS/saZ8Vlcke1WYSE/BbT8=;
        b=hyUID4zna/b9FA4pJOel9Z3llS0xfYRhN8NnHACGwk5F+aQYuglCoCdD9Y74c0ASZC
         XwZ31NtR5sSMsFowP6jddoCz8I+VHPq9TQ3XnJXHKwYrxPVU6o46HTunzk8+d2zkkVjN
         MXZNIBRd/zplBvQq8+Qz+2j/66bUgNZ6EWfkBI4LZkxR40YM7FoA0ORhwR/CC9FfHwJm
         wTtpXHxkti5X2zz4aRqxifIaVweVqPUUuh/mesaqqrKScZnBwlItShOv4US6/FUKTbO7
         7dx5PjZOhuF7WBPQcWfpCQnx5ePuKHxD0QQvxqUv6cpGByaXafKKMwX9CtAzByN7m9AJ
         D+iw==
X-Forwarded-Encrypted: i=1; AJvYcCUceYHk8ddIJk2Z5yCxvHNtRw99OU8vTBjI7HfGNeEJRsU+YsMdHGh09+dnxoFQ3k0Fnz3q80qbAOA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyQOVtBOYX8uGu7dQH8V6hMl9snN6lOx5WQAdv5m8Dwucmg6gDp
	9l/OmlnPaXbUn3w5BQUr7iKNaEjb1tUz+a+0VBFJlxitvKkZxjwrE0/0CswnpYHvxDKJ1E8cmjv
	30T2d+YoPp9zs1LnSgWkIIHV5xnWP+BU=
X-Gm-Gg: AZuq6aKbh+mXStQYB4vaV3AZR2Zo7wbIBo7wOqd8IgOsa81uSVE29q+u6oysWx7cKGM
	TMBjL1ZU++fLWK5IHbBciqArP4t/2yZucIRDojQ3Giz5ulY4ZeDYnb4nVwsbBs/w7Fxjz6alrGy
	den6d6u75F86MxcfSWTvq9x23DvUwA/d9RlJ2gRE379mOB0WkTimvtcvD5QtBh9zROjJMFrkVxI
	+QmI9eXmVOADcQwraLwT+N6vDNK9YmADv+EbWZKpiVd16uwxBftWgqadbYu0bd9kM98l9AOC5Dv
	Ky4C9Q==
X-Received: by 2002:a05:690e:1c1c:b0:649:f09d:a6cc with SMTP id
 956f58d0204a3-64c14b29c19mr10963024d50.1.1771337141377; Tue, 17 Feb 2026
 06:05:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1771258407.git.l.scorcia@gmail.com> <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
 <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
In-Reply-To: <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 17 Feb 2026 16:05:29 +0200
X-Gm-Features: AZwV_QiVnluoIVm_8_wyxtM9osk-BEP_4tSvKqw7PjMg4MAO7-oL-lW1MUMi7lE
Message-ID: <CA+h21hoTJXkJr4_KWtFsxUMeqOXesxk5WKZbr5GWHawAi=idKg@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Jitao Shi <jitao.shi@mediatek.com>, Fabien Parent <fparent@baylibre.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_060543_063735_861E8962 
X-CRM114-Status: UNSURE (   7.89  )
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

On Tue, 17 Feb 2026 at 15:58, Vladimir Oltean <olteanv@gmail.com> wrote:
> To help the build test automation select the proper base branch, you can
> use the "phy-next" or "phy-fixes" git subject prefixes when generating
> your patches.

Ah, sorry, I missed the fact that only patch 4/6 touches linux-phy.

What is the merge strategy for this set?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
