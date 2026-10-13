Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80899CC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 07:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vffGkDRZ+xX7PKVTgwIsvJgSS6KK6iKCsQo8eP1Qm8s=; b=ARsrN1qVvN/w5h
	cWBU56OQ7BjwvWjY79EB0ggO+e7dwCzrw83I0OZEtL+F4oazNc/aPyXw7oINbIPrlhs/JKtyjsnm1
	BRKxmCyMxdllvKDRoLgdUGmry6W0kLR+4UwJk7S0rfvwBengt4hLn1Rr0Cj+vejOU/auYw6wrKWip
	pKnwTwCCEpzICRC8PhIiya38+P7cHtL69LtBSHVbbVsYn3312+X7Fs+U/8jGAMOqnSpwqq7S9UQrh
	s70JW9y2iOryQ+JvzY05VibwKWjJeD5MHTcX0U2Ls5HXvTxJYi9ZXpatywBhVt/aID1CKLyW+h4IJ
	2c221F1XymzJ6lrIdRGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGXBM-0000000CF9V-329l;
	Tue, 13 Oct 2026 07:44:20 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGXBL-0000000CF9I-2G7M
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 07:44:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0D13340F08;
	Tue, 13 Oct 2026 07:44:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EC351F000FF;
	Tue, 13 Oct 2026 07:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791877458;
	bh=HYvpkbg3bM0lZjaWpN1iEes4TNSBAyDxgJuCv3mMd2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JQ1iNRisyw0myBjkG/d0FOkYKgA4v2GrUEEM/v/+lIoIQMHTsxHEQTl7alEpcyftL
	 k7l0zHN1ZaMgDzBW0KtsyxelZW4lS3Wd5mutI8B+vT68ChvYVxQ/XDuyxv7WBiJwDt
	 V2BhfRJKOObjxJ3HwC8uvQJTPOHxpoCtf9PkqOxmIVAE9w/9wbGSIBLJbuv4+vDJL6
	 p2TkABiIhfdpecL2HyANlxNbBeBVQjufZchEF+AKGKN3iz5BCsP8h7bKQH6PfmgVQl
	 rs9J9p2RBwFZqWcg4kb9yZaWcfkbZGUxi7ksjNREZDz3ERArwKgKVm4k0EkjPBBUW3
	 cau0XNmDq087w==
Date: Tue, 13 Oct 2026 09:44:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Shawn Guo <shengchao.guo@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 02/13] dt-bindings: display: msm: Document the Nord
 DiplayPort controller
Message-ID: <20261013-tangible-wakeful-swift-a38f8f@quoll>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-2-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-2-a2ab9af954d2@oss.qualcomm.com>
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

On Mon, Oct 12, 2026 at 07:02:12PM +0530, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Nord uses MDSS 12.1 with two independent DP controller instances,
> each exposing two DP cores at new IO offsets. None of the existing
> compatibles match this layout, so add qcom,nord-dp.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Do I understand correctly:
Device is fully compatible with qcom,sa8775p-dp, but a simple to fix
driver limitation is preventing compatibility?

If so, let's fix the driver - just add more addresses to the
msm_dp_desc_sa8775p array?


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
