Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8DE1CAC592
	for <linux-phy@archiver.kernel.org>; Mon, 22 Sep 2025 19:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ao0vMPbONAGoPpmADIKn5yoZQEuHIVWWxHMDn7qUyIc=; b=MosuUUMQXe1CUZ
	qKOjSUuUTTPxlJe562WSJMiDrvi10sDCDKKzyLaT0BK3gkd2SAEzxZmp7h1abFGzd1siYAlf5IwPd
	pdfgOh6jfT5/N/FUqMrXzkW7jaFUhZlrrDWy/svunKoZYQe+zgdXKTYHQnGvwZIo/00KfhhDzpRQb
	tZsId2L9iZp0XPb2T9d3I4JuLk33Tskkeuw3sKzu/GXu/IrwGMd5e77OVqsOqnZgXkVDX2nWeQuQe
	1VBSYvB6Dq+JXYlE1sD7u6wUkBXgu559G8UbVmWG0fqyMBv4qy/gd8m6lbu6wFZQx9Rr8noqy24Ee
	oG39Nz0UyZkPvv2ipUpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0mf5-0000000BOVv-1bZc;
	Mon, 22 Sep 2025 19:57:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0mf2-0000000BOUt-0Rrn
	for linux-phy@lists.infradead.org;
	Mon, 22 Sep 2025 19:57:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 76B0F4353E;
	Mon, 22 Sep 2025 19:57:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B255C4CEF0;
	Mon, 22 Sep 2025 19:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758571039;
	bh=ATU22+eW9PFL7VBw73VUAiKeeHjomxrpBheEOpZuqKI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TfFCwx/41/T+d747EWTvvLu2aZoute+nq5SSBDuu1Z5+wsdXJHVw5jDTw2A/Z4e80
	 I0LXpr2oDOAIpU212nT/yGNimDke+sqOw6J71FLf5WcJOQlYX1Bo0xp/XsFdwVdFql
	 kYwkJ0YToF7jjY0MHqBHiusRScdyC3HCNlGI7r9T3PoM5JuEYDOa5ERBKHiDd/y9OA
	 PBDNaDN7NZxJ1uhUe9mVXNQgBxW9Vv6wzE1JDVEK6w8Kjrmdpz5VlrrinkxDCnrPvN
	 nlfC0U+UOjs06oKrx/4oitsj6ApTafLlJkUt6bzNhmOxrfBx00Ji70geklaVlpiu10
	 CodXdDEDHiv+g==
Date: Mon, 22 Sep 2025 14:57:18 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
	Rob Clark <robin.clark@oss.qualcomm.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>, li.liu@oss.qualcomm.com,
	fange.zhang@oss.qualcomm.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Dmitry Baryshkov <lumag@kernel.org>, devicetree@vger.kernel.org,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	yongxing.mou@oss.qualcomm.com, Vinod Koul <vkoul@kernel.org>,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v5 01/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
Message-ID: <175857103795.1112931.5315462738627006781.robh@kernel.org>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-1-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-1-eae6681f4002@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_125720_165034_289F047B 
X-CRM114-Status: UNSURE (   8.79  )
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


On Fri, 19 Sep 2025 22:24:18 +0800, Xiangxu Yin wrote:
> Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
> on QCS615 Platform. This PHY supports both USB3 and DP functionality
> over USB-C, with PHY mode switching capability. It does not support
> combo mode.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 111 +++++++++++++++++++++
>  1 file changed, 111 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
