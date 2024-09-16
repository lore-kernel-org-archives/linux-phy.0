Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D52FDC3ABB2
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 15:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=go9jvfoYJNnWJZnA3X4G8Jtejys6eTyWRXWMDIgwrmw=; b=Frba+Ojrffq3w3
	t8P5U0CA9ZIuZ0j/HY7rXFQ4ZcmWBUPLaZX6fhknZXJ5GXIzgr1vjB3BWhxykuCZdaj3pHKZTKIMO
	HDj/ur6ktirnny8GIRaqvl3cRAzW2CIQDZXRvqd5D3+oBezt5br1dImqhERqQHFYY6kOs7OoAZVVg
	+TuLShLRdGJ9dPvQ/4KofkANnJShs7amfgN4+I0+M0OxWQJrMUVPTdyclOF1oIW5nytYoAAw48Z3t
	lTO9RUCJDEEWB5gjwbvkbBOw8mKNepJJCUxB5CU6FfkSzNG1CU/BUI9xYwvfT7DoMIWKqCy3e13vu
	Kgj/LokSwRokzKciChvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDax-00000004LZC-1pRf;
	Mon, 16 Sep 2024 15:24:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqDa3-00000004LQp-3695
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 15:24:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 619BB5C5501;
	Mon, 16 Sep 2024 15:23:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9645C4CEC4;
	Mon, 16 Sep 2024 15:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726500238;
	bh=qD4ujfWspewbmLI96zIOIwR+FCHU3GJLIZW/IsoDLFQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iCSYIdJ2R+jEL8qu1nVKJBsW7jCgmQs5cI9Y5u8/Rdvzt9tlTuPysbpyuuhcIUoZe
	 UNAgJYN1dLkgYF9EnKhnJfo9XR9xCdQRUtuVp0qqvOmCDa14lH1FWjLUMb6eGiDkxA
	 0QAvQr2+JKAA1ZEyx2DNMWXuhMHqtHm7/7rHgxrL2zqWOMQgN01TFWE6yX2u9gqNnT
	 1cirZm6IuULvnnJsw7c4OYtXiLQkyG/ncfu8uWYN2IRvP91kt9IlWcUWvqgWih4tWg
	 FaoqRG1UjZfUFnd96G6GEGkVskI0iZoFOmK7vnMwpEmWu8Yj7av7oMVxf+lCoUkuYw
	 5WVHbeMZCQEXg==
Date: Mon, 16 Sep 2024 17:23:55 +0200
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
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: Add eDP PHY compatible for
 sa8775p
Message-ID: <2hv2hcpbanduw4wg2wbza4jkze4sgilrtyc7zack23uygwsjol@ckskl2rkd5xp>
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
 <20240913103755.7290-2-quic_mukhopad@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913103755.7290-2-quic_mukhopad@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_082359_837978_753A4B0E 
X-CRM114-Status: UNSURE (   6.46  )
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

On Fri, Sep 13, 2024 at 04:07:51PM +0530, Soutrik Mukhopadhyay wrote:
> Add compatible string for the supported eDP PHY on sa8775p platform.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: No change
>  

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
