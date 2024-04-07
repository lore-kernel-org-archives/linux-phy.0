Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8109DCD11C2
	for <linux-phy@archiver.kernel.org>; Sun,  7 Apr 2024 07:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YG7y8ebPf/xT1S72QwYUZ7i0ht23gFdr6PdJMzoJFYU=; b=0bOZYGE0STKp8D
	Ykt8HD/Ch7wQpU0zabbMEPLezGuN8ACzFZ7hNmy/OMY8qTsFQ88dyDAQ1Cjyrh67oOTn+7xXR05ip
	2cAkZtdClgbgtlbiBu1HNgSOBgjlks2Fm+ekt7Hzy9rpx+Q3FYI1MarxUeEAbcqd8LeG4PdV55RYf
	yl2iKUGxb5BafG6VetkjWoScAIvX/V0t4v+9RCAoBIRKmKlayHLkTDiNSP1QomxP7ZDCtn31qGCDZ
	HxmPfoJd44nScQ0aWMaUBeHKOksLLv/GmZJProZyBocis3XmkwrOeVUZXiG+BRIZgjZeIPHJxGqAi
	373ZDnTehxgzUTJ2322A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtMqK-0000000Bzpv-0PSO;
	Sun, 07 Apr 2024 07:21:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtMqH-0000000BzoY-10be
	for linux-phy@lists.infradead.org;
	Sun, 07 Apr 2024 07:21:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 55DDD60C55;
	Sun,  7 Apr 2024 07:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23DABC43399;
	Sun,  7 Apr 2024 07:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712474487;
	bh=N68XWJ5tqs+R4Sb4kX5+JuesEzf3EgGkVGBZSU+ql8I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=m1IQ398SDjpO7GlcginkHlwEEKzAU6UkjNe+d9WDjSpIgyfZJU3NSyrSjOOLtHnOR
	 Ou2BKKHyMTcfcLwJeJyulf+IvIlBAAx3qllJ09FGyEUL96vuW9u/s8q8dY8Ba3HMaY
	 22YGstPkEBoLIUeahMv+/eCwT1qsNjXoiTxl2aJmc3ndb/yRP8wXpDD4plEIv+V2Bk
	 fH6blNNZgeyzLiVbziNsoMvqi/RFo3u/yUxOH4N3HS6PlHCP9gaQITUfffCuz6AKlQ
	 3/A4NJ3DsfZIOG8KdaUfyVFYwRZO+peaMWlHKYnBFyKQAWKWvjBRpA95UIiDcHE4XD
	 ZYNjQbq/8s8Ug==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Sricharan Ramabadhran <quic_srichara@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Gabor Juhos <j4g8y7@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240406-phy-qcom-m31-regulator-fix-v2-1-c8e9795bc071@gmail.com>
References: <20240406-phy-qcom-m31-regulator-fix-v2-1-c8e9795bc071@gmail.com>
Subject: Re: [PATCH v2] phy: qcom: m31: match requested regulator name with
 dt schema
Message-Id: <171247448471.375090.8975261455779796119.b4-ty@kernel.org>
Date: Sun, 07 Apr 2024 12:51:24 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_002129_374120_23B1396B 
X-CRM114-Status: UNSURE (   6.94  )
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


On Sat, 06 Apr 2024 15:37:09 +0200, Gabor Juhos wrote:
> According to the 'qcom,ipq5332-usb-hsphy.yaml' schema, the 5V
> supply regulator must be defined via the 'vdd-supply' property.
> The driver however requests for the 'vdda-phy' regulator which
> results in the following message when the driver is probed on
> a IPQ5018 based board with a device tree matching to the schema:
> 
>   qcom-m31usb-phy 5b000.phy: supply vdda-phy not found, using dummy regulator
>   qcom-m31usb-phy 5b000.phy: Registered M31 USB phy
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: m31: match requested regulator name with dt schema
      commit: 47b3e2f3914ae5e8d9025d65ae5cffcbb54bc9c3

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
