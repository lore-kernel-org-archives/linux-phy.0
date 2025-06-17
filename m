Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8732EC71155
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 05:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XnNT2WrOF2dal143vCnuE9M2zd37CHJGHN5vV2am9XY=; b=vEI+itRR4iGXA8
	2kiluU23MI/j/JKsmfjtifHxr3fpvLQ+xCwEt+zqGNtIvdwiLRKDOsrfkA5TQgAJGpLalev/ivjyD
	EMPhzRxByT3r/PYbk8RIzVqg8FhN8sonaICd4xyN+w9QYzbQOZ5HrNeiwkNW2CHyIJaPe44ABE7lc
	gxz7G0tR0NW5valdFcjMNlCPDW9Tet9pnpZfOwPc/9C1+noww3iFxd+VEIQq/XdOcQfuXsk4mRM8J
	E/qwVAtbcg/XdsjWbMgZhkgtN1iRDwzmblghkmdIcyRyhBs9tUUJKGFgmbNj7eN3IYyEb+QL/Ulg3
	OBf2u4Luwkx9CdnOPzPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uROz4-00000006Gxm-49Zk;
	Tue, 17 Jun 2025 05:35:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uROtr-00000006GMk-2nAS
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 05:30:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E5AFC4A171;
	Tue, 17 Jun 2025 05:30:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF5BCC4CEE3;
	Tue, 17 Jun 2025 05:30:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750138222;
	bh=l1Zwn6tKLlJL2jM6y69JEiT1LBIYqM+m+LRPXdZTy9s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pm6U2tZWY/kN+3S7a/0rEW6ke2LPrUrPvw/igHZhA0dnQQG8Dx3yqv5D+Aig2z0kd
	 j6kTGol3Qs7Q0eDnymsw7ucwEYG/w5F/hLzgR8UnfaylZmlXwDQA3SmW1o7g7s/tnp
	 beGplg3qwqEmojrdauilv9LH7EXM4xoRus4+2OJMOVICO4PWniBb3yPTiazVbNMROx
	 l1CzbbyEM3Y6JKiN0W5Bu4Bok8k+11Lh6cZqqdTitZIxaIFVjTIDbNeauroZIq+7Dq
	 gtczAqHCuZRmC2M+/Q+m84ruz7yqAg3ue0Oy1wxBQwxH3IH4wMmc3lXiudkABGSaPK
	 w61HAQjRytLow==
From: Vinod Koul <vkoul@kernel.org>
To: linux-kernel@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>
Cc: Wesley Cheng <quic_wcheng@quicinc.com>, 
 Melody Olvera <melody.olvera@oss.qualcomm.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, 
 linux-arm-msm@vger.kernel.org
In-Reply-To: <20250617034249.2067135-1-rdunlap@infradead.org>
References: <20250617034249.2067135-1-rdunlap@infradead.org>
Subject: Re: [PATCH] phy: qcom: add linux/bitfield.h header to fix a build
 error
Message-Id: <175013822022.98716.16014349305503113127.b4-ty@kernel.org>
Date: Tue, 17 Jun 2025 11:00:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_223023_902072_F566EC54 
X-CRM114-Status: UNSURE (   4.33  )
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


On Mon, 16 Jun 2025 20:42:49 -0700, Randy Dunlap wrote:
> Add the <linux/bitfield.h> header to prevent a build error:
> 
> drivers/phy/qualcomm/phy-qcom-m31-eusb2.c: In function 'm31eusb2_phy_init':
> drivers/phy/qualcomm/phy-qcom-m31-eusb2.c:210:37: error: implicit declaration of function 'FIELD_PREP' [-Wimplicit-function-declaration]
>   210 |                                     FIELD_PREP(FSEL, data->fsel));
> 
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: add linux/bitfield.h header to fix a build error
      commit: f0185cd5942569ea9872bf85dce621d0a7fa401e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
