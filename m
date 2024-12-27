Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 382F0E77191
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 08:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiq6+1UPIKUL5nlTrejGpmfQ+CYl6J1moOAM6Trjunw=; b=aEi3N6vOJJyiEX
	Qq0q4Q7oZtgR4suVsMxvmdmBPRRWkQDeWtdbHG29fAnNn+i+SnHJYEYMuE11dJSALaO9BjQP7UEOu
	wDpLMhMR+efJ+mgpWH2N1X3/boRZwMv8lbo1Njyr8VDO0gj4Wp9OvIE1pBZDG5GgygbNxnzCHeDvf
	Hn0pGn6T7JJKQmY3iPwAj+UzLgKsJ/ZybtKb9vrrqjum6i0pR12ln/erKrUrEoNvdgte9rdNU3xXn
	ovCZzY9vEOq6mfLvYrF7xYVQDXNTCddQ05qcf0XS3HAg0HQoponL48hIoYVXbgvLJuuFG7d0vZyrL
	E3jIy3Uao72U1WDA0nNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5tn-0000000HOt9-47qY;
	Fri, 27 Dec 2024 08:40:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR5tk-0000000HOsP-36N7
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 08:40:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9B76C5C5789;
	Fri, 27 Dec 2024 08:40:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25CD7C4CED0;
	Fri, 27 Dec 2024 08:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735288844;
	bh=8KxZUHuncZ6XQYTJwhIWFyejQOjqm6sNcOVNcBIA1K0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MeNMVYMufbRE8vJVlDEXT4y2WltbRR1zgXDT7xfcmbdGkwq5j6hY+mYbNV2wO9IDJ
	 yj5wbaNv/9IS3vArJXiM5Fdae3ZtkB/rV/uBnWDZorKQuEpeeTQtrSJ0+LqI44x/Pm
	 zoR8JnhWW5nd+TUPvrhCKoRfWhrrtwqAsvb1kUiuDzG9fXp+gE7xv4OFumgu9QDGdK
	 2WFERU6cmVxH2Veb7I9LuPrdEQe3D020xAh5wd6dINILKahY+cBB6RAE3U5K8M9M5E
	 G3RV5jVsNHeqY8lbYY2UqIxXZ7EahCPPwYQh98P8wvZ/Ct8HFDB4DJsKaZXsulTKlp
	 O6KhkzCJdKrEg==
Date: Fri, 27 Dec 2024 09:40:40 +0100
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
Subject: Re: [PATCH v2 2/5] dt-bindings: display: msm: dp-controller:
 document QCS8300 compatible
Message-ID: <vhiixdd5mjvrfoe5pbvikatgba2molof7gqvfp5pl7lmrg3tc5@z65rg54hgl3x>
References: <20241226-mdssdt_qcs8300-v2-0-acba0db533ce@quicinc.com>
 <20241226-mdssdt_qcs8300-v2-2-acba0db533ce@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226-mdssdt_qcs8300-v2-2-acba0db533ce@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_004044_830278_E3E963B2 
X-CRM114-Status: UNSURE (   9.74  )
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

On Thu, Dec 26, 2024 at 05:40:46PM +0800, Yongxing Mou wrote:
> Add compatible string for the DisplayPort controller found on the
> Qualcomm QCS8300 platform.QCS8300 only support one DisplayPort
> controller and have the same base offset with sm8650, so we reuse
> the sm8650 DisplayPort driver.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
