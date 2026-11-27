Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC92606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Uo0QYFbW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=W+U5vf3Q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bCNvoGULgTw//3d5godQwG0cbiFOeGo7qpb9QH/SDos=; b=Uo0QYFbW1e7IYYws2QUDIHR2gW
	Ptas/Z1S1LqWTm0bsUbQLUDBXx6ephopw3xBJ2bXk4ZCFiWpsDnDnOOwI/rrBK8xQKSGjn60QZTQh
	6OnbYnPbnky7g0idUyUh3vpGAFfb49l3b0c8ry8EaGU5AWXju0lthPaY/JV1x1WJpxtmFf0VNs6pt
	+IMEDYIAjsnKTneyP6xDG87AIjjnAuvxsBR/foh6Yf9p9bPVPzGDnmja8vsWJTXIzdjWnGD+HzKnA
	ysIRNqZtbdUCm5a0UJNjVMw+UO3w6Uv40PNDfGph6Iw3cH2BMOtjeWpOOO8icMy7mVEcLpSyXRe6c
	3cVWMKLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWu3U-0000000FmhD-44aE;
	Fri, 27 Nov 2026 11:23:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWu3T-0000000Fmgs-2Y5p
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:23:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BC6BB61129;
	Fri, 27 Nov 2026 11:23:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D0331F0089F;
	Fri, 27 Nov 2026 11:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795778629;
	bh=mK5RhtnnNWXMlCTquZ9NQFJvoEWITHzyteXLzq6fXPM=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=W+U5vf3Qzp36jc0/5Aov1uzc4wuKic+K0qqBbW7kF7vSMOdhoVZtKSjb7d0n5PSYc
	 8b4dchosUJExuyylsCUY3YM0kwojmL8sGdWuouYObx49XLUHj4L8YvRFB+ci4BtTrj
	 dWpzYQgk5OcY1wwUfBoS3QTJp7KJ7iN3yfnYYB2/r2KQ6RCQ9GpXn2vv/7PyOS/zSi
	 jJSBVQWXF4uX71m9WRhaFKeDlICgfraUAuI/lqE99mAjp92Xv+4k85CFrCQLxe7Efd
	 hbAigLfW6LqMNAfwqpKjUOMPRBaN533voPFNNnJn57ZZpY1hFss7Z+sC6bDGVxGwuT
	 9+hIphD2dO1NA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 0/3] phy: qcom: carry live SS-link state without
 growing enum phy_mode
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Tapas Rana <tapas.rana@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abelvesa@kernel.org>, 
 Wesley Cheng <wesley.cheng@oss.qualcomm.com>, 
 Esteban Urrutia <esteuwu@proton.me>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
 Ronak Raheja <ronak.raheja@oss.qualcomm.com>, 
 Faisal Hassan <faisal.hassan@oss.qualcomm.com>, 
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
 prashanth.k@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <23b5c705-cd55-4c0c-9c95-c61afb286416@oss.qualcomm.com>
References: <20261106082716.128968-1-tapas.rana@oss.qualcomm.com>
 <23b5c705-cd55-4c0c-9c95-c61afb286416@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 16:53:39 +0530
Message-Id: <179577861920.3421.4340993862938053001.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=742; i=mani@kernel.org;
 h=from:subject:message-id; bh=DNaiOmAIsM3RjZZ86nfFogAtVyk1ZOvfNvmFkm/aqf8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCWg+Wjg+B/qLCJCqKXlBRo9OqyZhTZKnMSEwK
 yHRUc8xjnGJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawloPgAKCRBVnxHm/pHO
 9eJtCACQWXnzV18kNd1oaSofDwCYBTC8k3efRtOM1oFjre1l0Oo4QWqHQo/bnYQgpd6/CNdUl4B
 rTzEs6mmT1zxkvCnl/dDUIDhqIn78dsEJJtsCoVu/W79FeCPyb3aNAJfK5lfOS+Kldi5B0pJ5tm
 2FaS5yfOfGzkn9Hj23LlCCFZRArEA1RJUgkR7DSnKkbE+X83E5/BsJGOLPY8A+loFfGxp6yA2Mn
 bdfqNfKI+upVS7SSdOc+5TlCH9HeDq8VPLgtUakWX0OgNP23IHi98oH7vO9TcQm5qyZNbjSERIm
 Wv42K8UjdyJZCujtrcJCz1W2yFo5F9FMsCEJtpgUS7y/twrT
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-06 16:06 +0100, Konrad Dybcio wrote:
> On 11/6/26 9:27 AM, Tapas Rana wrote:
> > QMP PHY drivers always enable receiver detection (ARCVR_DTCT_EN) in
> > autonomous mode, and additionally enable LFPS detection (ALFPS_DTCT_EN)
> > when a SuperSpeed link is present; otherwise they fall back to
> > receiver-detect event selection (ARCVR_DTCT_EVENT_SEL). This choice is
> > made by comparing phy_mode against
> > PHY_MODE_USB_HOST_SS/PHY_MODE_USB_DEVICE_SS. However, dwc3 core only
> > calls phy_set_mode()/phy_set_mode_ext() with the base
> > PHY_MODE_USB_HOST or PHY_MODE_USB_DEVICE, never the _SS/_HS/_FS/_LS
> > submodes. 
> 
> Without much more insight, this sounds like the place to fix it then
> 

+1

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
