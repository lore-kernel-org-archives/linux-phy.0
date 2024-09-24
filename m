Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96A17CF9C72
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 08:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyypwKkW++crihFAMEhlimhzfpFE2TzL8ElsIH2rHu4=; b=bvZzNbRmCFCM1V
	HDJCiXwomm/diYMysBCxwYrfMAe6Qjz6OP4suZBx/9nWkC2LDSVxifDkfXNXpVuSPrhQHQNnSxoie
	paZ9CQ9TOLJHFRl/I44FAfH+OX5b2jwO1YsH5Unrj6Sm4Vn8kxipjmnM21NO+PdmIwDNfzzR4ikoS
	qasH8KgHcKrsIb7A6CJM18NMWdTeQ8GaUd6Hrj5IvAPQBnI1Oy1+82LlvVQwjjRtkLrpJ4BnrpA7a
	Ep68KN95Wl+XfuwjGfragN2tEgEj1TShf5OoSvNncYUSykVT5aHImLumoTgVj9dv5CM8eeHf/I/15
	kJSa008b5NU0Q8fI3faw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st0kc-00000001Ym2-1ENT;
	Tue, 24 Sep 2024 08:18:26 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st0kY-00000001Ykl-2UOY
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 08:18:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D7BDCA43596;
	Tue, 24 Sep 2024 08:18:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B26B8C4CEC4;
	Tue, 24 Sep 2024 08:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727165901;
	bh=71k19nXTK4VVFBoakaBb1kid4ielPiHfKS52/6eP+gY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rE7JzeZIXW9kWQ/3E0EMx6AbqqDwhdczKPUleEJndoZ7M1poY7ANVSHJDkLKhEl4J
	 EzCEmJWnPCpP4MFvlDpJIqFMQOAq+g9gKNAo0DZhL5BU60DpY6FHPvLMhPibyHam6C
	 bSw1YvSzNX+awAYbp+q1dZW2MPMGtkI8owBLEJo7rnDOuKuJ2ohlruH87SMtGQLj7U
	 2IV+fUljatlm1yrfND+ZesCfiH3hMrjkZMaNE03AVlySu3+ag+RgPJZB5qlGvRteZj
	 ROoQtRQdYR7cwVOpjZUfAIChXntyuGQ0Dlp36ogkIg4xgl1vZ1ZId+jEJgK1dn5xVm
	 58V8dr9YC4/JQ==
Date: Tue, 24 Sep 2024 10:18:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, dmitry.baryshkov@linaro.org, 
	abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_khsieh@quicinc.com, 
	konrad.dybcio@linaro.org, quic_parellan@quicinc.com, quic_bjorande@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Add eDP PHY compatible for
 sa8775p
Message-ID: <vxyvyfab3m3yp4s6lraympgukmpxo2zjmh4irxu3lwxzve7mrn@jykursrajsrd>
References: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
 <20240923113150.24711-2-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923113150.24711-2-quic_mukhopad@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_011822_713279_15CCC733 
X-CRM114-Status: UNSURE (   7.24  )
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

On Mon, Sep 23, 2024 at 05:01:46PM +0530, Soutrik Mukhopadhyay wrote:
> Add compatible string for the supported eDP PHY on sa8775p platform.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

As explained in reply to Konrad in v2, reviewed-by was given by mistake.
Please drop on next submit.

> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: No change
> 
> v3: No change

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
