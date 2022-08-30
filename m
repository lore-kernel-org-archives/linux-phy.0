Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81622ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLxTEivZJcovgttJTodMj0sIk9qfJgqJwHYQproEZzA=; b=0o+Yyd0oS5BgwJ
	0fyrbxX0HN8tninQJBtpFaEc98OK8AO94j4rkHDvzmoryVLcV2h13+nJ68wvQDCB8FlIn0tMLRIbo
	RXrSgDNz0BU4Gvo8xix6RF/w7M4W0DGiQsSK9+vb8WcWpqD8W9nrOO9KfrpSG825vJrhnEt5OK91P
	z5H1WoFL52LJMOGvcr7IEEgfawJam39Thi+DiffKTK1bet/nSX7V9ss98In4AtR/eCp4q9jxE8QUq
	PLS47wmRRUwwoVvxUV0eYfNk8vhbRY7bCGEdMYWeUq+FZMRKdUGlK56/Sn4S/R8gz1UAYcoE2rO7j
	5rZB7eOnzNmcrqA06o5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvq1-00EpH3-5b; Tue, 30 Aug 2022 07:39:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvoh-00Eohl-Po
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:37:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2AAC0B815D2;
	Tue, 30 Aug 2022 07:37:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D544C433C1;
	Tue, 30 Aug 2022 07:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661845064;
	bh=do/CEPvPzbL9rrFY1oLtzcW1Fx3Fax9iXYI3vbjDfOU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rs/P+uFpB+j9/CvS5EAk2RxilWTBlp9SqjTiMNgz8CfIeXmazcFsQ8ubw1f9Ppii0
	 XI0jyulU7+LjmZJ1RKXdMR+LtJMXxpVZzfA4G5ZJSnExA2ba2yzkBZAoHgtjZsBP46
	 fl9Tvj/zDiTn9E4YGAD2qfRam8wKWfh3aumQJfuCpoarCkzP/v2vGwaAjLa0YGStI0
	 KvV1s/wP/skbOPBw5EM/ybW1ySH7ag3Gqi7NepyXeI2DXlOdz32NR2wIpJbYjDEFHm
	 5rW2JANX66F0QPC9Yjszd5wHf//UQq8g/yprnOWOkt9VJ4GP7mv9JVu+OFT+s8qDvQ
	 gIwXSXFr5/J4A==
Date: Tue, 30 Aug 2022 13:07:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-qmp: add support for combo
 USB3+DP phy on SDM845
Message-ID: <Yw2+RSv0yG3XS+ji@matsya>
References: <20220810030926.2794179-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220810030926.2794179-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003748_239996_6D1D8C9E 
X-CRM114-Status: UNSURE (   8.42  )
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

On 09-08-22, 22:09, Bjorn Andersson wrote:
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> Define configuration to be used by combo USB3 + DisplayPort phy on
> SDM845 SoC family. It closely follows sc7180, however like the main USB3
> phy it uses the qmp_v3_usb3phy_cfg config.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
