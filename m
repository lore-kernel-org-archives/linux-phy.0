Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE390C35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 17:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GLjAuQwcU8WgAr1e0mh/3VxPHJBF+HkRgWx9vOLUM4=; b=jLqRHYdn8g5fnw
	QQVyy1+bq9qk4XsMj+qri+b+I5zsCKWKedLyjA1X5fc2tHpQhA8HJZiMRuQfE9diTGu5s6STTisFy
	cUSESV4ejsQfRLtzs3tDYscvPG24SqI6+l589ahdY3pu11r7BybCGh9o5FlOzQXqpMCRQN5a3WYlk
	e7+HnkQgKbHgaKMPwC5sAC55wwtLQjo1ByHSLWD9Zhl3Oa7Qtk0t/8Nir5mII9X/9ERS9KKtqFVFC
	2UPcv2hkdKJQOvOdykcsqw+S88rr9zd7TVdculbPMimBcRy1b5nQgvB8KS8gtKIoNGwKXuQpdjf57
	phJg4KxTrleU46dOQaYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMeo-003bn8-1o;
	Thu, 21 Dec 2023 17:16:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMel-003bk4-1l
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 17:16:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 13E156186A;
	Thu, 21 Dec 2023 17:16:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F32CBC433CA;
	Thu, 21 Dec 2023 17:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178982;
	bh=TQnnNdN3bVLMWPQ/3nx5Jm2PxVjwduzfYNkah623D6Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KkHWrw6LCm6KJQ2lAYoZbwoya1iZHkCBwZCaEcU/2jrJnU3ZOSNMUdR+zPXIrJ+qJ
	 dV1LOXgnRT9g5d173mqwDLA16Oge7ISzhMrUhk7h/4U4KVnWS2Qlra4g/jMdZsm+5F
	 c+jhIN2cuTbP0p48GfWfIvlTrTOdOwBhTgacu3vg70BWqGzcBjIaZzwjD0DkbwMBDc
	 QQVfaZ9zU+iEWbLz34ajdKSaPmXq0tL7mcWrldaKotWXwDsRkHZZBHrVLbkpcfCxfr
	 D8znULkEJfE2Wg8mhfAztEmNhoA2x4LTdbCyD+YdujYZKJccavzxKUiSFlB8gRvZ9s
	 twV78Cf8Eh0ow==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
Subject: Re: [PATCH v3 0/7] phy: qcom: Add register offsets for v6 and v7
Message-Id: <170317897954.712473.7478662557724121939.b4-ty@kernel.org>
Date: Thu, 21 Dec 2023 22:46:19 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_091623_646995_88CE018A 
X-CRM114-Status: UNSURE (   5.68  )
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


On Thu, 07 Dec 2023 14:19:09 +0200, Abel Vesa wrote:
> This patchset adds some missing register offsets for the v6 and v6.20,
> as well as the new v7 ones. These register offsets are used by the
> new Qualcomm Snapdragon X Elite (X1E80100) platform.
> 
> 

Applied, thanks!

[1/7] phy: qcom-qmp: qserdes-com: Add some more v6 register offsets
      commit: 2226ec072ed3f1bd3f8dbe0cbf0e6cad699aedc2
[2/7] phy: qcom-qmp: qserdes-txrx: Add some more v6.20 register offsets
      commit: a40542507b9045da03f4e013ab8562f6e6fe8aad
[3/7] phy: qcom-qmp: pcs: Add v7 register offsets
      commit: 7b98cf0e9b5f8a05a7f0f0d06d3cfa130bb576e2
[4/7] phy: qcom-qmp: pcs-usb: Add v7 register offsets
      commit: 8d4f9f801095b120e433d935b296baf0e3bdc6a0
[5/7] phy: qcom-qmp: qserdes-com: Add v7 register offsets
      commit: bc546cc85c1d92d9ba7b278b77016b7d4334fafa
[6/7] phy: qcom-qmp: qserdes-txrx: Add V6 N4 register offsets
      commit: 762c3565f3c8105603089eeaa0501e5089922221
[7/7] phy: qcom-qmp: qserdes-txrx: Add v7 register offsets
      commit: ee6fcc0f337d6790b46838bab76c36e8bdd5658e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
