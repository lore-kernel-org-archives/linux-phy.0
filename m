Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD396C44515
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4isDRC9/20Y2s4mM6F8FAubDyX6Zfrrqs02vigae4I=; b=HeFisuRwJoCyDx
	e7xd1oVCUpKHvE4xW8vewuFq4EDr+YWAZl53XEmNRml9VWX7uHNqS8T9+uuhQMeSCCRH/bS/F2jMo
	VTnv9qulNFzrkbJE7rlHSD3IWQSISMQ+IMhhOiuFvzjdfSDroRs3dnYbsnxN5kp1TQp87Zjx7MKHU
	4rERYo16c8r8rScMI/MSkXdkt8VaEO+TCUdg4O9yvEQqiQ3u3473cfHxvN471dzzED6JfnocwMRS9
	TJC77gIS82KZ3CmSKhyj9+l3mUqg2UyzRt0EZCApPlr4qiDSf3afWWifFCN5Wmm6BmC7QrCBvfpq+
	LNONhwFWYQSg/pFNK1qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmIL-00000006c8q-0iRh;
	Mon, 20 Jul 2026 11:36:25 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmIJ-00000006c8j-1rNI
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 11:36:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8005160A78;
	Mon, 20 Jul 2026 11:36:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D3D31F000E9;
	Mon, 20 Jul 2026 11:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784547382;
	bh=XIrLylyI5xB2fcWFkGOAHp4UIQ1ri6DLaLYeEPpg4QY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=dg8r5VsTmWzIA9UmyzNahI7HXu1N5N2ItZcPRr3R8dci2rDnsMld48iY3xLzvJbbN
	 PPDuflxMm4HL4y4/Ea+iAx7+tkeZ6pc9PaLeEt1TGpfQRuaDyUXOfZMCKhHtZAVIxU
	 eHLKibIQI0kapnjgRcaVlEiU98yVgw/d2V2XLl66FNUVbwUsnyjqrSMFcH5JnhqHua
	 SeuR4RFp/LKwApFrsXBhZoa3MdU3OsraTyzVPvKw18xh6Fbk9qCy1noI7Yt0g66QdG
	 HA8xJ25szCi0RAh6kWeL7s0i8pX2PhGcatafA5OJr9DX6wYyx+H+0ZJXsPlyaHVJYX
	 cgTgFrhKBM3ZQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Melody Olvera <melody.olvera@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260718-m31-eusb2-fix-v1-1-8588a1b94d76@oss.qualcomm.com>
References: <20260718-m31-eusb2-fix-v1-1-8588a1b94d76@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qcom: m31-eusb2: Fix return value of init call
Message-Id: <178454737966.1375859.9151386869031370240.b4-ty@kernel.org>
Date: Mon, 20 Jul 2026 17:06:19 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Sat, 18 Jul 2026 15:01:31 +0530, Krishna Kurapati wrote:
> The init call currently returns success irrespective of any failures
> during repeater init or clock enablement. Return appropriate error value
> in the init call failure path.
> 
> 

Applied, thanks!

[1/1] phy: qcom: m31-eusb2: Fix return value of init call
      commit: 361f533a2dce2c2841fe4dc0c9d85a67117edf95

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
